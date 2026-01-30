function [binUG,binUR,binScX,binScY] = Binning(UG,UR,ScX,ScY,x_or_y,num)

datanames=["UG","UR","ScX","ScY"];
outputdatanames=["binUG","binUR","binScX","binScY"];
for i=1:4
%bin data by mean in X dimension
eval(sprintf('tempimg=transpose(double(%s))',datanames(i)));

if x_or_y=='x'
xvals=1:1:size(tempimg,2);
[a,b,c]=histcounts(xvals,'NumBins',round(size(xvals,2)/num));
for i=1:size(tempimg,1);
testdata(:,i)=accumarray(transpose(c),tempimg(i,:),[],@mean);
end
eval(sprintf('%s=testdata',outputdatanames(i)));

a=[]
b=[]
c=[]
tempimg=[]
testdata=[]
xvals=[]
elseif x_or_y=='y'
%bin data by mean in Y dimension
tempimg=transpose(app.DATA.UG);
yvals=1:1:size(tempimg,1);
[a,b,c]=histcounts(yvals,'NumBins',round(size(yvals,2)/num));
for i=1:size(tempimg,2);
testdata(i,:)=accumarray(transpose(c),tempimg(:,i),[],@mean);
end
eval(sprintf('%s=testdata',outputdatanames(i)));
end
a=[]
b=[]
c=[]
tempimg=[]
testdata=[]
xvals=[]


% %bin data by mean in Z dimension
% tempimg=app.DATA.UG;
% zvals=1:1:size(tempimg,3);
% [a,b,c]=histcounts(zvals,'NumBins',round(size(zvals,2)/2));
% for i=1:size(tempimg,3);
% testdata(:,:,i)=accumarray(transpose(c),tempimg(:,:,i),[],@mean);
% end
% imagesc(testdata);
% 
% a=[]
% b=[]
% c=[]
% tempimg=[]
% testdata=[]
% xvals=[]
end