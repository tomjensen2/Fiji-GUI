function UITable2Clip = UITable2Clip(UITable)

% Retrieve data, column names, and row names
data = UITable.Data;
colNames = UITable.ColumnName;  % Should be a cell array of strings
rowNames = UITable.RowName;      % Can be a cell array or empty

% Initialize the string variable
outputStr = '';

% Build header line
if ~isempty(rowNames)
    % Include an empty cell at the beginning for row names header
    headerLine = sprintf('\t%s\n', strjoin(colNames, '\t'));
else
    headerLine = sprintf('%s\n', strjoin(colNames, '\t'));
end
outputStr = [outputStr, headerLine];

% Loop through each row to append row names and data
nRows = size(data, 1);
for i = 1:nRows
    if ~isempty(rowNames)
        rowStr = sprintf('%s\t', rowNames{i});
    else
        rowStr = '';
    end
    % Convert each cell element to string (works for numbers or text)
    rowDataStr = cellfun(@(x) num2str(x), data(i, :), 'UniformOutput', false);
    rowLine = sprintf('%s\n', strjoin(rowDataStr, '\t'));
    outputStr = [outputStr, rowStr, rowLine];
end

% Copy the assembled text to the clipboard
clipboard('copy', outputStr);

end