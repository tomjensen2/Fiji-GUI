classdef newdatafile_2022b_m < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                     matlab.ui.Figure
        UpdateFileButton             matlab.ui.control.StateButton
        NewFileButton                matlab.ui.control.Button
        ReturnfiletoFGUIButton       matlab.ui.control.Button
        TransposeDataCheckBox        matlab.ui.control.CheckBox
        Spinner                      matlab.ui.control.Spinner
        Label                        matlab.ui.control.Label
        ImageSliceButton             matlab.ui.control.Button
        DataTypeLabel                matlab.ui.control.Label
        ScanType                     matlab.ui.control.DropDown
        AllImageDataButton           matlab.ui.control.Button
        ImageChanneltoaddLabel       matlab.ui.control.Label
        Channel                      matlab.ui.control.DropDown
        TabGroup                     matlab.ui.container.TabGroup
        EPhysTab                     matlab.ui.container.Tab
        TiffTab                      matlab.ui.container.Tab
        inFGUIButton                 matlab.ui.control.StateButton
        TracetoClipboardButton       matlab.ui.control.Button
        DropDown                     matlab.ui.control.DropDown
        SetAuxillarychannelButton    matlab.ui.control.Button
        Panel                        matlab.ui.container.Panel
        Channel_ListBox              matlab.ui.control.ListBox
        Trace_ListBox                matlab.ui.control.ListBox
        TraceListBoxLabel            matlab.ui.control.Label
        ScanlinedataTab              matlab.ui.container.Tab
        GenerateScXScYDataButton     matlab.ui.control.Button
        LoadScanlinedataLabel        matlab.ui.control.Label
        LoadfrommatButton            matlab.ui.control.Button
        ClipboardpasteButton         matlab.ui.control.Button
        PitchEditField               matlab.ui.control.NumericEditField
        PitchEditFieldLabel          matlab.ui.control.Label
        DiameterEditField            matlab.ui.control.NumericEditField
        DiameterEditFieldLabel       matlab.ui.control.Label
        GenerateScanlinedataLabel    matlab.ui.control.Label
        LengthMicronsEditField       matlab.ui.control.NumericEditField
        LengthMicronsEditFieldLabel  matlab.ui.control.Label
        SprialscanlineButton         matlab.ui.control.Button
        StraightlinescanlineButton   matlab.ui.control.Button
        Panel_2                      matlab.ui.container.Panel
        UITable                      matlab.ui.control.Table
        ContextMenu                  matlab.ui.container.ContextMenu
        LoadabfMenu                  matlab.ui.container.Menu
        ClipboardImportMenu          matlab.ui.container.Menu
        LefthandXValuesMenu          matlab.ui.container.Menu
        InterleavedXvaluesMenu       matlab.ui.container.Menu
        csvimportMenu                matlab.ui.container.Menu
        LefthandXValuesMenu_2        matlab.ui.container.Menu
        InterleavedXvaluesMenu_2     matlab.ui.container.Menu
    end

    
    properties (Access = private)
        
        
       
       
        DATA % Description
        fileref % Description
        file2change % Description
        mescUG
       mescUR
      mesc_bkgUG % Description
      mesc_bkgUR
        MESC_data % Description
        FIM_datafile % Description
        currentobj % Description
        num_FLIM_channels % Description
        spScanline % Description
        ephysfile
    end
    
    properties (Access = public)
        ep % Description
        Current_Ephys_Trace_Y % Description
         Current_Ephys_Trace_X % Description
         ephysdata1 % Description
        ephysmetadata1 % Description
          Ephysdisplay
         EphysAx
        Imgdisplay % Description
        ImgAx
         
         
        FLIMData % Description
        OutputData % Description
       matlogprofile % Description
                MLpath
            
            Macrospath
            Documentspath
            IJPath
           
            defaultdir
        shallowDATA % Description
    end
    
    methods (Access = public)
        
        function results = Newdata(app,DATA,File)
            app.shallowDATA=DATA
            app.DATA=copyobj2(DATA)
            DATA.Properties2Table(app.UITable)
            app.currentobj=File;
%             currentdata=struct2cell(DATA)
%             app.UITable.RowName=fieldnames(DATA)
%             app.UITable.Data=[]
%             app.UITable.Data=cell2table(currentdata)
%             a=0
%              s = uistyle('HorizontalAlignment','left');
%             addStyle(app.UITable,s,'table','');
        end
    end
    
    methods (Access = private)
        
        function results = autoloadephys(app,filename)
           
            [ephysdata,~,ephysmetadata] = abfload(filename{1,1});
            
            % fill Channel listbox items 
         
            for i=1:size(ephysdata,2);
                Channels(1,i)=sprintf("%s(%s)",cell2mat(ephysmetadata.recChNames(i,1)),cell2mat(ephysmetadata.recChUnits(i,1)));
            end
            app.Channel_ListBox.Items=transpose(Channels)
            app.Channel_ListBox.ItemsData=1:1:size(ephysdata,2);
            
