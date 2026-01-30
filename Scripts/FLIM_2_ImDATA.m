function objout=FLIM_2_ImDATA(FLIMcellarray,Data_type)
%%%%%
%%%FLIM_2_ImDATA(FLIMcellarray,Data_type)
%%% Converts FLIM cell arays to ImData objects en mass
%%% input args:
%%% FLIMcellarray:cell array containing FLIM data, output of
%%% Import_FLIM_LS.m
%%%
%%% Data_type: Retain all data = 1, Make Photon Counts from data =2, plot
%%% t/T plot=3
%%%%%
num_FLIM_channels=size(FLIMcellarray,2);
num_Data=size(FLIMcellarray,1);
currentobj=ImData
currentobj=repmat(currentobj,num_Data,1);
for trial=1:size(currentobj,1)
           if Data_type==1
           currentobj(trial,1).UG=FLIMcellarray{trial,1};
           if num_FLIM_channels==2
           currentobj(trial,1).UR=FLIMcellarray{trial,2};     
           end   
           currentobj(trial,1).comment=sprintf('%s_%s','allFLIM',currentobj(trial,1).comment)
           currentobj(trial,1).Type=sprintf('%s','FLIM_tau_XY')
           currentobj(trial,1).file=sprintf('%s','FLIM_tau_XY')
           currentobj(trial,1).Subtype=sprintf('Single')
           
            %add XDATA,TDATA,YDATA..............................
            
            elseif Data_type==2
            currentobj(trial,1).UG=squeeze(sum(FLIMcellarray{trial,1},2));
           if num_FLIM_channels==2
            currentobj(trial,1).UR=squeeze(sum(FLIMcellarray{trial,2},2)); 
            end
            currentobj(trial,1).Type=sprintf('%s','FLIM_tau_T')
            currentobj(trial,1).file=sprintf('%s','FLIM_tau_T')
            currentobj(trial,1).Subtype=sprintf('Single')
            currentobj(trial,1).comment=sprintf('%s_%s','tau/Time',currentobj(trial,1).comment) 
            currentobj(trial,1).XData=linspace(0,max(currentobj(trial,1).TData,[],'all'),size(currentobj(trial,1).UG,2));
            currentobj(trial,1).YData=linspace(0,12.5,size(currentobj(trial,1).UG,1));
            currentobj(trial,1).TData=linspace(0,max(currentobj(trial,1).TData,[],'all'),size(currentobj(trial,1).UG,2));
%             currentobj(trial,1).TauData=linspace(0,12.5,size(currentobj(trial,1).UG,1));
            currentobj(trial,1).XDim=2;
            currentobj(trial,1).TimeDim=2;
            currentobj(trial,1).YDim=1;
            currentobj(trial,1).tauDim=1;
            currentobj(trial,1).scanline.roi=[1;size(currentobj(trial,1).UG,1)];
            currentobj(trial,1).ScX=ones(size(currentobj(trial,1).UG));
            currentobj(trial,1).ScY=ones(size(currentobj(trial,1).UG));
            currentobj(trial,1).predScX=ones(size(currentobj(trial,1).UG));
            currentobj(trial,1).predScY=ones(size(currentobj(trial,1).UG));
            
            %add XDATA,TDATA,YDATA..............................
            
           elseif Data_type==3
            currentobj(trial,1).UG=squeeze(sum(FLIMcellarray{trial,1},1));
            if num_FLIM_channels==2
            currentobj(trial,1).UR=squeeze(sum(FLIMcellarray{trial,2},1)); 
            end
            currentobj(trial,1).Type=sprintf('Line2');
           currentobj(trial,1).file=sprintf('Line2');
            currentobj(trial,1).Subtype=sprintf('Single');
            currentobj(trial,1).comment=sprintf('Line2 | %s',currentobj(trial,1).comment) ;        
            currentobj(trial,1).XData=linspace(0,max(currentobj(trial,1).TData,[],'all'),size(currentobj(trial,1).UG,2));
            currentobj(trial,1).YData=1:1:size(currentobj(trial,1).UG,1);
            currentobj(trial,1).TData=linspace(0,max(currentobj(trial,1).TData,[],'all'),size(currentobj(trial,1).UG,2));
            currentobj(trial,1).XDim=2;
            currentobj(trial,1).TimeDim=2;
            currentobj(trial,1).YDim=1;
            currentobj(trial,1).scanline.roi=[1;size(currentobj(trial,1).UG,1)];
            currentobj(trial,1).ScX=ones(size(currentobj(trial,1).UG));
            currentobj(trial,1).ScY=ones(size(currentobj(trial,1).UG));
            currentobj(trial,1).predScX=ones(size(currentobj(trial,1).UG));
            currentobj(trial,1).predScY=ones(size(currentobj(trial,1).UG));
            %add XDATA,TDATA,YDATA..............................
            
            
           end
           currentobj(trial,1).x_pixel_size=currentobj(trial,1).XData(2)-currentobj(trial,1).XData(1);
           currentobj(trial,1).y_pixel_size=currentobj(trial,1).YData(2)-currentobj(trial,1).YData(1);
           currentobj(trial,1).x_pixel_num=size(currentobj(trial,1).UG,1);
           currentobj(trial,1).y_pixel_num=size(currentobj(trial,1).UG,1);
end
objout=copyobj2(currentobj);
objsize=size(objout,1);


if testCellsize(FLIMcellarray(:,1))==1
    FLIMcellarray=[]
    currentobj(end+1,1)=copyobj2(currentobj(1,1));
    if Data_type==2 || Data_type==3 
    GData=zeros(size(objout(1,1).UG,1),size(objout(1,1).UG,2),size(objout,1));
    if num_FLIM_channels==2
    RData=zeros(size(objout(1,1).UG,1),size(objout(1,1).UG,2),size(objout,1));
    end
    for i=1:objsize
     GData(:,:,i)=objout(i,1).UG ;
     if num_FLIM_channels==2
     RData(:,:,i)=objout(i,1).UR ;
     end
    end
        Green_Datat_T=sum(GData,3);
        Red_Datat_T=sum(RData,3);
        currentobj(end,1).UG=Green_Datat_T;
        if num_FLIM_channels==2
            currentobj(end,1).UR= Red_Datat_T;
        end
    if Data_type==2   
        currentobj(trial,1).comment=sprintf('%s_%s_%s','SUM ''tau/Time',currentobj(trial,1).comment)
    elseif Data_type==3
       currentobj(trial,1).comment=sprintf('%s_%s_%s','SUM ''Ph_Count',currentobj(trial,1).comment) 
    end
    elseif Data_type==1
        Green_Data_All=squeeze(sum(cat(4,FLIMcellarray{:,1}),4));
        Red_Datat_All=squeeze(sum(cat(4,FLIMcellarray{:,2}),4));
        currentobj(end,1).UG=Green_Data_All;
        if num_FLIM_channels==2
            currentobj(end,1).UR=Red_Datat_All;
        end   
        currentobj(trial,1).comment=sprintf('%s_%s','SUM',currentobj(trial,1).comment)  
    end
end
end