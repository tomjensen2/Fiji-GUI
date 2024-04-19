function ObjArray=LoadMESc(filename)
            file2 = filename(1:end-4);
            file2change=cat(2,path,file2,'hdf5');
            %% Part 1 get MESc file
            filetype=filename(end-3:end);
%             if filetype=="mesc"
%             movefile(filename,file2change,'f');%change .mesc extension to .hdf5
%             end
%             if filetype=="hdf5"
              
                hinfo=h5info(filename);
                mesc_datainfo=transpose(struct2cell(hinfo.Groups.Groups));
                %%Load up filenames
%                 h=uifigure('Position', [680 558,240,420])
%                 hbox=uilistbox(h,'Position',[10,100,200,300])
%                 uilabel(h,'Text','Press Enter when items selected','Position',[50,50,20,20])
%                 waitforbuttonpress
                for mescfilenum=1:size(mesc_datainfo{1, 6},1)
                 mesfile(mescfilenum)=convertCharsToStrings(mesc_datainfo{1, 6}(mescfilenum).Name);
                end  
                for i=1:size(mesc_datainfo,1)
                 Comment=mesc_datainfo{i,6}(strcmp(mesfile,"CommentDebugString"));
                 comment(i,1)=convertCharsToStrings(sprintf('%d | %s',i,Comment.Value));
                end
                comment=erase(comment,char(10))
                spaceList = comment;
[idx, tf] = listdlg('ListString', spaceList,...
'SelectionMode', 'multiple', 'PromptString', 'Select Trials to Load', 'Initialvalue', 1,'Name', 'Make choice', 'ListSize',[160,120]);
                 %%
                    
                %Part two: convert to app.datastore
%                 Datastore=ImData;
%                 Datastore=repmat(Datastore,size(mesc_datainfo,1),1);
                m=size(mesc_datainfo,1);
                progressbar;
                counter=1 
                for i=idx
                    %Set Datastore on Counter
                    progressbar(i/m);
                    Datastore(i,1)=ImData;
                    Datastore(i,1).UG=double(65535-h5read(filename,sprintf('%s%s',cell2mat(mesc_datainfo(i,1)),'/Channel_0')));
                    Datastore(i,1).UR=double(65535-h5read(filename,sprintf('%s%s',cell2mat(mesc_datainfo(i,1)),'/Channel_1')));
%                   Datastore(i,1).a=65535-h5read(filename,sprintf('%s%s',cell2mat(mesc_datainfo(i,1)),'/Curve_0/CurveDataYRawData'));
                   
                    Datastore(i,1).UG=permute(Datastore(i,1).UG,[2,1,3]);
                    Datastore(i,1).UR=permute(Datastore(i,1).UR,[2,1,3]);
                    
                    
                    Datastore(i,1).bkgUG=nanmean(Datastore(i,1).UG,3);
                    Datastore(i,1).bkgUR=nanmean(Datastore(i,1).UR,3);
                    
                    for mescfilenum=1:size(mesc_datainfo{1, 6},1)
                        mesfile(mescfilenum)=convertCharsToStrings(mesc_datainfo{1, 6}(mescfilenum).Name);
                    end
                    
                    ZDim=mesc_datainfo{i,6}(strcmp(mesfile,"ZAxisConversionConversionLinearScale"));
                    XDim=mesc_datainfo{i,6}(strcmp(mesfile,"XAxisConversionConversionLinearScale"));
                    YDim=mesc_datainfo{i,6}(strcmp(mesfile,"YAxisConversionConversionLinearScale"));
                    XSize=mesc_datainfo{i,6}(strcmp(mesfile,"XDim"));
                    YSize=mesc_datainfo{i,6}(strcmp(mesfile,"YDim"));
                    ZSize=mesc_datainfo{i,6}(strcmp(mesfile,"ZDim"));
                    Datastore(i,1).linetime=double(ZDim.Value)/1000;
                    Datastore(i,1).x_pixel_size=double(XDim.Value);
                    Datastore(i,1).y_pixel_size=double(YDim.Value);
                    Datastore(i,1).x_pixel_num=double(XSize.Value);
                    Datastore(i,1).y_pixel_num=double(YSize.Value);
                    Datastore(i,1).XData=linspace(0,Datastore(i,1).x_pixel_size*Datastore(i,1).x_pixel_num,size(Datastore(i,1).UG,2));
                    Datastore(i,1).YData=linspace(0,Datastore(i,1).y_pixel_size*Datastore(i,1).y_pixel_num,size(Datastore(i,1).UG,1));
                    Datastore(i,1).TData=linspace(0,Datastore(i,1).linetime*double(ZSize.Value),size(Datastore(i,1).UG,3));
                    gridx=repmat(Datastore(i,1).XData,size(Datastore(i,1).UG,1),1);
                    Datastore(i,1).ScX=repmat(gridx,1,1,size(Datastore(i,1).UG,3));
                    Datastore(i,1).predScX=Datastore(i,1).ScX;
                    gridy=repmat(Datastore(i,1).YData.',1,size(Datastore(i,1).UG,2));
                    Datastore(i,1).ScY=repmat(gridy,1,1,size(Datastore(i,1).UG,3));
                    Datastore(i,1).predScY=Datastore(i,1).ScY;
                    Datastore(i,1).bkgx_pixel_size=Datastore(i,1).x_pixel_size;
                    Datastore(i,1).bkgy_pixel_size=Datastore(i,1).y_pixel_size;
                    Datastore(i,1).bkgy_origin=0;
                    Datastore(i,1).bkgx_origin=0;
                    Datastore(i,1).bkgy_size=Datastore(i,1).y_pixel_size;
                    Datastore(i,1).bkgx_size=Datastore(i,1).x_pixel_size;
                    Datastore(i,1).bkgXData=Datastore(i,1).XData;
                    Datastore(i,1).bkgYData=Datastore(i,1).YData;
                    Comment=mesc_datainfo{i,6}(strcmp(mesfile,"CommentDebugString"));comment=convertCharsToStrings(Comment.Value);
                    Datastore(i,1).comment=comment;
                    Datastore(i,1).file="FF";
                    Datastore(i,1).Type="FF";
                    Datastore(i,1).source="MES";
                    Datastore(i,1).XDim=2;
                    Datastore(i,1).YDim=1;
                    Datastore(i,1).TimeDim=3;
                    Datastore(i,1).tauDim=[];
                    try
                    Datastore(i,1).Aux1=decimate(double(h5read(filename,sprintf('%s%s',cell2mat(mesc_datainfo(i,1)),'/Curve_0/CurveDataYRawData'))),2);
                    Datastore(i,1).eXData=linspace(0,max(Datastore(i,1).TData,[],'all'),numel(Datastore(i,1).Aux1));
                    catch
                    Datastore(i,1).Aux1=zeros(1,size(Datastore(i,1).UG,3));
                    end
                    Datastore(i,1).Aux2=Datastore(i,1).Aux1;
                    
                    Datastore(i,1).measureYOrigin=0;
                    Datastore(i,1).measureXOrigin=0;
                    Datastore(i,1).Units(1,'X')={"Distance(Microns)"};
                    Datastore(i,1).Units(1,'T')={"Time(s)"};
                    Datastore(i,1).Units(1,'Y')={"Distance(Microns)"};
                    Datastore(i,1).Units(1,'Value')={"au"}  ;
                    Datastore(i,1).scanline.roi=[1,size(Datastore(i,1).UG,2)];
                    Datastore(i,1).Subtype='Single';
                    counter=counter+1
                end
           
            ObjArray=copyobj2(Datastore);
end