%             app.Trace_ListBox.Items=
            % fill Trace listbox items 
            for i=1:size(ephysdata,3);
                app.Trace_ListBox.Items{1,i}=num2str(i);
            end
             app.Trace_ListBox.ItemsData=1:1:size(ephysdata,3);
             
             app.ephysdata1=ephysdata;
            app.ephysmetadata1=ephysmetadata; 
            app.Open_Trace
            
        end
    end


    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
                    app.MLpath=userpath
            
            app.Macrospath=cat(2,app.MLpath,'/Fiji-GUI-2P/Main/Scripts/IJ Macros/')
            app.Documentspath=app.MLpath(1:size(app.MLpath,2)-6)
            app.IJPath=cat(2,app.MLpath(1:size(app.MLpath,2)-16),'Documents/Fiji.app/');
            try 
            app.defaultdir=cat(2,app.MLpath(1:size(app.MLpath,2)-16),'Dropbox/Current Projects/');
            catch
            end 
             
            app.Ephysdisplay=tiledlayout(app.Panel,1,1,"TileSpacing","none","Padding","none");
            app.EphysAx=nexttile(app.Ephysdisplay)
            app.Imgdisplay=tiledlayout(app.Panel_2,1,1,"TileSpacing","none","Padding","none");
            app.ImgAx=nexttile(app.Imgdisplay)
                % get the handle of Gui1
  h = findobj('Tag','Gui1');
  app.matlogprofile=h.RunningAppInstance.matlogprofile;
a=0
%  % if exists (not empty)
% %  if ~isempty(h)
% %     % get handles and other user-defined data associated to Gui1
% %     g1data = guidata(h);
% %     % maybe you want to set the text in Gui2 with that from Gui1
% %     set(handles.text1,'String',get(g1data.edit1,'String'));
% %     % maybe you want to get some data that was saved to the Gui1 app
% %     x = getappdata(h,'x');
% %  end       
% h.RunningAppInstance.Reload
 DnD_uifigure(app.Trace_ListBox, @(o,dat)app.autoloadephys(dat.names));
        end

        % Menu selected function: LoadabfMenu
        function Import_abf_file(app, event)
               %% Opening axon .abf files
            %get filename    
            [file,path] = uigetfile('*.abf;*.wcp;');
            
            [a,filename,ext]=fileparts(file)
            app.ephysfile=ext;
            if ext ==".abf"
            % load .abf file using abfload by ...............
            [ephysdata,~,ephysmetadata] = abfload(cat(2,path,file));
            
            % fill Channel listbox items 
         
            for i=1:size(ephysdata,2);;
                Channels(1,i)=sprintf("%s(%s)",cell2mat(ephysmetadata.recChNames(i,1)),cell2mat(ephysmetadata.recChUnits(i,1)));
            end
            app.Channel_ListBox.Items=transpose(Channels)
            app.Channel_ListBox.ItemsData=1:1:size(ephysdata,2);
            
%             app.Trace_ListBox.Items=
            % fill Trace listbox items 
            for i=1:size(ephysdata,3);
                app.Trace_ListBox.Items{1,i}=num2str(i);
            end
             app.Trace_ListBox.ItemsData=1:1:size(ephysdata,3);
             
             app.ephysdata1=ephysdata;
            app.ephysmetadata1=ephysmetadata;


            elseif ext ==".wcp"
                 % load .abf file using abfload by ...............
            ephysdata = import_wcp(cat(2,path,file));
            
            % fill Channel listbox items 
         
            for i=1:size(ephysdata.channel_info,2);
                Channels(1,i)=sprintf("%s(%s)",ephysdata.channel_info{1, i}.name,ephysdata.channel_info{1, i}.unit);
            end
            app.Channel_ListBox.Items=transpose(Channels)
            app.Channel_ListBox.ItemsData=1:1:size(ephysdata.S,2);
            
            ephysdata.S=cell2mat(cellfun(@(x) permute(x,[1,3,2]),ephysdata.S,"UniformOutput",false));
