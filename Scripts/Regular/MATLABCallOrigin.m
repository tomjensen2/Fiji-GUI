%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This m-file shows some base operations between a MATLAB client and an 
% Origin Server application.
%
% This example does the following:
%   -> Connect to an existing Origin server application or create a new 
%      one if none exists.
%   -> Create workbook and find workseet, and then change worksheet name.
%   -> Get columns from worksheet, and set column's type, and set data 
%      to column.
%   -> Create graph and add x-y-error data as scatter line plot to graph.
%   -> Customize plot, such as axes' label, legend, range, etc.
%   -> Save project.
%
% Usage:
%   x = [0.1:0.1:3; 10 * sin(0.1:0.1:3); 20 * cos(0.1:0.1:3)]';
%   MATLABCallOrigin(x);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function MATLABCallOrigin(x,names,worksheet)

    % Obtain Origin COM Server object
    % Connect to an existing instance of Origin
    % or create a new one if none exists    
    originObj = actxserver('Origin.ApplicationSI');
    
    % Make the Origin session visible
    originObj.Execute('doc -mc 1;');

    % Clear "dirty" flag in Origin to suppress prompt 
    % for saving current project
    originObj.IsModified = false;
    % Create a workbook
    strBook = originObj.CreatePage(2, 'Origin');%2 = workbook
%     strmat= originObj.CreatePage(1, 'Origin');%1 = Matrixbook
    % Find the worksheet
    wks = originObj.FindWorksheet(strBook);
%     wkm = originObj.FindMatrixSheet(strmat);
    % Rename the worksheet to "MySheet"
    wks.Name = worksheet;
%     wkm.
    % Set 3 columns
    wks.Cols = size(x,2);
    % Get column collection in the worksheet
    cols = wks.Columns;
    cols = invoke(wks, 'Columns');
    if isstring(names) | ischar(names)
        names={names}
    end
    names1=flipud(names).';
    newCellArray = repmat({''}, 1, 2 * length(names1));
    newCellArray(2:2:end) = names1

    %     for i=0:2:size(x,2)
%         
% colx=cols.Item(uint8(i))
% colx.Type=3
% % colx.invoke('LongName',names{i+1,1});
% % colx.   
% a=0
%        
%     end

if worksheet=="Raster"
wks.SetData(x)
colx=cols.Item(uint8(0))
colx.Type=3
colx.LongName='Time'
colx.Units='Seconds'
elseif worksheet=="Traces"
    for i=1:size(x,2)
        i1=i-1
        wks.SetData(x(:,i), 0, i1);
        if ~mod(i1,2)
            colx=cols.Item(uint8(i1))
            colx.Type=3
            if iscell(names)
               colx.Comments=newCellArray{1,i}
            else
               colx.Comments=names
            end
            colx.LongName=newCellArray{1,i}
            colx.Units='Seconds'

else
colx.LongName=newCellArray{1,i}
colx.Units='Seconds'
end
end
%      data=originObj.MatrixPages
end     
    % Get the columns
%     colx  = cols.Item(uint8(0));
%     coly =  cols.Item(uint8(1));
%     colerr = cols.Item(uint8(2));
%         
%     % Set column type
%     colx.Type = 3;  % x column
%     coly.Type = 0;  % y column
%     colerr.Type = 2;  % y error
   
    % Set data to the columns
%     wks.SetData(x, 0, 0);
%     wkm.SetData(x);
    % Create a graph
%     strGraph = originObj.CreatePage(3, '', 'Origin');
%     
%     % Find the graph layer
%     gl = originObj.FindGraphLayer(strGraph);
%     
%     % Get dataplot collection from the graph layer
%     dps = gl.DataPlots;
%     
%     % Create a data range
%     dr = originObj.NewDataRange();
%     
%     % Add data to data range
%     dr.Add('X', wks, 0, 0, -1, 0);
%     dr.Add('Y', wks, 0, 1, -1, 1);
%     dr.Add('ED', wks, 0, 2, -1, 2);
%     
%     % Add data plot to graph layer
%     dps.Add(dr, 202);  % 202 for symbol+line plot
%     
%     % Rescale the graph layer
%     gl.Execute('rescale;');
%     
%     % Change the bottom x' title
%     gl.Execute('xb.text$ = "Channel";');
%     % Change the left y's title
%     gl.Execute('yl.text$ = "Amplitude";');
%     
%     %show the top and right axes
%     gl.Execute('range ll = !;');
%     gl.Execute('ll.x2.showAxes=3;');
%     gl.Execute('ll.y2.showAxes=3;');
%     
%     %set the x axis scale
%     gl.Execute('ll.x.from=0;');
%     gl.Execute('ll.x.to=3;');
%     
%     %set the x axis Major tick increment. 
%     gl.Execute('ll.x.inc=10;');
% 
%     %delete the legend
%     gl.Execute('label -r legend;');
%     
%     %Save the current project using the specified path and filename
% %     originObj.Execute('save D:\MATLABCallOrigin.opju;');  
    
    % Release
    release(originObj);