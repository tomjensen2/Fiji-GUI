function [datax,datay]=Line_profile(roi,img,imgx,imgy,hw)


hw=hw

            %get original image
org_img=img
px_lim=imgx
py_lim=imgy
m=1
                %get line positions
xys=roi
                
                % get dx, dy, l to transformation coordinate
                dx=(diff(xys(:,1)));
                dy=(diff(xys(:,2)));
                len=sqrt(sum(diff(xys,1,1).^2,2));% lengths of line segments
                alpha=atand(dy./dx);
                numseg=numel(len);%number of line segments in the impolyline
                delx=abs(hw*sind(alpha));%x extent depending on hw
                dely=abs(hw*cosd(alpha));%y extent depending on hw
                dist{m}=0;lineprofile{m}=[];
                for ptidx=1:1:numseg
                    loc_imgx=[min(xys(ptidx:ptidx+1,1))-delx(ptidx),max(xys(ptidx:ptidx+1,1))+delx(ptidx)];
                    loc_imgy=[min(xys(ptidx:ptidx+1,2))-dely(ptidx),max(xys(ptidx:ptidx+1,2))+dely(ptidx)];
                    if diff(loc_imgx)==0
                        %horizontal line
                        xpos=find(px_lim>=loc_imgx(1)-hw&px_lim<=loc_imgx(2)+hw);
                    else
                        xpos=find(px_lim>=loc_imgx(1)&px_lim<=loc_imgx(2));
                    end
                    if diff(loc_imgy)==0
                        % vertical line
                        ypos=find(py_lim>=loc_imgy(1)-hw&py_lim<=loc_imgy(2)+hw);
                    else
                        ypos=find(py_lim>=loc_imgy(1)&py_lim<=loc_imgy(2));
                    end
                    
                    xoffset=abs(2*delx(ptidx)*cosd(alpha(ptidx)));
                    %yoffset=abs(dy(ptidx)*diff(loc_imgy)./len(ptidx)-hw);
                    yoffset=abs(dy(ptidx)*cosd(ptidx));
                    % crop local image
                    loc_img=org_img(ypos,xpos);%map axis is inverted
                    % perform local rotation
                    tform = affine2d([cosd(alpha(ptidx)) -sind(alpha(ptidx)) 0; sind(alpha(ptidx)) cosd(alpha(ptidx)) 0; 0 0 1]);
                    rotimg=imwarp(loc_img,tform,'FillValues',nan,'Interp','cubic');
                    
%                     figure(2351+m);colormap('gray');
%                     subplot(numseg,5,(ptidx-1)*5+1);
%                     imagesc(px_lim,py_lim,org_img/max(org_img(:)));hold all;plot(xys(ptidx:ptidx+1,1),xys(ptidx:ptidx+1,2),'w','LineWidth',ceil(hw*2));hold off;axis('image');
%                     subplot(numseg,5,(ptidx-1)*5+2);imagesc(loc_img/max(loc_img(:)));axis('image');
%                     subplot(numseg,5,(ptidx-1)*5+3);imagesc(rotimg/max(rotimg(:)));axis('image');
                    xoff=floor(xoffset/(2*xoffset+len(ptidx))*size(rotimg,2));
                    if isnan(xoff)
                        %in case vertical
                        xoff=0;
                    end
                    yoff=floor(yoffset/(2*(yoffset+hw))*size(rotimg,1));
                    %crop rotated image
                    rotimg=rotimg(yoff+1:end-yoff,xoff+1:end-xoff);%map axis is inverted
%                     subplot(numseg,5,(ptidx-1)*5+4);imagesc(rotimg/max(rotimg(:)));axis('image');
                    lp=nanmean(rotimg,1);
                    dist_lp=linspace(0,len(ptidx),numel(lp));
%                     app.dist=[dist{m},dist{m}(end)+dist_lp];
                    
%                     subplot(numseg,5,(ptidx-1)*5+5);plot(dist_lp,lp);
                   
                end
               
                datax=dist_lp
                datay=lp
end      