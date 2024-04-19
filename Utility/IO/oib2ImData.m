function [axisinfo,meta,dataout]=oib2ImData(filename)
if iscell(filename)
    filename=filename{:};
end
meta=imreadBFmeta(filename);
dims=[meta.width>1,meta.height>1,meta.zsize>1,meta.nframes>1,meta.channels>1];
dimensions=[meta.width,meta.height,meta.zsize,meta.nframes,meta.channels];
dataout=ImData;
parameters(:,1)=string(meta.parameterNames());
parameters(:,2)=string(meta.parameterValues());
axisinfo.ax0=parameters(contains(parameters(:,1),"Axis 0"),:);
axisinfo.ax1=parameters(contains(parameters(:,1),"Axis 1"),:);
axisinfo.ax2=parameters(contains(parameters(:,1),"Axis 2"),:);
axisinfo.ax3=parameters(contains(parameters(:,1),"Axis 3"),:);
axisinfo.ax4=parameters(contains(parameters(:,1),"Axis 4"),:);
axisinfo.ax5=parameters(contains(parameters(:,1),"Axis 5"),:);
axisinfo.ax6=parameters(contains(parameters(:,1),"Axis 6"),:);
axisinfo.ax7=parameters(contains(parameters(:,1),"Axis 7"),:);
channelnames=parameters(~contains(parameters(:,1),"GUI") & contains(parameters(:,1),"CH Name"),:);

if dims==[1,1,0,1,1] %Folded Frame
        dataout.y_pixel_num=str2double(axisinfo.ax0(contains(axisinfo.ax0(:,1),'] MaxSize'),2));
        dataout.y_pixel_size=str2double(axisinfo.ax0(contains(axisinfo.ax0(:,1),'] EndPosition'),2))/dataout.y_pixel_num;
        dataout.x_pixel_num=str2double(axisinfo.ax1(contains(axisinfo.ax1(:,1),'] MaxSize'),2));
        dataout.x_pixel_size=str2double(axisinfo.ax1(contains(axisinfo.ax1(:,1),'] EndPosition'),2))/dataout.x_pixel_num;
        dataout.XData=linspace(0,str2double(axisinfo.ax1(contains(axisinfo.ax1(:,1),'] EndPosition'),2)),dataout.x_pixel_num);
        dataout.YData=linspace(0,str2double(axisinfo.ax0(contains(axisinfo.ax0(:,1),'] EndPosition'),2)),dataout.y_pixel_num);
        dataout.Type='FF';
        for i=1:size(channelnames,1)
            channel=channelnames(contains(channelnames(:,1),num2str(i)),2);
            switch channel
                case "TD1"
                    dataout.TiR=imreadBF(filename,1,1:dimensions(4),1);
                case "RXD3"
                    dataout.UR=imreadBF(filename,1,1:dimensions(4),3);
                case "RXD2"
                    dataout.UG=imreadBF(filename,1,1:dimensions(4),2);
            end

        end

        dataout.TData=linspace(0,str2double(axisinfo.ax4(contains(axisinfo.ax4(:,1),'] EndPosition'),2)),size(dataout.UG,3))/1000;
        [x,y]=meshgrid(dataout.XData,dataout.YData);
        dataout.ScX=repmat(x,[1,1,1000]);
        dataout.ScY=repmat(y,[1,1,1000]);
        dataout.predScX=dataout.ScX;
        dataout.predScY=dataout.ScY;
        dataout.linetime=dataout.TData(2)-dataout.TData(1);
        dataout.LineFreq=1/dataout.linetime;
        dataout.comment=filename;
        dataout.scanline.roi=[1;dataout.y_pixel_num];



elseif dims==[1,1,0,0,1] % Line2

        for i=1:size(channelnames,1)
            channel=channelnames(contains(channelnames(:,1),num2str(i)),2);
            switch channel
                case "TD1"
                    dataout.TiR=imreadBF(filename,1,1,1).';
                case "RXD3"
                    dataout.UR=imreadBF(filename,1,1,3).';
                case "RXD2"
                    dataout.UG=imreadBF(filename,1,1,2).';
            end

        end
        
        dataout.y_pixel_num=str2double(axisinfo.ax0(contains(axisinfo.ax0(:,1),'] MaxSize'),2));
        dataout.y_pixel_size=str2double(axisinfo.ax0(contains(axisinfo.ax0(:,1),'] EndPosition'),2))/dataout.y_pixel_num;
        dataout.x_pixel_num=str2double(axisinfo.ax1(contains(axisinfo.ax1(:,1),'] MaxSize'),2));
        dataout.x_pixel_size=str2double(axisinfo.ax1(contains(axisinfo.ax1(:,1),'] EndPosition'),2))/dataout.x_pixel_num;
        dataout.TData=linspace(0,str2double(axisinfo.ax4(contains(axisinfo.ax4(:,1),'] EndPosition'),2)),size(dataout.UG,2))/1000;
        dataout.XData=str2double(axisinfo.ax1(contains(axisinfo.ax1(:,1),'] MaxSize'),2));
        dataout.YData=linspace(0,str2double(axisinfo.ax0(contains(axisinfo.ax0(:,1),'] EndPosition'),2)),dataout.y_pixel_num);
        dataout.source='oib';
        dataout.RawDataFile=filename;
        dataout.ScY=repmat(dataout.YData.',[1,size(dataout.TData)]);
        dataout.ScX=zeros(size(dataout.ScY));
        dataout.predScX=dataout.ScX;
        dataout.predScY=dataout.ScY;
        dataout.linetime=dataout.TData(2)-dataout.TData(1);
        dataout.LineFreq=1/dataout.linetime;
        dataout.comment=filename;
        dataout.scanline.roi=[1;dataout.y_pixel_num];
         % XY single frame

elseif dims==[1,1,1,0,1] % XY Zstack

end
end