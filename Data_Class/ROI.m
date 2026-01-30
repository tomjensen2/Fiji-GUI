classdef ROI
    % ROI class for managing regions of interest (ROIs)
    % Supports both typical frame scan ROIs and 'Line2' ROIs for line scans.
    % Includes geometric, intensity, and metadata tracking.
    % Version 1.1.0

    properties (Constant)
        Version = '1.1.0';
    end

    properties
        Parent
        ParentType
        ROIType
        Coordinates
        ROIHandle
        Comment
        Tag                  % Optional tag (e.g., 'soma', 'dendrite', 'noise')

        % Geometry
        Area
        Centroid
        Perimeter
        Orientation
        MajorAxisLength
        MinorAxisLength
        Circularity
        Eccentricity

        % Metadata
        ID
        Color
        CreationDate

        % Intensity
        IntensityMean
        IntensityMedian
        IntensityStd
        IntensityTotal

        % ROI Data
        Mask
        TimeSeries
    end

    methods (Access = public)
        function obj = ROI(varargin)
            p = inputParser;
            addParameter(p, 'Parent', [], @(x) isobject(x));
            addParameter(p, 'ParentType', '', @ischar);
            addParameter(p, 'ROIType', '', @ischar);
            addParameter(p, 'Coordinates', [], @(x) isnumeric(x));
            addParameter(p, 'ROIHandle', [], @(x) true);
            addParameter(p, 'Comment', '', @ischar);
            addParameter(p, 'Tag', '', @ischar);
            addParameter(p, 'ID', '', @ischar);
            addParameter(p, 'Color', [1 0 0], @(x) isnumeric(x) && numel(x)==3);
            addParameter(p, 'CreationDate', datetime('now'), @(x) isdatetime(x));
            addParameter(p, 'IntensityMean', [], @(x) isnumeric(x));
            addParameter(p, 'IntensityMedian', [], @(x) isnumeric(x));
            addParameter(p, 'IntensityStd', [], @(x) isnumeric(x));
            addParameter(p, 'IntensityTotal', [], @(x) isnumeric(x));
            addParameter(p, 'Mask', [], @(x) islogical(x) || isnumeric(x));
            addParameter(p, 'TimeSeries', [], @(x) isnumeric(x));
            parse(p, varargin{:});

            obj.Parent = p.Results.Parent;
            obj.ParentType = p.Results.ParentType;
            obj.ROIType = p.Results.ROIType;
            obj.Coordinates = p.Results.Coordinates;
            obj.ROIHandle = p.Results.ROIHandle;
            obj.Comment = p.Results.Comment;
            obj.Tag = p.Results.Tag;
            obj.ID = p.Results.ID;
            obj.Color = p.Results.Color;
            obj.CreationDate = p.Results.CreationDate;
            obj.IntensityMean = p.Results.IntensityMean;
            obj.IntensityMedian = p.Results.IntensityMedian;
            obj.IntensityStd = p.Results.IntensityStd;
            obj.IntensityTotal = p.Results.IntensityTotal;
            obj.Mask = p.Results.Mask;
            obj.TimeSeries = p.Results.TimeSeries;

            obj.Area = [];
            obj.Centroid = [];
            obj.Perimeter = [];
            obj.Orientation = [];
            obj.MajorAxisLength = [];
            obj.MinorAxisLength = [];
            obj.Circularity = [];
            obj.Eccentricity = [];

            obj = obj.computeStats();
        end

        function obj = computeStats(obj)
            if isempty(obj.Coordinates)
                return;
            end
            if strcmpi(obj.ROIType, 'Line2')
                y_low = min(obj.Coordinates);
                y_high = max(obj.Coordinates);
                obj.Area = abs(y_high - y_low);
                obj.Centroid = mean([y_low, y_high]);
                obj.Perimeter = [];
                obj.Orientation = [];
                obj.MajorAxisLength = [];
                obj.MinorAxisLength = [];
                obj.Circularity = [];
                obj.Eccentricity = [];
                return;
            end

            switch lower(obj.ROIType)
                case {'square', 'rectangle'}
                    x = obj.Coordinates(1);
                    y = obj.Coordinates(2);
                    width = obj.Coordinates(3);
                    height = obj.Coordinates(4);
                    obj.Area = width * height;
                    obj.Centroid = [x + width/2, y + height/2];
                    obj.Perimeter = 2*(width + height);
                    obj.MajorAxisLength = max(width, height);
                    obj.MinorAxisLength = min(width, height);
                    obj.Orientation = 0;
                    obj.Circularity = 4*pi*obj.Area/(obj.Perimeter^2);
                    obj.Eccentricity = sqrt(1 - (min(width,height)/max(width,height))^2);
                otherwise
                    % No computation for unhandled types
            end
        end

        function obj = computeIntensityStats(obj, img)
            if nargin < 2 || isempty(img)
                if ~isempty(obj.Parent) && isprop(obj.Parent, 'UG') && ~isempty(obj.Parent.UG)
                    img = obj.Parent.UG;
                else
                    error('No image provided and Parent image data is unavailable.');
                end
            end

            if isempty(obj.Mask)
                imgSize = size(img);
                obj.Mask = obj.generateMask(imgSize);
            end

            if ~isempty(obj.Mask)
                roiPixels = img(obj.Mask);
                obj.IntensityMean = mean(roiPixels(:));
                obj.IntensityMedian = median(roiPixels(:));
                obj.IntensityStd = std(double(roiPixels(:)));
                obj.IntensityTotal = sum(roiPixels(:));
            end
        end

        function mask = getMask(obj)
            if isempty(obj.Mask)
                dummy = ones(512, 512);
                obj.Mask = obj.generateMask(size(dummy));
            end
            mask = obj.Mask;
        end
    end

    methods (Access = private)
        function mask = generateMask(obj, imgSize)
            switch lower(obj.ROIType)
                case 'polygon'
                    xCoords = obj.Coordinates(:,1);
                    yCoords = obj.Coordinates(:,2);
                    mask = poly2mask(xCoords, yCoords, imgSize(1), imgSize(2));
                case {'rectangle', 'square'}
                    x = round(obj.Coordinates(1));
                    y = round(obj.Coordinates(2));
                    w = round(obj.Coordinates(3));
                    h = round(obj.Coordinates(4));
                    mask = false(imgSize(1), imgSize(2));
                    mask(max(1,y):min(y+h-1,imgSize(1)), max(1,x):min(x+w-1,imgSize(2))) = true;
                case 'line2'
                    y_low = round(min(obj.Coordinates));
                    y_high = round(max(obj.Coordinates));
                    mask = false(imgSize(1), imgSize(2));
                    mask(max(1,y_low):min(y_high,imgSize(1)), :) = true;
                otherwise
                    warning('Unknown ROIType "%s". Returning empty mask.', obj.ROIType);
                    mask = false(imgSize(1), imgSize(2));
            end
        end
    end

    methods (Static)
        function roi = createFullImageROI(parent)
            if nargin < 1 || isempty(parent)
                error('Parent image object must be provided.');
            end

            if ~isprop(parent, 'Type') || isempty(parent.Type)
                error('Parent must have a valid Type property (e.g., Line2, XY, FF).');
            end

            roiType = '';
            coords = [];

            switch lower(parent.Type)
                case 'line2'
                    if isprop(parent, 'YData') && ~isempty(parent.YData)
                        yCoords = [min(parent.YData), max(parent.YData)];
                    else
                        yCoords = [1, 512];
                    end
                    roiType = 'Line2';
                    coords = yCoords;
                case {'xy', 'ff'}
                    if isprop(parent, 'XData') && isprop(parent, 'YData') && ...
                            ~isempty(parent.XData) && ~isempty(parent.YData)
                        x = min(parent.XData);
                        y = min(parent.YData);
                        width = max(parent.XData) - x + 1;
                        height = max(parent.YData) - y + 1;
                    else
                        x = 1; y = 1; width = 512; height = 512;
                    end
                    roiType = 'rectangle';
                    coords = [x, y, width, height];
                otherwise
                    warning('Unknown imaging type "%s", defaulting to rectangle ROI.', parent.Type);
                    x = 1; y = 1; width = 512; height = 512;
                    roiType = 'rectangle';
                    coords = [x, y, width, height];
            end

            roi = ROI( ...
                'Parent', parent, ...
                'ROIType', roiType, ...
                'Coordinates', coords, ...
                'Comment', 'Full image ROI' ...
            );

            roi = roi.computeStats();
            roi = roi.computeIntensityStats();
        end

        function updateListBox(listboxHandle, roiArray)
            if isempty(roiArray)
                set(listboxHandle, 'String', {});
                return;
            end
            names = cell(size(roiArray));
            for k = 1:length(roiArray)
                if isempty(roiArray(k).Comment)
                    names{k} = sprintf('%s ROI', roiArray(k).ROIType);
                else
                    names{k} = roiArray(k).Comment;
                end
            end
            set(listboxHandle, 'String', names);
        end
    end
end
