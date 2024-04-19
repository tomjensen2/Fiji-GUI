function obj = load_tiff2ImData(filename,type,Channels)
           
            info=imfinfo(filename,'TIFF');%get tiff file metainfo if exist
            n_frame=numel(info);%number of frames in the tiff file
%          
        info=info(1);%use the info of the first frame
%         
        tiffdata.dataval=zeros(info.Width,info.Height,n_frame);%create data holder
%         
        %create XYT data
        for img_idx=1:1:n_frame
            [img,~]=imread(filename,'TIFF','Index',img_idx);    %read individual frames
            switch ndims(img)
                case 3
                    tiffdata.dataval(:,:,img_idx)=double(rgb2gray(img))';  %copy over values into T slots
                case 2
                    tiffdata.dataval(:,:,img_idx)=transpose(double(img));  %copy over values into T slots
            end
        end
        
        [pathname,filename,~]=fileparts(filename);%get filename
        tiffdata.dataname=filename;%copy over filename
        
        %pass on file information
        tiffdata.metainfo=info;
        if isempty(info.XResolution)
            info.XResolution=1;%default to one pixel
        end
        if isempty(info.YResolution)
            info.YResolution=1;%default to one pixel
        end
        
        
        obj=ImData
        obj.Type=type;
        obj.comment=filename;
        obj.Channel=Channels;
        %allocate image data
        for i=1:size(Channels,2)
            if type=="Line2"
                obj.(Channels(i))=tiffdata.dataval(:,:,i).';
            elseif type=="FF"
                obj.(Channels(i))=tiffdata.dataval(:,:,:,i);
            elseif type=="XY"
                obj.(Channels(i))=tiffdata.dataval(:,:,:,i);
            end
        end
        if type=="Line2"
            obj.TData=linspace(0,size(obj.(Channels(1)),2)*info.XResolution,size(obj.(Channels(1)),2));
            obj.XData=obj.TData;
            obj.YData=linspace(0,size(obj.(Channels(1)),1)*info.YResolution,size(obj.(Channels(1)),1));
            obj.scanline.roi=[1;size(obj.(Channels(1)),1)];
            obj.Aux1=linspace(0,max(obj.TData),size(obj.TData,2));
            obj.Aux2=linspace(0,obj.TData(end),size(obj.TData,2));
            obj.eXData=linspace(0,obj.TData(end),size(obj.TData,2));
            obj.linetime=obj.TData(2)-obj.TData(1);
            obj.source= 'MES';
            obj.x_pixel_size=info.XResolution; obj.y_pixel_size=info.YResolution; obj.x_pixel_num=size(obj.(Channels(1)),2); obj.y_pixel_num=size(obj.(Channels(1)),1);
            chUR=Channels=="UR";
            if chUR==zeros(size(Channels))
                obj.UR=zeros(size(obj.(Channels(1))));
            end
        end
        
      
    end