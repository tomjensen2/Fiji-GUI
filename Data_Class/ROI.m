classdef ROI
    % ROI class for managing regions of interest (ROIs)
    % Supports both typical frame scan ROIs and 'Line2' ROIs for line scans.
    %
    % Version 1.0.0

    properties (Constant)
        Version = '1.0.0';
    end
    
    properties
        Parent          % Handle to the parent ImData object
        ParentType      % (Optional) Imaging type string if needed
        ROIType         % ROI shape/type (e.g., 'square', 'oval', 'polygon', 'Line2')
        Coordinates     % For frame scans: [x y width height] or Nx2 for polygons;
                        % For 'Line2': a vector of y-values
        ROIHandle       % Interactive ROI handle (if created)
        Comment         % Name or comment for the ROI
        
        % Computed geometric properties:
        Area            
        Centroid        
        Perimeter       
        Orientation     
        MajorAxisLength 
        MinorAxisLength 
        Circularity     
        Eccentricity    
        
        % Additional metadata:
        ID              
        Color           % e.g., [1 0 0] for red
        CreationDate    
        
        % Pixel intensity statistics:
        IntensityMean   
        IntensityMedian 
        IntensityStd    
        IntensityTotal  
        
        % Binary mask of the ROI:
        Mask            
            
        % Time series data (optional):
        TimeSeries      
    end
    
    methods
        function obj = ROI(varargin)
            % Constructor: Initialize ROI using name-value pairs.
            p = inputParser;
            addParameter(p, 'Parent', [], @(x) isobject(x));
            addParameter(p, 'ParentType', '', @ischar);
            addParameter(p, 'ROIType', '', @ischar);
            addParameter(p, 'Coordinates', [], @(x) isnumeric(x));
            addParameter(p, 'ROIHandle', [], @(x) true);
            addParameter(p, 'Comment', '', @ischar);
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
            obj.ID = p.Results.ID;
            obj.Color = p.Results.Color;
            obj.CreationDate = p.Results.CreationDate;
            obj.IntensityMean = p.Results.IntensityMean;
            obj.IntensityMedian = p.Results.IntensityMedian;
            obj.IntensityStd = p.Results.IntensityStd;
            obj.IntensityTotal = p.Results.IntensityTotal;
            obj.Mask = p.Results.Mask;
            obj.TimeSeries = p.Results.TimeSeries;
            
            % Initialize computed properties.
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
            % computeStats computes geometric properties based on ROIType.
            if isempty(obj.Coordinates)
                return;
            end
            if strcmpi(obj.ROIType, 'Line2')
                if ~isnumeric(obj.Coordinates)
                    error('For a Line2 ROI, Coordinates must be a numeric vector.');
                end
                if numel(obj.Coordinates) < 2
                    error('For a Line2 ROI, at least two y-values are required.');
                end
                y_low = min(obj.Coordinates);
                y_high = max(obj.Coordinates);
                obj.Area = abs(y_high - y_low);  % Vertical span
                obj.Centroid = mean([y_low, y_high]);
                % Other properties not applicable for Line2.
                obj.Perimeter = [];
                obj.Orientation = [];
                obj.MajorAxisLength = [];
                obj.MinorAxisLength = [];
                obj.Circularity = [];
                obj.Eccentricity = [];
                return;
            end
            
            % Standard ROI calculations (for rectangle, ellipse, polygon, etc.)
            switch lower(obj.ROIType)
                case {'square', 'rectangle'}
                    if numel(obj.Coordinates)==4
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
                        obj.Eccentricity = (max(width,height) > 0) ...
                            * sqrt(1 - (min(width,height)/max(width,height))^2);
                    end
                % Additional cases for 'oval', 'polygon', etc. would follow...
                otherwise
                    % Leave properties empty if not applicable.
            end
        end
        
        function obj = computeIntensityStats(obj, img)
            % computeIntensityStats computes pixel intensity stats for the ROI.
            % If no image is passed, attempt to use the parent's image data.
            if nargin < 2 || isempty(img)
                if ~isempty(obj.Parent) && isprop(obj.Parent, 'UG')
                    img = obj.Parent.UG;
                else
                    error('No image provided and Parent image data is unavailable.');
                end
            end
            
            if isempty(obj.Mask)
                if strcmpi(obj.ROIType, 'polygon') && ~isempty(obj.Coordinates)
                    [rows, cols] = size(img);
                    xCoords = obj.Coordinates(:,1);
                    yCoords = obj.Coordinates(:,2);
                    obj.Mask = poly2mask(xCoords, yCoords, rows, cols);
                elseif numel(obj.Coordinates)==4
                    [rows, cols] = size(img);
                    mask = false(rows, cols);
                    x = round(obj.Coordinates(1));
                    y = round(obj.Coordinates(2));
                    w = round(obj.Coordinates(3));
                    h = round(obj.Coordinates(4));
                    mask(y:min(y+h-1,rows), x:min(x+w-1,cols)) = true;
                    obj.Mask = mask;
                elseif strcmpi(obj.ROIType, 'Line2')
                    % For Line2, create a mask that covers all columns at the given y-values.
                    [rows, cols] = size(img);
                    mask = false(rows, cols);
                    y_low = min(obj.Coordinates);
                    y_high = max(obj.Coordinates);
                    mask(round(y_low):round(y_high), :) = true;
                    obj.Mask = mask;
                end
            end
            
            if ~isempty(obj.Mask)
                roiPixels = img(obj.Mask);
                obj.IntensityMean = mean(roiPixels(:));
                obj.IntensityMedian = median(roiPixels(:));
                obj.IntensityStd = std(double(roiPixels(:)));
                obj.IntensityTotal = sum(roiPixels(:));
            end
        end
    end
    
    methods(Static)
        function updateListBox(listboxHandle, roiArray)
            % updateListBox updates a listbox with ROI names.
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
        
        % Other static analytic methods (e.g., correlation, FFT) remain unchanged.
    end
end