function ObjArray=LoadMESfile1(filename)
progressbar
raw_data=load(filename,'-mat');
e=1;
dataname=fieldnames(raw_data);
% find data variables, Data field temp_data.Df*
isdata=find(cellfun(@(x)~isempty(regexp(x,'(Df|DF)\d*', 'once')),dataname));
struct_data=cellfun(@(x)raw_data.(x),dataname(isdata),'UniformOutput',false);
dataname=dataname(isdata);

%%
%Part two: convert to app.datastore
%                 Datastore_class=[]
%                 Datastore_class=ImData
%                 Datastore_class=repmat(Datastore_class,size(app.struct_data,1),1)
%                 m=size(Datastore_class,1)
m=size(struct_data,1);
progressbar(0.01);
Datastore_class=ImData;
for i=1:size(struct_data,1)
    progressbar(i/m);
    current_datafile=struct_data{i,1};
    

    for i1=1:size(current_datafile,1);
        current_datafile(i1).IMAGE=eval(sprintf('raw_data.%s',current_datafile(i1).IMAGE));
    end

    switch current_datafile(1).Type
        case 'XY'

            XYData=ImData;
            greens=["H1","pmtUG","UG","UGFLIM"];
            reds=["H2","pmtUR","UR","URFLIM"];
            tirs=["TiR","TIR","tir"];
            XYDataTable=struct2table(current_datafile,"AsArray",true);
            ChannelTable=XYDataTable(:,'Channel')
            greenidx=table2array(ChannelTable)==greens;
            redidx=table2array(ChannelTable)==reds;
            tiridx=table2array(ChannelTable)==tirs;
            for cidx=1:3
                if sum(greenidx(:,cidx),1)>0
                    XYData.UG=cell2mat(permute(table2array(XYDataTable(greenidx(:,cidx),'IMAGE')),[3,2,1]));
                end
                if sum(redidx(:,cidx),1)>0
                    XYData.UR=cell2mat(permute(table2array(XYDataTable(redidx(:,cidx),'IMAGE')),[3,2,1]));
                end
                if sum(tiridx(:,cidx),1)>0
                    XYData.TiR=cell2mat(permute(table2array(XYDataTable(tiridx(:,cidx),'IMAGE')),[3,2,1]));
                end
            end
            if current_datafile(1).Context~="Photo";
                try
                    XYData.z_pixel_size=current_datafile(1).D3Step;
                end
            else
                XYData.z_pixel_size=1;
                
            end
            
            XYData.file=current_datafile(1).Type;   
            XYData.Time=datetime(current_datafile(1).MeasurementDate,'InputFormat','yyyy.MM.dd. HH:mm:ss,SSS');
            XYData.x_pixel_size=current_datafile(1).WidthStep;
            XYData.y_pixel_size=current_datafile(1).HeightStep;
            XYData.y_pixel_num=current_datafile(1).Height;
            XYData.x_pixel_num=current_datafile(1).Width;
            XYData.DepthDim=3;
            XYData.XDim=2;
            XYData.YDim=1;
            XYData.TimeDim=[];
            XYData.tauDim=[];
            XYData.TData=[];
            XYData.XData=linspace(0,size(XYData.UG,XYData.XDim)*XYData.x_pixel_size,size(XYData.UG,XYData.XDim));
            XYData.YData=linspace(0,size(XYData.UG,XYData.YDim)*XYData.y_pixel_size,size(XYData.UG,XYData.YDim));
            a=0
            if size(XYData.UG,3)==1
                XYData.ZData=0;
            else

                try
                    XYData.ZData=linspace(0,size(XYData.UG,XYData.DepthDim)*XYData.z_pixel_size,size(XYData.UG,XYData.DepthDim));
                end
                try
                    XYData.ZData=linspace(0,size(XYData.UG,XYData.DepthDim)*zpix,size(XYData.UG,XYData.DepthDim));
                end
                try
                    XYData.ZData=linspace(0,size(XYData.UG,XYData.DepthDim)*current_datafile(1).D3Step,size(XYData.UG,XYData.DepthDim));

                end

            end
            %                             XYData.z_pixel_size=XYData.ZData(2)-XYData.ZData(1);
            XYData.file=current_datafile(1).Type;
            XYData.Type=current_datafile(1).Type;
            XYData.measureYOrigin=0;
            XYData.measureXOrigin=0;
            XYData.Subtype='Single';
            XYData.Units(1,'X')={"Distance(Microns)"};
            XYData.Units(1,'T')={"Time(s)"};
            XYData.Units(1,'Y')={"Distance(Microns)"};
            XYData.Units(1,'Value')={"au"};
            XYData.Height=current_datafile(1).Height;
            XYData.comment=current_datafile(1).Comment;
            XYData.source="MES"
            if current_datafile(1).Context~="Photo";
                try
                    XYData.z_pixel_size=current_datafile(1).D3Step;
                end
                XYData.file=current_datafile(1).Type;
            end
            XYData.z_pixel_num=size(XYData.UG,3);
            if i==1
                Datastore_class=XYData;
                XYData=[];
            else
                Datastore_class=cat(1,Datastore_class,XYData);
                XYData=[];
            end
          clearvars -except Datastore_class current_datafile i raw_data dataname isdata m struct_data
        case 'Line2'
            Line2Data=ImData;
            greens={'H1','pmtUG','UG'};
            reds={'H2','pmtUR','UR'};
            tirs={'TiR','TIR','tir'};
            for c=1:size(current_datafile,1)
                
                switch current_datafile(c).Context
                    case 'Measure'
                        Line2Data.Channel{1,c}=current_datafile(c).Channel;
                        if sum(strcmp(current_datafile(c).Channel,greens))>0
                            Line2Data.UG=current_datafile(c).IMAGE;
                        elseif sum(strcmp(current_datafile(c).Channel,reds))>0
                            Line2Data.UR=current_datafile(c).IMAGE;
                        elseif sum(strcmp(current_datafile(c).Channel,tirs))>0
                            Line2Data.TiR=current_datafile(c).IMAGE;
                        elseif current_datafile(c).Channel=="ScX"
                            Line2Data.ScX=current_datafile(c).IMAGE;
                        elseif current_datafile(c).Channel== "ScY"
                            Line2Data.ScY=current_datafile(c).IMAGE;
                        elseif current_datafile(c).Channel== "GalvoYpos"
                            Line2Data.ScY=current_datafile(c).IMAGE;
                        elseif current_datafile(c).Channel== "GalvoXpos"
                            Line2Data.ScX=current_datafile(c).IMAGE;
                            
                            
                        end
                        %                                     Line2Data.(Line2Data.Channel{1,c})=current_datafile(c).IMAGE;
                        
                    case 'Background'
                        if sum(strcmp(current_datafile(c).Channel,greens))>0;
                            Line2Data.bkgUG=current_datafile(c).IMAGE.';
                        elseif sum(strcmp(current_datafile(c).Channel,reds))>0;
                            Line2Data.bkgUR=current_datafile(c).IMAGE.';
                        elseif current_datafile(c).Channel== "TiR";
                            Line2Data.bkgTiR=current_datafile(c).IMAGE.';
                        end
                        %
                        Line2Data.bkgx_pixel_size=current_datafile(c).WidthStep;
                        Line2Data.bkgy_pixel_size=current_datafile(c).HeightStep;
                        Line2Data.bkgy_origin=current_datafile(c).HeightOrigin;
                        Line2Data.bkgx_origin=current_datafile(c).WidthOrigin;
                        Line2Data.bkgy_size=current_datafile(c).Height;
                        Line2Data.bkgx_size=current_datafile(c).Width;
                        Line2Data.bkgXData=linspace(Line2Data.bkgx_origin,Line2Data.bkgx_origin+(Line2Data.bkgx_pixel_size*Line2Data.bkgx_size),Line2Data.bkgx_size);
                        Line2Data.bkgYData=linspace(Line2Data.bkgy_origin,Line2Data.bkgy_origin+(Line2Data.bkgy_pixel_size*Line2Data.bkgy_size),Line2Data.bkgy_size);
                end
            end
            
          
            
            Line2Data.scanline=current_datafile(1).ScanLine;
            scanline=current_datafile(1).ScanLine;
            
            switch scanline.Type;
                case 'composite'
                    try
                    isync=current_datafile(1).info_Protocol.protocol.scanner.inputsync;
                    catch
                    isync=1;
                    end
                    ODD=squeeze(struct2cell(scanline.ODDarray));
                    find(matches(ODD(2,:),'line2'));
                    ind=find(matches(ODD(2,:),'line2'));
                    scanlines=scanline.ODDarray(ind);
                    try
                    index=linspace(1,size(scanlines(1).Data1,2),size(scanlines(1).Data1,2));
                    catch
                     
                    ind=find(matches(ODD(2,:),'line3'));
                    scanlines=scanline.ODDarray(ind);
                    index=linspace(1,size(scanlines(1).Data1,2),size(scanlines(1).Data1,2));
                    end
                    [~,~,locs]=histcounts(index,size(Line2Data.UG.',2));
%                     scanpoints=transpose(accumarray(locs(:),scanlines.ODDarray(1).Data1(1,:),[],@mean));
%                     scanpoints(2,:)=transpose(accumarray(locs(:),scanlines.ODDarray(1).Data1(2,:),[],@mean));
                    scanpoints=transpose(accumarray(locs(:),scanlines(1).Data1(1,:),[],@mean));
                    scanpoints(2,:)=transpose(accumarray(locs(:),scanlines(1).Data1(2,:),[],@mean));
                    
                    Line2Data.scanline.ODDarray(1).Data1=[];
                    Line2Data.scanline.ODDarray(1).Data1=double(scanpoints);
                    
                case 'square'
                    index=linspace(1,size(scanline.Data1,2),size(scanline.Data1,2));
                    [~,~,locs]=histcounts(index(1,:),size(Line2Data.UG.',2));
                    scanpoints=transpose(accumarray(locs(:),scanline.Data1(1,:),[],@mean));
                    scanpoints(2,:)=transpose(accumarray(locs(:),scanline.Data1(2,:),[],@mean));
                    Line2Data.scanline.Data1=[];
                    Line2Data.scanline.Data1=double(scanpoints);
            end ;
            
            
            Line2Data.predScX=double(repmat(scanpoints(1,:),size(Line2Data.UG,2),1));
            Line2Data.predScY=double(repmat(scanpoints(2,:),size(Line2Data.UG,2),1));
            
            if size(Line2Data.predScX)~=size(Line2Data.UG);
                Line2Data.predScX=transpose(Line2Data.predScX);
                Line2Data.predScY=transpose(Line2Data.predScY);
            else
            end
            if size(Line2Data.ScX)~=size(Line2Data.UG);
                Line2Data.ScX=Line2Data.predScX;
                Line2Data.ScY=Line2Data.predScY;
            end
            if size(Line2Data.UR)~=size(Line2Data.UG)
                Line2Data.UR=ones(size(Line2Data.UG));
            end
            Line2Data.ScX=double(Line2Data.ScX);
            Line2Data.ScY=double(Line2Data.ScY);
                
              Line2Data.predScX=double(Line2Data.predScX);
                Line2Data.predScY=double(Line2Data.predScY);  
            
            
            
            
            Line2Data.Index=i
            Line2Data.Time=datetime(current_datafile(1).MeasurementDate,'InputFormat','yyyy.MM.dd. HH:mm:ss,SSS');
            Line2Data.y_pixel_size=current_datafile(1).WidthStep;
            Line2Data.x_pixel_size=current_datafile(1).HeightStep/1000;
            Line2Data.y_pixel_num=current_datafile(1).Width;
            Line2Data.x_pixel_num=current_datafile(1).Height;
            Line2Data.Height=current_datafile(1).Height;
            Line2Data.linetime=current_datafile(1).HeightStep/1000;
            Line2Data.comment=current_datafile(1).Comment;
            %                     Line2Data.posinfo=current_datafile(1).info_Posinfo;
            Line2Data.protocol=current_datafile(1).info_Protocol;
            Line2Data.points=current_datafile(1).info_PointsEx;
            Line2Data.scanline=current_datafile(1).ScanLine;
            Line2Data.samples=current_datafile(1).Average;
            starttime=current_datafile(1).HeightOrigin/1000;
            endtime=size(Line2Data.UG,2)*Line2Data.linetime;
            Line2Data.XData=linspace(starttime,endtime,size(Line2Data.UG,2));
%             if starttime>0        
%             Line2Data.XData=Line2Data.XData-Line2Data.XData(1)
%             end
            starttime=0
            Line2Data.YData=1:1:size(Line2Data.UG,1);
            Line2Data.TData=Line2Data.XData;
            Line2Data.source="MES";
            Line2Data.Subtype='Single';
            Line2Data.file=current_datafile(1).Type;
            Line2Data.Type=current_datafile(1).Type;
            Line2Data.Units(1,'X')={"Time(s)"};
            Line2Data.Units(1,'T')={"Time(s)"};
            Line2Data.Units(1,'Y')={"Distance(Microns)"};
            Line2Data.Units(1,'Value')={"au"};
            %%
            %%%get auxillary channels 
              try
                if isfield(current_datafile(1),'AUXi1')==1
                    Line2Data.Aux1=struct(current_datafile(1).AUXi1);Line2Data.Aux1=decimate(transpose(Line2Data.Aux1.y),4);
                elseif isfield(current_datafile(1),'AnI1Cal')==1
                    Line2Data.Aux1=struct(current_datafile(1).AnI1Cal);Line2Data.Aux1=decimate(transpose(Line2Data.Aux1.y),4);
                elseif isfield(current_datafile(1),'AUXi1Cal')==1
                    Line2Data.Aux1=struct(current_datafile(1).AUXi1Cal);Line2Data.Aux1=decimate(transpose(Line2Data.Aux1.y),4);
                elseif isfield(current_datafile(1),'AnI1')==1
                    Line2Data.Aux1=struct(current_datafile(1).AnI1);Line2Data.Aux1=decimate(transpose(Line2Data.Aux1.y),4);
                end
            catch
                error(i)=sprintf("Aux1ChannelError_F%d",i)
            end
            try
                if isfield(current_datafile(1),'AUXi2')==1
                    Line2Data.Aux2=struct(current_datafile(1).AUXi2);Line2Data.Aux2=decimate(transpose(Line2Data.Aux2.y),4);
                elseif isfield(current_datafile(1),'AnI2Cal')==1
                    Line2Data.Aux2=struct(current_datafile(1).AnI2Cal);Line2Data.Aux2=decimate(transpose(Line2Data.Aux2.y),4);
                elseif isfield(current_datafile(1),'AUXi2Cal')==1
                    Line2Data.Aux2=struct(current_datafile(1).AUXi2Cal);Line2Data.Aux2=decimate(transpose(Line2Data.Aux2.y),4);
                elseif isfield(current_datafile(1),'AnI2')==1
                    Line2Data.Aux2=struct(current_datafile(1).AnI2);Line2Data.Aux2=decimate(transpose(Line2Data.Aux2.y),4);
                
                end
            catch
                error2(i)=sprintf("Aux2ChannelError_F%d",i);
            end

            
            if size(Line2Data.Aux1,2)==101 & size(Line2Data.Aux2,2)==101
%                 Line2Data.eXData=linspace(0,endtime,101);
            end
            if size(Line2Data.Aux1,2)~=101 & size(Line2Data.Aux2,2)==101
                Line2Data.eXData=linspace(0,endtime,size(Line2Data.Aux1,2));
                Line2Data.Aux2=zeros(size(Line2Data.Aux1))
            end
           if size(Line2Data.Aux1,2)==101 & size(Line2Data.Aux2,2)~=101
                Line2Data.eXData=linspace(0,endtime,size(Line2Data.Aux2,2));
                Line2Data.Aux1=zeros(size(Line2Data.Aux2))
            end
            if size(Line2Data.Aux1,2)~=101 & size(Line2Data.Aux2,2)~=101
                Line2Data.eXData=linspace(0,endtime,size(Line2Data.Aux1,2));
            end
%              if starttime>0 & starttime<endtime
%                  eindex=Line2Data.eXData<=starttime;;
%                  Line2Data.Aux1=Line2Data.Aux1(eindex);
%                  Line2Data.Aux2=Line2Data.Aux2(eindex);
%                  Line2Data.eXData=Line2Data.eXData(eindex);
%                  Line2Data.Aux1=Line2Data.Aux1-Line2Data.Aux1(1);
%                  Line2Data.Aux2=Line2Data.Aux2-Line2Data.Aux2(1);
%                  Line2Data.eXData=Line2Data.eXData(eindex)-Line2Data.eXData(1);
%              end
%%
            
            Line2Data.TimeDim=2;
            Line2Data.XDim=1;
            Line2Data.LineFreq=1/Line2Data.linetime;
            
            if Line2Data.scanline.Type=="composite"
                Line2Data.scanline.roi=Line2Data.scanline.ODDarray(ind).roi;
            end
            scanline_roi=Line2Data.scanline.roi;
            % Generate ROI object for Full Linescan
            
            
            Xco=[1,1;Line2Data.y_pixel_num,Line2Data.y_pixel_num];
            Yco=[1,1;Line2Data.x_pixel_num,Line2Data.x_pixel_num];
            UG_data=Line2Data.UG; UR_data=Line2Data.UR; Ch3_data=[];
            ChannelNames=["UG","UR","No Data"];
            reference="FemtoROI_All";
%             Line2Data.ROIobj=ROI(Yco,Xco,"Square",reference,UG_data, UR_data, Ch3_data,ChannelNames);
            
            
            %                             Line2Data.scanline.roi(1,1)=1;
            %                             Line2Data.scanline.roi(2,1)=Line2Data.x_pixel_num;
            
            
            roi(1,1)=1;
            roi(2,1)=Line2Data.y_pixel_num;
            
            if size(Line2Data.scanline.roi,2)==1
                Line2Data.scanline.roi=roi;
                
            elseif size(Line2Data.scanline.roi,2)>1;
                %
                for i1=2:size(Line2Data.scanline.roi,2)+1   ;
                    
                    roi(1,i1)=uint16(Line2Data.scanline.roi(1,i1-1)/Line2Data.samples);
                    roi(2,i1)=uint16(Line2Data.scanline.roi(2,i1-1)/Line2Data.samples);
                    
                    if roi(2,i1)>size(Line2Data.UG,1);
                        roi(2,i1)=size(Line2Data.UG,1);
                    end
                    if roi(1,2)~=1
                        roi(1,2)=1
                    end
                    %
                    %
                    % a
                    Xco=[roi(1,i1),roi(1,i1);roi(2,i1),roi(2,i1)];
                    Yco=[1,1;Line2Data.x_pixel_num,Line2Data.x_pixel_num];
                    UG_data=Line2Data.UG; UR_data=Line2Data.UR; Ch3_data=[];
                    ChannelNames=["UG","UR","No Data"];
                    reference=sprintf("FemtoROI_%d",i1-1);
%                     Line2Data.ROIobj(i1,1)=ROI(Yco,Xco,"Square",reference,UG_data, UR_data, Ch3_data,ChannelNames);
                    
                end
                if size(roi)>1
                    Line2Data.scanline.roi=roi;
                end
            end
            roi=[];
            Yco=[];
            Xco=[];
            UG_data=[]; UR_data=[]; Ch3_data=[];
            ChannelNames="";
            reference="";
            % get scanner protocol data
            Line2Data.protocol=Line2Data.protocol.protocol.d;
            for k=1:size(Line2Data.protocol,2)
                [x,y]=continous_vec(Line2Data.protocol(k).data);
                Line2Data.protocol(k).XData=x;
                Line2Data.protocol(k).data=y;
            end
            try
            Line2Data.FoldedFrameInfo=current_datafile(1).FoldedFrameInfo;
            end
            p=1;
            if i==1
                Datastore_class=Line2Data;
            else
                Datastore_class=cat(1,Datastore_class,Line2Data);
            end
            Line2Data=[];
            clearvars -except Datastore_class current_datafile i raw_data dataname isdata m struct_data
            
        case 'FF'
            FFData=ImData
            FFData.file=current_datafile(1).Type;
            FFData.Type=current_datafile(1).Type;
            greens={'H1','pmtUG','UG'};
            reds={'H2','pmtUR','UR'};
            tirs={'TiR','TIR','tir'};
            is4D=0;
            try
                FFData.FF4Dinfo=current_datafile(1).info_D4scan;
                is4D=1;
            end
            ffinfo=current_datafile(1).FoldedFrameInfo;
            FFData.x_pixel_size=current_datafile(1).WidthStep;
            FFData.y_pixel_size=current_datafile(1).HeightStep;
            FFData.x_pixel_num=current_datafile(1).Width;
            FFData.y_pixel_num=current_datafile(1).TransversePixNum;
            FFData.Height=current_datafile(1).Height;
            FFData.FoldedFrameInfo=ffinfo;
            FFData.linetime=ffinfo.frameTimeLength/1000;
            FFData.comment=current_datafile(1).Comment;
            FFData.samples=current_datafile(1).Average;
            FFData.Index=i;
            for c=1:size(current_datafile,1)
                
                switch current_datafile(c).Context
                    case 'Measure'
                        FFData.Channel{1,c}=current_datafile(c).Channel;
                        if sum(strcmp(current_datafile(c).Channel,greens))>0
                            FFData.UG=current_datafile(c).IMAGE;
                            temp=FFData.UG(:,ffinfo.firstFramePos:ffinfo.firstFramePos+ffinfo.numFrameLines*ffinfo.numFrames-1);
                            FFData.UG=reshape(temp,FFData.x_pixel_num,ffinfo.numFrameLines,ffinfo.numFrames);
                        elseif sum(strcmp(current_datafile(c).Channel,reds))>0
                            FFData.UR=current_datafile(c).IMAGE;
                            temp=FFData.UR(:,ffinfo.firstFramePos:ffinfo.firstFramePos+ffinfo.numFrameLines*ffinfo.numFrames-1);
                            FFData.UR=reshape(temp,FFData.x_pixel_num,ffinfo.numFrameLines,ffinfo.numFrames);
                        elseif sum(strcmp(current_datafile(c).Channel,tirs))>0
                            FFData.TiR=current_datafile(c).IMAGE;
                            temp=FFData.TiR(:,ffinfo.firstFramePos:ffinfo.firstFramePos+ffinfo.numFrameLines*ffinfo.numFrames-1);
                            FFData.TiR=reshape(temp,FFData.x_pixel_num,ffinfo.numFrameLines,ffinfo.numFrames);
                        elseif current_datafile(c).Channel=="ScX"
                            FFData.ScX=current_datafile(c).IMAGE;
                            temp=FFData.ScX(:,ffinfo.firstFramePos:ffinfo.firstFramePos+ffinfo.numFrameLines*ffinfo.numFrames-1);
                            FFData.ScX=reshape(temp,FFData.x_pixel_num,ffinfo.numFrameLines,ffinfo.numFrames);
                        elseif current_datafile(c).Channel== "ScY"
                            FFData.ScY=current_datafile(c).IMAGE;
                            temp=FFData.ScY(:,ffinfo.firstFramePos:ffinfo.firstFramePos+ffinfo.numFrameLines*ffinfo.numFrames-1);
                            FFData.ScY=reshape(temp,FFData.x_pixel_num,ffinfo.numFrameLines,ffinfo.numFrames);
                        end
                        
                    case 'Background'
                        if sum(strcmp(current_datafile(c).Channel,greens))>0
                            FFData.bkgUG=current_datafile(c).IMAGE;
                        elseif sum(strcmp(current_datafile(c).Channel,reds))>0
                            FFData.bkgUR=current_datafile(c).IMAGE;
                        elseif sum(strcmp(current_datafile(c).Channel,tirs))>0
                            FFData.bkgTiR=current_datafile(c).IMAGE;
                        end
                        %
                        FFData.bkgx_pixel_size=current_datafile(c).WidthStep;
                        FFData.bkgy_pixel_size=current_datafile(c).HeightStep;
                        FFData.bkgy_origin=current_datafile(c).HeightOrigin;
                        FFData.bkgx_origin=current_datafile(c).WidthOrigin;
                        FFData.bkgy_size=current_datafile(c).Height;
                        FFData.bkgx_size=current_datafile(c).Width;
                        FFData.bkgXData=linspace(FFData.bkgx_origin,FFData.bkgx_origin+(FFData.bkgx_pixel_size*FFData.bkgx_size),FFData.bkgx_size);
                        FFData.bkgYData=linspace(FFData.bkgy_origin,FFData.bkgy_origin+(FFData.bkgy_pixel_size*FFData.bkgy_size),FFData.bkgy_size);
                end
            end
            
            
            
            try
            if size(FFData.ScY(:,:,1))== [2 101]
                [gridx,gridy]=ndgrid(0:FFData.x_pixel_size:FFData.x_pixel_size*FFData.x_pixel_num,0:FFData.y_pixel_size:FFData.y_pixel_size*FFData.y_pixel_num);
                FFData.ScX=repmat(gridx([1:size(FFData.UG,1)],[1:size(FFData.UG,2)]),1,1,size(FFData.UG,3));
                FFData.ScY=repmat(gridy([1:size(FFData.UG,1)],[1:size(FFData.UG,2)]),1,1,size(FFData.UG,3));
                FFData.predScX=repmat(gridx([1:size(FFData.UG,1)],[1:size(FFData.UG,2)]),1,1,size(FFData.UG,3));
                FFData.predScY=repmat(gridy([1:size(FFData.UG,1)],[1:size(FFData.UG,2)]),1,1,size(FFData.UG,3));
            else
                  [gridx,gridy]=ndgrid(0:FFData.x_pixel_size:FFData.x_pixel_size*FFData.x_pixel_num,0:FFData.y_pixel_size:FFData.y_pixel_size*FFData.y_pixel_num);
                 FFData.predScX=repmat(gridx([1:size(FFData.UG,1)],[1:size(FFData.UG,2)]),1,1,size(FFData.UG,3));
                FFData.predScY=repmat(gridy([1:size(FFData.UG,1)],[1:size(FFData.UG,2)]),1,1,size(FFData.UG,3));
            
            end
            catch ME
                assignin("base",'ME','error')
            end
            try
                if isfield(current_datafile(1),'AUXi1')==1
                    FFData.Aux1=struct(current_datafile(1).AUXi1);FFData.Aux1=decimate(transpose(FFData.Aux1.y),4);
                elseif isfield(current_datafile(1),'AnI1Cal')==1
                    FFData.Aux1=struct(current_datafile(1).AnI1Cal);FFData.Aux1=decimate(transpose(FFData.Aux1.y),4);
                elseif isfield(current_datafile(1),'AUXi1Cal')==1
                    FFData.Aux1=struct(current_datafile(1).AUXi1Cal);FFData.Aux1=decimate(transpose(FFData.Aux1.y),4);
                end
            catch
                error(i)=sprintf("Aux1ChannelError_F%d",i)
            end
            try
                if isfield(current_datafile(1),'AUXi2')==1
                    FFData.Aux2=struct(current_datafile(1).AUXi2);FFData.Aux2=decimate(transpose(FFData.Aux2.y),4);
                elseif isfield(current_datafile(1),'AnI2Cal')==1
                    FFData.Aux2=struct(current_datafile(1).AnI2Cal);FFData.Aux2=decimate(transpose(FFData.Aux2.y),4);
                elseif isfield(current_datafile(1),'AUXi2Cal')==1
                    FFData.Aux2=struct(current_datafile(1).AUXi2Cal);FFData.Aux2=decimate(transpose(FFData.Aux2.y),4);
                end
            catch
                error2(i)=sprintf("Aux2ChannelError_F%d",i);
            end
            FFData.x_pixel_size=current_datafile(1).WidthStep;
            FFData.y_pixel_size=current_datafile(1).TransverseStep;
            FFData.x_pixel_num=current_datafile(1).Width;
            FFData.y_pixel_num=current_datafile(1).TransversePixNum;
            FFData.Height=current_datafile(1).Height;
            FFData.linetime=ffinfo.frameTimeLength/1000;
            FFData.comment=current_datafile(1).Comment;
            try
            FFData.posinfo=current_datafile(1).info_Posinfo;
            end
            FFData.protocol=current_datafile.info_Protocol;
            FFData.points=current_datafile(1).info_PointsEx;
            FFData.scanline=current_datafile(1).ScanLine;
            FFData.file=current_datafile(1).Type;
            FFData.Time=datetime(current_datafile(1).MeasurementDate,'InputFormat','yyyy.MM.dd. HH:mm:ss,SSS');
            FFData.XDim=2;
            FFData.YDim=1;
            FFData.TimeDim=3;
            FFData.tauDim=[];
            FFData.TData=linspace((ffinfo.firstFrameStartTime/1000),size(FFData.UG,FFData.TimeDim)*ffinfo.frameTimeLength/1000,size(FFData.UG,FFData.TimeDim));
            FFData.XData=linspace(0,size(FFData.UG,FFData.XDim)*FFData.x_pixel_size,size(FFData.UG,FFData.XDim));
            FFData.YData=linspace(0,size(FFData.UG,FFData.YDim)*FFData.y_pixel_size,size(FFData.UG,FFData.YDim));
            FFData.ZData=[];
            FFData.Subtype='Single';
            FFData.file=current_datafile(1).Type;
            FFData.Type=current_datafile(1).Type;
            if is4D==1
                FFData.Subtype=[];
                spareframes=rem(FFData.FoldedFrameInfo.numFrames,FFData.FF4Dinfo.planes);
                channels=["UG","UR","TiR","ScX","ScY","predScX","predScY"];
                for i=1:size(channels,2)
                    tempdata=FFData.(channels(i))(:,:,spareframes+1:end);
                    for i1=1:FFData.FF4Dinfo.planes
                        newdata(:,:,:,i1)=tempdata(:,:,i1:FFData.FF4Dinfo.planes:end);
                    end
                    FFData.(channels(i))=newdata;
                    newdata=[];
                end
                FFData.TData=linspace((ffinfo.firstFrameStartTime/1000),size(FFData.UG,FFData.TimeDim)*ffinfo.frameTimeLength/1000,size(FFData.UG,FFData.TimeDim));
%                 FFData.TData=FFData.TData-FFData.TData(1);
                FFData.Subtype='FF4D';
                FFData.ZData=linspace(0,FFData.FF4Dinfo.planes*FFData.FF4Dinfo.distance,FFData.FF4Dinfo.planes);
            end
            %                             FFData.roi1plotG=transpose(squeeze(mean(mean(FFData.UG,1),2)));
            %                             FFData.roi1plotR=transpose(squeeze(mean(mean(FFData.UR,1),2)));
            try
            if isempty(FFData.Aux1)==0
                FFData.eXData=linspace(0,max(FFData.TData),size(FFData.Aux1,2));
            elseif isempty(FFData.Aux2)==0
                FFData.eXData=linspace(0,max(FFData.TData),size(FFData.Aux2,2));
            else
                FFData.eXData=linspace(0,max(FFData.TData),size(FFData.Aux1,2));
            end
            catch
             assignin('base','AuxChanErr','Aux Channel Error');
            end
%             FFData.ephysplot=FFData.Aux1
            FFData.measureYOrigin=0;
            FFData.measureXOrigin=0;
            FFData.Units(1,'X')={"Distance(Microns)"};
            FFData.Units(1,'T')={"Time(s)"};
            FFData.Units(1,'Y')={"Distance(Microns)"};
            FFData.Units(1,'Value')={"au"};
            FFData.source="MES";
            %
            %
            if i==1
                Datastore_class=FFData;
                FFData=[];
            else
                Datastore_class=cat(1,Datastore_class,FFData);
                FFData=[];
            end
               clearvars -except Datastore_class current_datafile i raw_data dataname isdata m struct_data
    end
    
      
end
ObjArray=Datastore_class;
end

