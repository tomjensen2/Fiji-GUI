function splitROIs = Split_FemtoROI(Data)
%% Function splits ImData line scan objects into individual ROIs dependent on the inbuilt scanline data from Femtonics
%%Input Args:  Data (ImData Object or object Array)
%%Output Args: splitROIs (ImData Object or object array of size n ROI size(Data)
if Data.Type=="Line2"
c=1
    for i=2:size(Data.scanline.roi,2)
                splitROIs(c,1)=copyobj2(Data);
                splitROIs(c,1)=splitROIs(c,1).crop_data(1,splitROIs(c,1).scanline.roi(1,i),splitROIs(c,1).scanline.roi(2,i),'just do');
                splitROIs(c,1).scanline.roi=1;
                splitROIs(c,1).scanline.roi(2,1)=size(splitROIs(c,1).UG,1);
                splitROIs(c,1).comment=sprintf('SplitROI %d| %s',c,splitROIs(c,1).comment);
%                 splitROIs(c,1).YData=splitROIs(c,1).YData-splitROIs(c,1).YData(2)
                c=c+1;
    end
end
end