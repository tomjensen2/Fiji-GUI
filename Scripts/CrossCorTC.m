  %% Local 2D cross correlation to identify 'active regions of interest'
  function [cctimecourse]=CrossCorTC(obj,channel,window,w2d)
    
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%     ImData Method   CrossCorMap
            %%%     Outputs the local cross correlation map of a framescan as used in Boddum et.al. 2016 
            %%%     (adapted from code by Spenser Smith, https://labrigger.com/blog/2013/06/13/local-cross-corr-images/)
            %%%     Smith)
            %%%
            %%%     Input Arguements:
            %%%                 obj: Imdata object array
            %%%                 channel: ImData channel to operate on
            %%%                 1=UG,2=UR
            %%%                 time_start: time in seconds to begin the
            %%%                 map
            %%%                 time_end: time in seconds to end the map
            %%%                 w2d: The neighbourhood size to calculate
            %%%                 the local xcorr
            %%%                %%%
            %%%     Output Variable
            %%%                 obj: Output Imdata object array
            %%%                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %convert data type to float if needed
            if ischar(channel)==1
                channel=str2double(channel)
            end
             if channel==1; tc=obj.UG; 
             elseif channel==2; tc=obj.UR; 
             end
             
             if isfloat(tc)==0 ;tc=double(tc);
             end
             cctimecourse=zeros(size(tc,1),size(tc,2),size(tc,3)+window+1);
for i=1:size(tc,3)
    try
    cctimecourse(:,:,i)=CrossCorMap(tc(:,:,[i:i+window]),w2d);
    end
end
        function [ccimage]=CrossCorMap(tc,w2d)
             %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%     Local function CrossCorMap
            %%%     Outputs the local cross correlation map of a framescan as used in Boddum et.al. 2016 
            %%%     (adapted from code by Spencer Smith, https://labrigger.com/blog/2013/06/13/local-cross-corr-images/)
            %%%     Smith)
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %convert data type to float if needed
            

                % Initialize and set up parameters
                ymax=size(tc,1);
                xmax=size(tc,2);
                numFrames=size(tc,3);
                ccimage=zeros(ymax,xmax);
                %kurtimage=zeros(ymax,xmax);
                w=w2d;
                
                for y=1+w:ymax-w
                    for x=1+w:xmax-w
                        % Center pixel
                        thing1 = reshape(tc(y,x,:)-nanmean(tc(y,x,:),3),[1 1 numFrames]); % Extract center pixel's time course and subtract its mean
                        ad_a   = nansum(thing1.*thing1,3);    % Auto corr, for normalization later

                        % Neighborhood
                        a = tc(y-w:y+w,x-w:x+w,:);         % Extract the neighborhood
                        b = nanmean(tc(y-w:y+w,x-w:x+w,:),3); % Get its mean
                        thing2 = bsxfun(@minus,a,b);       % Subtract its mean
                        ad_b = nansum(thing2.*thing2,3);      % Auto corr, for normalization later

                        % Cross corr
                        ccs = nansum(bsxfun(@times,thing1,thing2),3)./sqrt(bsxfun(@times,ad_a,ad_b)); % Cross corr with normalization
                        ccs((numel(ccs)+1)/2) = [];        % Delete the middle point
                        ccimage(y,x) = nanmean(ccs(:));       % Get the mean cross corr of the local neighborhood
%                         kurtimage(y,x)=nanmean(kurtosis(a,1,3),[1 2]);
                    end
                end
                
                
            
        end
  end