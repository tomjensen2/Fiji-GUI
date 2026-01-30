function [dataout] = X_Binning(tempimg,num,operator)

data2bin=tempimg;
bin_dimension=2;
elements_2_bin=num;
elements=1:1:size(data2bin,bin_dimension);
[a,~,~]=histcounts(elements,'NumBins',round(size(elements,2)/elements_2_bin));
colDist = [repelem(elements_2_bin, floor(size(data2bin,bin_dimension)/elements_2_bin)) rem(size(data2bin,bin_dimension),elements_2_bin)];
% probably need to permute here
binned_data_as_cell=mat2cell(data2bin,size(data2bin,1),a);
if operator=="mean"
    mean_of_binned_cells=cellfun(@nanmean,binned_data_as_cell,repmat({bin_dimension},1,size(a,bin_dimension)),'UniformOutput',0);
elseif operator=="sum"
    mean_of_binned_cells=cellfun(@sum,binned_data_as_cell,repmat({bin_dimension},1,size(a,bin_dimension)),'UniformOutput',0);
end
% and then permute again
dataout=cell2mat(mean_of_binned_cells);
end