%             app.Trace_ListBox.Items=
            % fill Trace listbox items 
            s=1:1:size(ephysdata.S,3);
            app.Trace_ListBox.Items=arrayfun(@(x) num2str(x),s,"UniformOutput",false);
            app.Trace_ListBox.ItemsData=s;
             
            app.ephysdata1=ephysdata.S;
            app.ephysmetadata1=ephysdata;
            end
           app.Open_Trace()
        end

        % Value changed function: Channel_ListBox, Trace_ListBox
        function Open_Trace(app, event)
                if app.ephysfile==".abf"
                    app.Current_Ephys_Trace_Y=[];
                    app.Current_Ephys_Trace_X=[];
                    app.Current_Ephys_Trace_Y=transpose(app.ephysdata1(:,app.Channel_ListBox.Value,app.Trace_ListBox.Value));
                    app.Current_Ephys_Trace_X=linspace(0,size(app.Current_Ephys_Trace_Y,2)/10000,size(app.Current_Ephys_Trace_Y,2));
                    plot(app.EphysAx,app.Current_Ephys_Trace_Y,'XData',app.Current_Ephys_Trace_X);
                    app.EphysAx.XLim=[0.015 max(app.Current_Ephys_Trace_X,[],"all")]  ;
                elseif app.ephysfile==".wcp"
                    app.Current_Ephys_Trace_Y=[];
                    app.Current_Ephys_Trace_X=[];
                    app.Current_Ephys_Trace_Y=transpose(app.ephysdata1(:,app.Channel_ListBox.Value,app.Trace_ListBox.Value));
                    app.Current_Ephys_Trace_X=app.ephysmetadata1.T;
                    plot(app.EphysAx,app.Current_Ephys_Trace_Y,'XData',app.Current_Ephys_Trace_X);
                    app.EphysAx.XLim=[0.015 max(app.Current_Ephys_Trace_X,[],"all")]  ;
                end
        end

        % Button pushed function: SetAuxillarychannelButton
        function Setephys(app, event)
            if ~isrow(app.Current_Ephys_Trace_Y)
                app.Current_Ephys_Trace_Y=app.Current_Ephys_Trace_Y.';
            end
            if ~isrow(app.Current_Ephys_Trace_X)
                 app.Current_Ephys_Trace_X=app.Current_Ephys_Trace_X.';
            end

            if app.inFGUIButton.Value==1
            
                   app.shallowDATA.(app.DropDown.Value)=app.Current_Ephys_Trace_Y;
                   app.shallowDATA.eXData=app.Current_Ephys_Trace_X;
            else
            app.DATA.(app.DropDown.Value)=app.Current_Ephys_Trace_Y;
            try
            app.DATA.(app.DropDown.Value)=app.Current_Ephys_Trace_X;
            catch
                error='Old Data File Type'
            end
            app.DATA.eXData=app.Current_Ephys_Trace_X;


            
            app.DATA.Properties2Table(app.UITable) 
            end
        end

        % Callback function
        function debug(app, event)
            a=0
        end

        % Button pushed function: AllImageDataButton
        function SetImagedata(app, event)
            h = findobj('Tag','Gui1');
            
            MIJ.run('Select All');
            ScaledImageSize=MIJ.getRoi(1);

            if event.Source.Text=="All Image Data";
                Image2add=MIJ.getCurrentImage;
                MIJ.run('Select None');
            elseif event.Source.Text=="Image Slice";
                Image2add=MIJ.getCurrentImage;
                Image2add=Image2add(:,:,app.Spinner.Value);
            end
            if app.UpdateFileButton.Value==0
                app.DATA=ImData;
            end
            if app.ScanType.Value=="Line2";
                app.DATA.XData=linspace(ScaledImageSize(1,1),ScaledImageSize(1,2),size(Image2add,2));
                app.DATA.Type='Line2';
                app.DATA.file='Line2';
                app.DATA.YData=linspace(ScaledImageSize(2,2),ScaledImageSize(2,3),size(Image2add,1));
                app.DATA.TData=app.DATA.XData;
                app.DATA.ZData=[];
                app.DATA.tauData=[];
                app.DATA.TimeDim=2;
                app.DATA.XDim=1;
                app.DATA.DepthDim=[];
                app.DATA.(app.Channel.Value)=double(Image2add);
                app.DATA.YDim=[];
                app.DATA.linetime=app.DATA.TData(2)-app.DATA.TData(1);
                %             app.DATA.Height=size(Image2add,1);
                app.DATA.y_pixel_size=app.DATA.YData(2)-app.DATA.YData(1);
                app.DATA.x_pixel_size=app.DATA.XData(2)-app.DATA.XData(1);
                app.DATA.x_pixel_num=size(Image2add,2);
                app.DATA.y_pixel_num=size(Image2add,1);
                app.DATA.scanline.roi=[];
                app.DATA.scanline.roi(1,1)=1;
                app.DATA.scanline.roi(2,1)=app.DATA.y_pixel_num;
            elseif app.ScanType.Value=="FF"
                app.DATA.Type='FF';
                app.DATA.file='FF';
                %Install Log profile macro
                
%                 prof=sprintf("MIJ.run('Install...', 'install=[%s]');",cat(2,app.Macrospath,'MATlogprofile.txt'))
%                 eval(prof);

                % Plot and extract values
                MIJ.run('Plot Z-axis Profile');
                text=cat(2,app.Macrospath,'MATlogprofile.txt');
                h.RunningAppInstance.IJM.runMacroFile(text)
