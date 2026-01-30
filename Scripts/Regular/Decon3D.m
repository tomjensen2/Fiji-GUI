 function [obj,Kernel] = Decon3D(obj,quantal_amp)
if obj.Type=="Line2"
     [~,imgDATA,~,~,~]=obj.Image_LSData_2D(1,[],0,0.1,0.2,[],1,4,0);
     [~,~,UG_trace,app.PrimCh_X,GRev,~]=obj.Plot_TData_1D(1,1,[],0,0.1,0.2,1,[],[],[]);
dataitem='0'
            %generate kernel for deconvolution          
            %given normal iGluSnFR Kinetics fitted from data 310119_b1
            %using ezXYFit
            quantal_amp=quantal_amp; %amplitude of single quanta (or whatever) perhaps in further args
            fs=1/obj.linetime;
            tx=1000 %1000 samples/s
            obj.UG=double(obj.UG);
%              [~,~,UG_trace,PrimCh_X,~,~]=app.Datastore_class(app.Data_Selection,1).Plot_TData_1D(1,app.ROIsListBox.Value,app.Prim_Chan_Ax,app.DFFButton.Value,app.MinXSpinner.Value,app.MaxXSpinner.Value,1,[],[],[]);
            for i=1:size(obj.UG,1);
            [x,y]=resample(double(imgDATA(i,:)),1000,double(round(fs)));
            UG1K(i,:)=x;
            end
            %resample 1D trace data to 1 Kilohertz
            data2resample=UG_trace;
            fs=1/obj.linetime;
            tx=1000 %1000 samples/s
            [x,y]=resample(data2resample,1000,round(fs));
            %parameters for 
            x=sgolayfilt(x,7,21);
            UG_trace=x;
            numpoints=double(120);  % number of points per timepoint to evaluate function
            
            tau_num=15% tau decay to deconvolve
            tau=num2str(tau_num)
            cc=exp(-(1:length(UG_trace))./tau_num).*str2double(quantal_amp)
            dc=deconv([UG_trace zeros(1,length(UG_trace)-1)],cc);
            testexp1_q=str2func(sprintf('@(x)%s*exp(-x/%s)',quantal_amp,tau));  %generate function from constants                                     
            Kernel=testexp1_q(0:1:double(numpoints))%evaluate the function
            if str2double(dataitem)~=0    
            YProfile=GRev
            end
            
            for i=1:size(UG1K,1)
            if str2double(dataitem)==0    
            UG_DataDecon(i,:)=deconv([UG1K(i,:) zeros(1,length(UG_trace)-1)],cc);%deconvolve the individual lines (probably needs something more complicated)
            elseif str2double(dataitem)~=0 
            cc=exp(-(1:length(UG_trace))./tau_num).*YProfile(i);
            UG_DataDecon(i,:)=deconv([UG1K(i,:) zeros(1,length(UG_trace)-1)],cc);%deconvolve the individual lines (probably needs something more complicated)    
            end
            
            end
            testexp1_q=str2func(sprintf('@(x)%s*exp(-x/%s)',quantal_amp,tau));  %generate function from constants                                     
            Kernel=exp(-(1:length(UG_trace))./tau_num).*str2double(quantal_amp)%evaluate the function
            cc=exp(-(1:length(UG_trace))./tau_num).*str2double(quantal_amp)
            UGtrace_DataDecon=deconv([UG_trace zeros(1,length(UG_trace)-1)],cc);
            dUG=UG_DataDecon;
            dUG_trace=UGtrace_DataDecon;

elseif obj.Type=="FF"

UG=obj.UG   ; 
UR=obj.UR;

reshaped=reshape(UG,numel(UG(:,:,1)),1,size(UG,3));
reshaped2D=permute(reshaped,[1,3,2]);
m=size(reshaped2D,1);
progressbar;
for i=1:size(reshaped2D,1)
progressbar(i/m)  ;
if ~isnan(reshaped2D(i,:))==1;
numpoints=double(60);  % number of points per timepoint to evaluate function
tau=7.5;% tau decay to deconvolve
tau=num2str(tau);
testexp1_q=str2func(sprintf('@(x)%d*exp(-x/%s);',quantal_amp,tau));  %generate function from constants                                     
Kernel=testexp1_q(0:1:double(numpoints));%evaluate the function
UG_sp_decon(i,:)=deconv(reshaped2D(i,:),Kernel);
else
numpoints=double(60);  % number of points per timepoint to evaluate function
tau=7.5;% tau decay to deconvolve
tau=num2str(tau);
testexp1_q=str2func(sprintf('@(x)%d*exp(-x/%s);',quantal_amp,tau));  %generate function from constants                                     
Kernel=testexp1_q(0:1:double(numpoints));%evaluate the function
UG_sp_decon(i,:)=nan(1,size(reshaped2D,2)-size(Kernel,2)+1); 
    end
end
reshaped_back=permute(UG_sp_decon,[1,3,2]);
DeconUG_2D=reshape(reshaped_back,size(obj.UG,1),size(obj.UG,2),size(reshaped_back,3));
obj.UG=DeconUG_2D
end