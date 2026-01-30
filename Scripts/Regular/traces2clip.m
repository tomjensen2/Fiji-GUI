function traces2clip(datax,datay) %input must be as nx1 cell arrays of vectors

if size(datax,1)==1%single line to export
 if iscell(datax)==1
    datax=cell2mat(datax)
 end
    if size(datax,2)>1
       datax=transpose(datax)
    end   
if iscell(datax)==1
    datay=cell2mat(datay)
end
    if size(datay,2)>1
       datay=transpose(datay)
    end
 
XYtraces(:,1)=datax
XYtraces(:,2)=datay
else
    
[~,ncols] = cellfun(@size,datay,'UniformOutput',false);% get size of each plot
ncols=cell2mat(ncols); %convert to num
ncols1=max(ncols);% get maximum size

daty=NaN(size(datay,1),ncols1); %preallocate NaN array of n traces by maximum length
datx=NaN(size(datay,1),ncols1);%preallocate NaN array of n traces by maximum length


for i=1:size(daty,1) %loop to convert cell array to double matrix
daty(i,[1:ncols(i,1)])=cell2mat(datay(i,1));
datx(i,[1:ncols(i,1)])=cell2mat(datax(i,1));
end

daty=fliplr(transpose(daty));%reformat to columns=traces,rows=time, L-R=order of adding columns to axes
datx=fliplr(transpose(datx));

XYtraces = daty(:,[1;1]*(1:size(daty,2)));%interleave X and Y matrices
XYtraces(:,1:2:end) = datx;


end

num2clip(XYtraces);%copy to clipboard
