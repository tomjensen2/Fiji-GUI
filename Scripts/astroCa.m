rawdata=MIJ.getCurrentImage;
time_vector=1:1:size(rawdata,3);
startidx=1;
endidx=20;


celldata=mat2cell2(rawdata,'eframe');
zcell=cellfun(@(x) custom_zscore(x,time_vector,startidx,endidx), celldata,'UniformOutput',false);
Zmat=cell2mat(zcell);
MIJ.createImage(Zmat)
%%
% 1) Generate zscore images
% 2) calculate the >1SD
% 3) CCImage on that image
% 4) extracts hot spots
% 5) plots traces in origin for each hotspot
% 6) get the individual peaks on each HS

%%