%                 MIJ.run('MATlogprofile');
                %set profile as current plot data
                profile=str2num(MIJ.getLog);
                MIJ.selectWindow('Log')
                MIJ.run('Close')
                MIJ.run('Close')
                app.DATA.TData=transpose(profile(:,1));
                app.DATA.XData=linspace(ScaledImageSize(1,1),ScaledImageSize(1,2),size(Image2add,2));
                ScX=repmat(repmat(app.DATA.XData,[size(app.DATA.YData,2),1]),[1,1,size(Image2add,3)]);
                app.DATA.ScX=ScX
                
                app.DATA.YData=linspace(ScaledImageSize(2,2),ScaledImageSize(2,3),size(Image2add,1));
                ScY=repmat(repmat(app.DATA.YData.',[1,size(app.DATA.XData,2)]),[1,1,size(Image2add,3)]);
                app.DATA.ScY=ScY;
                app.DATA.predScY=app.DATA.ScY;
                app.DATA.predScX=app.DATA.ScX;
                app.DATA.ZData=[];
                app.DATA.tauData=[];
                app.DATA.linetime=app.DATA.TData(2)-app.DATA.TData(1);
                app.DATA.Height=size(Image2add,1);
                app.DATA.y_pixel_size=app.DATA.YData(2)-app.DATA.YData(1);
                app.DATA.x_pixel_size=app.DATA.XData(2)-app.DATA.XData(1);
                app.DATA.x_pixel_num=size(Image2add,2);
                app.DATA.y_pixel_num=size(Image2add,1);
                app.DATA.scanline.roi(2,1)=app.DATA.y_pixel_num;
                app.DATA.(app.Channel.Value)=double(Image2add);
                app.DATA.Index=size(h.RunningAppInstance.Datastore_class,1)+1
            elseif app.ScanType.Value=="XY"
                app.DATA.Type='XY';
                app.DATA.file='XY';
                app.DATA.TData=1;
                app.DATA.YData=linspace(ScaledImageSize(2,2),ScaledImageSize(2,3),size(Image2add,1));
                app.DATA.XData=linspace(ScaledImageSize(1,1),ScaledImageSize(1,2),size(Image2add,2));
                ScX=repmat(app.DATA.XData,[size(app.DATA.YData,2),1]);
                ScY=repmat(app.DATA.YData.',[1,size(app.DATA.XData,2)]);
                app.DATA.ScX=ScX;
                app.DATA.ScY=ScY;
                app.DATA.predScY=app.DATA.ScY;
                app.DATA.predScX=app.DATA.ScX;
                app.DATA.linetime=[];
                app.DATA.Height=size(Image2add,1);
                app.DATA.y_pixel_size=app.DATA.YData(2)-app.DATA.YData(1);
                app.DATA.x_pixel_size=app.DATA.XData(2)-app.DATA.XData(1);
                app.DATA.x_pixel_num=size(Image2add,2);
                app.DATA.y_pixel_num=size(Image2add,1);
                app.DATA.scanline.roi(2,1)=app.DATA.y_pixel_num;
                app.DATA.(app.Channel.Value)=double(Image2add);
                app.DATA.ZData=1:1:size(Image2add);
                app.DATA.Index=size(h.RunningAppInstance.Datastore_class,1)+1
            end
            app.DATA.Properties2Table(app.UITable)             ;

        end

        % Value changed function: ScanType
        function data_Type(app, event)
            value = app.ScanType.Value;
           app.DATA.Type=value;
            if app.ScanType.Value=="Line2"
             app.Label.Text='Make Sure Time is X, L-R'  
           pause(2)
           app.Label.Text='' 
            end
            app.DATA.Properties2Table(app.UITable)  
        end

        % Cell edit callback: UITable
        function Editcell(app, event)
            %%NOT WORKING?
            indices = event.Indices;
            newData = event.NewData;
            editpropertyname=cell2mat(app.UITable.RowName(indices(1)))
            
                        
            if ischar(app.DATA.(editpropertyname)) & ischar(newData)==1
                app.DATA.(editpropertyname)=newData;
            elseif isnumeric(app.DATA.(editpropertyname)) & isnumeric(newData)==1
                app.DATA.(editpropertyname)=newData;
                
            end
        end

        % Callback function: Spinner, Spinner
        function setslice(app, event)
            value = app.Spinner.Value;
            MIJ.setSlice(value)
        end

        % Callback function
        function Open_MESc(app, event)
              [file,folder]=uigetfile('*.mesc;*.hdf5')           
                app.fileref=cat(2,folder,file);
                file2 = file(1:end-4);
                app.file2change=cat(2,folder,file2,'hdf5');
                if file(end-3:end)=='mesc';
                movefile(app.fileref,app.file2change,'f');
                end
                hinfo=h5info(app.file2change);
                alldata=transpose(struct2cell(hinfo.Groups.Groups));
                
                app.MEScfileListBox.Items=alldata(:,1);
                app.MEScfileListBox.ItemsData=alldata(:,1);
%                 movefile(app.file2change,app.fileref,'f');
                app.MESC_data=alldata
                for i=1:size(app.MESC_data{1, 6},1)
                a(i)=convertCharsToStrings(app.MESC_data{1, 6}(i).Name)
                end
                for i=1:size(app.MESC_data)
                Comment=app.MESC_data{i,6}(strcmp(a,"CommentDebugString"))
                commentnames(i)=convertCharsToStrings(Comment.Value)
                end
                   app.MEScfileListBox.Items=commentnames;
                app.MEScfileListBox.ItemsData=alldata(:,1);
             
        end

        % Callback function
        function LoadMEScdata(app, event)
            if iscell(app.MEScfileListBox.Value)==1;
                selected_dataitems=cell2mat(app.MEScfileListBox.Value);
            else
                selected_dataitems=app.MEScfileListBox.Value;
            end
               
            app.mescUG=65535-eval(sprintf('h5read(app.file2change,''%s%s'')',selected_dataitems,'/Channel_0'));
            app.mescUR=65535-eval(sprintf('h5read(app.file2change,''%s%s'')',selected_dataitems,'/Channel_1'));
            if  app.OneImageOnlyCheckBox.Value==1
          MIJ.closeAllWindows
      end
            if app.Switch.Value==1
            MIJ.createImage(app.mescUG);
            else
            MIJ.createImage(app.mescUR);
            end
            
            app.mesc_bkgUG=nanmean(app.mescUG,3);
            app.mesc_bkgUG=nanmean(app.mescUR,3);
            
                
                 MIJ.run('Rotate 90 Degrees Left');
               MIJ.run('Green Fire Blue');
%                MIJ.run('Invert', 'stack');
               MIJ.run('Enhance Contrast', 'saturated=0.35');
                for i=1:size(app.MESC_data{1, 6},1);
a(i)=convertCharsToStrings(app.MESC_data{1, 6}(i).Name);
end
               
      
         ZDim=app.MESC_data{1,6}(strcmp(a,"ZAxisConversionConversionLinearScale"));
        XDim=app.MESC_data{1,6}(strcmp(a,"XAxisConversionConversionLinearScale"));
        YDim=app.MESC_data{1,6}(strcmp(a,"YAxisConversionConversionLinearScale"));
       XSize=app.MESC_data{1,6}(strcmp(a,"XDim"));
       YSize=app.MESC_data{1,6}(strcmp(a,"YDim"));
       ZSize=app.MESC_data{1,6}(strcmp(a,"ZDim"));
         ZDim=double(ZDim.Value);
        XDim=double(XDim.Value);
        YDim=double(YDim.Value);
       XSize=double(XSize.Value);
       YSize=double(YSize.Value);
       ZSize=double(ZSize.Value);
       XData=linspace(0,XSize*XDim,size(app.mescUG,2));
       YData=linspace(0,YSize*YDim,size(app.mescUG,1));
       TData=linspace(0,ZSize*ZDim,size(app.mescUG,3));
       gridx=repmat(XData,size(app.mescUG,1),1);ScX=repmat(gridx,1,1,size(app.mescUG,3));
       gridy=repmat(YData.',1,size(app.mescUG,2));ScY=repmat(gridy,1,1,size(app.mescUG,3));
       UG=app.mescUG;
       UR=app.mescUR;
       bkgUG=app.mesc_bkgUG;
       bkgUR=app.mesc_bkgUR;
        eval(sprintf("MIJ.run('Properties...', 'unit=micron pixel_width=%d pixel_height=%d voxel_depth=%d')",XDim,YDim,ZDim))      
       Comment=app.MESC_data{1,6}(strcmp(a,"CommentDebugString"));
       comment=convertCharsToStrings(Comment.Value); 
        auxchan=app.MESC_data{1,6}(strcmp(a,"VecVariableValues"));       
        end

        % Callback function
        function loadfullEDF(app, event)
            app.FLIMData=Import_FLIM_LS();
            app.num_FLIM_channels=size(app.FLIMData,2)
            for i=1:size(app.FLIMData,1)
                numberi=sprintf('F%d',i)
                %             app.ListBox_2.ItemsData{1,i}=get(mestaghandle(numberi),1,'Comment');
                app.FIMAsfileListBox.Items{1,i}=sprintf('%s- %s',numberi,'FLIM');
                %             app.UITable.Data{i,1}=sprintf('%d',i);
                %             app.UITable.Data{i,2}=get(mestaghandle(numberi),1,'Comment');
                %             app.UITable.Data{i,3}=false;
                app.FIMAsfileListBox.ItemsData{1,i}=i;
            end  
%             app.FileNumberLabel.Text=file
        end

        % Callback function
        function loadFIMdata(app, event)
            num = app.FIMAsfileListBox.Value;
            
            
            
        end

        % Button pushed function: SprialscanlineButton
        function make_spiral(app, event)
            r = app.DiameterEditField.Value/2; %outer radius
a = 0;    %inner radius
b = app.PitchEditField.Value; %incerement per rev % Jos: changed to see the spiral!!
n = (r - a)./(b); %number  of revolutions
th = 2*n*pi;      %angle  
Th = linspace(0,th,1250*720);  
x = (a + b.*Th/(2*pi)).*cos(Th);
y = (a + b.*Th/(2*pi)).*sin(Th);
% better:
% i = linspace(0,n,1250*720)
% x = (a+b*i).* cos(2*pi*i)
plot(app.Panel_2.Children.Children,x,y);
[x(end) y(end)];
app.spScanline(1,:)=x;
app.spScanline(2,:)=y;
        end

        % Callback function
        function Import_FLIM(app, event)
           currentobj=copyobj2(app.DATA);
           if app.FullData3DButton.Value==1
           currentobj.UG=app.FLIMData{app.FIMAsfileListBox.Value,1};
           if app.num_FLIM_channels==2
           currentobj.UR=app.FLIMData{app.FIMAsfileListBox.Value,2};     
           end   
           currentobj.comment=sprintf('%s_%s','allFLIM',currentobj.comment)
           currentobj.Type=sprintf('%s','FLIM_tau_XY')
           currentobj.file=sprintf('%s','FLIM_tau_XY')
           currentobj.Subtype=sprintf('Single')
           
            %add XDATA,TDATA,YDATA..............................
            
            elseif app.tauTime2DButton.Value==1
            currentobj.UG=squeeze(sum(app.FLIMData{app.FIMAsfileListBox.Value,1},2));
            if app.num_FLIM_channels==2
            currentobj.UR=squeeze(sum(app.FLIMData{app.FIMAsfileListBox.Value,2},2)); 
            end
            currentobj.Type=sprintf('%s','FLIM_tau_T')
            currentobj.file=sprintf('%s','FLIM_tau_T')
            currentobj.Subtype=sprintf('Single')
            currentobj.comment=sprintf('%s_%s','tau/Time',currentobj.comment) 
            currentobj.XData=linspace(0,max(currentobj.TData,[],'all'),size(currentobj.UG,2));
            currentobj.YData=linspace(0,12.5,size(currentobj.UG,1));
            currentobj.TData=linspace(0,max(currentobj.TData,[],'all'),size(currentobj.UG,2));
%             currentobj.TauData=linspace(0,12.5,size(currentobj.UG,1));
            currentobj.XDim=2;
            currentobj.TimeDim=2;
            currentobj.YDim=1;
            currentobj.tauDim=1;
            currentobj.scanline.roi=[1;size(currentobj.UG,1)];
            currentobj.ScX=ones(size(currentobj.UG));
            currentobj.ScY=ones(size(currentobj.UG));
            currentobj.predScX=ones(size(currentobj.UG));
            currentobj.predScY=ones(size(currentobj.UG));
            
            %add XDATA,TDATA,YDATA..............................
            
           elseif app.PhotonCount2DButton.Value
            currentobj.UG=squeeze(sum(app.FLIMData{app.FIMAsfileListBox.Value,1},1));
            if app.num_FLIM_channels==2
            currentobj.UR=squeeze(sum(app.FLIMData{app.FIMAsfileListBox.Value,2},1)); 
            end
            currentobj.Type=sprintf('Line2');
           currentobj.file=sprintf('Line2');
            currentobj.Subtype=sprintf('Single');
            currentobj.comment=sprintf('Line2 | %s',currentobj.comment) ;        
            currentobj.XData=linspace(0,max(currentobj.TData,[],'all'),size(currentobj.UG,2));
            currentobj.YData=1:1:size(currentobj.UG,1);
            currentobj.TData=linspace(0,max(currentobj.TData,[],'all'),size(currentobj.UG,2));
            currentobj.XDim=2;
            currentobj.TimeDim=2;
            currentobj.YDim=1;
            currentobj.scanline.roi=[1;size(currentobj.UG,1)];
            currentobj.ScX=ones(size(currentobj.UG));
            currentobj.ScY=ones(size(currentobj.UG));
            currentobj.predScX=ones(size(currentobj.UG));
            currentobj.predScY=ones(size(currentobj.UG));
            %add XDATA,TDATA,YDATA..............................
            
            
           end
           currentobj.x_pixel_size=currentobj.XData(2)-currentobj.XData(1);
           currentobj.y_pixel_size=currentobj.YData(2)-currentobj.YData(1);
           currentobj.x_pixel_num=size(currentobj.UG,1);
           currentobj.y_pixel_num=size(currentobj.UG,1);
           
        app.DATA=currentobj
        app.DATA.Properties2Table(app.UITable)  
        end

        % Button pushed function: ReturnfiletoFGUIButton
        function returnData(app, event)
            h = findobj('Tag','Gui1');
            h.RunningAppInstance.Adddataset(app.DATA);
        end

        % Button pushed function: NewFileButton
        function new_file(app, event)
            app.DATA=ImData
            app.DATA.Properties2Table(app.UITable)  
            app.Spinner.Value=1;
            app.Channel.Value = 'UG';
        end

        % Button pushed function: GenerateScXScYDataButton
        function outputspiral(app, event)
            X=app.spScanline(1,:);
            Y=app.spScanline(2,:);
            resizedX=imresize(X,[1,size(app.DATA.UG,1)]);
            resizedY=imresize(Y,[1,size(app.DATA.UG,1)]);
            ScX=repmat(resizedX.',1,size(app.DATA.UG,2))
            ScY=repmat(resizedY.',1,size(app.DATA.UG,2))
            app.DATA.ScX=ScX;app.DATA.ScY=ScY
            app.DATA.predScX=ScX;app.DATA.predScY=ScY
            app.DATA.Properties2Table(app.UITable)  
            
        end

        % Menu selected function: LefthandXValuesMenu
        function ephys_Clipboard(app, event)
             rawData1 = importdata('-pastespecial');
             app.Current_Ephys_Trace_X=rawData1(:,1)
             app.Current_Ephys_Trace_Y=rawData1(:,2)
              plot(app.EphysAx,app.Current_Ephys_Trace_Y,'XData',app.Current_Ephys_Trace_X)
              
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 619 480];
            app.UIFigure.Name = 'MATLAB App';
            app.UIFigure.Tag = 'Datafile';

            % Create UITable
            app.UITable = uitable(app.UIFigure);
            app.UITable.ColumnName = {'Value'};
            app.UITable.RowName = {};
            app.UITable.ColumnEditable = true;
            app.UITable.CellEditCallback = createCallbackFcn(app, @Editcell, true);
            app.UITable.Position = [11 13 302 459];

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [316 145 298 327];

            % Create EPhysTab
            app.EPhysTab = uitab(app.TabGroup);
            app.EPhysTab.Title = 'EPhys';

            % Create TiffTab
            app.TiffTab = uitab(app.TabGroup);
            app.TiffTab.Title = 'Tiff';

            % Create TraceListBoxLabel
            app.TraceListBoxLabel = uilabel(app.EPhysTab);
            app.TraceListBoxLabel.HorizontalAlignment = 'right';
            app.TraceListBoxLabel.Position = [5 279 36 22];
            app.TraceListBoxLabel.Text = 'Trace';

            % Create Trace_ListBox
            app.Trace_ListBox = uilistbox(app.EPhysTab);
            app.Trace_ListBox.ValueChangedFcn = createCallbackFcn(app, @Open_Trace, true);
            app.Trace_ListBox.Position = [9 197 156 83];

            % Create Channel_ListBox
            app.Channel_ListBox = uilistbox(app.EPhysTab);
            app.Channel_ListBox.ValueChangedFcn = createCallbackFcn(app, @Open_Trace, true);
            app.Channel_ListBox.Position = [181 197 104 83];

            % Create Panel
            app.Panel = uipanel(app.EPhysTab);
            app.Panel.Position = [8 75 275 114];

            % Create SetAuxillarychannelButton
            app.SetAuxillarychannelButton = uibutton(app.EPhysTab, 'push');
            app.SetAuxillarychannelButton.ButtonPushedFcn = createCallbackFcn(app, @Setephys, true);
            app.SetAuxillarychannelButton.WordWrap = 'on';
            app.SetAuxillarychannelButton.Position = [11 17 86 52];
            app.SetAuxillarychannelButton.Text = 'Set Auxillary channel';

            % Create DropDown
            app.DropDown = uidropdown(app.EPhysTab);
            app.DropDown.Items = {'Aux1', 'Aux2', 'Aux3', 'Aux4', 'Ca2+ FLIM', ''};
            app.DropDown.Position = [101 17 64 22];
            app.DropDown.Value = 'Aux1';

            % Create TracetoClipboardButton
            app.TracetoClipboardButton = uibutton(app.EPhysTab, 'push');
            app.TracetoClipboardButton.WordWrap = 'on';
            app.TracetoClipboardButton.Position = [225 28 63 40];
            app.TracetoClipboardButton.Text = 'Trace to Clipboard';

            % Create inFGUIButton
            app.inFGUIButton = uibutton(app.EPhysTab, 'state');
            app.inFGUIButton.Text = 'in FGUI';
            app.inFGUIButton.Position = [99 45 66 23];
            app.inFGUIButton.Value = true;

            % Create ScanlinedataTab
            app.ScanlinedataTab = uitab(app.TabGroup);
            app.ScanlinedataTab.Title = 'Scanline data';

            % Create Panel_2
            app.Panel_2 = uipanel(app.ScanlinedataTab);
            app.Panel_2.Position = [152 94 143 104];

            % Create StraightlinescanlineButton
            app.StraightlinescanlineButton = uibutton(app.ScanlinedataTab, 'push');
            app.StraightlinescanlineButton.Position = [9 253 126 22];
            app.StraightlinescanlineButton.Text = 'Straight line scanline';

            % Create SprialscanlineButton
            app.SprialscanlineButton = uibutton(app.ScanlinedataTab, 'push');
            app.SprialscanlineButton.ButtonPushedFcn = createCallbackFcn(app, @make_spiral, true);
            app.SprialscanlineButton.Position = [178 253 100 22];
            app.SprialscanlineButton.Text = ' Sprial scanline';

            % Create LengthMicronsEditFieldLabel
            app.LengthMicronsEditFieldLabel = uilabel(app.ScanlinedataTab);
            app.LengthMicronsEditFieldLabel.HorizontalAlignment = 'right';
            app.LengthMicronsEditFieldLabel.Position = [5 231 96 22];
            app.LengthMicronsEditFieldLabel.Text = 'Length (Microns)';

            % Create LengthMicronsEditField
            app.LengthMicronsEditField = uieditfield(app.ScanlinedataTab, 'numeric');
            app.LengthMicronsEditField.Position = [13 210 88 22];

            % Create GenerateScanlinedataLabel
            app.GenerateScanlinedataLabel = uilabel(app.ScanlinedataTab);
            app.GenerateScanlinedataLabel.FontSize = 15;
            app.GenerateScanlinedataLabel.FontWeight = 'bold';
            app.GenerateScanlinedataLabel.Position = [11 279 171 22];
            app.GenerateScanlinedataLabel.Text = 'Generate Scanline data';

            % Create DiameterEditFieldLabel
            app.DiameterEditFieldLabel = uilabel(app.ScanlinedataTab);
            app.DiameterEditFieldLabel.HorizontalAlignment = 'right';
            app.DiameterEditFieldLabel.Position = [172 230 54 22];
            app.DiameterEditFieldLabel.Text = 'Diameter';

            % Create DiameterEditField
            app.DiameterEditField = uieditfield(app.ScanlinedataTab, 'numeric');
            app.DiameterEditField.Position = [175 210 47 22];

            % Create PitchEditFieldLabel
            app.PitchEditFieldLabel = uilabel(app.ScanlinedataTab);
            app.PitchEditFieldLabel.HorizontalAlignment = 'right';
            app.PitchEditFieldLabel.Position = [239 230 32 22];
            app.PitchEditFieldLabel.Text = 'Pitch';

            % Create PitchEditField
            app.PitchEditField = uieditfield(app.ScanlinedataTab, 'numeric');
            app.PitchEditField.Position = [236 210 47 22];

            % Create ClipboardpasteButton
            app.ClipboardpasteButton = uibutton(app.ScanlinedataTab, 'push');
            app.ClipboardpasteButton.Position = [10 151 100 22];
            app.ClipboardpasteButton.Text = 'Clipboard paste';

            % Create LoadfrommatButton
            app.LoadfrommatButton = uibutton(app.ScanlinedataTab, 'push');
            app.LoadfrommatButton.Position = [10 123 100 22];
            app.LoadfrommatButton.Text = 'Load from .mat';

            % Create LoadScanlinedataLabel
            app.LoadScanlinedataLabel = uilabel(app.ScanlinedataTab);
            app.LoadScanlinedataLabel.FontSize = 15;
            app.LoadScanlinedataLabel.FontWeight = 'bold';
            app.LoadScanlinedataLabel.Position = [11 176 142 22];
            app.LoadScanlinedataLabel.Text = 'Load Scanline data';

            % Create GenerateScXScYDataButton
            app.GenerateScXScYDataButton = uibutton(app.ScanlinedataTab, 'push');
            app.GenerateScXScYDataButton.ButtonPushedFcn = createCallbackFcn(app, @outputspiral, true);
            app.GenerateScXScYDataButton.WordWrap = 'on';
            app.GenerateScXScYDataButton.FontSize = 14;
            app.GenerateScXScYDataButton.FontWeight = 'bold';
            app.GenerateScXScYDataButton.Position = [164 46 108 40];
            app.GenerateScXScYDataButton.Text = 'Generate ScX-ScY Data';

            % Create Channel
            app.Channel = uidropdown(app.UIFigure);
            app.Channel.Items = {'UG', 'UR', 'TiR', 'ScX', 'ScY', 'bkgUG', 'bkgUR'};
            app.Channel.Position = [324 100 57 22];
            app.Channel.Value = 'UG';

            % Create ImageChanneltoaddLabel
            app.ImageChanneltoaddLabel = uilabel(app.UIFigure);
            app.ImageChanneltoaddLabel.Position = [324 122 124 22];
            app.ImageChanneltoaddLabel.Text = 'Image Channel to add';

            % Create AllImageDataButton
            app.AllImageDataButton = uibutton(app.UIFigure, 'push');
            app.AllImageDataButton.ButtonPushedFcn = createCallbackFcn(app, @SetImagedata, true);
            app.AllImageDataButton.FontName = 'Arial';
            app.AllImageDataButton.FontSize = 14;
            app.AllImageDataButton.FontWeight = 'bold';
            app.AllImageDataButton.Position = [324 69 192 27];
            app.AllImageDataButton.Text = 'All Image Data';

            % Create ScanType
            app.ScanType = uidropdown(app.UIFigure);
            app.ScanType.Items = {'Line-Scan (X=T)', 'Frame Scan', 'Z-Stack', 'Background Image'};
            app.ScanType.ItemsData = {'Line2', 'FF', 'XY', 'BKG'};
            app.ScanType.ValueChangedFcn = createCallbackFcn(app, @data_Type, true);
            app.ScanType.Position = [389 100 127 22];
            app.ScanType.Value = 'Line2';

            % Create DataTypeLabel
            app.DataTypeLabel = uilabel(app.UIFigure);
            app.DataTypeLabel.Position = [457 120 87 26];
            app.DataTypeLabel.Text = 'Data Type';

            % Create ImageSliceButton
            app.ImageSliceButton = uibutton(app.UIFigure, 'push');
            app.ImageSliceButton.FontName = 'Arial';
            app.ImageSliceButton.FontSize = 14;
            app.ImageSliceButton.ButtonPushedFcn = createCallbackFcn(app, @SetImagedata, true);
            app.ImageSliceButton.FontWeight = 'bold';
            app.ImageSliceButton.Position = [324 36 124 27];
            app.ImageSliceButton.Text = 'Image Slice';

            % Create Label
            app.Label = uilabel(app.UIFigure);
            app.Label.Position = [324 10 157 22];
            app.Label.Text = '';

            % Create Spinner
            app.Spinner = uispinner(app.UIFigure);
            app.Spinner.ValueChangingFcn = createCallbackFcn(app, @setslice, true);
            app.Spinner.Limits = [1 Inf];
            app.Spinner.ValueChangedFcn = createCallbackFcn(app, @setslice, true);
            app.Spinner.Position = [455 38 61 22];
            app.Spinner.Value = 1;

            % Create TransposeDataCheckBox
            app.TransposeDataCheckBox = uicheckbox(app.UIFigure);
            app.TransposeDataCheckBox.Text = 'Transpose Data';
            app.TransposeDataCheckBox.Position = [340 10 107 22];

            % Create ReturnfiletoFGUIButton
            app.ReturnfiletoFGUIButton = uibutton(app.UIFigure, 'push');
            app.ReturnfiletoFGUIButton.ButtonPushedFcn = createCallbackFcn(app, @returnData, true);
            app.ReturnfiletoFGUIButton.WordWrap = 'on';
            app.ReturnfiletoFGUIButton.FontName = 'Arial';
            app.ReturnfiletoFGUIButton.FontSize = 16;
            app.ReturnfiletoFGUIButton.FontWeight = 'bold';
            app.ReturnfiletoFGUIButton.FontColor = [1 0 0];
            app.ReturnfiletoFGUIButton.Position = [524 13 81 58];
            app.ReturnfiletoFGUIButton.Text = 'Return file to FGUI';

            % Create NewFileButton
            app.NewFileButton = uibutton(app.UIFigure, 'push');
            app.NewFileButton.ButtonPushedFcn = createCallbackFcn(app, @new_file, true);
            app.NewFileButton.FontName = 'Arial';
            app.NewFileButton.FontSize = 14;
            app.NewFileButton.FontWeight = 'bold';
            app.NewFileButton.FontColor = [0.149 0.149 0.149];
            app.NewFileButton.Position = [524 111 90 27];
            app.NewFileButton.Text = 'New File';

            % Create UpdateFileButton
            app.UpdateFileButton = uibutton(app.UIFigure, 'state');
            app.UpdateFileButton.Text = 'Update File';
            app.UpdateFileButton.FontSize = 14;
            app.UpdateFileButton.FontWeight = 'bold';
            app.UpdateFileButton.Position = [524 79 90 27];

            % Create ContextMenu
            app.ContextMenu = uicontextmenu(app.UIFigure);

            % Create LoadabfMenu
            app.LoadabfMenu = uimenu(app.ContextMenu);
            app.LoadabfMenu.MenuSelectedFcn = createCallbackFcn(app, @Import_abf_file, true);
            app.LoadabfMenu.Text = 'Load .abf';

            % Create ClipboardImportMenu
            app.ClipboardImportMenu = uimenu(app.ContextMenu);
            app.ClipboardImportMenu.Text = 'Clipboard Import';

            % Create LefthandXValuesMenu
            app.LefthandXValuesMenu = uimenu(app.ClipboardImportMenu);
            app.LefthandXValuesMenu.MenuSelectedFcn = createCallbackFcn(app, @ephys_Clipboard, true);
            app.LefthandXValuesMenu.Text = 'Left hand X Values';

            % Create InterleavedXvaluesMenu
            app.InterleavedXvaluesMenu = uimenu(app.ClipboardImportMenu);
            app.InterleavedXvaluesMenu.Text = 'Interleaved X values';

            % Create csvimportMenu
            app.csvimportMenu = uimenu(app.ContextMenu);
            app.csvimportMenu.Text = 'csv import ';

            % Create LefthandXValuesMenu_2
            app.LefthandXValuesMenu_2 = uimenu(app.csvimportMenu);
            app.LefthandXValuesMenu_2.Text = 'Left hand X Values';

            % Create InterleavedXvaluesMenu_2
            app.InterleavedXvaluesMenu_2 = uimenu(app.csvimportMenu);
            app.InterleavedXvaluesMenu_2.Text = 'Interleaved X values';
            
            % Assign app.ContextMenu
            app.EPhysTab.ContextMenu = app.ContextMenu;

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = newdatafile_2022b_m

            runningApp = getRunningApp(app);

            % Check for running singleton app
            if isempty(runningApp)

                % Create UIFigure and components
                createComponents(app)

                % Register the app with App Designer
                registerApp(app, app.UIFigure)

                % Execute the startup function
                runStartupFcn(app, @startupFcn)
            else

                % Focus the running singleton app
                figure(runningApp.UIFigure)

                app = runningApp;
            end

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end