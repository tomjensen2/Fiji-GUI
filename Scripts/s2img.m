function [recondata,imgx,imgy]=s2img(XData,YData,TData,Signaldata,Start,End,movie)

try
index=TData >=Start & TData <= End
catch
index=ones(size(XData,2))    
end
I_scaling=0.2
bglev=400
psfwd=0.35;
% calculate psf sigma and dx and dy from psfwd
psfsig = [psfwd,psfwd]/2.3548;  % sigma=FWHM/(2*sqrt(2*log(2)))
dx=psfsig(1)/3;dy=psfsig(2)/3;  % x,y grid resolution
scaled=1

if movie==1
xposdata=XData(:,index);
yposdata=YData(:,index);
signal=Signaldata(:,index);
else
xposdata=reshape(XData(:,index),numel(XData(:,index)),1)
yposdata=reshape(YData(:,index),numel(YData(:,index)),1)
signal=reshape(Signaldata(:,index),numel(Signaldata(:,index)),1)  
end


I_scaling=0.2
bglev=400
psfwd=0.35;
% calculate psf sigma and dx and dy from psfwd
psfsig = [psfwd,psfwd]/2.3548;  % sigma=FWHM/(2*sqrt(2*log(2)))
dx=psfsig(1)/3;dy=psfsig(2)/3;  % x,y grid resolution
xbound=[min(xposdata(:)),max(xposdata(:))];
xedges=xbound(1)-dx:dx:xbound(2)+dx;
imgx=diff(xedges)+xedges(1:end-1);imgx=imgx(:);
% calculate y boundary and bin edges
ybound=[min(yposdata(:)),max(yposdata(:))];
yedges=ybound(1)-dy:dy:ybound(2)+dy;
imgy=diff(yedges)+yedges(1:end-1);imgy=imgy(:);

% initialise data holder to x,y,T

recondata=zeros(numel(imgx),numel(imgy),size(yposdata,2));
% reconstruct image through each time frame
% create waitbar if it doesn't exist

N_steps2=size(yposdata,2)
for tidx=1:N_steps2
    % get signal data slice
    sigdata=signal(:,tidx)
    % get x from scx
    
    xpos=xposdata(:,tidx);
    % get y from scy
    ypos=yposdata(:,tidx);
    % empty position data storage
    data=cell(numel(xpos),1);
    % generate psf
    
    for ptdataidx=1:numel(xpos)
        % get mean position of psf
        psfmu = [xpos(ptdataidx),ypos(ptdataidx)];
        
        % make psf guasssian pdf
        psfgm = gmdistribution(psfmu,psfsig);
        % generate randome points
        genpts=random(psfgm,round(max(1,I_scaling*(sigdata(ptdataidx)-bglev))));
        %                     append points to list
        data{ptdataidx}=genpts;
        
    end
    
    % make intensity distribution from point list data
    data=cell2mat(data);
    [Nphoton,~,~] = histcounts2(data(:,1),data(:,2),xedges,yedges);
    
                [Ndwell,Xedges,Yedges] = histcounts2(xposdata,yposdata,xedges,yedges);
                temp=Nphoton./Ndwell;
                temp(isnan(temp)|isinf(temp))=NaN;
    
    % assign to filterdata storage
    recondata(:,:,tidx)=Nphoton;
  
    % Report current estimate in the waMitbar's message field
    %                 done=tidx/N_steps2;
    
end
end