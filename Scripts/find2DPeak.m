% def find2DPeak(data,neighborhood_size,threshold):
%     import scipy.ndimage as ndimage
%     import scipy.ndimage.filters as filters
%     import matplotlib.pyplot as plt
% 
%     data_max = filters.maximum_filter(data, neighborhood_size)
%     maxima = (data == data_max)
%     data_min = filters.minimum_filter(data, neighborhood_size)
%     diff = ((data_max - data_min) > threshold)
%     maxima[diff == 0] = 0
% 
%     labeled, num_objects = ndimage.label(maxima)
%     slices = ndimage.find_objects(labeled)
%     x, y = [], []
%     for dy,dx in slices:
%         x_center = (dx.start + dx.stop - 1)/2
%         x.append(x_center)
%         y_center = (dy.start + dy.stop - 1)/2    
%         y.append(y_center)
% 
%     #plt.imshow(data)
%     #plt.autoscale(False)
%     
%     
%     return x,y

function [peak_props]=find2DPeak(data,neighbourhood,threshold,scalefactor)
medf=@(x) nanmedian(x(:));
minf=@(x) nanminimum(x(:));
%set 'min()' filter                %set 'max()' filter
min_Image=nlfilter(data,[neighbourhood neighbourhood],medf);  %Apply over 3 x 3 neighbourhood
% max_Image=nlfilter(data,[neighbourhood neighbourhood],maxf);  %Apply over 3 x 3 neighbourhood
% maxima=data==max_Image
% difference=(max_Image - min_Image)
over_thresh=min_Image > threshold*scalefactor
connected=bwconncomp(over_thresh,8);
labidx = labelmatrix(connected);
peak_props=regionprops(connected,min_Image,'all')
end