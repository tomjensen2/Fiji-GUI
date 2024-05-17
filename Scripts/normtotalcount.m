function [raw,fval] = normtotalcount(Data,channel,binsize,OGB)

%OP_NTC Calculate Normalised Total Count from traces or images
%--------------------------------------------------------------------------
%   1. Using normalised total count to estimate calcium
%
%---Batch process----------------------------------------------------------
%   Parameter=struct('selected_data','1','bin_dim','[1,1,1,1,1]','fit_t0','3e-10','fit_t1','9e-9','bg_threshold','10','t_disp_bound','[0.05,0.5,64]','parameter_space','NTC');
%   selected_data=data index, 1 means previous generated data
%   bin_dim=[1,1,1,1,1],spatial binning before calculation, default no binning
%   fit_t0=3e-10,starting point to seek for FLIM peak
%   fit_t1=9e-9, integration period after detected peak,default 9ns
%   bg_threshold=10,background tail photon count threshold
%   t_disp_bound=[0.05,0.5,64], display bound with [min,max,nlevels]
%   parameter_space='NTC', name for generated parameters 
%--------------------------------------------------------------------------
%   HEADER END
if channel==1
    Intdata=Data.UG
elseif channel==2
    Intdata=Data.UR
end

if OGB==1
    parameters=struct('note','',...
    'operator','op_NTC',...
    'parameter_space','NTC',...
    'bin_dim',[1,1,1,1,1],...
    'fit_t0',3e-10,...
    'fit_t1',3e-9,... %ns after peak
    'bg_threshold',10,... %background threshold
    't_disp_bound',[0.05,0.5,64]);
else
    parameters=struct('note','',...
    'operator','op_NTC',...
    'parameter_space','NTC',...
    'bin_dim',[1,1,1,1,1],...
    'fit_t0',3e-10,...
    'fit_t1',3e-9,... %ns after peak
    'bg_threshold',10,... %background threshold
    't_disp_bound',[0.05,0.5,64]);
end

% get pixel binning information
                        pX_lim=1;
                        pY_lim=1;
                        pZ_lim=1;
                        pT_lim=numel(Data.TData);
                        Xbin=binsize;
                        Ybin=1;
                        Zbin=1;
                        Tbin=1;
                        
                        % get dt dimension information
                        t=Data.tauData;
                        
                        %initialise data size
                        p_total=pX_lim*pY_lim*pZ_lim*pT_lim;
                        
                        % get fit range
                        t_fit=(t>=parameters.fit_t0);
                        I=nansum(Intdata(t_fit,:),2);%get max position from total data
                       
                        
                       %conversion to here %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                        
                        
                        
                        [~,max_idx]=max(I);% get max position
                        t_duration=parameters.fit_t1;
                        t=t(t_fit);
                        t_tail=find(t<=(t(max_idx)+t_duration),1,'last');
                        
                        % get min_threshold
                        min_threshold=parameters.bg_threshold;
                        
                         N_steps=p_total;barstep=0;
                        windowsize=[1,Xbin];
                        
                        fval=convn(Intdata,ones(windowsize),'same');
                        for p_idx=1:p_total
                            % check waitbar
%                             if getappdata(waitbar_handle,'canceling')
%                                 message=sprintf('%s\n%s calculation cancelled.',message,parameters.operator);
%                                 delete(waitbar_handle);       % DELETE the waitbar; don't try to CLOSE it.
%                                 return;
%                             end
                            % Report current estimate in the waitbar's message field
                            done=p_idx/N_steps;
%                             if floor(100*done)>=barstep
%                                 % update waitbar
%                                 waitbar(done,waitbar_handle,sprintf('%g%%',barstep));
%                                 barstep=barstep+1;
%                             end
                            raw=nansum(fval(t_fit,p_idx),2);
                            fval(1,p_idx)=calculate_ntc(t,raw,[],min_threshold,parameters.fit_t1);
                            
                            if (max_idx<(length(t_fit)-2))
                                %max_val=mean(raw(max_idx-1:max_idx+1));
                                max_val=raw(max_idx);
                            else
                                max_val=nan;
                            end
                            
                            if max_val>min_threshold
                                raw=raw./max_val;
                                fval(1,p_idx)=nanmean(raw(max_idx:t_tail),1);
                            else
                                fval(1,p_idx)=nan;
                            end
                            
                        end
                        
    function val=calculate_ntc(t,data,max_idx,min_threshold,t_duration)
        if nanmax(data)>min_threshold
            data(isnan(data))=0;
            if max_idx>0
                %peak position provided
                max_val=(data(max_idx));
            else
                %interpolate the data to get smoother trace for max search
                endidx=ceil(length(t)/2);
                xx=linspace(t(1),t(endidx),endidx);
                l=ceil(length(xx)/64);
                yy=spline(t(1:l:endidx),data(1:l:endidx),xx);
                %find maximum
                [max_val,max_idx]=max(yy);
                max_idx=max_idx(1);
                if (max_idx<(length(yy)-2))
                    %max_val=mean(data(max_idx-1:max_idx+1));
                    max_val=data(max_idx);
                else
                    max_val=nan;
                end
            end
            t_end=find(t<=(t(max_idx)+t_duration),1,'last');
            
            %normalise
            data=data./max_val;
            %calculate area
            val=nanmean(data(max_idx:t_end),1);
%             plot(t,data);
%             pause(0.001)
        else
            val=nan;
        end
    end

end