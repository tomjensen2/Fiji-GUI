%Get Distance vs Intensity profile from point source
%1) Generate X and Y co-ordinate grids matching Data source size (Intdata)
xsize=size(Intdata,2)
ysize=size(Intdata,1)
[gridx,gridy]=meshgrid(1:1:xsize,1:1:ysize)
%Run FastPeakFind to get 2D peak (to be entered)
%output col,row=peak co-ordinates
%Re-centre grids to col/row, and calibrate to pixel
gridx=gridx-col
gridy=gridy-row

gridy=gridy*0.08
gridx=gridx*0.08
%Generate reference Grids for conversion to polar co-ordinates
gridx0=zeros(xsize)
gridy0=zeros(ysize)
%Store all Grids as cell arrays for cellfun
XData=[mat2cell(gridx,xsize,ysize),mat2cell(gridx0,xsize,ysize)]
YData=[mat2cell(gridy,xsize,ysize),mat2cell(gridy0,xsize,ysize)]
%Run @cartpol using X and Y grids referenced to Zero grids
[theta,rho]=cellfun(@cart2pol,XData,YData,"UniformOutput",false)
%Get Histogram counts for rho grid with width of 0.1 micron
[a,b,c]=histcounts(rho{1,1},"BinWidth",0.1)
%Reshape grids to work with accumarray
Index=reshape(c,numel(c),1)
Intensity_vals=reshape(Intdata,numel(Intdata),1)
%Get the mean (excluding NaNs) of Map data, indexed to histogram bins representing distance, transpose
Int_vs_distance=fliplr((accumarray(Index,Intensity_vals,[],@nanmean)).');
%Generate XData for plot 
XData_4_plot=linspace(0,size(Int_vs_distance,2)*0.1,size(Int_vs_distance,2));
figure
plot(Int_vs_distance,'XData',XData_4_plot);
 