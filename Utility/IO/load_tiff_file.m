% function [ status, message ] = load_tiff_file(filename)
%LOAD_TIFF_FILE load tiff formated images
%   mainly for exported images from LSM


%% function complete

% only limited ability to read tiff
% need new tiff read from object
status=false;

    info=imfinfo(filename,'TIFF');%get tiff file metainfo if exist
    
%     if ~isempty(info)%data is valid
%         
%         data_end_pos=numel(data);%get current number of data
%         
%         data(data_end_pos+1)=data(1);%add new data with template
%         
%         data_end_pos=data_end_pos+1;%increment to new end position
        
%         current_data=data_end_pos;%update current data index
%         
%         data.datainfo.data_idx=data_end_pos;%data index
%         
        n_frame=numel(info);%number of frames in the tiff file
%         
        info=info(1);%use the info of the first frame
%         
        data.dataval=zeros(info.Width,info.Height,n_frame);%create data holder
%         
        %create XYT data
        for img_idx=1:1:n_frame
            [img,~]=imread(filename,'TIFF','Index',img_idx);    %read individual frames
            switch ndims(img)
                case 3
                    data.dataval(:,:,img_idx)=double(rgb2gray(img))';  %copy over values into T slots
                case 2
                    data.dataval(:,:,img_idx)=transpose(double(img));  %copy over values into T slots
            end
        end
        
        [pathname,filename,~]=fileparts(filename);%get filename
        data.dataname=filename;%copy over filename
        
        %pass on file information
        data.metainfo=info;
        if isempty(info.XResolution)
            info.XResolution=1;%default to one pixel
        end
        if isempty(info.YResolution)
            info.YResolution=1;%default to one pixel
        end
        
        data.datainfo.dt=1;
        data.datainfo.dX=info.XResolution;
        data.datainfo.dY=info.YResolution;
        data.datainfo.dZ=1;
        data.datainfo.dT=1;
        data.datainfo.X=linspace(0,info.XResolution*(info.Width-1),info.Width);
        data.datainfo.Y=linspace(0,info.YResolution*(info.Height-1),info.Height);
        data.datainfo.T=linspace(0,data.datainfo.dT*(n_frame-1),n_frame);
        
        if isfield(info,'Comment')
            data.datainfo.note=info.Comment;
        end
        
        data.datainfo.data_dim=[1,info.Width,info.Height,1,n_frame];
        data.datainfo.display_dim=boolean([0,1,1,0,n_frame>1]);
%         data.datatype=get_datatype;
        data.datainfo.last_change=datestr(now);
        message=sprintf('%s loaded\n',cat(2,pathname,filesep,filename));
        status = true;
    

