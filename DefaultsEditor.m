classdef DefaultsEditor < handle
    properties
        FileName         % Name of the defaults JSON file
        DefaultsData     % Structure containing the defaults
        FigureHandle     % Handle to the main UI figure (uifigure)
        TreeHandle       % Handle to the tree control for displaying data
        EditFieldHandle  % Handle to the edit field for editing a value
        SaveButtonHandle % Handle to the button for committing changes
        SelectedNodePath % Currently selected node's property path (cell array)
    end
    
    methods
        % Constructor: Initializes the object with a filename and builds the GUI
        function obj = DefaultsEditor(fileName)
            if nargin < 1
                error('You must provide a filename for the defaults JSON file.');
            end
            obj.FileName = fileName;
            obj.loadDefaults();
            obj.createGUI();
        end
        
        % Method to load defaults from the JSON file
        function loadDefaults(obj)
            if exist(obj.FileName, 'file') ~= 2
                error('File "%s" does not exist.', obj.FileName);
            end
            fid = fopen(obj.FileName, 'r');
            if fid == -1
                error('Could not open file "%s" for reading.', obj.FileName);
            end
            raw = fread(fid, inf);
            fclose(fid);
            try
                obj.DefaultsData = jsondecode(char(raw'));
            catch ME
                error('Error decoding JSON from file "%s": %s', obj.FileName, ME.message);
            end
        end
        
        % Method to save defaults back to the JSON file
        function saveDefaults(obj)
            try
                jsonStr = jsonencode(obj.DefaultsData);
            catch ME
                error('Error encoding defaults data to JSON: %s', ME.message);
            end
            fid = fopen(obj.FileName, 'w');
            if fid == -1
                error('Could not open file "%s" for writing.', obj.FileName);
            end
            fwrite(fid, jsonStr, 'char');
            fclose(fid);
        end
        
        % Method to create the GUI components using uifigure
        function createGUI(obj)
            % Create a modern UI figure
            obj.FigureHandle = uifigure('Name', 'Defaults Editor', ...
                                        'Position', [300, 300, 800, 400]);
            % Create a tree control on the left side with a selection callback.
            obj.TreeHandle = uitree(obj.FigureHandle, ...
                                    'Position', [10 10 380 380], ...
                                    'SelectionChangedFcn', @(src,event)obj.nodeSelected(event));
            % Create an edit field on the right side for editing values.
            obj.EditFieldHandle = uieditfield(obj.FigureHandle, 'text', ...
                                    'Position', [410 320 380 30]);
            % Create a button to commit the updated value.
            obj.SaveButtonHandle = uibutton(obj.FigureHandle, 'push', ...
                                    'Text', 'Update Value', ...
                                    'Position', [410 280 100 30], ...
                                    'ButtonPushedFcn', @(src,event)obj.updateValue());
            % Populate the tree with the defaults data.
            obj.populateTree();
        end
        
        % Populate the tree control with the JSON data
        function populateTree(obj)
            % Clear any existing nodes.
            delete(obj.TreeHandle.Children);
            % Create a root node. For the root, the property path is empty.
            rootNode = uitreenode('Parent', obj.TreeHandle, 'Text', 'Defaults', 'UserData', {});
            % Recursively add nodes from the defaults data.
            obj.addNodes(rootNode, obj.DefaultsData, {});
        end
        
        % Recursive method to add nodes for each field/value in the data.
        % The "path" argument is a cell array that stores the location of the data.
        function addNodes(obj, parentNode, data, path)
            if isstruct(data)
                fields = fieldnames(data);
                for i = 1:numel(fields)
                    fieldName = fields{i};
                    newPath = [path, {fieldName}];
                    newNode = uitreenode('Parent', parentNode, 'Text', fieldName, 'UserData', newPath);
                    obj.addNodes(newNode, data.(fieldName), newPath);
                end
            elseif iscell(data)
                for i = 1:numel(data)
                    cellName = sprintf('Cell %d', i);
                    newPath = [path, {i}]; % Using the cell index for path
                    newNode = uitreenode('Parent', parentNode, 'Text', cellName, 'UserData', newPath);
                    obj.addNodes(newNode, data{i}, newPath);
                end
            else
                % Leaf node: convert the data to a string for display.
                if isnumeric(data) || islogical(data)
                    valueStr = num2str(data);
                else
                    valueStr = char(data);
                end
                % Create the leaf node.
                uitreenode('Parent', parentNode, 'Text', valueStr, 'UserData', path);
            end
        end
        
        % Callback when a node is selected in the tree.
        function nodeSelected(obj, event)
            selectedNodes = event.SelectedNodes;
            if isempty(selectedNodes)
                return;
            end
            % Use the first selected node.
            node = selectedNodes(1);
            path = node.UserData;
            value = obj.getDataAtPath(path);
            % Allow editing only for leaf nodes (non-struct, non-cell).
            if isstruct(value) || iscell(value)
                obj.EditFieldHandle.Value = '';
                obj.EditFieldHandle.Editable = 'off';
                obj.SaveButtonHandle.Enable = 'off';
            else
                if isnumeric(value) || islogical(value)
                    obj.EditFieldHandle.Value = num2str(value);
                else
                    obj.EditFieldHandle.Value = char(value);
                end
                obj.EditFieldHandle.Editable = 'on';
                obj.SaveButtonHandle.Enable = 'on';
            end
            obj.SelectedNodePath = path;
        end
        
        % Helper function to get data from DefaultsData using a path.
        function value = getDataAtPath(obj, path)
            value = obj.DefaultsData;
            for i = 1:length(path)
                key = path{i};
                if ischar(key)
                    value = value.(key);
                else
                    value = value{key};
                end
            end
        end
        
        % Helper function to set data in DefaultsData using a path.
        function setDataAtPath(obj, path, newValue)
            % For simplicity, use setfield for struct updates.
            % This will work for fields in structures.
            % Note: Updating cell array elements may require additional logic.
            if isempty(path)
                obj.DefaultsData = newValue;
            else
                obj.DefaultsData = setfield(obj.DefaultsData, path{:}, newValue);
            end
        end
        
        % Callback for the update button to commit changes.
        function updateValue(obj)
            if isempty(obj.SelectedNodePath)
                return;
            end
            newValueStr = obj.EditFieldHandle.Value;
            % Attempt to convert to a numeric value if applicable.
            numericValue = str2double(newValueStr);
            if ~isnan(numericValue)
                newValue = numericValue;
            else
                newValue = newValueStr;
            end
            % Update the underlying DefaultsData.
            obj.setDataAtPath(obj.SelectedNodePath, newValue);
            % Update the selected node's text in the tree.
            selectedNodes = obj.TreeHandle.SelectedNodes;
            if ~isempty(selectedNodes)
                selectedNodes(1).Text = newValueStr;
            end
            % Optionally, immediately write changes to the JSON file.
            obj.saveDefaults();
        end
    end
end