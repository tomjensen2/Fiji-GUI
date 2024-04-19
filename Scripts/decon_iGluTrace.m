function [x,y]=decon_iGluTrace(imgX,imgY,Q)
            fs=1/imgX(2)-imgX(1);
            imgY=sgolayfilt(imgY,2,5);
            tx=1000; %1000 samples/s
            [imgY,~]=resample(double(imgY),1000,double(round(fs)));
            imgX=linspace(imgX(1),imgX(end),size(imgY,2))
            numpoints=double(120);  % number of points per timepoint to evaluate function
            tau_num=15% tau decay to deconvolve
            tau=num2str(tau_num)
            cc=exp(-(1:length(imgY))./tau_num).*str2double(Q)
%             cc=[0.001 cc(1:end-1)]
            dc=deconv([imgY zeros(1,length(imgY)-1)],cc);
            testexp1_q=str2func(sprintf('@(x)%s*exp(-x/%s)',Q,tau));  %generate function from constants                                     
            Kernel=testexp1_q(0:1:double(numpoints))%evaluate the function
            y=dc;
            x=imgX;
end