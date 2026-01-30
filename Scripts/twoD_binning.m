function [mat_out]=twoD_binning(mat_in,Xbin,Ybin,Zbin)
%get Data
data2bin=mat_in;
elementsX=1:1:size(data2bin,2);
elementsY=1:1:size(data2bin,1);
elementsZ=1:1:size(data2bin,3);
[aX]=histcounts(elementsX,'NumBins',round(size(elementsX,2)/Xbin));
[aY]=histcounts(elementsY,'NumBins',round(size(elementsY,2)/Ybin));
[aZ]=histcounts(elementsZ,'NumBins',round(size(elementsZ,2)/Zbin));
mat_out=zeros(numel(aY),numel(aX),numel(elementsZ));
if ~isempty(which('imresize3'))==1;
mat_out=imresize3(mat_in,[numel(aY),numel(aX),numel(aZ)]);
end
% for i=1:size(data2bin,3)
% progressbar(i/size(data2bin,3));  
% % binned_data_as_cell=mat2cell(data2bin(:,:,i),aY,aX);
% % mat_out(:,:,i)=cell2mat(cellfun(@(x) nanmean(x,'all'),binned_data_as_cell,'UniformOutput',0));

% end
end