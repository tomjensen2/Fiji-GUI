% @matrix data
% @OUTPUT Dataset rval
% @OUTPUT Dataset z_scores

% Performs dilation with a 3x3 square,
% operating on the active dataset
% Outputs the dilated mask and the original image
% with the mask applied.
% startidx=185
% endidx=211
% data1=data;
% 
% % Find the sample from the matrix using the logical index
% logical_index= 1:size(data1,3) >= startidx & 1:size(data1,3) <= endidx;
% F0 = data1(:,:,logical_index);
% % Calculate the sample mean and standard deviation
% sample_mean = mean(F0,3);
% sample_std = std(F0,0,3);
% 
% % Compute z-scores
% z_scores = (data1 - sample_mean) ./ sample_std;

% data=MIJ.getCurrentImage;
rawdata=MIJ.getCurrentImage;

time_vector=1:1:size(rawdata,3);
startidx=1;
endidx=15;

logical_index= time_vector >= startidx & time_vector <= endidx;
F0 = rawdata(:,:,logical_index);
sample_std = std(F0,0,3);
thresh=mean(F0,3)+sample_std*2
tdata=rawdata-thresh;
tdata(tdata<0)=0;
tdata(tdata>0)=1;
MIJ.createImage(tdata);

celldata=mat2cell2(rawdata,'eframe');
zcell=cellfun(@(x) custom_zscore(x,time_vector,startidx,endidx), celldata,'UniformOutput',false);
data=cell2mat(zcell);
deconcell=cellfun(@(x) deconvexp(time_vector,x,20), celldata,'UniformOutput',false);
deconcell=cellfun(@(x) permute(x,[3,1,2]), deconcell,'UniformOutput',false);
decondata=cell2mat(deconcell);
zmat=data;
zmat(zmat<2)=0;
zmat(zmat==inf)=0;
zplot=squeeze(nansum(zmat,[1 2]))

data(data<2)=nan;
data(data>2)=1;
mask=data;
rval=squeeze(nansum(mask,[1 2]));
area=(rval./(size(data(:,:,1),1)*size(data(:,:,1),2)))*100
XData=linspace(0,5,numel(rval));
fig1=figure;
ax1=axes;
plot(ax1,XData,zplot);

number_images=10
[a,b,c]=histcounts(XData,'NumBins',number_images);
celldata=squeeze(mat2cell(zmat,size(data,1),size(data,2),a));

celldata_m=cellfun(@(x) nansum(x,3),celldata,"UniformOutput",false);
figure;
t=tiledlayout(gcf,'flow','Padding','compact');
celldata_m=cellfun(@(x) nansum(x,3),celldata,"UniformOutput",false);
for i=1:numel(celldata_m);
	t2(i)=nexttile(t);
	imagesc(t2(i),celldata_m{i,1});
    %t2(i).CLim=[1,20];
end


number_images=8
[a,b,c]=histcounts(XData,'NumBins',number_images);
celldata=squeeze(mat2cell(zmat,size(data,1),size(data,2),a));

figure;
s=tiledlayout(gcf,'flow','Padding','compact');
celldata_m2=cellfun(@(x) CrossCorrImage(x,10),celldata,"UniformOutput",false);
for i=1:numel(celldata);
	s2(i)=nexttile(s);
	imagesc(s2(i),celldata_m2{i,1});
    %t2(i).CLim=[1,20];
end
MIJ.createImage(cell2mat(permute(celldata_m2,[3,2,1])));

celldata_m3=cellfun(@(x) imbinarize(x),celldata_m2,"UniformOutput",false);
celldata_m4=cellfun(@(x) imerode(x,ones(3,3)),celldata_m3,"UniformOutput",false);
celldata_m5=cellfun(@(x) regionprops(x,'all'),celldata_m4,"UniformOutput",false);
% regions=cell2mat(celldata_m5);
% 
% regions=regions(arrayfun(@(x) x.Area>40,regions,"UniformOutput",true))
% 
% figure;
% u=tiledlayout(gcf,'flow','Padding','compact');
% for i=1:numel(celldata);
% s3(i)=nexttile(u);
% imagesc(s3(i),celldata_m4{i,1});
% %t2(i).CLim=[1,20];
% end