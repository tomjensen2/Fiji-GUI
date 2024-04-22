classdef ImageView2x_2022b_m < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        ImageViewUIFigure             matlab.ui.Figure
        PlottingMenu                  matlab.ui.container.Menu
        GetVerticalProfileXMenu       matlab.ui.container.Menu
        GetHorizontalProfileYMenu     matlab.ui.container.Menu
        ClearLinesMenu_2              matlab.ui.container.Menu
        SendtodataMenu_2              matlab.ui.container.Menu
        OptionsMenu                   matlab.ui.container.Menu
        ColourMapsMenu                matlab.ui.container.Menu
        parulaMenu                    matlab.ui.container.Menu
        hotMenu                       matlab.ui.container.Menu
        viridisMenu                   matlab.ui.container.Menu
        cividisMenu                   matlab.ui.container.Menu
        plasmaMenu                    matlab.ui.container.Menu
        infernoMenu                   matlab.ui.container.Menu
        twilightMenu                  matlab.ui.container.Menu
        SliderSpinner                 wt.SliderSpinner
        AutoReturnButton              matlab.ui.control.StateButton
        YShiftButton                  matlab.ui.control.Button
        YShiftEditField               matlab.ui.control.NumericEditField
        ReturnROIButton               matlab.ui.control.Button
        SButton                       matlab.ui.control.Button
        Prim_Brush                    matlab.ui.control.Button
        ChannelButtonGroup            matlab.ui.container.ButtonGroup
        ButtonGroup                   matlab.ui.container.ButtonGroup
        Aux2Button                    matlab.ui.control.RadioButton
        Aux1Button                    matlab.ui.control.RadioButton
        RedChButton                   matlab.ui.control.ToggleButton
        GreenChButton                 matlab.ui.control.ToggleButton
        AutoRunSpiraltoImageCheckBox  matlab.ui.control.CheckBox
        AutoYCheckBox                 matlab.ui.control.CheckBox
        SetYAxisDisplayLimitstoMinimumMaximumButton  matlab.ui.control.Button
        MaxSpinner                    matlab.ui.control.Spinner
        MaxSpinnerLabel               matlab.ui.control.Label
        PlotDisplayPanel              matlab.ui.container.Panel
        MinSpinner                    matlab.ui.control.Spinner
        MinSpinnerLabel               matlab.ui.control.Label
        TabGroup                      matlab.ui.container.TabGroup
        BackgroundTab                 matlab.ui.container.Tab
        ListSelectorTwoPane           wt.ListSelectorTwoPane
        DataButtonGroup               matlab.ui.container.ButtonGroup
        BackgroundButton              matlab.ui.control.RadioButton
        MeasureButton                 matlab.ui.control.RadioButton
        GOButton                      matlab.ui.control.Button
        OperationsListBox             matlab.ui.control.ListBox
        OperationsListBoxLabel        matlab.ui.control.Label
        Drawassist                    matlab.ui.control.Button
        ClearButton                   matlab.ui.control.Button
        Polyroi                       matlab.ui.control.Button
        RectangleROI                  matlab.ui.control.Button
        elipse_select                 matlab.ui.control.Button
        SetXYLimitsButton             matlab.ui.control.StateButton
        DisplayPatternButton          matlab.ui.control.StateButton
        BKGChannel                    matlab.ui.container.ButtonGroup
        bkgTiR                        matlab.ui.control.ToggleButton
        bkgUR                         matlab.ui.control.ToggleButton
        bkgUG                         matlab.ui.control.ToggleButton
        ScanLocationsDisplayedatTimemsSpinner  matlab.ui.control.Spinner
        ScanLocationsDisplayedatTimemsSpinnerLabel  matlab.ui.control.Label
        ScanXCoordinatesPanel         matlab.ui.container.Panel
        RefreshButton                 matlab.ui.control.Button
        PatternSpinner                matlab.ui.control.Spinner
        PatternSpinnerLabel           matlab.ui.control.Label
        Spiral2ImgTab                 matlab.ui.container.Tab
        DeltaFF0Button                matlab.ui.control.StateButton
        AlexaasReferenceCheckBox      matlab.ui.control.CheckBox
        NormaliseLabel                matlab.ui.control.Label
        DropDown_2                    matlab.ui.control.DropDown
        Panel_2                       matlab.ui.container.Panel
        FrameScaninImageButton        matlab.ui.control.StateButton
        StartEndTimessLabel           matlab.ui.control.Label
        FFBKG_end                     matlab.ui.control.NumericEditField
        FFBKG_start                   matlab.ui.control.NumericEditField
        AdditionalTimesLabel          matlab.ui.control.Label
        EditField                     matlab.ui.control.EditField
        Hz_21                         matlab.ui.control.Button
        TabGroup2                     matlab.ui.container.TabGroup
        PeaksTab                      matlab.ui.container.Tab
        ThresholdxSDSpinner           matlab.ui.control.Spinner
        ThresholdxSDSpinnerLabel      matlab.ui.control.Label
        OneDpeaks                     matlab.ui.control.CheckBox
        Sp2ImgTab                     matlab.ui.container.Tab
        BackgroundSpinner             matlab.ui.control.Spinner
        BackgroundSpinnerLabel        matlab.ui.control.Label
        Smooth2DSpinner               matlab.ui.control.Spinner
        Smooth2DSpinnerLabel          matlab.ui.control.Label
        ResolutionSpinner             matlab.ui.control.Spinner
        ResolutionSpinnerLabel        matlab.ui.control.Label
        addBackgroundValueCheckBox    matlab.ui.control.CheckBox
        Pos2ImgTab                    matlab.ui.container.Tab
        PsfwdSpinner                  matlab.ui.control.Spinner
        PsfwdSpinnerLabel             matlab.ui.control.Label
        BKGSpinner                    matlab.ui.control.Spinner
        BKGSpinnerLabel               matlab.ui.control.Label
        I_ScalingSpinner              matlab.ui.control.Spinner
        I_ScalingSpinnerLabel         matlab.ui.control.Label
        BoundsTab                     matlab.ui.container.Tab
        SetBoundsManuallyCheckBox     matlab.ui.control.CheckBox
        YmaxEditField                 matlab.ui.control.NumericEditField
        YmaxEditFieldLabel            matlab.ui.control.Label
        YminEditField                 matlab.ui.control.NumericEditField
        YminEditFieldLabel            matlab.ui.control.Label
        XmaxEditField                 matlab.ui.control.NumericEditField
        XmaxEditFieldLabel            matlab.ui.control.Label
        XminEditField                 matlab.ui.control.NumericEditField
        XminEditFieldLabel            matlab.ui.control.Label
        ScXYdataCheckBox              matlab.ui.control.CheckBox
        AutoFitCheckBox               matlab.ui.control.CheckBox
        SurfaceFittingAppButton       matlab.ui.control.Button
        RunfitButton                  matlab.ui.control.Button
        Switch                        matlab.ui.control.Switch
        BaseoffsetmsSpinner           matlab.ui.control.Spinner
        BaseoffsetmsSpinnerLabel      matlab.ui.control.Label
        BasedTmsSpinner               matlab.ui.control.Spinner
        BasedTmsSpinnerLabel          matlab.ui.control.Label
        Hz_20                         matlab.ui.control.Button
        Hz_10                         matlab.ui.control.Button
        AP4Spinner                    matlab.ui.control.Spinner
        AP4Label                      matlab.ui.control.Label
        AP3Spinner                    matlab.ui.control.Spinner
        AP3Label                      matlab.ui.control.Label
        AP2Spinner                    matlab.ui.control.Spinner
        AP2Label                      matlab.ui.control.Label
        AP1Spinner                    matlab.ui.control.Spinner
        AP1SpinnerLabel               matlab.ui.control.Label
        CMaxSpinner                   matlab.ui.control.Spinner
        CMaxSpinnerLabel              matlab.ui.control.Label
        PeakdTmsSpinner               matlab.ui.control.Spinner
        PeakdTmsSpinnerLabel          matlab.ui.control.Label
        AutoCheckBox                  matlab.ui.control.CheckBox
        Get2DDecayProfilesButton      matlab.ui.control.Button
        RunSpiral2ImageButton         matlab.ui.control.Button
        Button                        matlab.ui.control.Button
        Sp2ImgPanel                   matlab.ui.container.Panel
        Sp2ImgURTab                   matlab.ui.container.Tab
        Sp2ImgPanel_2                 matlab.ui.container.Panel
        ImageNormalisationPanel       matlab.ui.container.Panel
        UnitsLabel                    matlab.ui.control.Label
        Normalisation                 matlab.ui.control.DropDown
        F0endTimesSpinner             matlab.ui.control.Spinner
        F0endTimesSpinnerLabel        matlab.ui.control.Label
        F0StartTimesSpinner           matlab.ui.control.Spinner
        F0StartTimesSpinnerLabel      matlab.ui.control.Label
        FemtoXROIsPanel               matlab.ui.container.Panel
        YSmoothSpinner                matlab.ui.control.Spinner
        YSmoothSpinnerLabel           matlab.ui.control.Label
        XSmoothSpinner                matlab.ui.control.Spinner
        XSmoothSpinnerLabel           matlab.ui.control.Label
        Panel                         matlab.ui.container.Panel
        ContextMenu                   matlab.ui.container.ContextMenu
        CopydataMenu                  matlab.ui.container.Menu
        BKGMenu                       matlab.ui.container.Menu
        AP1Menu                       matlab.ui.container.Menu
        AP2Menu                       matlab.ui.container.Menu
        AP3Menu                       matlab.ui.container.Menu
        AP4Menu                       matlab.ui.container.Menu
        All                           matlab.ui.container.Menu
        OpeninImageJMenu              matlab.ui.container.Menu
        BKGMenu_2                     matlab.ui.container.Menu
        AP1Menu_2                     matlab.ui.container.Menu
        AP2Menu_2                     matlab.ui.container.Menu
        AP3Menu_2                     matlab.ui.container.Menu
        AP4Menu_2                     matlab.ui.container.Menu
        ALLMenu                       matlab.ui.container.Menu
        LineProfileMenu               matlab.ui.container.Menu
        BKGMenu_3                     matlab.ui.container.Menu
        AP1Menu_3                     matlab.ui.container.Menu
        AP2Menu_3                     matlab.ui.container.Menu
        AP3Menu_3                     matlab.ui.container.Menu
        AP4Menu_3                     matlab.ui.container.Menu
        AllMenu                       matlab.ui.container.Menu
        SendtoDataMenu                matlab.ui.container.Menu
        BKGcontext                    matlab.ui.container.ContextMenu
        BKGLineProfile                matlab.ui.container.Menu
        SendtodataMenu                matlab.ui.container.Menu
        ContextMenu2                  matlab.ui.container.ContextMenu
        VerticalProfileMenu           matlab.ui.container.Menu
        HoriztonalProfileMenu         matlab.ui.container.Menu
        ClearLinesMenu                matlab.ui.container.Menu
        scan2axes                     matlab.ui.container.Menu
        ContextMenu3                  matlab.ui.container.ContextMenu
        DebugMenu                     matlab.ui.container.Menu
        ContextMenu4                  matlab.ui.container.ContextMenu
        ReturnCroppedDataMenu         matlab.ui.container.Menu
    end

    
    properties (Access = private)
        dragging;
        orPos;% Description
        orPos0;
        objPos0;
        myPatchRect=[]; % Description
        
        imgDATA % Description
        bkgDATA
        Channel2Disp % Description
        yw % Description
        ind % Description
        currentROI % Description
        fittinglocations % Description
        patterndisp
        scanline
        % Description
        coorddisp % Description
        indices % Description
        plotdata
        eplotdata
        % Description
        F0min
        F0max % Description
        selectedXValues
        selectedYValues % Description
        F0 % Description
        selectedXIndices % Description
        sp2imgtiles
        sp2imgtile1 % Description
        sp2imgtile2
        sp2imgtile3
        sp2imgtile4
        sp2imgtile5
        sp2imgtile6
        
        points % Description
        maxco % Description
        minco
        smooth2d % Description
        Property52 % Description
        
        CLims % Description
        scanprofile % Description
        % Description
        scatterXdata % Description
        folder % Description
        
        
        xline1
        xline2
        xline3
        xline4 % Description
        xline1a
        xline2a
        xline3a
        xline4a % Description
        
        
       
        mapsxdata
        mapsydata % Description
        improf1
        improf2
        improf3
        improf4
        improf5
        improf6
        
        % Description
        fileidxs % Description
        CallingApp
        Property88 % Description
        iGlu_Resp % Description
        mapindices % Description
        imgScX % Description
        imgScY
        imgXData % Description
        lineroi % Description
        linelist % Description
        splineprof % Description
        splineprofx % Description
        datax
       datay % Description
        lineprofmeta % Description
        XY_Traces_Xdata
       XY_Traces_Ydata
      XY_Traces_meta % Description
        selectedC1XValues
        selectedC1XIndices
        c1min
        c1max
        traceindices % Description
        mainAxlineroi % Description
        ylines % Description
        BKGintimage1
       BKGintimage2
       BKGintimage3
       BKGintimage4
       BKGintimage5
       
        % Description
        BKGxline1
       BKGxline1a
      BKGxline2
     BKGxline2a
     BKGxline3
     BKGxline3a
     BKGxline4
     BKGxline4a
      % Description
        sp2img_fullgridx_output % Description
        sp2img_fullgridy_output
        gsurf_fit0
       gsurf_fit1
       gsurf_fit2
       gsurf_fit3
       gsurf_fit4
        % Description
        xmaxline
       xminline % Description
        imgYData
         
        imgZData
        imgTData
        Property139 % Description
        timepoint % Description
        xline3d % Description
        roinames % Description
        ROIs
      % Description
        BKGylims
       BKGxlims % Description
        Property149 % Description
        currentsuccess % Description
        sp2imginput_frompeakfind % Description
        currentAmp % Description
        Plotdata_2D % Description
        ProfileDATA % Description
        imagelisten % Description
        sp2imgXprofiles % Description
        sp2imgYprofiles % Description
        comments % Description
        datax1
       datay1 % Description
        importmapsx
        importmapsy
        importmaps % Description
        pixwidth % Description
        lastpath % Description
        FFBKGData % Description
        XList % Description
        sizelistener % Description
        imgXDATA
       imgYDATA % Description
        currentCalAmp % Description
        currentCal_Accum % Description
        % Description
        YProf_Brush % Description
        ImgUp % Description
    end
    
    properties (Access = public)
        DATA % Description
        dataind % Description
        selectedXdata % Description
        selectedYdata % Description
        Property18 % Description
        roimanagerdata
        intimage0
        intimage1
        intimage2
        intimage3
        intimage4
        intimage5
        res
        scanpoints % Description
        APwindowsize % Description
        sp2imginput % Description
        sp2img_int_output % Description
        sp2img_gridx_output
        sp2img_gridy_output % Description
        sp2img_normgridx_output
        sp2img_normgridy_output % Description
        fnum % Description
        maps % Description
        tracedatastore % Description
        FitDatadisp % Description
        Property153 % Description
         currentLocs
        currentYProfiles % Description
         Maindisplay
        MainImgAx
        YProfile
        XProfile
        ephysAx
        Maindisplay2
        aprofile % Description
        Property69 % Description
        MainImageAx
        scatterXdataonBKG % Description
        sp2imgtiles_UR 
        
       sp2imgtileobjs % Description
       sp2img_int_outputUG
       sp2img_int_outputUR % Description
        ReturnDATA % Description
    end
    
    methods (Access = private)
        
        
        function results = plotprofiles(app)
            a=findall(app.YProfile,'Type','ConstantLine');
            delete(a);
            app.xmaxline=xline(app.YProfile,app.MaxSpinner.Value);
            app.xminline=xline(app.YProfile,app.MinSpinner.Value);
        end
        
        function results = BrushCall(app)
           dataind = find(get(app.YProfile.Children, 'BrushData'));
            app.selectedYdata=nanmean(app.imgDATA(app.dataind,:),1)
            app.selectedXdata=app.imgXData(:,:)
            %             app.selectedXIndices = logical(get(app.green_plot_2.Children, 'BrushData'));
            plot(app.XProfile,app.selectedYdata,'XData',app.selectedXdata)  
        end
        
        
        function results = sync_CLimits(app,value)
                    try
                    cmin=min(app.CLims([2:end],1),[],"all")
                     cmax=max(app.CLims([2:end],1),[],"all")
                     app.CMaxSpinner.Value=cmax
            %          app.sp2imgtile1.CLim=[cmin cmax]
                     app.sp2imgtile2.CLim=[cmin cmax]
                     app.sp2imgtile3.CLim=[cmin cmax]
                     app.sp2imgtile4.CLim=[cmin cmax]
                     app.sp2imgtile5.CLim=[cmin cmax]
                     try
                     app.sp2imgtile6.CLim=[cmin cmax]
                     end
                    end
        end
        
        
        
        
        function results = Plot1D(app,Xtraces,Ytraces,Meta)
        for i=1:size(Meta,1)
            tracenames=cat(2,cell2mat(Meta{i,1}),cell2mat(Meta{i,4}),cell2mat(Meta{i,2}))
        end  
        app.DataListBox.Items=tracenames   
        if isstring(Meta)==1
        Meta=mat2cell(Meta,1,ones(1,7))    
        end
         if isempty(app.XY_Traces_Ydata)==1
                app.XY_Traces_Ydata=Ytraces
                app.XY_Traces_Xdata=Xtraces
                app.XY_Traces_meta=Meta
         else
                app.XY_Traces_Ydata=cat(1,app.XY_Traces_Ydata,Ytraces)
                app.XY_Traces_Xdata=cat(1,app.XY_Traces_Xdata,Xtraces)
                app.XY_Traces_meta=cat(1,app.XY_Traces_meta,Meta)
         end
         
         
        app.Tracedata.Data=[]
            
            app.Tracedata.Data=cell2table(cat(2,app.XY_Traces_meta,app.XY_Traces_Xdata,app.XY_Traces_Ydata))
         plot(app.DataAxes,cell2mat(app.XY_Traces_Xdata(end,1)),cell2mat(app.XY_Traces_Ydata(end,1)))   
 title(app.DataAxes,cat(2,cell2mat(app.XY_Traces_meta{end,1}),cell2mat(app.XY_Traces_meta(end,4)),cell2mat(app.XY_Traces_meta{end,2})))
xlabel(app.DataAxes,cell2mat(app.XY_Traces_meta{end,6}))
ylabel(app.DataAxes,cell2mat(app.XY_Traces_meta{end,7}))
 
   
   if size(app.tracedatastore,1)==1 & isempty(app.tracedatastore(1).UG)==1
   app.tracedatastore.source=   cell2mat(Meta{1,1})  
   app.tracedatastore.comment=   cell2mat(Meta{1,5}) 
   app.tracedatastore.roi1plotG= cell2mat(Ytraces(1,1))
   app.tracedatastore.TData= cell2mat(Xtraces(1,1))
    app.tracedatastore.Type=   cell2mat(Meta{1,1})
    app.tracedatastore.file=   cell2mat(Meta{1,1})
    app.tracedatastore.UG= cell2mat(Ytraces(1,1))
   elseif size(app.tracedatastore,1)==1 & isempty(app.tracedatastore(1).UG)==0
       app.tracedatastore(end+1)=app.tracedatastore(end)
app.tracedatastore(end).source=   cell2mat(Meta{1,1})  
   app.tracedatastore(end).comment=   cell2mat(Meta(1,5)) 
   app.tracedatastore(end).roi1plotG= cell2mat(Ytraces(1,1))
   app.tracedatastore(end).TData= cell2mat(Xtraces(1,1))
app.tracedatastore(end).linetime= app.tracedatastore(end).TData(2)-app.tracedatastore(end).TData(1)
    app.tracedatastore(end).Type=   cell2mat(Meta{1,1})
    app.tracedatastore(end).file=   cell2mat(Meta{1,1})
    app.tracedatastore(end).UG= cell2mat(Ytraces(1,1))
elseif size(app.tracedatastore,1)>1 
       app.tracedatastore(end+1)=app.tracedatastore(end)
app.tracedatastore(end).source=   cell2mat(Meta{1,1})  
   app.tracedatastore(end).comment=   cell2mat(Meta(1,5)) 
   app.tracedatastore(end).roi1plotG= cell2mat(Ytraces(1,1))
   app.tracedatastore(end).TData= cell2mat(Xtraces(1,1))
    app.tracedatastore(end).Type=   cell2mat(Meta{1,1})
    app.tracedatastore(end).file=   cell2mat(Meta{1,1})
    app.tracedatastore(end).UG= cell2mat(Ytraces(1,1))
end
  data2save =app.tracedatastore(end)
                 h = findobj('Tag','Gui1');
                 h.RunningAppInstance.Adddataset(transpose(data2save))
    
        
end
        
        function results = Display3D(app,DATA)

            end
        
        
        function results = Tchange_listen(app)
           app.XList=addlistener(app.Listbox_3, 'Value', 'PostSet', @(src, evnt)app.Tchange_listen)  
        end
        
        function results = Sp2PeaksFF(app,APindexes,BKGindexes,F0indexs,FFBKGindexs)
            baseline1=app.F0StartTimesSpinner.Value;
            baseline2= app.F0endTimesSpinner.Value;
            AP1=app.AP1Spinner.Value/1000;
            AP2=app.AP2Spinner.Value/1000;
            AP3=app.AP3Spinner.Value/1000;
            AP4=app.AP4Spinner.Value/1000;
            inputvars=[baseline1,baseline2,AP1,AP2,AP3,AP4];
            app.sp2imginput=inputvars
             offset=app.BaseoffsetmsSpinner.Value/1000
            offsetvals=uint16(offset/app.DATA.linetime);
            baseline_window=app.BasedTmsSpinner.Value/1000;
            baseline_offset=app.BaseoffsetmsSpinner.Value/1000;
            %             BKGends=inputvars(3:end)-baseline_offset-baseline_window(:)
            %             BKGstarts=inputvars(3:end)-baseline_offset(:)
            APstarts=cat(2,inputvars(3:end),eval(app.EditField.Value)/1000)
            %             APstarts=APstarts.'
            
            
            APstarts=sort(APstarts,'ascend');
            APends=APstarts+app.PeakdTmsSpinner.Value/1000
            BKGends=APstarts-baseline_offset-baseline_window(:)
            BKGstarts=APstarts-baseline_offset(:)
           for i=1:size(BKGstarts,2)
                
                 baselineindexes(i,:)=app.DATA.TData>=BKGends(i)&app.DATA.TData<=BKGstarts(i);
                %             responseindexes(i,:)=app.DATA.TData>=BKGends(i)&app.DATA.TData<=APends(i);
                APindexes(i,:)=app.DATA.TData>=APstarts(i)&app.DATA.TData<=APends(i);
               traceindexes(i,:)=app.DATA.TData>=BKGends(i)&app.DATA.TData<=APends(i)+0.02;
           end   
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
            
            
           for i=1:size(APindexes,1)
           switch app.DropDown_2.Value
          case "DF/F0"
%             UG_DG=cellfun(@(x,y) bsxfun(@minus,x,y),APUG,BKGUG,'UniformOutput',false);
%             UR_DG=cellfun(@(x,y) bsxfun(@minus,x,y),APUR,BKGUR,'UniformOutput',false);
%             UG_DG=cellfun(@(x,y) bsxfun(@rdivide,x,y),UG_DG,BKGUG,'UniformOutput',false);
%             UR_DG=cellfun(@(x,y) bsxfun(@rdivide,x,y),UR_DG,BKGUR,'UniformOutput',false);  
%             intimageUG(:,:,i)=bsxfun(@rdivide,bsxfun(@minus,nanmean(app.DATA.UG(:,:,APindexes(i,:)),3),nanmean(app.DATA.UG(:,:,BKGindexes(i,:)),3)),nanmean(app.DATA.UG(:,:,BKGindexes(i,:)),3));
%             intimageUR(:,:,i)=bsxfun(@rdivide,bsxfun(@minus,nanmean(app.DATA.UR(:,:,APindexes(i,:)),3),nanmean(app.DATA.UR(:,:,BKGindexes(i,:)),3)),nanmean(app.DATA.UR(:,:,BKGindexes(i,:)),3));
            intimageUG(:,:,i)=bsxfun(@rdivide,bsxfun(@minus,mean(app.DATA.UG(:,:,APindexes(i,:)),3),mean(app.DATA.UG(:,:,baselineindexes(i,:)),3)),mean(app.DATA.UG(:,:,baselineindexes(i,:)),3));
            intimageUR(:,:,i)=bsxfun(@rdivide,bsxfun(@minus,mean(app.DATA.UR(:,:,APindexes(i,:)),3),mean(app.DATA.UR(:,:,baselineindexes(i,:)),3)),mean(app.DATA.UR(:,:,baselineindexes(i,:)),3));
          case "DF0"
           intimageUG(:,:,i)=bsxfun(@minus,mean(app.DATA.UG(:,:,APindexes(i,:)),3),mean(app.DATA.UG(:,:,baselineindexes(i,:)),3));
            intimageUR(:,:,i)=bsxfun(@minus,mean(app.DATA.UR(:,:,APindexes(i,:)),3),mean(app.DATA.UR(:,:,baselineindexes(i,:)),3));
            
          case "F"
           intimageUG(:,:,i)=mean(app.DATA.UG(:,:,APindexes(i,:)),3);
            intimageUR(:,:,i)=mean(app.DATA.UR(:,:,APindexes(i,:)),3);
          case "F/F0"
            UG_DG=bsxfun(@rdivide,x,y),UG_DG,BKGUG
            UR_DG=bsxfun(@rdivide,x,y),UR_DG,BKGUR    
         case "DF/R"
            UG_DG=cellfun(@(x,y) bsxfun(@minus,x,y),APUG,BKGUG,'UniformOutput',false);
            UR_DG=cellfun(@(x,y) bsxfun(@minus,x,y),APUR,BKGUR,'UniformOutput',false); 
             
            UG_DG=cellfun(@(x,y) bsxfun(@rdivide,x,y),UG_DG,APUR,'UniformOutput',false);
%             UR_DG=cellfun(@(x,y) bsxfun(@rdivide,x,y),UR_DG,BKGUR,'UniformOutput',false);  
              
           end
           
            if app.FrameScaninImageButton.Value==1
            app.FFBKGData=struct
                %                      if app.FrameScaninImageButton.Value==1
%                 app.FFBKGData.CData=mean(cat(3,FFUG,FFUR),3,'omitnan')
            if app.AlexaasReferenceCheckBox.Value==1
                  app.FFBKGData.CData=nanmean(app.DATA.UR(:,:,FFBKGindexs),3);
            else
                app.FFBKGData.CData=nanmean(app.DATA.UG(:,:,FFBKGindexs),3);
            end
                  
               
                app.FFBKGData.XData=app.DATA.XData;
                app.FFBKGData.YData=app.DATA.YData;
          end
           
           
%             intimageUG(:,:,i)=bsxfun(@minus,sum(app.DATA.UG(:,:,APindexes(i,:)),3),sum(app.DATA.UG(:,:,BKGindexes(i,:)),3));
%             intimageUR(:,:,i)=bsxfun(@minus,sum(app.DATA.UR(:,:,APindexes(i,:)),3),sum(app.DATA.UR(:,:,BKGindexes(i,:)),3));
           end 
          BKGimageUG=mean(app.DATA.UG(:,:,F0indexs),3);
          BKGimageUR=mean(app.DATA.UR(:,:,F0indexs),3);   
          intimageUG=cat(3,BKGimageUG,intimageUG);
          intimageUR=cat(3,BKGimageUR,intimageUR);
%           app.sp2imgtiles=tiledlayout(app.Sp2ImgPanel,3, 2,"TileSpacing",'tight',"Padding","compact");
            app.sp2imgtiles=tiledlayout(app.Sp2ImgPanel,'flow',"TileSpacing","compact","Padding","none");
            app.sp2imgtiles_UR=tiledlayout(app.Sp2ImgPanel_2,'flow',"TileSpacing","compact","Padding","none");
            
            for i=1:size(intimageUG,3)
            %create tile for Background and image of spiral data
            temp_sp2imgtile=nexttile(app.sp2imgtiles);
            temp_sp2imgtile2=nexttile(app.sp2imgtiles_UR);
            
            if i==1
%            title('Background');
%            title(temp_sp2imgtile2,'Background');
%           title(temp_sp2imgtile2_UR,'Background');
          gridx=app.DATA.XData
           gridy=app.DATA.YData
           imagesc(temp_sp2imgtile,BKGimageUG,'XData',gridx(1,:),'YData',gridy(1,:),'Tag','iGluSnFR map','Visible','on');
           imagesc(temp_sp2imgtile2,BKGimageUR,'XData',gridx(1,:),'YData',gridy(1,:),'Tag','iGluSnFR map','Visible','on');
            else
                gridx=app.DATA.XData
           gridy=app.DATA.YData
             imagesc(temp_sp2imgtile,intimageUG(:,:,i),'XData',gridx(1,:),'YData',gridy(1,:),'Tag','iGluSnFR map','Visible','on');
           imagesc(temp_sp2imgtile2,intimageUR(:,:,i),'XData',gridx(1,:),'YData',gridy(1,:),'Tag','iGluSnFR map','Visible','on');   
            end
           
            
%             app.CLims(i,:)=temp_sp2imgtile.CLim;    
%               eval(sprintf('title(''AP%d'');',i-1))
%               eval(sprintf('title(temp_sp2imgtile2,''AP%d'');',i-1))
          end
%           app.CLims(i,:)=temp_sp2imgtile.CLim;
            
           app.sp2imgtile1=app.sp2imgtiles.Children 
            app.sp2imgtile2=app.sp2imgtiles_UR.Children 
           
           
%             app.sync_CLimits(app.CLims);    %synchronise climits
            
            %generate output for maps data intensity
            app.sp2img_int_outputUG=[]
            app.sp2img_int_outputUR=[]
            app.sp2img_fullgridx_output=[]
            app.sp2img_fullgridy_output=[]
            for i=1:size(app.sp2imgtiles.Children,1)
           
            app.sp2img_int_outputUG{1,i}=app.sp2imgtiles.Children(i,1).Children.CData
            app.sp2img_int_outputUR{1,i}=app.sp2imgtiles_UR.Children(i,1).Children.CData 
                
            app.sp2img_fullgridx_output{1,i}=app.sp2imgtiles.Children(i,1).Children.XData
            app.sp2img_fullgridy_output{1,i}=app.sp2imgtiles_UR.Children(i,1).Children.YData
            end
        if app.FrameScaninImageButton.Value==1
             imagesc(app.sp2imgtiles.Children(end,1),app.FFBKGData.CData,'XData',app.FFBKGData.XData,'YData',app.FFBKGData.YData,'Tag','Sp2ImgData'); 
           
        end
             
        end
        
        function results = Store_Profiles(app,datax,datay)
              if isempty(app.profiles)==1
                app.sp2imgXprofiles=datax.'
                app.sp2imgYprofiles=datay.'
                 app.comments=convertCharsToStrings(app.DATA.comment)
              else
                app.sp2imgXprofiles(end+1,:)=datax.'
                app.sp2imgYprofiles(end+1,:)=datay.'
                app.comments(end+1)=convertCharsToStrings(app.DATA.comment)
              end
              comments = transpose(arrayfun(@(x)char(app.comments(x)),1:numel(app.comments),'uni',false));  
            app.Tiffdir.Items=comments
        end
        
        
        function results = Vert_peak_profile(app,XData,Prim_Profiles,Sec_Profiles)%XData=XData, Profiles=n by 1 cell with yprofiles

tracedatastore=ImData
tracedatastore=repmat(tracedatastore,4,1) 

for AP=1:4
   tracedatastore(AP,1).source=   "MES" 
   comment=sprintf('Y_Profile_%dAP_%s',AP,app.DATA.comment)
   tracedatastore(AP,1).comment=   comment
   tracedatastore(AP,1).TData= XData
   tracedatastore(AP,1).XData= XData
   tracedatastore(AP,1).eXData= XData
   tracedatastore(AP,1).YData= [1 2]
   tracedatastore(AP,1).Type=   'Line2'
   tracedatastore(AP,1).file=   'Line2'
   tracedatastore(AP,1).Aux1= repmat(cell2mat(Prim_Profiles(AP,1)),2,1)
   tracedatastore(AP,1).UG= repmat(cell2mat(Prim_Profiles(AP,1)),2,1)
   tracedatastore(AP,1).UR= repmat(cell2mat(Sec_Profiles(AP,1)),2,1)
   tracedatastore(AP,1).Units(1,'X')=array2table("Time(s)");
   tracedatastore(AP).Units(1,'Y')=array2table("Delta F/F");
   tracedatastore(AP).Units(1,'Value')=array2table("Delta F/F");
   tracedatastore(AP).x_pixel_size=  tracedatastore(AP,1).TData(2)-tracedatastore(AP,1).TData(1)
   tracedatastore(AP,1).y_pixel_size=  1
   tracedatastore(AP,1).z_pixel_size=  1
   tracedatastore(AP,1).x_pixel_num= size(tracedatastore(AP,1).XData,2)
   tracedatastore(AP,1).y_pixel_num= 1
   tracedatastore(AP,1).XDim= 2
   tracedatastore(AP,1).YDim= 1
   tracedatastore(AP,1).TimeDim= 2
   tracedatastore(AP,1).scanline.roi=[1;2]


end
  
 h = findobj('Tag','Gui1');
h.RunningAppInstance.Adddataset(tracedatastore)           
            
        end
        
        
        function results = SyncLimits(app)
             %app.XList=addlistener(app.Prim_Chan_Ax, 'XLim', 'PostSet', @(src, evnt)app.lims)
           if app.XProfile.XLim ~= app.MainImageAx.XLim
                app.MainImageAx.XLim = app.XProfile.XLim;
               
           elseif app.MainImageAx.XLim ~=app.XProfile.XLim
                app.XProfile.XLim = app.MainImageAx.XLim;
                
            end  
        end
        
            
            
            
            
        
        end
  
    methods (Access = public)
        
        function results = newdata(app,DATA)
            %             DAT=load('template.mat')
            app.DATA=DATA;
            a=findall(app.XProfile,'Type','ConstantLine');
            delete(a);
            a=findall(app.MainImageAx,'Type','ConstantLine');
            delete(a);
            a=findall(app.MainImageAx,'Type','Image');
            delete(a);
            app.YShiftEditField.Value=0;
%             h = findobj('Tag','Gui1');
if app.ButtonGroup.SelectedObject.Text=="Aux 2"
    auxchan=2
else
    auxchan=1
end


    if app.DATA.Type=="FF"
            app.SliderSpinner.Limits=[min(app.DATA.TData) max(app.DATA.TData)];
            app.SliderSpinner.RoundFractionalValues=0;
            app.SliderSpinner.Step=app.DATA.TData(2)-app.DATA.TData(1);
            app.SliderSpinner.Value=app.DATA.TData(2)-app.DATA.TData(1);
            

%         app.SliderSpinner.Limits=[1 size(app.DATA.UG,3)]
        try
       if app.GreenChButton.Value==1
              [~,app.imgDATA,app.imgTDATA,app.imgYDATA,app.imgXDATA]=app.DATA.FF_Data_2D(app.SliderSpinner.Value,1,app.MainImageAx,app.Normalisation.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,viridis);
       else
                 [~,app.imgDATA,app.imgTDATA,app.imgYDATA,app.imgXDATA]=app.DATA.FF_Data_2D(app.SliderSpinner.Value,2,app.MainImageAx,app.Normalisation.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,viridis);
        end
        end


    elseif app.DATA.Type=="Line2"
     if app.GreenChButton.Value==1
                [~,~,~,~,yprof]=app.DATA.Image_LSData_2D(1,[],app.Normalisation.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value);
                [~,~,~,~,~,~,~,~]=app.DATA.Plot_TData_1D(1,1,app.XProfile,app.Normalisation.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,auxchan,app.ephysAx,0,[],[]);
            else
                [~,~,~,~,yprof]=app.DATA.Image_LSData_2D(2,[],app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value);
                [~,~,~,~,~,~,~,~]=app.DATA.Plot_TData_1D(2,1,app.XProfile,app.Normalisation.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,auxchan,app.ephysAx,0,[],[]) ;
            end
    


            if app.GreenChButton.Value==1
                [~,app.imgDATA,~,~,yprof]=app.DATA.Image_LSData_2D(1,app.MainImageAx,app.Normalisation.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,[],app.XSmoothSpinner.Value,app.YSmoothSpinner.Value,app.YShiftEditField.Value);
                [~,~,~,~,~,~,~,~]=app.DATA.Plot_TData_1D(1,1,app.XProfile,app.Normalisation.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,auxchan,app.ephysAx,0,[],[]);
            else
                [~,app.imgDATA,~,~,yprof]=app.DATA.Image_LSData_2D(2,app.MainImageAx,app.Normalisation.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,[],app.XSmoothSpinner.Value,app.YSmoothSpinner.Value,app.YShiftEditField.Value);
                [~,~,~,~,~,~,~,~]=app.DATA.Plot_TData_1D(2,1,app.XProfile,app.Normalisation.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,auxchan,app.ephysAx,0,[],[]) ;
            end
    end  
   
    
            app.imgXData=app.DATA.XData
            app.imgYData=app.DATA.YData
            
            if app.AutoYCheckBox.Value==1
                xmax=size(app.imgDATA,1);
                Tmax=size(app.imgDATA,2);
                app.MaxSpinner.Limits=[1 xmax];
                app.MaxSpinner.Value=xmax;
                app.MinSpinner.Limits=[1 xmax];
                app.ScanLocationsDisplayedatTimemsSpinner.Limits=[1 Tmax];
                
            end
            
%             if app.DATA.Type~="XY"
%                 app.DATA.ROIobj.Fill_ListBox(app.OperationsListBox);
%             end
%                             [~,~,~,~,~,~,~,yprof]=app.DATA.Plot_TData_1D(2,1,app.XProfile,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,1,app.ephysAx,0,[],[]) ;

            %
            plot(app.YProfile,yprof);
            app.YProfile.View=[270,90];
            app.YProfile.CameraUpVector=[-1 0 0];
            app.YProfile.XTick=[];
            app.YProfile.YTick=[];
            app.YProfile.XLim=[0 size(yprof,1)];
            
            %set limits on sliders if on auto
%             app.Slider.Limits=[min(app.DATA.TData) max(app.DATA.TData)];
%             app.Slider.Value=0.01
            
            if app.AutoYCheckBox.Value==1
                xmax=size(app.imgDATA,1);
                Tmax=size(app.imgDATA,2);
                app.MaxSpinner.Limits=[1 xmax];
                app.MaxSpinner.Value=xmax;
                app.MinSpinner.Limits=[1 xmax];
                app.ScanLocationsDisplayedatTimemsSpinner.Limits=[1 Tmax];
                
            end
           %Set time spinner limits to current DATA
            app.ScanLocationsDisplayedatTimemsSpinner.Limits=[1 size(app.DATA.TData,2)];
            
            %choose channel for BKG image
            if app.bkgUG.Value==1
                app.scatterXdataonBKG=app.DATA.DisplayBKG(1,app.scatterXdata) %Green channel
            elseif app.bkgUG.Value==2
                app.scatterXdataonBKG=app.DATA.DisplayBKG(2,app.scatterXdata) %red channel
            elseif app.bkgUG.Value==3
                 app.scatterXdataonBKG=app.DATA.DisplayBKG(3,app.scatterXdata) % TiR channel
           end
            
            hold(app.scatterXdata,'on')
            switch app.DisplayPatternButton.Value
                case 0
                    delete(app.patterndisp);
                case 1
                    app.patterndisp=app.DATA.Scatter_Scanline_on_Image(app.scatterXdata,app.MinSpinner.Value,app.MaxSpinner.Value,app.ScanLocationsDisplayedatTimemsSpinner.Value,app.ScXYdataCheckBox.Value);        
            end
            hold(app.scatterXdata,'off')
            if isempty(app.BKGylims)==0
                
                app.scatterXdata.YLim=app.BKGylims
                app.scatterXdata.XLim=app.BKGxlims
                
            end
            
            if app.AutoRunSpiraltoImageCheckBox.Value==1
                app.getmapsfrompoint;
            end
            
            
            %             app.Display;
            
            %             app.change_pattern
            cmax=max(smooth2a(double(app.imgDATA),double(10),double(10)),[],"all")*3;
            app.MainImageAx.CLim(2)=cmax;
%             app.CMaxSpinner_2.Value=cmax;
            
            
%             app.YProf_Brush = createCallbackFcn(app.YProfile.ButtonDownFcn, @BrushCall, true);
%             app.YProfile.ButtonDownFcn = createCallbackFcn(app, @BrushCall, true);
           
            counter=1
            if isempty(app.DATA.scanline.ODDarray)==1
                app.scanline{1,1}=app.DATA.scanline.Data1([1:2],:)
            else
                noplots=size(app.DATA.scanline.ODDarray,2)
                for i=1:noplots
                    app.scanline{i,1}=[app.DATA.scanline.ODDarray(i).Data1(1,:);app.DATA.scanline.ODDarray(i).Data1(2,:)];
                    if numel(unique(app.DATA.scanline.ODDarray(i).Data1(1,:)))==1
                        pointscanXY(counter,1)=app.DATA.scanline.ODDarray(i).Data1(1,1)
                        pointscanXY(counter,2)=app.DATA.scanline.ODDarray(i).Data1(2,1)
                        counter=counter+1   
                    end
                end
            end
            app.SliderSpinner.Value=0;
            app.SliderSpinner.Limits=[min(app.DATA.TData) max(app.DATA.TData)];
            app.SliderSpinner.RoundFractionalValues=0;
            app.SliderSpinner.Step=app.DATA.TData(2)-app.DATA.TData(1);
        end
        
        
        function results = setAPspinnersfrompeaks(app);
            app.F0StartTimesSpinner.Value=app.sp2imginput(1);
            app.F0endTimesSpinner.Value=app.sp2imginput(2);
            app.AP1Spinner.Value=app.sp2imginput(3)*1000;
            app.AP2Spinner.Value=app.sp2imginput(4)*1000;
            app.AP3Spinner.Value=app.sp2imginput(5)*1000;
            app.AP4Spinner.Value=app.sp2imginput(6)*1000;
            app.AutoCheckBox.Value=1
            app.getmapsfrompoint
        end
        
        function results = ChangeDisplayLimits(app)
            app.MainImageAx.XLim=[app.sp2imginput(3)-0.1 app.sp2imginput(6)+0.1];
            app.XProfile.XLim=[app.sp2imginput(3)-0.1 app.sp2imginput(6)+0.1];
            app.ephysAx.XLim=[app.sp2imginput(3)-0.1 app.sp2imginput(6)+0.1];
        end
        
        function results = pos2img(app,inputvars,datainput)
            offset=app.BaseoffsetmsSpinner.Value/1000
            offsetvals=uint16(offset/app.DATA.linetime);

            app.sp2imginput=inputvars
            I_scaling=repmat(app.I_ScalingSpinner.Value,size(datainput.APstarts,1),1);
            bglev=repmat(app.BKGSpinner.Value,size(datainput.APstarts,1),1);;
            psfwd=repmat(app.PsfwdSpinner.Value,size(datainput.APends,1),1);;
            bkgoffset=app.BaseoffsetmsSpinner.Value/1000
            res=app.ResolutionSpinner.Value;
            smooth2d=app.Smooth2DSpinner.Value;

            index=app.DATA.TData>datainput.BKGends(1,1) & app.DATA.TData<datainput.APends(4,1);
            ind=1:1:size(app.DATA.ScX,2)
            xstart=min(index(ind))
            xstart=min(ind(index))
            xend=max(ind(index))

            xposdata=app.DATA.ScX([app.MinSpinner.Value:app.MaxSpinner.Value],[xstart:xend]);
            yposdata=app.DATA.ScY([app.MinSpinner.Value:app.MaxSpinner.Value],[xstart:xend]);

            xbound=[min(xposdata(:)),max(xposdata(:))];
            ybound=[min(yposdata(:)),max(yposdata(:))];
            
%             if app.SetBoundsManuallyCheckBox.Value==1
%                 xbound=[app.XminEditField.Value,app.XmaxEditField.Value];
%                 ybound=[app.YminEditField.Value,app.YmaxEditField.Value];
%             end
            
            
            m=7
            progressbar('UG','UR','BKG','FFBKG') %start progressbar
            if app.Switch.Value=="Pos2Img"
            
            [APUG,APXData,APYData,~,~]=app.DATA.s2img(1,I_scaling,bglev,psfwd,datainput.APstarts,datainput.APends,0,xbound,ybound,[],1,1,[])
%             i=1;progressbar(i/m)  %update progressbar
             progressbar(0.5,0,0,0)
            [APUR,APXData,APYData,~,~]=app.DATA.s2img(2,I_scaling,bglev,psfwd,datainput.APstarts,datainput.APends,0,xbound,ybound,[],1,1,[])
             progressbar(0.99,0,0,0)
%             i=2;progressbar(i/m)  %update progressbar
            [BKGUG,BKGXData,BKGYData,~,~]=app.DATA.s2img(1,I_scaling,bglev,psfwd,datainput.APstarts,datainput.APends,0,xbound,ybound,bkgoffset,1,1,[])
%             i=3;progressbar(i/m) %update progressbar
            progressbar(0.99,0.5,0,0)
            [BKGUR,BKGXData,BKGYData,~,~]=app.DATA.s2img(2,I_scaling,bglev,psfwd,datainput.APstarts,datainput.APends,0,xbound,ybound,bkgoffset,1,1,[])
            progressbar(0.99,0.99,0,0)
            
            
            elseif app.Switch.Value=="Sp2Img"
                
                
            [APUG,APXData,APYData,~,~]=app.DATA.s2img(1,I_scaling,bglev,psfwd,datainput.APstarts,datainput.APends,0,xbound,ybound,[],2,2,[])
%             i=1;progressbar(i/m)  %update progressbar
             progressbar(0.5,0,0,0)
            [APUR,APXData,APYData]=app.DATA.s2img(2,I_scaling,bglev,psfwd,datainput.APstarts,datainput.APends,0,xbound,ybound,[],2,2,[])
             progressbar(0.99,0,0,0)
%             i=2;progressbar(i/m)  %update progressbar
            [BKGUG,BKGXData,BKGYData,~,~]=app.DATA.s2img(1,I_scaling,bglev,psfwd,datainput.APstarts,datainput.APends,0,xbound,ybound,bkgoffset,2,2,[])
%             i=3;progressbar(i/m) %update progressbar
            progressbar(0.99,0.5,0,0)
            [BKGUR,BKGXData,BKGYData,~,~]=app.DATA.s2img(2,I_scaling,bglev,psfwd,datainput.APstarts,datainput.APends,0,xbound,ybound,bkgoffset,2,2,[])
            progressbar(0.99,0.99,0,0)    
            end
            
            
% if app.DeltaFFfromBaselineCheckBox.Value==1
%             UG_DG=cellfun(@(x,y) bsxfun(@minus,x,y),APUG,BKGUG,'UniformOutput',false);
%             UR_DG=cellfun(@(x,y) bsxfun(@minus,x,y),APUR,BKGUR,'UniformOutput',false);
% else
%     UG_DG=APUG;
%  UR_DG=APUR;
% end

    if app.Switch.Value=="Pos2Img"
            [F0UG,F0YData,F0XData,~,~]=app.DATA.s2img(1,I_scaling(1,1),bglev(1,1),psfwd(1,1),datainput.APstarts,datainput.APends,0,xbound,ybound,[],1,1,[])
%             i=4;progressbar(i/m)  %update progressbar
 progressbar(0.99,0.99,0.5,0)
            [F0UR,F0YData,F0XData,~,~]=app.DATA.s2img(2,I_scaling(1,1),bglev(1,1),psfwd(1,1),datainput.F0start,datainput.F0end,0,xbound,ybound,[],1,1,[])
%             i=5;progressbar(i/m)  %update progressbar
             progressbar(0.99,0.99,0.99,0)
        F0UG=F0UG    
        F0UR=F0UR  
       UG_DG=cellfun(@(x,y) bsxfun(@minus,x,y),APUG,BKGUG,'UniformOutput',false);
       UR_DG=cellfun(@(x,y) bsxfun(@minus,x,y),APUR,BKGUR,'UniformOutput',false);  
         
            
            
            
    elseif app.Switch.Value=="Sp2Img" 
        
             [F0UG,F0XData,F0YData,~,~]=app.DATA.s2img(1,I_scaling(1,1),bglev(1,1),psfwd(1,1),datainput.APstarts,datainput.APends,0,xbound,ybound,[],2,2,[])
%             i=4;progressbar(i/m)  %update progressbar
            progressbar(0.99,0.99,0.5,0)
            [F0UR,F0XData,F0YData,~,~]=app.DATA.s2img(2,I_scaling(1,1),bglev(1,1),psfwd(1,1),datainput.F0start,datainput.F0end,0,xbound,ybound,[],2,2,[])
%             i=5;progressbar(i/m)  %update progressbar
             progressbar(0.99,0.99,0.99,0)      
           
       
 
      switch app.DropDown_2.Value
          case "DF/F0"
            UG_DG=cellfun(@(x,y) bsxfun(@minus,x,y),APUG,BKGUG,'UniformOutput',false);
            UR_DG=cellfun(@(x,y) bsxfun(@minus,x,y),APUR,BKGUR,'UniformOutput',false);
            UG_DG=cellfun(@(x,y) bsxfun(@rdivide,x,y),UG_DG,BKGUG,'UniformOutput',false);
            UR_DG=cellfun(@(x,y) bsxfun(@rdivide,x,y),UR_DG,BKGUR,'UniformOutput',false);   
          case "DF0"
            UG_DG=cellfun(@(x,y) bsxfun(@minus,x,y),APUG,BKGUG,'UniformOutput',false);
            UR_DG=cellfun(@(x,y) bsxfun(@minus,x,y),APUR,BKGUR,'UniformOutput',false);  
          case "F"
            UG_DG=APUG;
            UR_DG=APUR;  
          case "F/F0"
            UG_DG=cellfun(@(x,y) bsxfun(@rdivide,x,y),UG_DG,BKGUG,'UniformOutput',false);
            UR_DG=cellfun(@(x,y) bsxfun(@rdivide,x,y),UR_DG,BKGUR,'UniformOutput',false);     
         case "DF/R"
            UG_DG=cellfun(@(x,y) bsxfun(@minus,x,y),APUG,BKGUG,'UniformOutput',false);
            UR_DG=cellfun(@(x,y) bsxfun(@minus,x,y),APUR,BKGUR,'UniformOutput',false); 
             
            UG_DG=cellfun(@(x,y) bsxfun(@rdivide,x,y),UG_DG,APUR,'UniformOutput',false);
%             UR_DG=cellfun(@(x,y) bsxfun(@rdivide,x,y),UR_DG,BKGUR,'UniformOutput',false);  
              
      end
    end
    
    
          if app.FrameScaninImageButton.Value==1
           [FFUG,FFXData,FFYData,~,~]=app.DATA.s2img(1,I_scaling(1,1),bglev(1,1),psfwd(1,1),app.FFBKG_start.Value,app.FFBKG_end.Value,0,xbound,ybound,[],2,1,[])  
           [FFUR,FFXData,FFYData,~,~]=app.DATA.s2img(2,I_scaling(1,1),bglev(1,1),psfwd(1,1),app.FFBKG_start.Value,app.FFBKG_end.Value,0,xbound,ybound,[],2,1,[]) 
             app.FFBKGData=struct
                %                      if app.FrameScaninImageButton.Value==1
%                 app.FFBKGData.CData=mean(cat(3,FFUG,FFUR),3,'omitnan')
                app.FFBKGData.CData=FFUG
                app.FFBKGData.XData=FFXData;
                app.FFBKGData.YData=FFYData;
          end
      
      if app.AlexaasReferenceCheckBox.Value==1
      UR_DG=APUR;
      end
      
      
      
%      if app.DeltaFFfromBaselineCheckBox.Value==1
%             UG_DG=cellfun(@(x,y) bsxfun(@minus,x,y),APUG,BKGUG,'UniformOutput',false);
%             UR_DG=cellfun(@(x,y) bsxfun(@minus,x,y),APUR,BKGUR,'UniformOutput',false);
%             UG_DG=cellfun(@(x,y) bsxfun(@rdivide,x,y),UG_DG,BKGUG,'UniformOutput',false);
%             UR_DG=cellfun(@(x,y) bsxfun(@rdivide,x,y),UR_DG,BKGUR,'UniformOutput',false);
%      
%      else
%     UG_DG=APUG;
%  UR_DG=APUR;
% end
%      
 
            
               
               
%                 FFBKG_1=app.FFBKG_start.Value;
%                 FFBKG_2=app.FFBKG_end.Value;
%                 FFBKG=app.DATA.UG([app.MinSpinner.Value:app.MaxSpinner.Value],[uint16(FFBKG_1/app.DATA.linetime):uint16(FFBKG_2/app.DATA.linetime)]);
%                 FFBKG=reshape(FFBKG,numel(FFBKG),1);
%                 FFBKGScX=app.DATA.ScX([app.MinSpinner.Value:app.MaxSpinner.Value],[uint16(FFBKG_1/app.DATA.linetime):uint16(FFBKG_2/app.DATA.linetime)]);
%                 FFBKGScX=reshape(FFBKGScX,numel(FFBKGScX),1);
%                 FFBKGScY=app.DATA.ScY([app.MinSpinner.Value:app.MaxSpinner.Value],[uint16(FFBKG_1/app.DATA.linetime):uint16(FFBKG_2/app.DATA.linetime)]);
%                 FFBKGScY=reshape(FFBKGScY,numel(FFBKGScX),1);
%                 
%                 gridy=repmat(F0YData,1,numel(F0XData));
%                 gridx=repmat(F0XData.',numel(F0YData),1);
%                 intFall = scatteredInterpolant(double(FFBKGScX),double(FFBKGScY),double(FFBKG),'natural','none');
%                
%                 for i2=1:size(gridy,1);
%                     for j2=1:size(gridx,2);
%                         sp_intimage(i2,j2)=intFall(gridx(1,j2),gridy(i2,1));
%                     end;
%                 end;
              
                % end
           
                
                
           progressbar(0.99,0.99,0.99,0.99)
%             i=6;progressbar(i/m)  %update progressbar
            app.sp2imginput=inputvars
           
             imgDATA_UG=cat(1,{F0UG},UG_DG)
             imgDATA_UR=cat(1,{F0UR},UR_DG) 
             
             
             checksize=size(imgDATA_UG{1,1})==[numel(APYData) numel(APXData)]
            
            ChanString=["UG","UR"]
            %% create tiledlayout object
            app.sp2imgtiles=tiledlayout(app.Sp2ImgPanel,'flow',"TileSpacing","compact","Padding","none");
            app.sp2imgtiles_UR=tiledlayout(app.Sp2ImgPanel_2,'flow',"TileSpacing","compact","Padding","none");
            
            for i=1:size(imgDATA_UG,1)
            %create tile for Background and image of spiral data
            temp_sp2imgtile=nexttile(app.sp2imgtiles);
            temp_sp2imgtile2=nexttile(app.sp2imgtiles_UR);
            if checksize==[1 1]
            eval(sprintf('imagesc(temp_sp2imgtile,imgDATA_%s{%d,1},''XData'',APXData,''YData'',APYData,''Tag'',''Sp2ImgData'');',ChanString(1,1),i))
            eval(sprintf('imagesc(temp_sp2imgtile2,imgDATA_%s{%d,1},''XData'',APXData,''YData'',APYData,''Tag'',''Sp2ImgData'');',ChanString(1,2),i))
            elseif checksize==[0 0]
             eval(sprintf('imagesc(temp_sp2imgtile,imgDATA_%s{%d,1}.'',''XData'',APXData{1,1},''YData'',APYData{1,1},''Tag'',''Sp2ImgData'');',ChanString(1,1),i))
            eval(sprintf('imagesc(temp_sp2imgtile2,imgDATA_%s{%d,1}.'',''XData'',APXData{1,1},''YData'',APYData{1,1},''Tag'',''Sp2ImgData'');',ChanString(1,2),i))
            end
            app.CLims(i,:)=temp_sp2imgtile.CLim; 
            if i==1
%            title('Background');
%            title(temp_sp2imgtile2,'Background');
          
         BKGUG=temp_sp2imgtile
           BKGUR=temp_sp2imgtile2
            else
%             app.CLims(i,:)=temp_sp2imgtile.CLim;    
%               eval(sprintf('title(''AP%d'');',i-1))
%               eval(sprintf('title(temp_sp2imgtile2,''AP%d'');',i-1))
          end
%           app.CLims(i,:)=temp_sp2imgtile.CLim;
            end
           app.sp2imgtile1=app.sp2imgtiles.Children 
            app.sp2imgtile2=app.sp2imgtiles_UR.Children 
           
           
%             app.sync_CLimits(app.CLims);    %synchronise climits
            
            %generate output for maps data intensity
             app.sp2img_int_outputUG=[]
             app.sp2img_int_outputUR=[]
              app.sp2img_fullgridx_output=[]
              app.sp2img_fullgridy_output=[]
             
            app.sp2img_int_outputUG=imgDATA_UG.'
            app.sp2img_int_outputUR=imgDATA_UR.'
            for i=1:size(app.sp2imgtiles.Children,1)
            app.sp2img_fullgridx_output{1,i}=app.sp2imgtiles.Children(i,1).Children.XData
            app.sp2img_fullgridy_output{1,i}=app.sp2imgtiles.Children(i,1).Children.YData
            end
            %generate output for maps data X and Y data
            if app.FrameScaninImageButton.Value==1
             imagesc(BKGUG,app.FFBKGData.CData,'XData',app.FFBKGData.XData,'YData',app.FFBKGData.YData,'Tag','Sp2ImgData'); 
           
            end
%             app.setclims
% i=7;progressbar(i/m) %update progressbar
progressbar(1,1,1,1)
        app.setclims
        end
        
        function results = trigchangexmin(app)
            app.FemtoROIselect     
        end
        
        function results = triggerspiral(app,inputvars,sucs_or_fail,peak_amplitudes)
            
            app.currentsuccess=sucs_or_fail
            app.currentAmp=peak_amplitudes
            if inputvars~=0
%             app.sp2imginput_frompeakfind=inputvars
%             app.getmapsfrompoint
app.run_surffit
            end
          
        end
        
        function results = triggeraddfit(app)
            app.FitDatadisp.triggeraddtable
        end
        
        function results = Callpeaklocs_auto(app,DATA)
           app.newdata(DATA)
            app.getmapsfrompoint
            app.getpeaklocs
            
        end
        
        function results = sizelisten(app)
            'Hello'
         app.FitDatadisp.Surfacefitting_data.Position(1)=app.ImageViewUIFigure.Position(1)+app.ImageViewUIFigure.Position(3)   
        app.FitDatadisp.Surfacefitting_data.Position(2)=app.ImageViewUIFigure.Position(2)+102
        end
        
        function results = Get_Response_Data(APstarts,DATA,baseline_offset,baseline_window)
            APstarts=sort(APstarts,'ascend');
            APends=APstarts+12/1000
            BKGends=APstarts-baseline_offset-baseline_window(:)
            BKGstarts=APstarts-baseline_offset(:)
            for i=1:size(BKGstarts,2)
            baselineindexes(i,:)=DATA.TData>=BKGends(i)&DATA.TData<=BKGstarts(i);
%             responseindexes(i,:)=DATA.TData>=BKGends(i)&DATA.TData<=APends(i);
            APindexes(i,:)=DATA.TData>=APstarts(i)&DATA.TData<=APends(i);
            end
            
           for i=1:size(baselineindexes,1)
            %get raw Red AP and BKG data of Displayed Data
            data.bkgdata(i,1)=mat2cell(app.imgDATA(:,baselineindexes(i,:)),size(app.imgDATA(:,baselineindexes(i,:)),1))
            data.APdata(i,1)=mat2cell(app.imgDATA(:,APindexes(i,:)),size(app.imgDATA(:,APindexes(i,:)),1))
            
            %get raw Green AP and BKG data irrespective of Displayed Data
            data.UG_rawBKGData(i,1)=mat2cell(DATA.UG(:,baselineindexes(i,:)),size(DATA.UG(:,baselineindexes(i,:)),1))
            data.UG_rawAPData(i,1)=mat2cell(DATA.UG(:,APindexes(i,:)),size(DATA.UG(:,APindexes(i,:)),1))
            %get raw Green AP and BKG data irrespective of Displayed Data
            data.UR_rawBKGData(i,1)=mat2cell(DATA.UR(:,baselineindexes(i,:)),size(DATA.UR(:,baselineindexes(i,:)),1))
            data.UR_rawAPData(i,1)=mat2cell(DATA.UR(:,APindexes(i,:)),size(DATA.UR(:,APindexes(i,:)),1))
            %Get X Coordinates
            data.ScX_rawAPData(i,1)=mat2cell(DATA.ScX(:,APindexes(i,:)),size(DATA.ScX(:,APindexes(i,:)),1))
           data.predScX_rawAPData(i,1)=mat2cell(DATA.predScX(:,APindexes(i,:)),size(DATA.predScX(:,APindexes(i,:)),1))
             %Get Y Coordinates
            data.ScY_rawAPData(i,1)=mat2cell(DATA.ScY(:,APindexes(i,:)),size(DATA.ScY(:,APindexes(i,:)),1))
            data.predScY_rawAPData(i,1)=mat2cell(DATA.predScY(:,APindexes(i,:)),size(DATA.predScY(:,APindexes(i,:)),1))
           end 
                      
            APamps=cell2mat(cellfun(@(x)nanmean(x,'all'),data.APdata,'UniformOutput',false))
            BKGamps=cell2mat(cellfun(@(x)nanmean(x,'all'),data.bkgdata,'UniformOutput',false))
            AP_XProfiles=cellfun(@(x)nanmean(x),data.APdata,'UniformOutput',false)
            BKG_XProfiles=cellfun(@(x)nanmean(x),data.bkgdata,'UniformOutput',false)
            
            app.currentYProfiles=cellfun(@(x)nanmean(x,2),data.APdata,'UniformOutput',false)
            currentYProfiles=cellfun(@(x)nanmean(x,2),data.APdata,'UniformOutput',false)
            currentBKGYProfiles=cellfun(@(x)nanmean(x,2),data.bkgdata,'UniformOutput',false)
            
            AP_UG_Profiles=cellfun(@(x)nanmean(x,2),data.UG_rawAPData,'UniformOutput',false)
            BKG_UG_Profiles=cellfun(@(x)nanmean(x,2),data.UG_rawBKGData,'UniformOutput',false)
            dUG_inc=cellfun(@(x,y) x-y,AP_UG_Profiles,BKG_UG_Profiles, 'UniformOutput',false)
            dFFUG_inc=cellfun(@(x,y,z) (x-y)./z,AP_UG_Profiles,BKG_UG_Profiles,BKG_UG_Profiles, 'UniformOutput',false)
            
            
            
            
            URbaselineIndex=DATA.TData>=app.sp2imginput(1) & DATA.TData<=app.sp2imginput(2);
            URbaseline=mean(DATA.UR(:,URbaselineIndex),"all")
            AP_UR_Profiles=cellfun(@(x)nanmean(x,2),data.UR_rawAPData,'UniformOutput',false)
            BKG_UR_Profiles=cellfun(@(x)nanmean(x,2),data.UR_rawBKGData,'UniformOutput',false)
            AP_UR=cell2mat(cellfun(@(x)nanmean(x,"all"),data.UR_rawAPData,'UniformOutput',false))
            BKG_UR=cell2mat(cellfun(@(x)nanmean(x,"all"),data.UR_rawBKGData,'UniformOutput',false))
            dAP_UR=bsxfun(@minus,AP_UR,BKG_UR);
            DFFUR_inc=bsxfun(@rdivide,dAP_UR,BKG_UR)
            DFFUR_Accum=(AP_UR-URbaseline)/URbaseline
            
            
            dUR_inc=cellfun(@(x,y) x-y,AP_UR_Profiles,BKG_UR_Profiles, 'UniformOutput',false)
            dFFUR_inc=cellfun(@(x,y,z) (x-y)./z,AP_UR_Profiles,BKG_UR_Profiles,BKG_UR_Profiles, 'UniformOutput',false)
            DFFCalamps=DFFUR_inc
            
            
            BKGstd=cell2mat(cellfun(@(x)std(x),BKG_XProfiles,'UniformOutput',false))
            APincrement=APamps-BKGamps
            APsucs=APincrement>app.ThresholdxSDSpinner.Value*mean(BKGstd)   
        end
        
        function results = savemaps(app)
           app.export_map2tif 
        end
        
        function results = deletelastmap(app)
           app.deleteselct 
        end
        
        function results = Save(app)
          app.export_map2tif   
        end
    end
    
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, DATA)
            %             clc;
            %             [folder,~,~] = fileparts(mfilename('fullpath'));
            %             cd(folder);
            
            app.DATA=DATA
            app.fnum=[]
            app.fnum=app.DATA.Index
%             app.UITable.RowName=[]
            
            if isfield(app.DATA,'bkgUG')
                app.bkgDATA=app.DATA.bkgUG
                app.lastpath='C:\Users\Tom PC\Dropbox'
            end
% app.sizelistener=addlistener(app.ImageViewUIFigure, 'Resize', 'PostSet', @(src, evnt)app.sizelisten)
            %             
%             switch app.DATA.scanline.Type
%                 case 'composite'
%                     index=linspace(1,size(app.DATA.scanline.ODDarray(1).Data1,2),size(app.DATA.scanline.ODDarray(1).Data1,2));
%                     [~,~,locs]=histcounts(index(1,:),size(app.imgDATA,1));
%                     app.scanpoints=transpose(accumarray(locs(:),app.DATA.scanline.ODDarray(1).Data1(1,:),[],@mean));
%                     app.scanpoints(2,:)=transpose(accumarray(locs(:),app.DATA.scanline.ODDarray(1).Data1(2,:),[],@mean));
%                     
%                 case 'square'
%                     index=linspace(1,size(app.DATA.scanline.Data1,2),size(app.DATA.scanline.Data1,2));
%                     [~,~,locs]=histcounts(index(1,:),size(app.imgDATA,1));
%                     app.scanpoints=transpose(accumarray(locs(:),app.DATA.scanline.Data1(1,:),[],@mean));
%                     app.scanpoints(2,:)=transpose(accumarray(locs(:),app.DATA.scanline.Data1(2,:),[],@mean));
%                     
%             end ;
%             
%             if isempty(app.DATA.ScX)==1
%                 app.DATA.ScX=double(repmat(app.scanpoints(1,:),size(app.DATA.UG,2),1));
%                 app.DATA.ScY=double(repmat(app.scanpoints(2,:),size(app.DATA.UG,2),1));
%             end
%             if size(app.DATA.ScX)==size(app.imgDATA)==0;
%                 app.DATA.ScX=transpose(app.DATA.ScX);
%                 app.DATA.ScY=transpose(app.DATA.ScY);
%             else
%             end
            app.imgDATA=magic(100);
            app.imgXDATA=1:1:100;
            app.imgYDATA=1:1:100;
            app.Maindisplay=tiledlayout(app.Panel,6,6,"TileSpacing","none","Padding","none");
            app.YProfile=nexttile(app.Maindisplay,1,[6 1])
            
            app.MainImageAx=nexttile(app.Maindisplay,2,[6 5])
            app.MainImageAx.XTick=[]
            
            app.Maindisplay2=tiledlayout(app.PlotDisplayPanel,2,1,"TileSpacing","none","Padding","none");
            app.XProfile=nexttile(app.Maindisplay2,1,[1 1])
            app.XProfile.XTick=[]
            app.ephysAx=nexttile(app.Maindisplay2,2,[1 1])
%               app.imagelisten=addlistener(app.Listbox_3, 'Value', 'PostSet', @(src, evnt)app.Display3D)  
%             app.sizelistener=addlistener(app.XProfile, 'XLim', 'PostSet', @(src, evnt)app.sizelisten)
            
%             if isempty(app.DATA.scanline.ODDarray)==1
%                 app.scanline{1,1}=app.DATA.scanline.Data1([1:2],:)
%             else
%                 noplots=size(app.DATA.scanline.ODDarray,2)
%                 for i=1:noplots
%                     app.scanline{i,1}=[app.DATA.scanline.ODDarray(i).Data1(1,:);app.DATA.scanline.ODDarray(i).Data1(2,:)];
%                 end
%             end
%             for i=1:10
%                 eval(sprintf('app.fittinglocations.resp%dlocs=[]',i));
%                 
%             end
            
%             app.APnumList.ItemsData{1,1}=0;
%             app.APnumList.Items{1,1}='BKG';
%             for i=1:11
%                 numberi=sprintf('AP%d',i)
%                 app.APnumList.Items{1,i+1}=sprintf(numberi);
%                 app.APnumList.ItemsData{1,i+1}=i;
%             end
            app.F0=[]
            app.scanprofile=tiledlayout(app.ScanXCoordinatesPanel,1,1,"TileSpacing","none","Padding","none");
            app.scatterXdata=nexttile(app.scanprofile)
         
            
            if app.AutoYCheckBox.Value==1
                xmax=size(app.imgDATA,1)
                app.MaxSpinner.Limits=[1 xmax]
                app.MaxSpinner.Value=xmax
                app.MinSpinner.Limits=[1 xmax]
            end
           % app.Slider.Limits=[min(app.DATA.TData) max(app.DATA.TData)]
%             app.Display
            app.currentsuccess=[1,1,1,1]
            app.currentAmp=[2,2,2,2]
           app.XList=addlistener(app.XProfile, 'XLim', 'PostSet', @(src, evnt)app.SyncLimits)
%            app.MainImageAx.CDataSource = 'app.imgDATA';
%              app.MainImageAx.XDataSource = 'app.imgXDATA';
%               app.MainImageAx.YDataSource = 'app.imgYDATA';
          
            %            colormap(app.scanprofile,'hot')
app.ImageViewUIFigure.Colormap=viridis            %          colormap(app.MainImageAx,'hot')
            %          colormap(app.BKGImageAx,'hot')
            app.YProf_Brush=brush(app.YProfile);
        end

        % Menu selected function: DebugMenu
        function break1(app, event)
       'Hello1'
        end

        % Callback function
        function ChangeImage(app, event)
            switch app.ChannelButtonGroup.SelectedObject.Text
                
        case 'UG'
                    app.imgDATA=app.DATA.UG
        case 'UR'
                    app.imgDATA=app.DATA.UR
                
            end
            app.Display
        end

        % Callback function
        function setROI(app, event)
            plot(app.XProfile,nanmean(app.imgDATA,1),'XData',app.DATA.XData)
            
        end

        % Callback function
        function ROIsize1(app, event)
            %            app.yw = event.Value;
            %             app.Display(app.imgDATA)
            %
        end

        % Callback function
        function ROIsize(app, event)
            
        end

        % Callback function
        function sendplot(app, event)
            app.Sendplot(app.selectedXValues)
        end

        % Callback function
        function copylocs(app, event)
%             if app.PasteLocationsCheckBox.Value==1
%                 rawData1 = importdata('-pastespecial');
%                 
%                 % For some simple files (such as a CSV or JPEG files), IMPORTDATA might
%                 % return a simple array.  If so, generate a structure so that the output
%                 % matches that from the Import Wizard.
%                 varname=sprintf('resp%dlocs',cell2mat(app.APnumList.Value))
%                 [~,name] = fileparts(varname);
%                 app.fittinglocations.(matlab.lang.makeValidName(name)) = [];
%                 app.fittinglocations.(matlab.lang.makeValidName(name)) = rawData1;
%                 for i=1:size(rawData1,1)
%                     eval(sprintf('app.TrialnumListBox.Items{1,%d}=''Tr%d''',i,i))
%                     eval(sprintf('app.TrialnumListBox.ItemsData{1,%d}=%d',i,i))
%                 end
%                 
%                 eval(sprintf('app.Response_locations.Data=app.fittinglocations.resp%dlocs',cell2mat(app.APnumList.Value)))
%                 app.plot_coord
%             else
%                 app.Response_locations.Data=[]
%                 eval(sprintf('app.Response_locations.Data=app.fittinglocations.resp%dlocs',cell2mat(app.APnumList.Value)))
%                 app.plot_coord
%             end
%             
        end

        % Callback function
        function addcrosshair(app, event)
            app.currentROI=drawcrosshair(app.MainImageAx);
        end

        % Value changed function: SetXYLimitsButton
        function holdBKG(app, event)
            if app.SetXYLimitsButton.Value==0
              app.BKGylims=[]
              app.BKGxlims=[]
            else
             app.BKGylims=app.scatterXdata.YLim
             app.BKGxlims=app.scatterXdata.XLim
            end
%             
        end

        % Callback function
        function plot_coord(app, event)
            delete(app.coorddisp)
            app.indices = cell2mat(app.TrialnumListBox.Value)
            
            plot=sprintf('app.coorddisp=scatter(app.scatterXdata,app.fittinglocations.resp%dlocs(app.indices,1),app.fittinglocations.resp%dlocs(app.indices,2)+10,20,"red")',cell2mat(app.APnumList.Value),cell2mat(app.APnumList.Value))
            hold(app.scatterXdata,"on")
            if app.Display_locs.Value==1
                eval(plot)
            end
            hold(app.scatterXdata,"off")
        end

        % Button pushed function: RefreshButton
        function start(app, event)
            h = findobj('Tag','Gui1');
            app.newdata(h.RunningAppInstance.Datastore_class(h.RunningAppInstance.Data_Selection,1));
        end

        % Value changed function: PatternSpinner
        function plot_pattern(app, event)
            
            delete(app.patterndisp)
           
            hold(app.scatterXdata,"on")
            if app.DisplayPatternButton.Value==1
                app.patterndisp=scatter(app.scatterXdata,app.scanline{app.PatternSpinner.Value,1}(1,:),app.scanline{app.PatternSpinner.Value,1}(2,:),30,"cyan","filled")
            end
            hold(app.scatterXdata,"off")
%             
%             
        end

        % Callback function
        function clearpattern(app, event)
%             value = app.displaypattern_y_n.Value;
%             if app.displaypattern_y_n.Value==0
%                 delete(app.patterndisp)
%             end
        end

        % Callback function
        function clearlocs(app, event)
            value = app.Display_locs.Value;
            if app.Display_locs.Value==0
                delete(app.coorddisp)
            end
        end

        % Callback function
        function changeap(app, event)
          try
            eval(sprintf('app.Response_locations.Data=app.fittinglocations.resp%dlocs',app.APnumList.Value))
          catch
              'There may be no data pasted into the variable'
          end
        end

        % Button pushed function: elipse_select
        function elipseROI(app, event)
            app.currentROI=drawellipse(app.scatterXdata);
            app.DATA.STAT.ROIProps=regionprops(app.currentROI,'all')
        end

        % Button pushed function: RectangleROI
        function rectangleROI(app, event)
            app.currentROI=drawrectangle(app.scatterXdata);
            app.DATA.STAT.ROIProps=regionprops(app.currentROI)
        end

        % Button pushed function: Polyroi
        function polygon(app, event)
            if event.Source.Icon=='PolyShape.png'
            app.currentROI=drawpolygon(app.scatterXdata);
           
            elseif event.Source.Text=="Poly"

            elseif event.Source.Text=="Polyline" 
            
            end
             mask = createMask(app.currentROI);
            Image=findall(app.scatterXdata,'Type','Image').CData
            roidata=regionprops(mask,Image,'all')
            app.DATA.STAT.ROIProps=regionprops(mask,Image,'all')
            a=0
        end

        % Callback function
        function roimanager(app, event)
            app.roimanagerdata=ROImanager_App
        end

        % Callback function
        function get_F0idx(app, event)
         
            ind = find(get(app.XProfile.Children, 'BrushData'));
            app.selectedXValues=app.DATA.XData(:,ind);
            app.selectedXIndices = logical(get(app.XProfile.Children, 'BrushData'));
            app.F0StartTimesSpinner.Value=round(min(app.selectedXValues),2)
            app.F0endTimesSpinner.Value=round(max(app.selectedXValues),2)
            
            app.Display
        end

        % Callback function: ChannelButtonGroup, DeltaFF0Button
        function setDFF(app, event)
            a=findall(app.XProfile,'Type','ConstantLine');
            delete(a);
            a=findall(app.MainImageAx,'Type','ConstantLine');
            delete(a);
            a=findall(app.MainImageAx,'Type','Image');
            delete(a);
             h = findobj('Tag','Gui1');
           if app.GreenChButton.Value==1 
            [~,app.imgDATA,~,~]=app.DATA.Image_LSData_2D(1,app.MainImageAx,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,[],app.XSmoothSpinner.Value,app.YSmoothSpinner.Value,app.YShiftEditField.Value); 
            app.DATA.Plot_TData_1D(1,1,app.XProfile,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,1,app.ephysAx,0,[],[]);
           else
            [~,app.imgDATA,~,~]=app.DATA.Image_LSData_2D(2,app.MainImageAx,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,[],app.XSmoothSpinner.Value,app.YSmoothSpinner.Value,app.YShiftEditField.Value); 
            app.DATA.Plot_TData_1D(2,1,app.XProfile,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,1,app.ephysAx,0,[],[]) ;  
           end   
        end

        % Callback function
        function windowchange(app, event)
            value = app.PeakdTmsSpinner.Value;
%             app.sp2imgpeaks(app.sp2imginput)
            app.getmapsfrompoint
        end

        % Value changed function: ResolutionSpinner
        function resolutionchange(app, event)
            value = app.ResolutionSpinner.Value;
             app.getmapsfrompoint
        end

        % Value changed function: Smooth2DSpinner
        function sp2imgsmoothing(app, event)
            value = app.Smooth2DSpinner.Value;
             app.getmapsfrompoint
        end

        % Value changed function: CMaxSpinner
        function changeclims(app, event)
            cmin=min(app.CLims(:,1),[],"all")
            %If pos2img
            for i=2:size(app.sp2imgtile1,1)
            app.sp2imgtile1.CLim=[cmin app.CMaxSpinner.Value]
            app.sp2imgtile2.CLim=[cmin app.CMaxSpinner.Value]
            app.sp2imgtile3.CLim=[cmin app.CMaxSpinner.Value]
            app.sp2imgtile4.CLim=[cmin app.CMaxSpinner.Value]
            try
                app.sp2imgtile1.CLim=[cmin app.CMaxSpinner.Value]
            end
            end
        end

        % Value changed function: DisplayPatternButton, MaxSpinner, 
        % ...and 1 other component
        function change_pattern(app, event)
           delete(app.patterndisp);
            hold(app.scatterXdata,'on')
           
           switch app.DisplayPatternButton.Value
                case 0
                   return
                case 1
                    app.patterndisp=app.DATA.Scatter_Scanline_on_Image(app.scatterXdata,app.MinSpinner.Value,app.MaxSpinner.Value,app.ScanLocationsDisplayedatTimemsSpinner.Value,app.ScXYdataCheckBox.Value);        
            end
            hold(app.scatterXdata,'off')
            if isempty(app.BKGylims)==0
                
                app.scatterXdata.YLim=app.BKGylims
                app.scatterXdata.XLim=app.BKGxlims
                
            end
            
%             
%             
%             
%             
%             bkg=app.DATA.bkgUG;
%             switch app.displaypattern_y_n.Value
%                case 0
%                delete(app.patterndisp);
%                case 1
%                    %Problem Here on some data
%                    try
%                        
%             app.scatterXdataonBKG=imagesc(app.scatterXdata,bkg,'XData',app.DATA.bkgXData,'YData',fliplr(app.DATA.bkgYData));
%                    end
%                    
%                    
%                    
%             %             
% % %             
% %             
%                 hold(app.scatterXdata,"on");
% %                 app.patterndisp=scatter(app.scatterXdata,app.DATA.ScX([app.MinSpinner.Value:app.MaxSpinner.Value],str2double(app.DropDown_2.Value)),app.DATA.ScY([app.MinSpinner.Value:app.MaxSpinner.Value],app.ScanLocationsDisplayedatTimemsSpinner.Value),3,"yellow");
%    if app.ScXYdataCheckBox.Value==1                 
% app.patterndisp=scatter(app.scatterXdata,app.DATA.ScX([app.MinSpinner.Value:app.MaxSpinner.Value],app.ScanLocationsDisplayedatTimemsSpinner.Value),app.DATA.ScY([app.MinSpinner.Value:app.MaxSpinner.Value],app.ScanLocationsDisplayedatTimemsSpinner.Value),3,"yellow");
%    else
% app.patterndisp=scatter(app.scatterXdata,app.DATA.predScX([app.MinSpinner.Value:app.MaxSpinner.Value],app.ScanLocationsDisplayedatTimemsSpinner.Value),app.DATA.predScY([app.MinSpinner.Value:app.MaxSpinner.Value],app.ScanLocationsDisplayedatTimemsSpinner.Value),3,"yellow");       
%    end       
%                 hold(app.scatterXdata,"off");
%             end
%             if isempty(app.BKGylims)==1
%               app.plotprofiles;
%             else 
%               app.scatterXdata.YLim=app.BKGylims
%               app.scatterXdata.XLim=app.BKGxlims
%                app.plotprofiles;
%             end
% %            colormap(app.scatterXdata,"hot")
        end

        % Callback function
        function export_map2tif(app, event)
            
            
            if isempty(app.maps)==1
                if exist('event')==0
                    datay=transpose(flipud(app.datay1))
                    datax=transpose(flipud(app.datax1))
                    datay2=cellfun(@transpose,datay,'UniformOutput',false)
                    datax2=cellfun(@transpose,datax,'UniformOutput',false)
                    dataxy = cellfun(@(x,y)[x,y],datax2,datay2,'UniformOutput',false);
                    app.maps=cat(2,app.sp2img_int_output,dataxy)
                    app.mapsxdata=app.sp2img_gridx_output
                    app.mapsydata=app.sp2img_gridy_output
                    app.comments=convertCharsToStrings(app.DATA.comment)
                else
                    app.maps=app.sp2img_int_output
                    app.mapsxdata=app.sp2img_gridx_output
                    app.mapsydata=app.sp2img_gridy_output
                    app.comments=convertCharsToStrings(app.DATA.comment)
                end
            else
                if exist('event')==0
                    datay=transpose(flipud(app.datay1))
                    datax=transpose(flipud(app.datax1))
                    datay2=cellfun(@transpose,datay,'UniformOutput',false)
                    datax2=cellfun(@transpose,datax,'UniformOutput',false)
                    dataxy = cellfun(@(x,y)[x,y],datax2,datay2,'UniformOutput',false);
                    app.maps(end+1,:)=cat(2,app.sp2img_int_output,dataxy)
                    app.mapsxdata(end+1,:)=app.sp2img_gridx_output
                    app.mapsydata(end+1,:)=app.sp2img_gridy_output
                    app.comments(end+1)=convertCharsToStrings(app.DATA.comment)
                else
                    app.maps(end+1,:)=app.sp2img_int_output
                    app.mapsxdata(end+1,:)=app.sp2img_gridx_output
                    app.mapsydata(end+1,:)=app.sp2img_gridy_output
                    app.comments(end+1)=convertCharsToStrings(app.DATA.comment)
                end
            end
            comments = transpose(arrayfun(@(x)char(app.comments(x)),1:numel(app.comments),'uni',false));
            app.Tiffdir.Items=comments
            if app.MapsfromimportCheckBox.Value==0
            app.UITable.Data=[]
            app.UITable.Data=cell2table(app.maps)
           
            if isempty(app.UITable.RowName)==1
                app.UITable.RowName=[]
                app.UITable.RowName=mat2cell(app.DATA.Index,1)
            else
                app.UITable.RowName(end+1,:)=mat2cell(app.fnum,1)
                
            end
             end
           
            try
                %get map data
                mapsdata1(1,1)=findall(app.sp2imgtile1,'Type','Image');
                mapsdata1(2,1)=findall(app.sp2imgtile2,'Type','Image');
                mapsdata1(3,1)=findall(app.sp2imgtile3,'Type','Image');
                mapsdata1(4,1)=findall(app.sp2imgtile4,'Type','Image');
                mapsdata1(5,1)=findall(app.sp2imgtile5,'Type','Image');
                
                maps(:,:,1)=app.mapsdata1(1,1).Children.CData
                maps(:,:,2)=app.mapsdata1(2,1).Children.CData
                maps(:,:,3)=app.mapsdata1(3,1).Children.CData
                maps(:,:,4)=app.mapsdata1(4,1).Children.CData
                maps(:,:,5)=app.mapsdata1(5,1).Children.CData
                
            end
            
            
            if app.tifexportCheckBox.Value==1
                if isempty(app.folder)
                    app.folder=uigetdir
                end
                dir_struct=dir(app.folder);
                num=size(dir_struct,1)-1
                bfCheckJavaPath %initiate biormats path variable
                metadata = createMinimalOMEXMLMetadata(maps);% make bf metadata variable
                pixelSizeX = ome.units.quantity.Length(java.lang.Double(app.ResolutionSpinner.Value), ome.units.UNITS.MICROMETER);
                metadata.setPixelsPhysicalSizeX(pixelSizeX, 0); %set x dimension pixel size
                pixelSizeY = ome.units.quantity.Length(java.lang.Double(app.ResolutionSpinner.Value), ome.units.UNITS.MICROMETER);
                metadata.setPixelsPhysicalSizeY(pixelSizeY, 0);%set y dimension pixel size
                pixelSizeZ = ome.units.quantity.Length(java.lang.Double(1), ome.units.UNITS.MICROMETER);
                metadata.setPixelsPhysicalSizeZ(pixelSizeZ, 0);%set y dimension pixel size
                filename=sprintf('%s/%s%d%d.tif',app.folder,'trial',0,num); %generate filename in loop
                bfsave(maps,filename,'metadata',metadata); %save images to tiff
                dir_struct=dir(app.folder);
                dir_cell=struct2cell(dir_struct);
                dir_cell=transpose(dir_cell);
                
                for i=1:size(dir_cell,1);
                    
                    app.Tiffdir.ItemsData{1,i}=sprintf('%s/%s',dir_cell{i,2},dir_cell{i,1});
                    app.Tiffdir.Items{1,i}=dir_cell{i,1};
                end
                
            end
            
            
        end

        % Callback function
        function deleteselct(app, event)
%             if app.tifexportCheckBox.Value==1
%                 delete(app.Tiffdir.Value)
%                 app.Tiffdir.ItemsData=" "
%                 app.Tiffdir.Items=" "
%                 
%                 dir_struct=dir(app.folder);
%                 dir_cell=struct2cell(dir_struct);
%                 dir_cell=transpose(dir_cell);
%                 
%                 for i=1:size(dir_cell,1);
%                     
%                     app.Tiffdir.ItemsData{1,i}=sprintf('%s/%s',dir_cell{i,2},dir_cell{i,1});
%                     app.Tiffdir.Items{1,i}=dir_cell{i,1};
%                 end
%             end
            plotsize=size(app.maps,1)
            minusplotsize=plotsize-1
            
            if  plotsize>1
                
                app.maps=app.maps([1:minusplotsize],:)
                app.mapsxdata=app.mapsxdata([1:minusplotsize],:)
                app.mapsydata=app.mapsydata([1:minusplotsize],:)
                 if app.MapsfromimportCheckBox.Value==0
                app.UITable.Data=cell2table(app.maps)
                app.UITable.RowName=app.UITable.RowName([1:minusplotsize],1)
                 end
%                     app.sp2imgXprofiles=app.sp2imgXprofiles([1:minusplotsize],:)
%                 app.sp2imgYprofiles=app.sp2imgYprofiles([1:minusplotsize],:)
                 app.comments=app.comments([1:minusplotsize],:)
               
            else
                app.maps=[]
                app.mapsxdata=[]
                app.mapsydata=[]
                 if app.MapsfromimportCheckBox.Value==0
                app.UITable.Data=[]
                app.UITable.RowName=[]
                 end
%                 app.sp2imgXprofiles=[]
%                 app.sp2imgYprofiles=[]
                 app.comments=[]
            end
            
             comments = transpose(arrayfun(@(x)char(app.comments(x)),1:numel(app.comments),'uni',false));  
             
            app.Tiffdir.Items=comments
            
            
        end

        % Callback function
        function changeexdir(app, event)
            app.folder=uigetdir
            
            dir_struct=dir(app.folder);
            dir_cell=struct2cell(dir_struct);
            dir_cell=transpose(dir_cell);
            for i=1:size(dir_cell,1);
                
                app.Tiffdir.ItemsData{1,i}=sprintf('%s/%s',dir_cell{i,2},dir_cell{i,1});
                app.Tiffdir.Items{1,i}=dir_cell{i,1};
            end
        end

        % Button pushed function: Button
        function setclims(app, event)
            imageobjs=flipud(findall(app.sp2imgtile1,'Type','Image'))
            
for i=1:size(imageobjs,1)
data{i,1}=imageobjs(i).CData
end
maxints=cellfun(@(x) max(x,[],'all'),data(2:end),"UniformOutput",false)
maxints2=cell2mat(maxints)
a=max(maxints2,[],'all')
axobjs=flipud(app.sp2imgtile1)
for i=2:1:size(axobjs,1)
axobjs(i).CLim=[0 a]
end
axobjs(1).CLim=[0 max(axobjs(1).Children.CData,[],'all')]
  app.CMaxSpinner.Value=a         
            
%             
%             cmin=min(app.CLims(:,1),[],"all")
%             for i=size(app.sp2imgtile1,1):-1:2
%             app.sp2imgtiles.Children(i,1).CLim=[cmin app.CLims(4,2)]
%             end
%             app.CMaxSpinner.Value=app.CLims(4,2)
        end

        % Button pushed function: 
        % SetYAxisDisplayLimitstoMinimumMaximumButton
        function minXmax(app, event)
            app.MaxSpinner.Limits=[1 size(app.imgDATA,1)]
            app.MaxSpinner.Value=size(app.imgDATA,1)
            app.MinSpinner.Limits=[1 size(app.imgDATA,1)]
            app.MinSpinner.Value=1;
        end

        % Callback function: AP1Spinner, AP2Spinner, AP3Spinner,
        % AP4Spinner, 
        % ...and 1 other component
        function getmapsfrompoint(app, event)
a=findall(app.XProfile,'Tag','Display');
delete(a)
            baseline1=app.F0StartTimesSpinner.Value;
            baseline2= app.F0endTimesSpinner.Value;
            AP1=app.AP1Spinner.Value/1000;
            AP2=app.AP2Spinner.Value/1000;
            AP3=app.AP3Spinner.Value/1000;
            AP4=app.AP4Spinner.Value/1000;
            inputvars=[baseline1,baseline2,AP1,AP2,AP3,AP4];
            app.sp2imginput=inputvars

            app.XProfile.XLim=[app.sp2imginput(3)-0.1 app.sp2imginput(6)+0.1];
            app.ephysAx.XLim=[app.sp2imginput(3)-0.1 app.sp2imginput(6)+0.1];
            app.MainImageAx.XLim=[app.sp2imginput(3)-0.1 app.sp2imginput(6)+0.1];

            baseline_window=app.BasedTmsSpinner.Value/1000;
            baseline_offset=app.BaseoffsetmsSpinner.Value/1000;
            %             BKGends=inputvars(3:end)-baseline_offset-baseline_window(:)
            %             BKGstarts=inputvars(3:end)-baseline_offset(:)
            APstarts=cat(2,inputvars(3:end),eval(app.EditField.Value)/1000)
            %             APstarts=APstarts.'
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            APstarts=sort(APstarts,'ascend');
            APends=APstarts+app.PeakdTmsSpinner.Value/1000
            BKGends=APstarts-baseline_offset-baseline_window(:)
            BKGstarts=APstarts-baseline_offset(:)
            offset=app.BaseoffsetmsSpinner.Value/1000
             offsetvals=uint16(offset/app.DATA.linetime);
%              baselineindexes=circshift(APindexes,-double(offsetvals),2)
             a1=findall(app.XProfile,'Tag','Data');
            traceYData=a1.YData
            traceXData=a1.XData

            for i=1:size(BKGstarts,2)
                
%                 baselineindexes(i,:)=app.DATA.TData>=BKGends(i)&app.DATA.TData<=BKGstarts(i);
                %             responseindexes(i,:)=app.DATA.TData>=BKGends(i)&app.DATA.TData<=APends(i);
                APindexes(i,:)=app.DATA.TData>=APstarts(i)&app.DATA.TData<=APends(i);
               traceindexes(i,:)=app.DATA.TData>=BKGends(i)&app.DATA.TData<=APends(i)+0.02;
           
            
            
            
            end
            
            offsetelements(1,1)=-double(offsetvals)-sum(APindexes(1,:),'all')
            baselineindexes=circshift(APindexes,offsetelements,2)
            data.F0indexes=app.DATA.TData>=app.F0StartTimesSpinner.Value  &  app.DATA.TData<=app.F0endTimesSpinner.Value;
            data.FFonBKGindexes=app.DATA.TData>=app.FFBKG_start.Value  &  app.DATA.TData<=app.FFBKG_end.Value;
            data.APstarts=APstarts.'
            data.APends=APends.'
            data.BKGstarts=BKGstarts.'
            data.BKGends=BKGends.'
            data.F0start=inputvars(1)
            data.F0end=inputvars(2)
            data.APindexes=APindexes
            data.baselineindexes=baselineindexes
            
            
            
            if convertCharsToStrings(app.DATA.file)~="FF"          
          
try
            data.FFonBKGdataUG=mat2cell(app.DATA.UG([app.MinSpinner.Value:app.MaxSpinner.Value],data.FFonBKGindexes),size(app.DATA.UG([app.MinSpinner.Value:app.MaxSpinner.Value],data.FFonBKGindexes),1))   
            data.FFonBKGdataUR=mat2cell(app.DATA.UR([app.MinSpinner.Value:app.MaxSpinner.Value],data.FFonBKGindexes),size(app.DATA.UR([app.MinSpinner.Value:app.MaxSpinner.Value],data.FFonBKGindexes),1))   
            data.FFonBKGdataScX=mat2cell(app.DATA.ScX([app.MinSpinner.Value:app.MaxSpinner.Value],data.FFonBKGindexes),size(app.DATA.ScX([app.MinSpinner.Value:app.MaxSpinner.Value],data.FFonBKGindexes),1))   
            data.FFonBKGdataScY=mat2cell(app.DATA.ScY([app.MinSpinner.Value:app.MaxSpinner.Value],data.FFonBKGindexes),size(app.DATA.ScY([app.MinSpinner.Value:app.MaxSpinner.Value],data.FFonBKGindexes),1))   
end
           
             data.F0UGData=mat2cell(app.DATA.UG([app.MinSpinner.Value:app.MaxSpinner.Value],data.F0indexes),size(app.DATA.UG([app.MinSpinner.Value:app.MaxSpinner.Value],data.F0indexes),1))     
            data.F0URData=mat2cell(app.DATA.UR([app.MinSpinner.Value:app.MaxSpinner.Value],data.F0indexes),size(app.DATA.UR([app.MinSpinner.Value:app.MaxSpinner.Value],data.F0indexes),1))     
            data.F0ScYData=mat2cell(app.DATA.ScY([app.MinSpinner.Value:app.MaxSpinner.Value],data.F0indexes),size(app.DATA.ScY([app.MinSpinner.Value:app.MaxSpinner.Value],data.F0indexes),1))     
            data.F0ScXData=mat2cell(app.DATA.ScX([app.MinSpinner.Value:app.MaxSpinner.Value],data.F0indexes),size(app.DATA.ScX([app.MinSpinner.Value:app.MaxSpinner.Value],data.F0indexes),1))     
            
            
            for i=1:size(baselineindexes,1)
                %get raw Red AP and BKG data of Displayed Data
                
                data.bkgdata(i,1)=mat2cell(app.imgDATA([app.MinSpinner.Value:app.MaxSpinner.Value],baselineindexes(i,:)),size(app.imgDATA([app.MinSpinner.Value:app.MaxSpinner.Value],baselineindexes(i,:)),1))
                data.APdata(i,1)=mat2cell(app.imgDATA([app.MinSpinner.Value:app.MaxSpinner.Value],APindexes(i,:)),size(app.imgDATA([app.MinSpinner.Value:app.MaxSpinner.Value],APindexes(i,:)),1))

                %get raw Green AP and BKG data irrespective of Displayed Data
                data.UG_rawBKGData(i,1)=mat2cell(app.DATA.UG([app.MinSpinner.Value:app.MaxSpinner.Value],baselineindexes(i,:)),size(app.DATA.UG([app.MinSpinner.Value:app.MaxSpinner.Value],baselineindexes(i,:)),1))
                data.UG_rawAPData(i,1)=mat2cell(app.DATA.UG([app.MinSpinner.Value:app.MaxSpinner.Value],APindexes(i,:)),size(app.DATA.UG([app.MinSpinner.Value:app.MaxSpinner.Value],APindexes(i,:)),1))
                %get raw Green AP and BKG data irrespective of Displayed Data
                data.UR_rawBKGData(i,1)=mat2cell(app.DATA.UR([app.MinSpinner.Value:app.MaxSpinner.Value],baselineindexes(i,:)),size(app.DATA.UR([app.MinSpinner.Value:app.MaxSpinner.Value],baselineindexes(i,:)),1))
                data.UR_rawAPData(i,1)=mat2cell(app.DATA.UR([app.MinSpinner.Value:app.MaxSpinner.Value],APindexes(i,:)),size(app.DATA.UR([app.MinSpinner.Value:app.MaxSpinner.Value],APindexes(i,:)),1))
                %Get X Coordinates
                data.ScX_rawAPData(i,1)=mat2cell(app.DATA.ScX([app.MinSpinner.Value:app.MaxSpinner.Value],APindexes(i,:)),size(app.DATA.ScX([app.MinSpinner.Value:app.MaxSpinner.Value],APindexes(i,:)),1))
               data.predScX_rawAPData(i,1)=mat2cell(app.DATA.predScX([app.MinSpinner.Value:app.MaxSpinner.Value],APindexes(i,:)),size(app.DATA.predScX([app.MinSpinner.Value:app.MaxSpinner.Value],APindexes(i,:)),1))
                %Get Y Coordinates
                data.ScY_rawAPData(i,1)=mat2cell(app.DATA.ScY([app.MinSpinner.Value:app.MaxSpinner.Value],APindexes(i,:)),size(app.DATA.ScY([app.MinSpinner.Value:app.MaxSpinner.Value],APindexes(i,:)),1))
                data.predScY_rawAPData(i,1)=mat2cell(app.DATA.predScY([app.MinSpinner.Value:app.MaxSpinner.Value],APindexes(i,:)),size(app.DATA.predScY([app.MinSpinner.Value:app.MaxSpinner.Value],APindexes(i,:)),1))
            end

            APamps=cell2mat(cellfun(@(x)nanmean(x,'all'),data.APdata,'UniformOutput',false))
            BKGamps=cell2mat(cellfun(@(x)nanmean(x,'all'),data.bkgdata,'UniformOutput',false))
            AP_XProfiles=cellfun(@(x)nanmean(x),data.APdata,'UniformOutput',false)
            BKG_XProfiles=cellfun(@(x)nanmean(x),data.bkgdata,'UniformOutput',false)

            app.currentYProfiles=cellfun(@(x)nanmean(x,2),data.APdata,'UniformOutput',false)
            currentYProfiles=cellfun(@(x)nanmean(x,2),data.APdata,'UniformOutput',false)
            currentBKGYProfiles=cellfun(@(x)nanmean(x,2),data.bkgdata,'UniformOutput',false)

            AP_UG_Profiles=cellfun(@(x)nanmean(x,2),data.UG_rawAPData,'UniformOutput',false)
            BKG_UG_Profiles=cellfun(@(x)nanmean(x,2),data.UG_rawBKGData,'UniformOutput',false)
            dUG_inc=cellfun(@(x,y) x-y,AP_UG_Profiles,BKG_UG_Profiles, 'UniformOutput',false)
            dFFUG_inc=cellfun(@(x,y,z) (x-y)./z,AP_UG_Profiles,BKG_UG_Profiles,BKG_UG_Profiles, 'UniformOutput',false)

            URbaselineIndex=app.DATA.TData>=app.sp2imginput(1) & app.DATA.TData<=app.sp2imginput(2);
            URbaseline=mean(app.DATA.UR(:,URbaselineIndex),"all")
            AP_UR_Profiles=cellfun(@(x)nanmean(x,2),data.UR_rawAPData,'UniformOutput',false)
            BKG_UR_Profiles=cellfun(@(x)nanmean(x,2),data.UR_rawBKGData,'UniformOutput',false)
            AP_UR=cell2mat(cellfun(@(x)nanmean(x,"all"),data.UR_rawAPData,'UniformOutput',false))
            BKG_UR=cell2mat(cellfun(@(x)nanmean(x,"all"),data.UR_rawBKGData,'UniformOutput',false))
            dAP_UR=bsxfun(@minus,AP_UR,BKG_UR);
            DFFUR_inc=bsxfun(@rdivide,dAP_UR,BKG_UR)
            DFFUR_Accum=(AP_UR-URbaseline)/URbaseline

            dUR_inc=cellfun(@(x,y) x-y,AP_UR_Profiles,BKG_UR_Profiles,'UniformOutput',false)
            dFFUR_inc=cellfun(@(x,y,z) (x-y)./z,AP_UR_Profiles,BKG_UR_Profiles,BKG_UR_Profiles, 'UniformOutput',false)
            DFFCalamps=DFFUR_inc
            
            
            BKGstd=cell2mat(cellfun(@(x)std(x),BKG_XProfiles,'UniformOutput',false))
            APincrement=APamps-BKGamps
            threshold=app.ThresholdxSDSpinner.Value*mean(BKGstd);
            APsucs=APincrement>threshold
            pks=nan(size(BKGstarts,2),1)
           for i=1:size(BKGstarts,2)
            currenttraceY= traceYData(traceindexes(i,:))
            currenttraceX= traceXData(traceindexes(i,:))
            [temppks,~,~,~]=findpeaks(currenttraceY,currenttraceX,"NPeaks",1,"MinPeakProminence",threshold);    
            if isempty(temppks)==0
                pks(i,1)=temppks
            end
           end
            
            
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if app.OneDpeaks.Value==1
                hold(app.XProfile,'on')
                for i=1:size(APamps,1)
                    if APsucs(i,1)==1
                        scatter(app.XProfile,APstarts(i),APamps(i,1),36,"black",'filled','Tag','Display')
                    end
                end
                app.currentsuccess=APsucs.';
                app.currentAmp=APincrement;
                app.currentAmp=APincrement
                app.currentCalAmp=DFFCalamps
                app.currentCal_Accum=DFFUR_Accum
            end
 end
            hold(app.XProfile,'on')

            app.xline1=xline(app.XProfile,APstarts,'Tag','Display');
            app.xline1a=xline(app.XProfile,APends,'--r','Tag','Display');
            app.BKGxline1=xline(app.XProfile,BKGstarts,'--b','Tag','Display');
            app.BKGxline1a=xline(app.XProfile,BKGends,'--','Tag','Display');
hold(app.XProfile,'off')
            if exist('event')==0
                a=dbstack;
                if convertCharsToStrings(a(2).name)=="ImageView2x_b.Callpeaklocs_auto"
                    exportloc="Yes"
                elseif convertCharsToStrings(a(2).name)=="ImageView2x_b_ObjOr.triggerspiral"
                    exportloc="Yes"
                elseif convertCharsToStrings(a(2).name)=="ImageView2x_b_ObjOr.newdata"
                    exportloc="Yes"
                elseif app.FitDatadisp.AutoCheckBox.Value==1
                    exportloc="Yes" 
                else
                    %      exportloc = MFquestdlg1 ( [ 20 , 0 ] , 'Run Sp2Img?','Spiral 2 Image');
                    exportloc=questdlg('Run Sp2Img?','Yes','Yes', 'No','Yes');
                    exportloc=convertCharsToStrings(exportloc);
                end
            else
             if    event.Source.Type~="uispinner"
                if event.Source.Text=="Run Spiral 2 Image"
                    exportloc="Yes"
                elseif event.Source.Text=="Get Y Profiles"
                    XData=1:1:size(AP_UG_Profiles{1,1},1)
                    exportloc="Yes"
                    app.Vert_peak_profile(XData,dFFUG_inc,dFFUR_inc)
                elseif event.Source.Text=="4xSD"
                    Y_profiles=cellfun(@(x)mean(x,2),data.APdata,'UniformOutput',false)
                    [a,Amplitude_idxs]=cellfun(@(x) sort(x,"descend"),data.APdata,"UniformOutput",false)
                    threshold_value=app.ThresholdxSDSpinner.Value*min(BKGstd)
               

                    %     dPeak_Profiles=cellfun(@(x,y) x-y,app.currentYProfiles,currentBKGYProfiles, 'UniformOutput',false)
                    %     dFPeak_Profiles=cellfun(@(x,y) x-y,app.currentYProfiles,currentBKGYProfiles, 'UniformOutput',false)
                    Peak_Pixels=cellfun(@(x) x> threshold_value, app.currentYProfiles,'UniformOutput',false)
                    PeakUG=cellfun(@(x,y) x(y,:),data.APdata,Peak_Pixels, 'UniformOutput',false)

                    exportloc="No";
                end
             else
               exportloc="No";  
             end  
            end

            if exportloc=="Yes";

                if convertCharsToStrings(app.DATA.file)=="FF"
                app.Sp2PeaksFF(APindexes,baselineindexes,data.F0indexes,data.FFonBKGindexes)
                else
                    if app.AutoCheckBox.Value==1
                        switch app.Switch.Value
                            case 'Sp2Img'
                                app.pos2img(inputvars,data);
%                                 app.sp2imgpeaks(inputvars,data);
                            case 'Pos2Img'
                                app.pos2img(inputvars,data);
                        end
                    end
                end
                if app.AutoFitCheckBox.Value==1 & app.AutoCheckBox.Value==1
                    app.run_surffit
                end
            else
                return
            end

        end

        % Button pushed function: Get2DDecayProfilesButton
        function getpeaklocs(app, event)
        alldata=flipud(findall(app.sp2imgtiles,'Type','Image'))
        alldataUR=flipud(findall(app.sp2imgtile2,'Type','Image'))
        axesobjs=app.sp2imgtile1
        axesobjs=flipud(axesobjs)
        try        
          res= alldata(1).XData(1,2)-alldata(1).XData(1,1);
        catch
           res= alldata(1).XData(2,1)-alldata(1).XData(1,1);
        end
        comment=app.DATA.comment;
        for i=1:size(alldata,1)
            [~,theta,rho,Int_Profile,XData_4_plot,Cal_Row,Cal_Col]=app.DATA.twoD_intensity_Profile(alldata(i,1).CData,alldata(i,1).XData,alldata(i,1).YData,res,0.05)
            [~,thetaUR,rhoUR,Int_ProfileUR,XData_4_Cal,RowUR, ColumnUR]=app.DATA.twoD_intensity_Profile(alldataUR(i,1).CData,alldata(i,1).XData,alldata(i,1).YData,res,0.05)
            Int_Profiles(i,1)={Int_Profile};
            Int_ProfilesX(i,1)={XData_4_plot};
            Row_Index(i)=Cal_Col
            Column_Index(i)=Cal_Row
            hold(axesobjs(i,1),'on')
            scatter(axesobjs(i,1),Column_Index(i),Row_Index(i),'filled',"MarkerFaceColor","flat","Tag",'Display')
            hold(axesobjs(i,1),'off')


            Data(i,1)=copyobj2(app.DATA)
            Data(i,1).UG=repmat(Int_Profile,2,1);
            ProfileUR=zeros(size(Int_Profile));
            if numel(Int_Profile) > numel(Int_ProfileUR)
                ProfileUR(1,1:numel(Int_ProfileUR))=Int_ProfileUR;
            elseif numel(Int_Profile) < numel(Int_ProfileUR)
                ProfileUR(1,1:size(Int_Profile,2))=Int_ProfileUR(1,1:size(Int_Profile,2))
            elseif numel(Int_Profile) == numel(Int_ProfileUR);
                ProfileUR=Int_ProfileUR;
            end
            Data(i,1).UR=repmat(ProfileUR,2,1);
            Data(i,1).XData=XData_4_plot;
            Data(i,1).TData=XData_4_plot;
            Data(i,1).YData=1;
            Data(i,1).XDim=2
            Data(i,1).YDim=1
            Data(i,1).TimeDim=2
            Data(i,1).source='MES'
            Data(i,1).x_pixel_size=XData_4_plot(2)-XData_4_plot(1)
            Data(i,1).y_pixel_size=1
            Data(i,1).x_pixel_num=size(XData_4_plot,2);
            Data(i,1).y_pixel_num=1
            Data(i,1).file='Line2'
            Data(i,1).Type='Line2'
            Data(i,1).Aux1=zeros(1,numel(XData_4_plot))
            Data(i,1).Aux2=zeros(1,numel(XData_4_plot))
            Data(i,1).eXData=XData_4_plot
            Data(i,1).predScX=repmat(XData_4_plot,2,1);
            Data(i,1).predScY=zeros(size(Data(i,1).predScX))
            Data(i,1).ScX=repmat(XData_4_plot,2,1);
            Data(i,1).ScY=zeros(size(Data(i,1).ScX))
            Data(i,1).tIRraw=[]
            Data(i,1).TiR=[]
            Data(i,1).scanline.roi=[1;2]
            Data(i,1).linetime=Data(i,1).x_pixel_size
            Data(i,1).Subtype='Single'
            Data(i,1).Index=i
            rhomat(1,1,i)={rho}
            if i==1                                     % Skip Background Image and Label as BKG
                Data(i,1).comment=sprintf('%s%s%s','2D Profile|',' BKG |',Data(i,1).comment)
            else
                if app.currentsuccess(1,i-1)==1             % if Success label as so
                    Data(i,1).comment=sprintf('%s%d%s%s%s','2D Profile|',i-1,'AP ','Success |',Data(i,1).comment)
                elseif app.currentsuccess(1,i-1)==0         %if Failure label as so
                    Data(i,1).comment=sprintf('%s%d%s%s%s','2D Profile|',i-1,'AP ',' Failure |',Data(i,1).comment)
                end
            end
        end
         rhomat=cell2mat(rhomat);
%           rhomat=cell2mat(rhomat);
        Data(end+1,1)=copyobj2(app.DATA);
        for i=1:size(alldata,1)
            UG(:,:,i)=alldata(i,1).CData;
            UR(:,:,i)=alldataUR(i,1).CData;
             ScY(:,:,i)=rhomat(:,:,i);
             ScX(:,:,i)=rhomat(:,:,i);
        end
        Data(end,1).UG=UG;
        Data(end,1).UR=UR;
        Data(end,1).XData=alldata(1,1).XData;
        Data(end,1).TData=1:1:size(UG,3);
        Data(end,1).YData=alldata(1,1).YData;
        Data(end,1).XDim=2
        Data(end,1).YDim=1
        Data(end,1).TimeDim=3
        Data(end,1).source='MES'
        Data(end,1).x_pixel_size=Data(end,1).XData(2)-Data(end,1).XData(1)
        Data(end,1).y_pixel_size=Data(end,1).YData(2)-Data(end,1).YData(1)
        Data(end,1).x_pixel_num=size(alldata(1,1).XData,2);
        Data(end,1).y_pixel_num=size(alldata(1,1).XData,1);
        Data(end,1).file='FF'
        Data(end,1).Type='FF'
        Data(end,1).Aux1=1:1:size(UG,3);
        Data(end,1).Aux2=1:1:size(UG,3);
        Data(end,1).eXData=1:1:size(UG,3);
        Data(end,1).predScX=ScX;
        Data(end,1).predScY=ScY;
        Data(end,1).ScX=ScY;
        Data(end,1).ScY=ScX;
        Data(end,1).tIRraw=zeros(size(Data(end,1).UG));
        Data(end,1).TiR=[]
        Data(end,1).scanline.roi=[1;size(Data(end,1).UG,1)]
        Data(end,1).linetime=1;
        Data(end,1).Subtype='Single'
        Data(end,1).Index=size(Data(end,1),1);
        Data(end,1).comment=sprintf('%s%s%s','2D Map|','FF |',comment)

        app.ReturnDATA=Data;
        app.ReturnROIButton.FontColor='red';
        app.ReturnROIButton.FontWeight='bold';
        if app.AutoReturnButton.Value==1
            app.returndata
        end
        end

        % Callback function
        function export(app, event)
            cell2mat(app.maps(1,1))
            size(ans)
            a=uint16(ans*1.15)
            b=size(app.maps,1)
            AllBKGs=NaN(a(1),a(2),b)
            All_1APs=NaN(a(1),a(2),b)
            All_2APs=NaN(a(1),a(2),b)
            All_3APs=NaN(a(1),a(2),b)
            All_4APs=NaN(a(1),a(2),b)
            
            for i=1:size(app.maps,1)
                back=NaN(a(1),a(2))
                back1=NaN(a(1),a(2))
                back2=NaN(a(1),a(2))
                back3=NaN(a(1),a(2))
                back4=NaN(a(1),a(2))
                toint=cell2mat(app.maps(i,1))
                toint1=cell2mat(app.maps(i,2))
                toint2=cell2mat(app.maps(i,3))
                toint3=cell2mat(app.maps(i,4))
                toint4=cell2mat(app.maps(i,5))
                back([1:size(toint,1)],[1:size(toint,2)])=toint
                bg=min(back,[],'all')
                back(isnan(back))=bg
                back1([1:size(toint,1)],[1:size(toint,2)])=toint1
                back2([1:size(toint,1)],[1:size(toint,2)])=toint2
                back3([1:size(toint,1)],[1:size(toint,2)])=toint3
                back4([1:size(toint,1)],[1:size(toint,2)])=toint4
                AllBKGs(:,:,i)=back
                All_1APs(:,:,i)=back1
                All_2APs(:,:,i)=back2
                All_3APs(:,:,i)=back3
                All_4APs(:,:,i)=back4
            end
            if evalin('base','exist(''IJM'')')==0
                evalin('base','ImageJ')
            end
            
            assignin('base','AllBKGs',AllBKGs)
            assignin('base','All_1APs',All_1APs)
            assignin('base','All_2APs',All_2APs)
            assignin('base','All_3APs',All_3APs)
            assignin('base','All_4APs',All_4APs)
            
            evalin('base','impBKG=copytoImagePlus(AllBKGs,''XYTCZ'',''NewName'',''allBKGs'')')
            evalin('base','imp1AP=copytoImagePlus(All_1APs,''XYTCZ'',''NewName'',''all1APs'')')
            evalin('base','imp2AP=copytoImagePlus(All_2APs,''XYTCZ'',''NewName'',''all2APs'')')
            evalin('base','imp3AP=copytoImagePlus(All_3APs,''XYTCZ'',''NewName'',''all3APs'')')
            evalin('base','imp4AP=copytoImagePlus(All_4APs,''XYTCZ'',''NewName'',''all4APs'')')
            All_AP_responses=cat(4,All_1APs,All_2APs,All_3APs,All_4APs)
            assignin('base','All_AP_responses',All_AP_responses)
            evalin('base','impAll=copytoImagePlus(All_AP_responses,''XYTZC'',''NewName'',''allResponses'')')
            
            impBKG=evalin('base','impBKG')
            imp1AP=evalin('base','imp1AP')
            imp2AP=evalin('base','imp2AP')
            imp3AP=evalin('base','imp3AP')
            imp4AP=evalin('base','imp4AP')
            impAll=evalin('base','impAll')
            
            
            All_AP_responses=cat(4,All_1APs,All_2APs,All_3APs,All_4APs)
            assignin('base','All_AP_responses',All_AP_responses)
            evalin('base','impAll=copytoImagePlus(All_AP_responses,''XYTZC'')')
            app.folder=uigetdir
            bfCheckJavaPath %initiate biormats path variable
            names=["AllBKGs","All_1APs","All_2APs","All_3APs","All_4APs","All_AP_responses"]
            for i=1:size(names,2)
                eval(sprintf('metadata= createMinimalOMEXMLMetadata(%s)',names(i)));% make bf metadata variable
                pixelSizeX = ome.units.quantity.Length(java.lang.Double(app.ResolutionSpinner.Value), ome.units.UNITS.MICROMETER);
                metadata.setPixelsPhysicalSizeX(pixelSizeX, 0); %set x dimension pixel size
                pixelSizeY = ome.units.quantity.Length(java.lang.Double(app.ResolutionSpinner.Value), ome.units.UNITS.MICROMETER);
                metadata.setPixelsPhysicalSizeY(pixelSizeY, 0);%set y dimension pixel size
                pixelSizeZ = ome.units.quantity.Length(java.lang.Double(1), ome.units.UNITS.MICROMETER);
                metadata.setPixelsPhysicalSizeZ(pixelSizeZ, 0);%set y dimension pixel size
                filename=sprintf('%s/%s.tif',app.folder,names(i)); %generate filename in loop
                eval(sprintf('bfsave(%s,filename,''metadata'',metadata);',names(i))) %save images to tiff
                metadata=[]
            end
            maps=app.maps
            mapsXData=app.mapsxdata
            mapsYData=app.mapsydata
            filename2=sprintf('%s/%s.mat',app.folder,'AllData');
            %generate filename in loop % save(filename2,'AllBKGs','All_1APs','All_2APs','All_3APs','All_4APs','All_AP_responses')
            save(filename2,'maps','mapsXData','mapsYData','AllBKGs','All_1APs','All_2APs','All_3APs','All_4APs','All_AP_responses',"impAll","imp4AP","imp3AP","imp2AP","impBKG","imp1AP")
            if app.ExportwithRespIndexCheckBox.Value==1
                respindex=app.iGlu_Resp
                isequalsize=size(respindex,1)==size(maps,1)
                if isequalsize==0
                    errordlg('Response Index has different dimensions to data')
                    return
                end
                AP1s=find(respindex(:,1)==1)
                AP2s=find(respindex(:,2)==1)
                AP3s=find(respindex(:,3)==1)
                AP4s=find(respindex(:,4)==1)
                
                cell2mat(maps(1,1))
                size(ans)
                a=uint16(ans*1.25)
                b=size(AP1s,1)
                sucsAP1=NaN(a(1),a(2),b)
                sucsBKG1=NaN(a(1),a(2),b)
                b=size(AP2s,1)
                sucsAP2=NaN(a(1),a(2),b)
                sucsBKG2=NaN(a(1),a(2),b)
                b=size(AP3s,1)
                sucsAP3=NaN(a(1),a(2),b)
                sucsBKG3=NaN(a(1),a(2),b)
                b=size(AP4s,1)
                sucsAP4=NaN(a(1),a(2),b)
                sucsBKG4=NaN(a(1),a(2),b)
                
                for j=1:size(AP1s,1)
                    i=AP1s(j,1)
                    toint=cell2mat(maps(i,1))
                    toint1=cell2mat(maps(i,2))
                    back=NaN(a(1),a(2))
                    back1=NaN(a(1),a(2))
                    toint=cell2mat(maps(i,1))
                    toint1=cell2mat(maps(i,2))
                    bg=min(back,[],'all')
                    back(isnan(back))=bg
                    back([1:size(toint,1)],[1:size(toint,2)])=toint
                    back1([1:size(toint,1)],[1:size(toint,2)])=toint1
                    sucsBKG1(:,:,j)=back
                    sucsAP1(:,:,j)=back1
                    
                end
                
                back1
                back
                bg
                toint1
                toint
                i=[]
                j=[]
                for j=1:size(AP2s,1)
                    i=AP2s(j,1)
                    toint=cell2mat(maps(i,1))
                    toint1=cell2mat(maps(i,3))
                    back=NaN(a(1),a(2))
                    back1=NaN(a(1),a(2))
                    toint=cell2mat(maps(i,1))
                    toint1=cell2mat(maps(i,3))
                    bg=min(back,[],'all')
                    back(isnan(back))=bg
                    back([1:size(toint,1)],[1:size(toint,2)])=toint
                    back1([1:size(toint,1)],[1:size(toint,2)])=toint1
                    sucsBKG2(:,:,j)=back
                    sucsAP2(:,:,j)=back1
                    
                end
                back1
                back
                bg
                toint1
                toint
                i=[]
                j=[]
                for j=1:size(AP3s,1)
                    i=AP3s(j,1)
                    toint=cell2mat(maps(i,1))
                    toint1=cell2mat(maps(i,4))
                    back=NaN(a(1),a(2))
                    back1=NaN(a(1),a(2))
                    toint=cell2mat(maps(i,1))
                    toint1=cell2mat(maps(i,4))
                    bg=min(back,[],'all')
                    back(isnan(back))=bg
                    back([1:size(toint,1)],[1:size(toint,2)])=toint
                    back1([1:size(toint,1)],[1:size(toint,2)])=toint1
                    sucsBKG3(:,:,j)=back
                    sucsAP3(:,:,j)=back1
                    
                end
                back1
                back
                bg
                toint1
                toint
                i=[]
                j=[]
                for j=1:size(AP4s,1)
                    i=AP4s(j,1)
                    toint=cell2mat(maps(i,1))
                    toint1=cell2mat(maps(i,5))
                    back=NaN(a(1),a(2))
                    back1=NaN(a(1),a(2))
                    toint=cell2mat(maps(i,1))
                    toint1=cell2mat(maps(i,5))
                    bg=min(back,[],'all')
                    back(isnan(back))=bg
                    back([1:size(toint,1)],[1:size(toint,2)])=toint
                    back1([1:size(toint,1)],[1:size(toint,2)])=toint1
                    sucsBKG4(:,:,j)=back
                    sucsAP4(:,:,j)=back1
                    
                end
                
                
                
                
                % AP1sucs_BKG=copytoImagePlus(sucsBKG1,'XYTZC')
                % AP1sucs_AP=copytoImagePlus(sucsAP1,'XYTZC')
                %
                % AP2sucs_BKG=copytoImagePlus(sucsBKG2,'XYTZC')
                % AP2sucs_AP=copytoImagePlus(sucsAP2,'XYTZC')
                %
                % AP3sucs_BKG=copytoImagePlus(sucsBKG3,'XYTZC')
                % AP3sucs_AP=copytoImagePlus(sucsAP3,'XYTZC')
                %
                % AP4sucs_BKG=copytoImagePlus(sucsBKG4,'XYTZC')
                % AP4sucs_AP=copytoImagePlus(sucsAP4,'XYTZC')
                %
                AP1sucs_BKG=sucsBKG1
                AP1sucs_AP=sucsAP1
                
                AP2sucs_BKG=sucsBKG2
                AP2sucs_AP=sucsAP2
                
                AP3sucs_BKG=sucsBKG3
                AP3sucs_AP=sucsAP3
                
                AP4sucs_BKG=sucsBKG4
                AP4sucs_AP=sucsAP4
                
                
                app.folder=uigetdir
                bfCheckJavaPath %initiate biormats path variable
                
                names=["AP1sucs_AP","AP1sucs_BKG","AP2sucs_AP","AP2sucs_BKG","AP3sucs_AP","AP3sucs_BKG","AP4sucs_AP","AP4sucs_BKG"]
                for i2=1:size(names,2)
                    eval(sprintf('metadata= createMinimalOMEXMLMetadata(%s)',names(i2)));% make bf metadata variable
                    pixelSizeX = ome.units.quantity.Length(java.lang.Double(app.ResolutionSpinner.Value), ome.units.UNITS.MICROMETER);
                    metadata.setPixelsPhysicalSizeX(pixelSizeX, 0); %set x dimension pixel size
                    pixelSizeY = ome.units.quantity.Length(java.lang.Double(app.ResolutionSpinner.Value), ome.units.UNITS.MICROMETER);
                    metadata.setPixelsPhysicalSizeY(pixelSizeY, 0);%set y dimension pixel size
                    pixelSizeZ = ome.units.quantity.Length(java.lang.Double(1), ome.units.UNITS.MICROMETER);
                    metadata.setPixelsPhysicalSizeZ(pixelSizeZ, 0);%set y dimension pixel size
                    filename=sprintf('%s/%s.tif',app.folder,names(i2)); %generate filename in loop
                    eval(sprintf('bfsave(%s,filename,''metadata'',metadata);',names(i2))) %save images to tiff
                    metadata=[]
                end
                
                
            end
            %% Export Profiles (all data)
            % get profiles
            AP1=app.maps(:,7)
            AP2=app.maps(:,8)
            AP3=app.maps(:,9)
            AP4=app.maps(:,10)
            
            %%if response index is present
            if app.ExportwithRespIndexCheckBox.Value==1
                respindex=app.iGlu_Resp
                isequalsize=size(respindex,1)==size(AP1,1)
                if isequalsize==0
                    errordlg('Response Index has different dimensions to data')
                    return
                end
            AP1ind=logical(respindex(:,1))
            AP2ind=logical(respindex(:,2))
            AP3ind=logical(respindex(:,3))
            AP4ind=logical(respindex(:,4))
            
            AP1old=AP1
            AP2old=AP2
            AP3old=AP3
            AP4old=AP4
            
            
            AP1=AP1(AP1ind)
            AP2=AP2(AP2ind)
            AP3=AP3(AP3ind)
            AP4=AP4(AP4ind)
            
            end    
                
            %determine maximum length of profiles
            maxlength1=max(cell2mat(cellfun(@max,cellfun(@size,AP1,'UniformOutput',false),'UniformOutput',false)),[],'all')
            maxlength2=max(cell2mat(cellfun(@max,cellfun(@size,AP2,'UniformOutput',false),'UniformOutput',false)),[],'all')
            maxlength3=max(cell2mat(cellfun(@max,cellfun(@size,AP3,'UniformOutput',false),'UniformOutput',false)),[],'all')
            maxlength4=max(cell2mat(cellfun(@max,cellfun(@size,AP4,'UniformOutput',false),'UniformOutput',false)),[],'all')
            
            
            AP1=AP1.'
            AP2=AP2.'
            AP3=AP3.'
            AP4=AP4.'    
                        
            
            AP1mat=zeros(maxlength1,size(AP1,2)*2)
            AP2mat=zeros(maxlength1,size(AP2,2)*2)
            AP3mat=zeros(maxlength1,size(AP3,2)*2)
            AP4mat=zeros(maxlength1,size(AP4,2)*2)
            c=1
            for i=1:2:size(AP1mat,2)-1
                AP1mat([1:size(AP1{1,c},1)],[i:i+1])=AP1{1,c}
                c=c+1
            end
            c=1
            for i=1:2:size(AP2mat,2)-1
                AP2mat([1:size(AP2{1,c},1)],[i:i+1])=AP2{1,c}
                c=c+1
            end
            c=1
            for i=1:2:size(AP3mat,2)-1
                AP3mat([1:size(AP3{1,c},1)],[i:i+1])=AP3{1,c}
                c=c+1
            end
            c=1
            for i=1:2:size(AP4mat,2)-1
                AP4mat([1:size(AP4{1,c},1)],[i:i+1])=AP4{1,c}
                c=c+1
            end
            
            towrite1=num2cell(AP1mat);
            towrite2=num2cell(AP2mat);
            towrite3=num2cell(AP3mat);
            towrite4=num2cell(AP4mat);
            test1=eval(sprintf('["Trial_%d","_"]',1))
 test2=eval(sprintf('["Trial_%d","_"]',1))
        test3=eval(sprintf('["Trial_%d","_"]',1))     
        test4=eval(sprintf('["Trial_%d","_"]',1))     
            
for i=2:size(AP1,2)
test1=cat(2,test1,eval(sprintf('["Trial_%d","_"]',i)))
end
for i=2:size(AP2,2)
test2=cat(2,test2,eval(sprintf('["Trial_%d","_"]',i)))
end
for i=2:size(AP3,2)
test3=cat(2,test3,eval(sprintf('["Trial_%d","_"]',i)))
end
for i=2:size(AP4,2)
test4=cat(2,test4,eval(sprintf('["Trial_%d","_"]',i)))
end




headings1=mat2cell(test1,1,ones(1,size(test1,2)))
headings2=mat2cell(test2,1,ones(1,size(test2,2)))
headings3=mat2cell(test3,1,ones(1,size(test3,2)))
headings4=mat2cell(test4,1,ones(1,size(test4,2)))
            
            test1=repmat(["Distance (Microns)","Delta F/F"],1,size(AP1,2))
            test2=repmat(["Distance (Microns)","Delta F/F"],1,size(AP2,2))
            test3=repmat(["Distance (Microns)","Delta F/F"],1,size(AP3,2))
            test4=repmat(["Distance (Microns)","Delta F/F"],1,size(AP4,2))
     
            titles1=mat2cell(test1,1,ones(1,(size(test1,2))))
            titles2=mat2cell(test2,1,ones(1,(size(test2,2))))
            titles3=mat2cell(test3,1,ones(1,(size(test3,2))))
            titles4=mat2cell(test4,1,ones(1,(size(test4,2))))
            
            titles1=cat(1,headings1,titles1)
            titles2=cat(1,headings2,titles2)
            titles3=cat(1,headings3,titles3)
            titles4=cat(1,headings4,titles4)
            
            towrite1a=cat(1,titles1,towrite1)
            towrite2a=cat(1,titles2,towrite2)
            towrite3a=cat(1,titles3,towrite3)
            towrite4a=cat(1,titles4,towrite4)
            
            [file,folder]=uiputfile({'*.xlsx'});
            path=fullfile(folder,file)
            writecell(towrite1a,path,'Sheet','AP1','Range','C3');
            writecell(towrite2a,path,'Sheet','AP2','Range','C3');
            writecell(towrite3a,path,'Sheet','AP3','Range','C3');
            writecell(towrite4a,path,'Sheet','AP4','Range','C3');
        end

        % Callback function
        function nextfile2(app, event)
            if app.MapsfromimportCheckBox.Value==1
                app.maps=[];
                app.UITable.Data=[];
                %             app.importmapsx=[]
                %                 app.importmapsy=[]
                app.importmaps = []
                [file,folder]=uigetfile;
                load(fullfile(folder,file));
                try
                app.importmaps = maps% Description
                catch
                    app.importmaps=AllSpirals;
                    maps=AllSpirals;
                end
                if exist('mapsXData')==0;
                     prompt = {'Input Pixel Width:'};
dlgtitle = fullfile(folder(26:end),file);
dims = 1;
definput = {'0.06'};
answer = inputdlg(prompt,dlgtitle,dims,definput);

                    pixwidth=str2double(answer{:});
                    app.ResolutionSpinner.Value=pixwidth
                    for i=1:size(maps,1);
                        XData=mat2cell(0:pixwidth:size(maps{i,1},2)*pixwidth,1);
                        YData=mat2cell(0:pixwidth:size(maps{i,1},1)*pixwidth,1);
                        mapsXData(i,:)=repmat(XData,1,5);
                        mapsYData(i,:)=repmat(YData,1,5);
                    end
                     app.importmapsx=mapsXData;
                app.importmapsy=mapsYData;
                    else
                        app.importmapsx=mapsXData;
                        app.importmapsy=mapsYData;
                    end
                    
                    
                end
                
            
                
                app.UITable.Data=cell2table(app.importmaps);
            app.UITable.RowName=[1:1:size(app.importmaps,1)]
            
            
        end

        % Callback function
        function display_maps(app, event)
            app.mapindices = event.Indices;
            if app.MapsfromimportCheckBox==0;
            BKG=cell2mat(app.maps(app.mapindices(1),1));
            AP1=cell2mat(app.maps(app.mapindices(1),2));
            AP2=cell2mat(app.maps(app.mapindices(1),3));
            AP3=cell2mat(app.maps(app.mapindices(1),4));
            AP4=cell2mat(app.maps(app.mapindices(1),5));
            app.sp2img_int_output=app.maps(app.mapindices(1),:);
            app.sp2img_gridx_output=app.mapsxdata(app.mapindices(1),:);
            app.sp2img_gridy_output=app.mapsydata(app.mapindices(1),:);
           
            BKGXdata=cell2mat(app.mapsxdata(app.mapindices(1),1));
            AP1Xdata=cell2mat(app.mapsxdata(app.mapindices(1),2));
            AP2Xdata=cell2mat(app.mapsxdata(app.mapindices(1),3));
            AP3Xdata=cell2mat(app.mapsxdata(app.mapindices(1),4));
            AP4Xdata=cell2mat(app.mapsxdata(app.mapindices(1),5));
            BKGYdata=cell2mat(app.mapsydata(app.mapindices(1),1));
            AP1Ydata=cell2mat(app.mapsydata(app.mapindices(1),2));
            AP2Ydata=cell2mat(app.mapsydata(app.mapindices(1),3));
            AP3Ydata=cell2mat(app.mapsydata(app.mapindices(1),4));
            AP4Ydata=cell2mat(app.mapsydata(app.mapindices(1),5));
            else
              BKG=cell2mat(app.importmaps(app.mapindices(1),1));
            AP1=cell2mat(app.importmaps(app.mapindices(1),2));
            AP2=cell2mat(app.importmaps(app.mapindices(1),3));
            AP3=cell2mat(app.importmaps(app.mapindices(1),4));
            AP4=cell2mat(app.importmaps(app.mapindices(1),5));
            app.sp2img_int_output=app.importmaps(app.mapindices(1),:);
            app.sp2img_gridx_output=app.importmapsx(app.mapindices(1),:);
            app.sp2img_gridy_output=app.importmapsy(app.mapindices(1),:);
            
            BKGXdata=cell2mat(app.importmapsx(app.mapindices(1),1));
            AP1Xdata=cell2mat(app.importmapsx(app.mapindices(1),2));
            AP2Xdata=cell2mat(app.importmapsx(app.mapindices(1),3));
            AP3Xdata=cell2mat(app.importmapsx(app.mapindices(1),4));
            AP4Xdata=cell2mat(app.importmapsx(app.mapindices(1),5));
            BKGYdata=cell2mat(app.importmapsy(app.mapindices(1),1));
            AP1Ydata=cell2mat(app.importmapsy(app.mapindices(1),2));
            AP2Ydata=cell2mat(app.importmapsy(app.mapindices(1),3));
            AP3Ydata=cell2mat(app.importmapsy(app.mapindices(1),4));
            AP4Ydata=cell2mat(app.importmapsy(app.mapindices(1),5))  ;  
            end
            app.sp2imgtiles=tiledlayout(app.Sp2ImgPanel,3, 2,"TileSpacing","none","Padding","none");
            app.sp2imgtile1=nexttile(app.sp2imgtiles);
            imagesc(app.sp2imgtile1,BKG,"XData",BKGXdata,"YData",BKGYdata);
            title(app.sp2imgtile1,'Background');
            
            
            app.sp2imgtile2=nexttile(app.sp2imgtiles);
            imagesc(app.sp2imgtile2,AP1,"XData",AP1Xdata,"YData",AP1Ydata);
            title(app.sp2imgtile2,'AP1');
            app.CLims(1,1)=app.sp2imgtile2.CLim(1);
            app.CLims(1,2)=app.sp2imgtile2.CLim(1);
            
            app.sp2imgtile3=nexttile(app.sp2imgtiles);
            imagesc(app.sp2imgtile3,AP2,"XData",AP2Xdata,"YData",AP2Ydata);
            title(app.sp2imgtile3,'AP2');
            app.CLims(2,:)=app.sp2imgtile3.CLim;
            
            app.sp2imgtile4=nexttile(app.sp2imgtiles);
            imagesc(app.sp2imgtile4,AP3,"XData",AP3Xdata,"YData",AP3Ydata);
            title(app.sp2imgtile4,'AP3');
            app.CLims(3,:)=app.sp2imgtile4.CLim;
            
            app.sp2imgtile5=nexttile(app.sp2imgtiles);
            imagesc(app.sp2imgtile5,AP4,"XData",AP4Xdata,"YData",AP4Ydata);
            title(app.sp2imgtile5,'AP4');
            app.CLims(4,:)=app.sp2imgtile5.CLim;
            
            app.sync_CLimits(app.CLims);
        end

        % Callback function
        function respsfromclip(app, event)

            rawData1 = importdata('-pastespecial');

% For some simple files (such as a CSV or JPEG files), IMPORTDATA might
% return a simple array.  If so, generate a structure so that the output
% matches that from the Import Wizard.
[~,name] = fileparts('iGlu_Resp');
app.(matlab.lang.makeValidName(name)) = rawData1;
        end

        % Callback function
        function bkgPoly(app, event)
            app.currentROI=drawpolyline(app.sp2imgtile1)
        end

        % Callback function
        function BKGPoint(app, event)
            app.currentROI=drawcrosshair(app.sp2imgtile1)
        end

        % Callback function
        function BKGline(app, event)
            app.currentROI=drawline(app.sp2imgtile1)
        end

        % Button pushed function: Hz_10
        function autoAPsetting(app, event)
            app.AP2Spinner.Value=app.AP1Spinner.Value+100
            app.AP3Spinner.Value=app.AP2Spinner.Value+100
            app.AP4Spinner.Value=app.AP3Spinner.Value+100
            app.getmapsfrompoint
        end

        % Button pushed function: Hz_20
        function autoAPsetting20(app, event)
            app.AP2Spinner.Value=app.AP1Spinner.Value+50
            app.AP3Spinner.Value=app.AP2Spinner.Value+50
            app.AP4Spinner.Value=app.AP3Spinner.Value+50
            app.getmapsfrompoint
        end

        % Value changed function: YShiftEditField
        function circshift(app, event)
        %             DAT=load('template.mat')

            a=findall(app.XProfile,'Type','ConstantLine');
            delete(a);
            a=findall(app.MainImageAx,'Type','ConstantLine');
            delete(a);
            a=findall(app.MainImageAx,'Type','Image');
            delete(a);

            %             h = findobj('Tag','Gui1');
            if app.DATA.Type=="FF"
                try
                    if app.GreenChButton.Value==1
                        [~,app.imgDATA,app.imgDATA,~,~]=app.DATA.FF_Data_2D(app.Slider.Value,1,app.MainImageAx,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,viridis);
                    else
                        [~,app.imgDATA,app.imgDATA,~,~]=app.DATA.FF_Data_2D(app.Slider.Value,2,app.MainImageAx,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,viridis);
                    end
                end
                if app.GreenChButton.Value==1
                    [~,~,~,~,yprof]=app.DATA.Image_LSData_2D(1,[],app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value);
                    [~,~,~,~,~,~,~,~]=app.DATA.Plot_TData_1D(1,1,app.XProfile,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,1,app.ephysAx,0,[],[]);
                else
                    [~,~,~,~,yprof]=app.DATA.Image_LSData_2D(2,[],app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value);
                    [~,~,~,~,~,~,~,~]=app.DATA.Plot_TData_1D(2,1,app.XProfile,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,1,app.ephysAx,0,[],[]) ;
                end

            elseif app.DATA.Type=="Line2"


                if app.GreenChButton.Value==1
                    [~,app.imgDATA,~,~,yprof]=app.DATA.Image_LSData_2D(1,app.MainImageAx,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,[],app.XSmoothSpinner.Value,app.YSmoothSpinner.Value,app.YShiftEditField.Value);
                    [~,~,~,~,~,~,~,~]=app.DATA.Plot_TData_1D(1,1,app.XProfile,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,1,app.ephysAx,0,[],[]);
                else
                    [~,app.imgDATA,~,~,yprof]=app.DATA.Image_LSData_2D(2,app.MainImageAx,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,[],app.XSmoothSpinner.Value,app.YSmoothSpinner.Value);
                    [~,~,~,~,~,~,~,~]=app.DATA.Plot_TData_1D(2,1,app.XProfile,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,1,app.ephysAx,0,[],[],app.YShiftEditField.Value) ;
                end
            end


            app.imgXDATA=app.DATA.XData
            app.imgYDATA=app.DATA.YData
            refreshdata
            drawnow
        end

        % Menu selected function: AP1Menu, AP2Menu, AP3Menu, AP4Menu, All, 
        % ...and 1 other component
        function copymapdata(app, event)
           data=[]
            switch event.Source.Text
                case 'BKG'
                    imgdata=cell2mat(app.sp2img_int_output(1,1))
                    imgxdata=cell2mat(app.sp2img_gridx_output(1,1))
                    imgydata=transpose(cell2mat(app.sp2img_gridy_output(1,1)))
                    data=zeros(size(imgdata,1)+1,size(imgdata,2)+1)
                    data([2:end],1)=imgydata;
                    data(1,1)=nan;
                    data(1,[2:end])=imgxdata;
                    data([2:end],[2:end])=cell2mat(app.sp2img_int_output(1,1))
                case 'AP1'
                    imgdata=cell2mat(app.sp2img_int_output(1,2))
                    imgxdata=cell2mat(app.sp2img_gridx_output(1,2))
                    imgydata=transpose(cell2mat(app.sp2img_gridy_output(1,2)))
                    data=zeros(size(imgdata,1)+1,size(imgdata,2)+1)
                    data([2:end],1)=imgydata;
                    data(1,1)=nan;
                    data(1,[2:end])=imgxdata;
                    data([2:end],[2:end])=cell2mat(app.sp2img_int_output(1,2))
                case 'AP2'
                    imgdata=cell2mat(app.sp2img_int_output(1,3))
                    imgxdata=cell2mat(app.sp2img_gridx_output(1,3))
                    imgydata=transpose(cell2mat(app.sp2img_gridy_output(1,3)))
                    data=zeros(size(imgdata,1)+1,size(imgdata,2)+1)
                    data([2:end],1)=imgydata;
                    data(1,1)=nan;
                    data(1,[2:end])=imgxdata;
                    data([2:end],[2:end])=cell2mat(app.sp2img_int_output(1,3))
                case 'AP3'
                    imgdata=cell2mat(app.sp2img_int_output(1,4))
                    imgxdata=cell2mat(app.sp2img_gridx_output(1,4))
                    imgydata=transpose(cell2mat(app.sp2img_gridy_output(1,4)))
                    data=zeros(size(imgdata,1)+1,size(imgdata,2)+1)
                    data([2:end],1)=imgydata;
                    data(1,1)=nan;
                    data(1,[2:end])=imgxdata;
                    data([2:end],[2:end])=cell2mat(app.sp2img_int_output(1,4))
                case 'AP4'
                    imgdata=cell2mat(app.sp2img_int_output(1,5))
                    imgxdata=cell2mat(app.sp2img_gridx_output(1,5))
                    imgydata=transpose(cell2mat(app.sp2img_gridy_output(1,5)))
                    data=zeros(size(imgdata,1)+1,size(imgdata,2)+1)
                    data([2:end],1)=imgydata;
                    data(1,1)=nan;
                    data(1,[2:end])=imgxdata;
                    data([2:end],[2:end])=cell2mat(app.sp2img_int_output(1,1))
                case 'All'
                     imgdata=cell2mat(app.sp2img_int_output(1,1))
                     imgxdata=cell2mat(app.sp2img_gridx_output(1,1))
                     imgydata=transpose(cell2mat(app.sp2img_gridy_output(1,5)))
                        data1=zeros(size(imgdata,1)+1,size(imgdata,2)+1)
                        data1([2:end],[2:end])=imgdata
                        data1([2:end],1)=imgydata
                        data1(1,[2:end])=imgxdata
                        BKGdata=data1
                    framedata1=zeros(size(BKGdata,1),1)
                    framedata1=double(framedata1)+1
                    for i=2:size(app.sp2img_int_output,2)
                        imgdata=cell2mat(app.sp2img_int_output(1,i))
                     imgxdata=cell2mat(app.sp2img_gridx_output(1,i))
                     imgydata=transpose(cell2mat(app.sp2img_gridy_output(1,i)))
                        data=zeros(size(imgdata,1),size(imgdata,2)+1)
                        data(:,[2:end])=imgdata
                        data(:,1)=imgydata
                        eval(sprintf('data%d=data',i))
                        eval(sprintf('framedata%d=zeros(size(data%d,1),1)',i,i))
                        eval(sprintf('framedata%d=double(framedata%d)+%d-1',i,i,i))
                        end
                        framedata=cat(1,framedata1,framedata2,framedata3,framedata4,framedata5)
                    data=cat(1,BKGdata,data2,data3,data4,data5)
%                     data=cat(2,framedata,data)
                      ystep=data(5,1)-data(4,1)
        ysize=size(data,1)-1
        yscaledata=transpose(linspace(0,ysize*ystep,ysize))
        data([2:end],1)=yscaledata
     

end
%          isall=convertCharsToStrings(event.Source.Text)   
%          if isall~="All"
%             data=zeros(size(imgdata,1)+1,size(imgdata,2)+1)
%             data([2:end],[2:end])=imgdata
%             data([2:end],1)=imgydata
%             data(1,[2:end])=imgxdata
%           ystep=data(5,1)-data(4,1)
%         ysize=size(data,1)-1
%         yscaledata=transpose(linspace(0,ysize*ystep,ysize))
%         data([2:end],1)=yscaledata
%         end
            
            num2clip(data)
            try
             MATLABCallOrigin(data,'worksheet')   
            catch ME
                
            end
        end

        % Menu selected function: AP1Menu_3, AP2Menu_3, AP3Menu_3, 
        % ...and 4 other components
        function Polylineprofile(app, event)
            APIdx={"BKG","AP1","AP2","AP3","AP4"}
            try
            FNum=mat2cell(num2str(app.DATA.Index),1)
            Trace_type=mat2cell("Sp2Img_LineProf",1)
            Channel=mat2cell(app.ChannelButtonGroup.SelectedObject.Text,1)
            Comment=mat2cell(app.DATA.comment,1)
            XUnit={"Distance (Micron)"}
            if app.DeltaFF0Button.Value==1
            YUnit={"Delta F/F"}
            else
                YUnit={"Intensity (a.u)"}
            end
            end
            switch event.Source.Text
                case 'BKG'
                    app.lineroi=drawpolyline(app.sp2imgtile1)
                    imgdata=cell2mat(app.sp2img_int_output(1,1))
                    imgxdata=cell2mat(app.sp2img_gridx_output(1,1))
                    imgydata=cell2mat(app.sp2img_gridy_output(1,1))
                    answer = inputdlg('Line halfwidth in image length unit (um usually):','Line Half Width');
                    hw=str2double(answer);
                    [datax,datay]=Line_profile(app.lineroi.Position,imgdata,imgxdata,imgydata,hw)
                    app.lineprofmeta=cell(1,7)
                    app.splineprof=mat2cell(fliplr(datay),1)
                    app.splineprofx=mat2cell(datax,1)
                    app.lineprofmeta(1,1)=Trace_type;app.lineprofmeta(1,2)=APIdx(1);app.lineprofmeta(1,3)=FNum;app.lineprofmeta(1,4)=Channel;app.lineprofmeta(1,5)=Comment;app.lineprofmeta(1,6)=XUnit;app.lineprofmeta(1,7)=YUnit;
                case 'AP1'
                    app.lineroi=drawpolyline(app.sp2imgtile2)
                    imgdata=cell2mat(app.sp2img_int_output(1,2))
                    imgxdata=cell2mat(app.sp2img_gridx_output(1,2))
                    imgydata=cell2mat(app.sp2img_gridy_output(1,2))
                    answer = inputdlg('Line halfwidth in image length unit (um usually):','Line Half Width');
                    hw=str2double(answer);
                    [datax,datay]=Line_profile(app.lineroi.Position,imgdata,imgxdata,imgydata,hw)
                    app.lineprofmeta=cell(1,7)
                    app.splineprof=mat2cell(fliplr(datay),1)
                    app.splineprofx=mat2cell(datax,1)
                    try
                    app.lineprofmeta(1,1)=Trace_type;app.lineprofmeta(1,2)=APIdx(1);app.lineprofmeta(1,3)=FNum;app.lineprofmeta(1,4)=Channel;app.lineprofmeta(1,5)=Comment;app.lineprofmeta(1,6)=XUnit;app.lineprofmeta(1,7)=YUnit;
                    end
                case 'AP2'
                    app.lineroi=drawpolyline(app.sp2imgtile3)
                    imgdata=cell2mat(app.sp2img_int_output(1,3))
                    imgxdata=cell2mat(app.sp2img_gridx_output(1,3))
                    imgydata=cell2mat(app.sp2img_gridy_output(1,3))
                    answer = inputdlg('Line halfwidth in image length unit (um usually):','Line Half Width');
                    hw=str2double(answer);
                    [datax,datay]=Line_profile(app.lineroi.Position,imgdata,imgxdata,imgydata,hw)
                    app.lineprofmeta=cell(1,7)
                    app.splineprof=mat2cell(fliplr(datay),1)
                    app.splineprofx=mat2cell(datax,1)
                    try
                    app.lineprofmeta(1,1)=Trace_type;app.lineprofmeta(1,2)=APIdx(1);app.lineprofmeta(1,3)=FNum;app.lineprofmeta(1,4)=Channel;app.lineprofmeta(1,5)=Comment;app.lineprofmeta(1,6)=XUnit;app.lineprofmeta(1,7)=YUnit;
                    end
                case 'AP3'
                    app.lineroi=drawpolyline(app.sp2imgtile4)
                    imgdata=cell2mat(app.sp2img_int_output(1,4))
                    imgxdata=cell2mat(app.sp2img_gridx_output(1,4))
                    imgydata=cell2mat(app.sp2img_gridy_output(1,4))
                    answer = inputdlg('Line halfwidth in image length unit (um usually):','Line Half Width');
                    hw=str2double(answer);
                    [datax,datay]=Line_profile(app.lineroi.Position,imgdata,imgxdata,imgydata,hw)
                    app.lineprofmeta=cell(1,7)
                    app.splineprof=mat2cell(fliplr(datay),1)
                    app.splineprofx=mat2cell(datax,1)
                    try
                    app.lineprofmeta(1,1)=Trace_type;app.lineprofmeta(1,2)=APIdx(1);app.lineprofmeta(1,3)=FNum;app.lineprofmeta(1,4)=Channel;app.lineprofmeta(1,5)=Comment;app.lineprofmeta(1,6)=XUnit;app.lineprofmeta(1,7)=YUnit;
                    end
                    case 'AP4'
                    app.lineroi=drawpolyline(app.sp2imgtile5)
                    imgdata=cell2mat(app.sp2img_int_output(1,5))
                    imgxdata=cell2mat(app.sp2img_gridx_output(1,5))
                    imgydata=cell2mat(app.sp2img_gridy_output(1,5))
                    answer = inputdlg('Line halfwidth in image length unit (um usually):','Line Half Width');
                    hw=str2double(answer);
                    [datax,datay]=Line_profile(app.lineroi.Position,imgdata,imgxdata,imgydata,hw)
                    app.lineprofmeta=cell(1,7)
                    app.splineprof=mat2cell(fliplr(datay),1)
                    app.splineprofx=mat2cell(datax,1)
                    try
                    app.lineprofmeta(1,1)=Trace_type;app.lineprofmeta(1,2)=APIdx(1);app.lineprofmeta(1,3)=FNum;app.lineprofmeta(1,4)=Channel;app.lineprofmeta(1,5)=Comment;app.lineprofmeta(1,6)=XUnit;app.lineprofmeta(1,7)=YUnit;
                    end
                    
                    
                case 'All'
%                     app.lineroi=drawpolyline(app.sp2imgtile1)
                   
            app.splineprof=cell(4,1)
            app.splineprofx=cell(4,1)
            app.lineprofmeta=cell(4,7)
            answer = inputdlg('Line halfwidth in image length unit (um usually):','Line Half Width');
                    hw=str2double(answer);     
            for i=1:5
                imgdata=cell2mat(app.sp2img_int_output(1,i))
                    imgxdata=cell2mat(app.sp2img_gridx_output(1,i))
                    imgydata=cell2mat(app.sp2img_gridy_output(1,i))
                    meta=cell(1,7)
                    
                    meta(1,1)=Trace_type;meta(1,2)=APIdx(i);meta(1,3)=FNum;meta(1,4)=Channel;meta(1,5)=Comment;meta(1,6)=XUnit;meta(1,7)=YUnit;
                   if i==1
                    app.lineprofmeta=meta
                   else
                    app.lineprofmeta(end+1,:)=meta   
                   end

                [datax,datay]=Line_profile(app.lineroi.Position,imgdata,imgxdata,imgydata,hw)
                app.splineprof(i,1)=mat2cell(fliplr(datay),1)
                app.splineprofx(i,1)=mat2cell(datax,1)
            end     
                case 'BKG Profile'
                    app.lineroi=drawpolyline(app.scatterXdata)
                    bkgimg=findall(app.scatterXdata,'Type','Image')
                    imgdata=bkgimg.CData
                    imgxdata=bkgimg.XData
                    imgydata=bkgimg.YData
                    answer = inputdlg('Line halfwidth in image length unit (um usually):','Line Half Width');
                    hw=str2double(answer);
                    [datax,datay]=Line_profile(app.lineroi.Position,imgdata,imgxdata,imgydata,hw)
                    app.lineprofmeta=cell(1,7)
                    app.splineprof=mat2cell(fliplr(datay),1)
                    app.splineprofx=mat2cell(datax,1)
                    app.lineprofmeta(1,1)={"BKG_Line_Prof"};app.lineprofmeta(1,2)={"File"};app.lineprofmeta(1,3)=FNum;app.lineprofmeta(1,4)=Channel;app.lineprofmeta(1,5)=Comment;app.lineprofmeta(1,6)=XUnit;app.lineprofmeta(1,7)=YUnit; 
            end
            
            
            
            if app.SendtoDataMenu.Checked==0
            figure
            hold on
            p = cellfun(@plot,app.splineprofx,app.splineprof);
            hold off
            else
            app.Plot1D(app.splineprofx,app.splineprof,app.lineprofmeta)
            end
            a=findall(app.scatterXdata,'Type','images.roi.polyline');
delete(a)
%             traces2clip(app.splineprofx,app.splineprof)
        end

        % Callback function
        function plot_all(app, event)
          
            
            
        end

        % Menu selected function: SendtoDataMenu
        function todata_check(app, event)
            if app.SendtoDataMenu.Checked==1
                app.SendtoDataMenu.Checked=0
                app.SendtodataMenu.Checked=0
                 app.scan2axes.Checked=0
            else
                app.SendtoDataMenu.Checked=1
                app.SendtodataMenu.Checked=1
                 app.scan2axes.Checked=1
            end
        end

        % Menu selected function: SendtodataMenu
        function bkgsend(app, event)
            if app.SendtodataMenu.Checked==1
                app.SendtoDataMenu.Checked=0
                app.SendtodataMenu.Checked=0
                 app.scan2axes.Checked=0
            else
                app.SendtoDataMenu.Checked=1
                app.SendtodataMenu.Checked=1
                 app.scan2axes.Checked=1
            end
        end

        % Callback function
        function holdtrace(app, event)
                          value = app.HoldCheckBox.Value;
            if app.HoldCheckBox.Value==1
                hold(app.DataAxes,"on") 
            else
                hold(app.DataAxes,"off") 
            end
        end

        % Callback function
        function delete_traces(app, event)
            plotsize=size(app.XY_Traces_Ydata,1)
            minusplotsize=plotsize-1
            
            if  plotsize>1
                
                app.XY_Traces_Ydata=app.XY_Traces_Ydata([1:minusplotsize],:)
                app.XY_Traces_Xdata=app.XY_Traces_Xdata([1:minusplotsize],:)
                app.XY_Traces_meta=app.XY_Traces_meta([1:minusplotsize],:)
                
                app.Tracedata.Data=cell2table(cat(2,app.XY_Traces_meta,app.XY_Traces_Xdata,app.XY_Traces_Ydata))
                app.tracedatastore=app.tracedatastore(1:end-1)
                
                else
                app.XY_Traces_Ydata=[]
                XY_Traces_Xdata=[]
                app.XY_Traces_meta=[]
                app.Tracedata.Data=[]
                 DAT=load('template.mat')
                    app.tracedatastore=DAT.DATA
               
            end
        end

        % Menu selected function: SendtodataMenu_2, scan2axes
        function todata_checkmain(app, event)
             if app.scan2axes.Checked==1
                app.SendtoDataMenu.Checked=0
                app.SendtodataMenu.Checked=0
                app.scan2axes.Checked=0
                
            else
                app.SendtoDataMenu.Checked=1
                app.SendtodataMenu.Checked=1
                app.scan2axes.Checked=1
            end
        end

        % Callback function
        function setcursorlimits(app, event)
            ind=[]
            try; ind = find(get(app.DataAxes.Children, 'BrushData')); end
            
            datax=get(app.DataAxes.Children,'XData');% get xdata
            if isempty(ind)==0
                                
                        if size(datax,1)>1
                        app.selectedC1XValues=app.DataAxes.Children(end).XData(:,ind);
                    
                        
                        else
                            app.selectedC1XValues=app.DataAxes.Children.XData(:,ind);
                       
                        end
                        app.selectedC1XIndices = logical(get(app.DataAxes.Children, 'BrushData'));
                        app.MinSpinner_2.Value=round(min(app.selectedC1XValues),2)
                        app.MaxSpinner_2.Value=round(max(app.selectedC1XValues),2)
                        app.c1min=app.MinSpinner_2.Value
                        app.c1max=app.MaxSpinner_2.Value
        end
        end

        % Callback function
        function changeplot(app, event)
            indices = event.Indices;
             app.traceindices = event.Indices;
             plot(app.DataAxes,cell2mat(app.XY_Traces_Xdata(app.traceindices(1),1)),cell2mat(app.XY_Traces_Ydata(app.traceindices(1),1)))
            title(app.DataAxes,cat(2,cell2mat(app.XY_Traces_meta{app.traceindices(1),1}),cell2mat(app.XY_Traces_meta(app.traceindices(1),4)),cell2mat(app.XY_Traces_meta{app.traceindices(1),2})))
            xlabel(app.DataAxes,cell2mat(app.XY_Traces_meta{app.traceindices(1),6}))
            ylabel(app.DataAxes,cell2mat(app.XY_Traces_meta{app.traceindices(1),7}))
        end

        % Callback function
        function MainCLims(app, event)
          app.MainImageAx.CLim(2)=app.CMaxSpinner_2.Value
        end

        % Menu selected function: GetVerticalProfileXMenu, 
        % ...and 1 other component
        function mainAxVert(app, event)
            a=findall(app.MainImageAx,'Type','ConstantLine')
            delete(a)
            app.mainAxlineroi=drawpolyline(app.MainImageAx,"LineWidth",1,"Color",'r')
            posdata=app.mainAxlineroi.Position
            app.ylines{1,1}=yline(app.MainImageAx,posdata(1,2),'Color','y')
            app.ylines{1,2}=yline(app.MainImageAx,posdata(2,2),'Color','y')
            delete(app.mainAxlineroi)
            answer = inputdlg('Save Profile y/n:','y');
            Channel=mat2cell(app.ChannelButtonGroup.SelectedObject.Text,1)
            Comment=mat2cell(app.DATA.comment,1)
            FNum=mat2cell(num2str(app.DATA.Index),1)
            XUnit={"Time(s)"}
               if app.DeltaFF0Button.Value==1
            YUnit={"Delta F/F"}
            else
                YUnit={"Intensity (a.u)"}
            end
            if cell2mat(answer)=='y';
                app.lineprofmeta=cell(1,7)
                b=findall(app.MainImageAx,'Type','Image')
                    locs=sort([uint16(posdata(1,2)),uint16(posdata(2,2))],2);
                    app.splineprof=nanmean(b.CData([locs(1):locs(2)],:),1);
                    app.splineprofx=b.XData
                    app.lineprofmeta(1,1)={"Y_Line_Profile"};app.lineprofmeta(1,2)={"File"};app.lineprofmeta(1,3)=FNum;app.lineprofmeta(1,4)=Channel;app.lineprofmeta(1,5)=Comment;app.lineprofmeta(1,6)=XUnit;app.lineprofmeta(1,7)=YUnit;
            app.Plot1D(mat2cell(app.splineprofx,1),mat2cell(app.splineprof,1),app.lineprofmeta)
            end
            traces2clip(app.splineprofx,app.splineprof)
        end

        % Menu selected function: ClearLinesMenu, ClearLinesMenu_2
        function clearlines(app, event)
            a=findall(app.MainImageAx,'Type','ConstantLine')
            delete(a)
        end

        % Menu selected function: GetHorizontalProfileYMenu, 
        % ...and 1 other component
        function HorizontalProfile(app, event)
             a=findall(app.MainImageAx,'Type','ConstantLine')
            delete(a)
            app.mainAxlineroi=drawpolyline(app.MainImageAx,"LineWidth",1,"Color",'r')
            posdata=app.mainAxlineroi.Position
            app.ylines{1,1}=xline(app.MainImageAx,posdata(1,1),'Color','y')
            app.ylines{1,2}=xline(app.MainImageAx,posdata(2,1),'Color','y')
            delete(app.mainAxlineroi)
            answer = inputdlg('Save Profile y/n:','y');
            Channel=mat2cell(app.ChannelButtonGroup.SelectedObject.Text,1)
            Comment=mat2cell(app.DATA.comment,1)
            FNum=mat2cell(num2str(app.DATA.Index),1)
            XUnit={"Distance (pixels)"}
               if app.DeltaFF0Button.Value==1
            YUnit={"Delta F/F"}
            else
                YUnit={"Intensity (a.u)"}
            end
            if cell2mat(answer)=='y';
                app.lineprofmeta=cell(1,7)
                b=findall(app.MainImageAx,'Type','Image')
                    app.splineprof=transpose(nanmean(b.CData(:,[uint16(posdata(1,1)/app.DATA.linetime):uint16(posdata(2,1)/app.DATA.linetime)]),2))
                    app.splineprofx=linspace(b.YData(1),b.YData(2),size(b.CData,1))
                    app.lineprofmeta(1,1)={"X_Line_Profile"};app.lineprofmeta(1,2)={"File"};app.lineprofmeta(1,3)=FNum;app.lineprofmeta(1,4)=Channel;app.lineprofmeta(1,5)=Comment;app.lineprofmeta(1,6)=XUnit;app.lineprofmeta(1,7)=YUnit;
            app.Plot1D(mat2cell(app.splineprofx,1),mat2cell(app.splineprof,1),app.lineprofmeta)
            end
           traces2clip(app.splineprofx,app.splineprof)
        end

        % Callback function
        function show_surf_fit(app, event)
            Img_sp2imgtile1=findall(app.sp2imgtile1,'Type','Image')
            Img_sp2imgtile2=findall(app.sp2imgtile2,'Type','Image')
            Img_sp2imgtile3=findall(app.sp2imgtile3,'Type','Image')
            Img_sp2imgtile4=findall(app.sp2imgtile4,'Type','Image')
            Img_sp2imgtile5=findall(app.sp2imgtile5,'Type','Image')
            
            if app.ProfilesButton.Value==1
            
            gridx=cell2mat(app.sp2img_fullgridx_output(1,1))
            gridy=cell2mat(app.sp2img_fullgridy_output(1,1))
            
            imagesc(app.sp2imgtile1,app.gsurf_fit0.G,'XData',gridx(1,:),'YData',gridy(1,:));
             imagesc(app.sp2imgtile2,app.gsurf_fit1.G,'XData',gridx(1,:),'YData',gridy(1,:));
             imagesc(app.sp2imgtile3,app.gsurf_fit2.G,'XData',gridx(1,:),'YData',gridy(1,:));
             imagesc(app.sp2imgtile4,app.gsurf_fit3.G,'XData',gridx(1,:),'YData',gridy(1,:));
             imagesc(app.sp2imgtile5,app.gsurf_fit4.G,'XData',gridx(1,:),'YData',gridy(1,:));
            else
            gridx=cell2mat(app.sp2img_fullgridx_output(1,1))
            gridy=cell2mat(app.sp2img_fullgridy_output(1,1))

            imagesc(app.sp2imgtile1,app.intimage0,'XData',gridx(1,:),'YData',gridy(1,:));
             imagesc(app.sp2imgtile2,app.intimage1,'XData',gridx(1,:),'YData',gridy(1,:));
             imagesc(app.sp2imgtile3,app.intimage2,'XData',gridx(1,:),'YData',gridy(1,:));
             imagesc(app.sp2imgtile4,app.intimage3,'XData',gridx(1,:),'YData',gridy(1,:));
             imagesc(app.sp2imgtile5,app.intimage4,'XData',gridx(1,:),'YData',gridy(1,:));  
                
            end
            colormap(app.sp2imgtile1,'hot')
colormap(app.sp2imgtile2,'hot')
colormap(app.sp2imgtile3,'hot')
colormap(app.sp2imgtile4,'hot')
colormap(app.sp2imgtile5,'hot')
app.sync_CLimits(app.CLims);
        end

        % Button pushed function: RunfitButton
        function run_surffit(app, event)
           Img_sp2imgtile=findall(app.sp2imgtile1,'Type','Image')
           
            Img_sp2imgtile1=Img_sp2imgtile(5,1)
            Img_sp2imgtile2=Img_sp2imgtile(4,1)
            Img_sp2imgtile3=Img_sp2imgtile(3,1)
            Img_sp2imgtile4=Img_sp2imgtile(2,1)
            Img_sp2imgtile5=Img_sp2imgtile(1,1)         
%             
gridx=Img_sp2imgtile1.XData.';
gridy=Img_sp2imgtile1.YData.';
img=Img_sp2imgtile1.CData;
[X,Y]=ndgrid(gridx,gridy);

opts.positive = true; %So that the gain parameter is positive;
opts.errorbars = 'none';
opts.tilted=1;

switch app.Switch.Value
    
case 'Sp2Img'
    
        if app.DATA.file=="FF"
            img=img.'
        end
    
data(:,:,:)=cell2mat(permute(app.sp2img_int_outputUG,[1,3,2]));
data(isnan(data))=0;

dataUR(:,:,:)=cell2mat(permute(app.sp2img_int_outputUR,[1,3,2]));
dataUR(isnan(dataUR))=0;
        
        
app.gsurf_fit0=autoGaussianSurf(X,Y,data(:,:,1).',opts);
app.gsurf_fit1=autoGaussianSurf(X,Y,data(:,:,2).',opts);
app.gsurf_fit2=autoGaussianSurf(X,Y,data(:,:,3).',opts);
app.gsurf_fit3=autoGaussianSurf(X,Y,data(:,:,4).',opts);
app.gsurf_fit4=autoGaussianSurf(X,Y,data(:,:,5).',opts);


gsurf_fit0_UR=autoGaussianSurf(X,Y,dataUR(:,:,1).',opts);gsurf_fit0_UR.dX0=gsurf_fit0_UR.x0-app.gsurf_fit0.x0;gsurf_fit0_UR.dY0=gsurf_fit0_UR.y0-app.gsurf_fit0.y0;gsurf_fit0_UR.input=dataUR(:,:,1).';
gsurf_fit1_UR=autoGaussianSurf(X,Y,dataUR(:,:,2).',opts);gsurf_fit1_UR.dX0=gsurf_fit1_UR.x0-app.gsurf_fit0.x0;gsurf_fit1_UR.dY0=gsurf_fit1_UR.y0-app.gsurf_fit0.y0;gsurf_fit1_UR.input=dataUR(:,:,2).';
gsurf_fit2_UR=autoGaussianSurf(X,Y,dataUR(:,:,3).',opts);gsurf_fit2_UR.dX0=gsurf_fit2_UR.x0-app.gsurf_fit0.x0;gsurf_fit2_UR.dY0=gsurf_fit2_UR.y0-app.gsurf_fit0.y0;gsurf_fit2_UR.input=dataUR(:,:,3).';
gsurf_fit3_UR=autoGaussianSurf(X,Y,dataUR(:,:,4).',opts);gsurf_fit3_UR.dX0=gsurf_fit3_UR.x0-app.gsurf_fit0.x0;gsurf_fit3_UR.dY0=gsurf_fit3_UR.y0-app.gsurf_fit0.y0;gsurf_fit3_UR.input=dataUR(:,:,4).';
gsurf_fit4_UR=autoGaussianSurf(X,Y,dataUR(:,:,5).',opts);gsurf_fit4_UR.dX0=gsurf_fit4_UR.x0-app.gsurf_fit0.x0;gsurf_fit4_UR.dY0=gsurf_fit4_UR.y0-app.gsurf_fit0.y0;gsurf_fit4_UR.input=dataUR(:,:,5).';

All_responses_UR=cat(1,gsurf_fit0_UR,gsurf_fit1_UR,gsurf_fit2_UR,gsurf_fit3_UR,gsurf_fit4_UR);
All_resp_table_UR=struct2table(All_responses_UR,'AsArray',true);
All_resp_table_UR.Row={'BKG';'AP1';'AP2';'AP3';'AP4'};
% app.gsurf_fit0=autoGaussianSurf(X,Y,app.sp2img_int_outputUG{1,1},opts); 
% app.gsurf_fit1=autoGaussianSurf(X,Y,transpose(Img_sp2imgtile2.CData),opts);
% app.gsurf_fit2=autoGaussianSurf(X,Y,transpose(Img_sp2imgtile3.CData),opts);
% app.gsurf_fit3=autoGaussianSurf(X,Y,transpose(Img_sp2imgtile4.CData),opts);
% app.gsurf_fit4=autoGaussianSurf(X,Y,transpose(Img_sp2imgtile5.CData),opts);

% for mapnum=1:size(data,3)
% gsurf_fitmaps(mapnum)=autoGaussianSurf(X,Y,data(:,:,mapnum),opts);
% gsurf_fitmaps_UR(mapnum)=autoGaussianSurf(X,Y,dataUR(:,:,mapnum),opts);
% end



% if app.Maps2EventsButton.Value==1
% app.getpeaklocs
% end
%     catch
%         error="Fit did not converge"
%     end
% app.gsurf_fit0.G=transpose(app.gsurf_fit0.G);
% app.gsurf_fit1.G=transpose(app.gsurf_fit1.G);
% app.gsurf_fit2.G=transpose(app.gsurf_fit2.G);
% app.gsurf_fit3.G=transpose(app.gsurf_fit3.G);
% app.gsurf_fit4.G=transpose(app.gsurf_fit4.G);
% 
% gsurf_fit0_UR=autoGaussianSurf(X,Y,app.sp2img_int_outputUR{1,1},opts);gsurf_fit0_UR.dX0=gsurf_fit0_UR.x0-app.gsurf_fit0.x0;gsurf_fit0_UR.dY0=gsurf_fit0_UR.y0-app.gsurf_fit0.y0;gsurf_fit0_UR.input=app.sp2img_int_outputUR{1,1};
% gsurf_fit1_UR=autoGaussianSurf(X,Y,app.sp2img_int_outputUR{1,2},opts);gsurf_fit1_UR.dX0=gsurf_fit1_UR.x0-app.gsurf_fit0.x0;gsurf_fit1_UR.dY0=gsurf_fit1_UR.y0-app.gsurf_fit0.y0;gsurf_fit1_UR.input=app.sp2img_int_outputUR{1,2};
% gsurf_fit2_UR=autoGaussianSurf(X,Y,app.sp2img_int_outputUR{1,3},opts);gsurf_fit2_UR.dX0=gsurf_fit2_UR.x0-app.gsurf_fit0.x0;gsurf_fit2_UR.dY0=gsurf_fit2_UR.y0-app.gsurf_fit0.y0;gsurf_fit2_UR.input=app.sp2img_int_outputUR{1,3};
% gsurf_fit3_UR=autoGaussianSurf(X,Y,app.sp2img_int_outputUR{1,4},opts);gsurf_fit3tmp_gsurf_fit_UR.dX0=gsurf_fit3_UR.x0-app.gsurf_fit0.x0;gsurf_fit3_UR.dY0=gsurf_fit3_UR.y0-app.gsurf_fit0.y0;gsurf_fit3_UR.input=app.sp2img_int_outputUR{1,4};
% gsurf_fit4_UR=autoGaussianSurf(X,Y,app.sp2img_int_outputUR{1,5},opts);gsurf_fit4_UR.dX0=gsurf_fit4_UR.x0-app.gsurf_fit0.x0;gsurf_fit4_UR.dY0=gsurf_fit4_UR.y0-app.gsurf_fit0.y0;gsurf_fit4_UR.input=app.sp2img_int_outputUR{1,5};
% 
% All_responses_UR=cat(1,gsurf_fit0_UR,gsurf_fit1_UR,gsurf_fit2_UR,gsurf_fit3_UR,gsurf_fit4_UR);
% All_resp_table_UR=struct2table(All_responses_UR,'AsArray',true);
% All_resp_table_UR.Row={'BKG';'AP1';'AP2';'AP3';'AP4'};



case 'Pos2Img'
%  app.gsurf_fit0=autoGaussianSurf(X,Y,Img_sp2imgtile1.CData,opts); 
%  app.gsurf_fit1=autoGaussianSurf(X,Y,Img_sp2imgtile2.CData,opts);
% app.gsurf_fit2=autoGaussianSurf(X,Y,Img_sp2imgtile3.CData,opts);
% app.gsurf_fit3=autoGaussianSurf(X,Y,Img_sp2imgtile4.CData,opts);
% app.gsurf_fit4=autoGaussianSurf(X,Y,Img_sp2imgtile5.CData,opts);  
for mapnum=1:size(app.sp2img_int_outputUG,2)
% tmp_gsurf_fit=autoGaussianSurf(X,Y,app.sp2img_int_outputUG{1,mapnum},opts);
% if mapnum==1; tmp_gsurf_fit.APnum='Background';BKG=tmp_gsurf_fit;else tmp_gsurf_fit.APnum=sprintf('%dAP',mapnum-1);end
% tmp_gsurf_fit.Trialnum=app.DATA.Index;tmp_gsurf_fit.Comment=app.DATA.comment,tmp_gsurf_fit.Date=app.DATA.Time; tmp_gsurf_fit.XData=gridx(1,:);tmp_gsurf_fit.YData=gridy(1,:);
% tmp_gsurf_fit.dX0=tmp_gsurf_fit.x0-BKG.x0;  tmp_gsurf_fit.dY0=tmp_gsurf_fit.y0-BKG.y0;tmp_gsurf_fit.input=app.sp2img_int_outputUG{1,mapnum};
% gsurf_fit(mapnum)=tmp_gsurf_fit;tmp_gsurf_fit=[]

% gsurf_fit0_UR1(mapnum)=autoGaussianSurf(X,Y,app.sp2img_int_outputUR{1,mapnum},opts);
% gsurf_fit0_UR1(mapnum).dX0=gsurf_fit0_UR1(mapnum).x0-gsurf_fit0_UR1(mapnum).x0;gsurf_fit0_UR1(mapnum).dY0=gsurf_fit0_UR1(mapnum).y0-gsurf_fit0_UR1(mapnum).y0;gsurf_fit0_UR1(mapnum).input=app.sp2img_int_outputUR{1,mapnum};
end

sp2img_int_outputUG=fliplr(app.sp2img_int_outputUG);
sp2img_int_outputUR=fliplr(app.sp2img_int_outputUR);
sp2img_fullgridx_output=fliplr(app.sp2img_fullgridx_output);
sp2img_fullgridy_output=fliplr(app.sp2img_fullgridy_output);
[X,Y]=ndgrid(sp2img_fullgridx_output{1,1},sp2img_fullgridy_output{1,1});
 app.gsurf_fit0=autoGaussianSurf(X,Y,sp2img_int_outputUG{1,1},opts);
 app.gsurf_fit1=autoGaussianSurf(X,Y,sp2img_int_outputUG{1,2},opts);
app.gsurf_fit2=autoGaussianSurf(X,Y,sp2img_int_outputUG{1,3},opts);
app.gsurf_fit3=autoGaussianSurf(X,Y,sp2img_int_outputUG{1,4},opts);
app.gsurf_fit4=autoGaussianSurf(X,Y,sp2img_int_outputUG{1,5},opts)  ;


gsurf_fit0_UR=autoGaussianSurf(X,Y,sp2img_int_outputUR{1,1},opts);gsurf_fit0_UR.dX0=gsurf_fit0_UR.x0-app.gsurf_fit0.x0;gsurf_fit0_UR.dY0=gsurf_fit0_UR.y0-app.gsurf_fit0.y0;gsurf_fit0_UR.input=sp2img_int_outputUR{1,1};
gsurf_fit1_UR=autoGaussianSurf(X,Y,sp2img_int_outputUR{1,2},opts);gsurf_fit1_UR.dX0=gsurf_fit1_UR.x0-app.gsurf_fit0.x0;gsurf_fit1_UR.dY0=gsurf_fit1_UR.y0-app.gsurf_fit0.y0;gsurf_fit1_UR.input=sp2img_int_outputUR{1,2};
gsurf_fit2_UR=autoGaussianSurf(X,Y,sp2img_int_outputUR{1,3},opts);gsurf_fit2_UR.dX0=gsurf_fit2_UR.x0-app.gsurf_fit0.x0;gsurf_fit2_UR.dY0=gsurf_fit2_UR.y0-app.gsurf_fit0.y0;gsurf_fit2_UR.input=sp2img_int_outputUR{1,3};
gsurf_fit3_UR=autoGaussianSurf(X,Y,sp2img_int_outputUR{1,4},opts);gsurf_fit3_UR.dX0=gsurf_fit3_UR.x0-app.gsurf_fit0.x0;gsurf_fit3_UR.dY0=gsurf_fit3_UR.y0-app.gsurf_fit0.y0;gsurf_fit3_UR.input=sp2img_int_outputUR{1,4};
gsurf_fit4_UR=autoGaussianSurf(X,Y,sp2img_int_outputUR{1,5},opts);gsurf_fit4_UR.dX0=gsurf_fit4_UR.x0-app.gsurf_fit0.x0;gsurf_fit4_UR.dY0=gsurf_fit4_UR.y0-app.gsurf_fit0.y0;gsurf_fit4_UR.input=sp2img_int_outputUR{1,5};

All_responses_UR=cat(1,gsurf_fit0_UR,gsurf_fit1_UR,gsurf_fit2_UR,gsurf_fit3_UR,gsurf_fit4_UR);
All_resp_table_UR=struct2table(All_responses_UR,'AsArray',true);
All_resp_table_UR.Row={'BKG';'AP1';'AP2';'AP3';'AP4'};

end

app.gsurf_fit0.APnum='Background';app.gsurf_fit0.Trialnum=app.DATA.Index;app.gsurf_fit0.Comment=app.DATA.comment,app.gsurf_fit0.Date=app.DATA.Time; app.gsurf_fit0.XData=gridx(1,:);app.gsurf_fit0.YData=gridy(1,:);
app.gsurf_fit1.APnum='1AP';app.gsurf_fit1.Trialnum=app.DATA.Index;app.gsurf_fit1.Comment=app.DATA.comment,app.gsurf_fit1.Date=app.DATA.Time;app.gsurf_fit1.XData=gridx(1,:);app.gsurf_fit1.YData=gridy(1,:);
app.gsurf_fit2.APnum='2AP';app.gsurf_fit2.Trialnum=app.DATA.Index;app.gsurf_fit2.Comment=app.DATA.comment,app.gsurf_fit2.Date=app.DATA.Time;app.gsurf_fit2.XData=gridx(1,:);app.gsurf_fit2.YData=gridy(1,:);
app.gsurf_fit3.APnum='3AP';app.gsurf_fit3.Trialnum=app.DATA.Index;app.gsurf_fit3.Comment=app.DATA.comment,app.gsurf_fit3.Date=app.DATA.Time;app.gsurf_fit3.XData=gridx(1,:);app.gsurf_fit3.YData=gridy(1,:);
app.gsurf_fit4.APnum='4AP';app.gsurf_fit4.Trialnum=app.DATA.Index;app.gsurf_fit4.Comment=app.DATA.comment,app.gsurf_fit4.Date=app.DATA.Time;app.gsurf_fit4.XData=gridx(1,:);app.gsurf_fit4.YData=gridy(1,:);

app.gsurf_fit0.dX0=app.gsurf_fit0.x0-app.gsurf_fit0.x0; app.gsurf_fit0.dY0=app.gsurf_fit0.y0-app.gsurf_fit0.y0; app.gsurf_fit0.input=sp2img_int_outputUG{1,1};
app.gsurf_fit1.dX0=app.gsurf_fit1.x0-app.gsurf_fit0.x0; app.gsurf_fit1.dY0=app.gsurf_fit1.y0-app.gsurf_fit0.y0;app.gsurf_fit1.input=sp2img_int_outputUG{1,2};
app.gsurf_fit2.dX0=app.gsurf_fit2.x0-app.gsurf_fit0.x0; app.gsurf_fit2.dY0=app.gsurf_fit2.y0-app.gsurf_fit0.y0;app.gsurf_fit2.input=sp2img_int_outputUG{1,3};
app.gsurf_fit3.dX0=app.gsurf_fit3.x0-app.gsurf_fit0.x0; app.gsurf_fit3.dY0=app.gsurf_fit3.y0-app.gsurf_fit0.y0;app.gsurf_fit3.input=sp2img_int_outputUG{1,4};
app.gsurf_fit4.dX0=app.gsurf_fit4.x0-app.gsurf_fit0.x0; app.gsurf_fit4.dY0=app.gsurf_fit4.y0-app.gsurf_fit0.y0;app.gsurf_fit4.input=sp2img_int_outputUG{1,5};
a=0

% baseline_window=app.BasedTmsSpinner.Value/1000;
% baseline_offset=app.BaseoffsetmsSpinner.Value/1000;
% inputvars=app.sp2imginput
% 
% APstarts=cat(2,inputvars(3:end),eval(app.EditField.Value)/1000)
% APstarts=sort(APstarts,'ascend');
% APends=APstarts+app.PeakdTmsSpinner.Value/1000
% BKGends=APstarts-baseline_offset-baseline_window(:)
% BKGstarts=APstarts-baseline_offset(:)


% xcentres=cat(1,app.gsurf_fit1.x0,app.gsurf_fit2.x0,app.gsurf_fit3.x0,app.gsurf_fit4.x0)
% ycentres=cat(1,app.gsurf_fit1.y0,app.gsurf_fit2.y0,app.gsurf_fit3.y0,app.gsurf_fit4.y0)
% for i=1:size(app.currentAmp,2)
% baselineindexes(i,:)=app.DATA.TData>=BKGends(i)&app.DATA.TData<=BKGstarts(i);
% responseindexes(i,:)=app.DATA.TData>=BKGends(i)&app.DATA.TData<=APends(i);
% APindexes=app.DATA.TData>=APstarts(i)&app.DATA.TData<=APends(i);
% normScX=reshape(double(app.DATA.ScX(:,APindexes)),numel(app.DATA.ScX(:,APindexes)),1)-xcentres(i,1);
% normScY=reshape(double(app.DATA.ScX(:,APindexes)),numel(app.DATA.ScX(:,APindexes)),1)-ycentres(i,1);
% 
% [theta,rho]=arrayfun(@cart2pol,normScX,normScY,"UniformOutput",false);
% rrho=cell2mat(rho);
% for i=1:size(app.imgDATA,2);
% [a,b,c]=histcounts(rrho(:,1),"BinWidth",0.05);
% Index=reshape(c,numel(c),1);
% Intensity_vals=reshape(app.imgDATA(:,i),numel(app.imgDATA(:,i)),1);
% Int_Profile(:,i)=accumarray(Index,Intensity_vals,[],@nanmean);
% % Intensity_valsR=reshape(app.DATA.UR(:,i),numel(app.DATA.UR(:,i)),1);
% % Int_ProfileR(:,i)=accumarray(Index,Intensity_valsR,[],@nanmean);
% end
% end







if sum(app.currentsuccess,'all')==8
    app.currentsuccess=[1,1,1,1]
    app.currentAmp(1)=max(Img_sp2imgtile2.CData,"all")
    app.currentAmp(2)=max(Img_sp2imgtile3.CData,"all")
    app.currentAmp(3)=max(Img_sp2imgtile4.CData,"all")
    app.currentAmp(4)=max(Img_sp2imgtile5.CData,"all")
end
if app.GreenChButton.Value==1
app.gsurf_fit0.Success=0
app.gsurf_fit1.Success=app.currentsuccess(1)
app.gsurf_fit2.Success=app.currentsuccess(2)
app.gsurf_fit3.Success=app.currentsuccess(3)
app.gsurf_fit4.Success=app.currentsuccess(4)
else
app.gsurf_fit0.Success=0
app.gsurf_fit1.Success=1
app.gsurf_fit2.Success=1
app.gsurf_fit3.Success=1
app.gsurf_fit4.Success=1 
end


app.gsurf_fit0.Amp=0
app.gsurf_fit1.Amp=app.currentAmp(1)
app.gsurf_fit2.Amp=app.currentAmp(2)
app.gsurf_fit3.Amp=app.currentAmp(3)
app.gsurf_fit4.Amp=app.currentAmp(4)

app.gsurf_fit0.CalAmp=0
app.gsurf_fit1.CalAmp=app.currentCalAmp(1)
app.gsurf_fit2.CalAmp=app.currentCalAmp(2)
app.gsurf_fit3.CalAmp=app.currentCalAmp(3)
app.gsurf_fit4.CalAmp=app.currentCalAmp(4)

app.gsurf_fit0.CalInc=0
app.gsurf_fit1.CalInc=app.currentCal_Accum(1)
app.gsurf_fit2.CalInc=app.currentCal_Accum(2)
app.gsurf_fit3.CalInc=app.currentCal_Accum(3)
app.gsurf_fit4.CalInc=app.currentCal_Accum(4)




% All_responses=cat(1,app.gsurf_fit0,app.gsurf_fit1,app.gsurf_fit2,app.gsurf_fit3,app.gsurf_fit4);
% All_resp_table=struct2table(All_responses,'AsArray',true);
% All_resp_table.Row={'BKG';'AP1';'AP2';'AP3';'AP4'};
% ephys=app.ephysAx.Children;
% img=app.XProfile.Children;
% bkg=app.scatterXdata.Children;


%  if app.ProfilesButton.Value==1   
% imagesc(app.sp2imgtile1,app.gsurf_fit0.G,'XData',gridx(1,:),'YData',gridy(1,:));
% imagesc(app.sp2imgtile2,app.gsurf_fit1.G,'XData',gridx(1,:),'YData',gridy(1,:));
% imagesc(app.sp2imgtile3,app.gsurf_fit2.G,'XData',gridx(1,:),'YData',gridy(1,:));
% imagesc(app.sp2imgtile4,app.gsurf_fit3.G,'XData',gridx(1,:),'YData',gridy(1,:));
% imagesc(app.sp2imgtile5,app.gsurf_fit4.G,'XData',gridx(1,:),'YData',gridy(1,:));
% colormap(app.sp2imgtile1,'hot');
% colormap(app.sp2imgtile2,'hot');
% colormap(app.sp2imgtile3,'hot');
% colormap(app.sp2imgtile4,'hot');
% colormap(app.sp2imgtile5,'hot');
% app.sync_CLimits(app.CLims);
%  end
 


DFF=findall(app.XProfile,'Type','Line');
All_responses=cat(1,app.gsurf_fit0,app.gsurf_fit1,app.gsurf_fit2,app.gsurf_fit3,app.gsurf_fit4);
All_resp_table=struct2table(All_responses,'AsArray',true);
All_resp_table.Row={'BKG';'AP1';'AP2';'AP3';'AP4'};
% plotdata.eYData=mat2cell(app.ephysAx.Children.YData,1);
% plotdata.eXData=mat2cell(app.ephysAx.Children.XData,1);
% plotdata.eXLims=mat2cell(app.ephysAx.XLim,1);
% 
% 
% plotdata.iYData=mat2cell(DFF.YData,1);
% plotdata.iXData=mat2cell(DFF.XData,1);
% plotdata.iXLims=mat2cell(app.XProfile.XLim,1);
% plotdata.xlines=mat2cell([app.AP1Spinner.Value/1000,app.AP2Spinner.Value/1000,app.AP3Spinner.Value/1000,app.AP4Spinner.Value/1000],1);

plotdata.eYData={app.ephysAx.Children.YData};
plotdata.eXData={app.ephysAx.Children.XData};
plotdata.eXLims={app.ephysAx.XLim};


plotdata.iYData={DFF.YData};
plotdata.iXData={DFF.XData};
plotdata.iXLims={app.XProfile.XLim};
plotdata.xlines={[app.AP1Spinner.Value/1000,app.AP2Spinner.Value/1000,app.AP3Spinner.Value/1000,app.AP4Spinner.Value/1000]};



if app.FrameScaninImageButton.Value==1
    bkg=[]
 bkg=app.FFBKGData;  
else
 bkg=findall(app.scatterXdata,'Type','Image');
end   

xsize=size(bkg.CData,2);ysize=size(bkg.CData,1)   

plotdata.bkgCData=mat2cell(bkg.CData,ysize,xsize);
if size(bkg.XData,2)==1
bkg.XData=bkg.XData.'
bkg.YData=bkg.YData.'
end



% plotdata.bkgXData=mat2cell(bkg.XData(1,:),1);
% plotdata.bkgYData=mat2cell(bkg.YData(1,:),1);  
% calXData=bkg.XData-app.gsurf_fit0.x0;
% calYData=bkg.YData-app.gsurf_fit0.y0;
% plotdata.calXData=mat2cell(calXData(1,:),1);
% plotdata.calYData=mat2cell(calYData(1,:),1);

plotdata.bkgXData={bkg.XData(1,:)};
plotdata.bkgYData={bkg.YData(1,:)};  
calXData=bkg.XData-app.gsurf_fit0.x0;
calYData=bkg.YData-app.gsurf_fit0.y0;
plotdata.calXData={calXData(1,:)};
plotdata.calYData={calYData(1,:)};



%%Get distance from UG centre to UR centre
dX_UG_UR=[table2array(All_resp_table(:,[3])) table2array(All_resp_table_UR(:,[3]))] %X distances
dY_UG_UR=[table2array(All_resp_table(:,[4])) table2array(All_resp_table_UR(:,[4]))] %Y distances

% for i=1:size(dX_UG_UR,1)
% dUG_UR(i,1)=norm(dX_UG_UR(i,:)-dY_UG_UR(i,:)) % magnitude of vector UG-UR
% end
% T_dUG_UR=array2table(dUG_UR)

dY_UG_UR=dY_UG_UR-dY_UG_UR(:,1)
dX_UG_UR=dX_UG_UR-dX_UG_UR(:,1)

[theta,rho]=arrayfun(@cart2pol,dX_UG_UR,dY_UG_UR,"UniformOutput",false)
T_dUG_UR=cell2table(rho(:,2))   
T_dUG_UR.Properties.VariableNames{1} = 'dUG_UR';
% if app.Maps2EventsButton.Value==1
% plotdata.intprofiles=app.Plotdata_2D
% end
% app.setclims;
  

app.FitDatadisp.UpdateData(All_resp_table,plotdata,app.CLims(4,2),min(app.CLims(:,1),[],"all"),datetime,All_resp_table_UR,T_dUG_UR);
% app.FitDatadisp.UpdateData(All_resp_table,plotdata,app.CLims(4,2),1,datetime,All_resp_table_UR,T_dUG_UR);

%            catch ME
%            app.TextArea.Value=ME.message    
%            end
        end

        % Callback function
        function Bre(app, event)
            
        end

        % Value changing function: ScanLocationsDisplayedatTimemsSpinner
        function SliderValueChanging(app, event)
        if app.bkgUG.Value==1
                app.scatterXdataonBKG=app.DATA.DisplayBKG(1,app.scatterXdata) %Green channel
            elseif app.bkgUG.Value==2
                app.scatterXdataonBKG=app.DATA.DisplayBKG(2,app.scatterXdata) %red channel
            elseif app.bkgUG.Value==3
                 app.scatterXdataonBKG=app.DATA.DisplayBKG(3,app.scatterXdata) % TiR channel
           end
            
            
            
            hold(app.scatterXdata,'on')
            switch app.DisplayPatternButton.Value
                case 0
                    delete(app.patterndisp);
                case 1
                    app.patterndisp=app.DATA.Scatter_Scanline_on_Image(app.scatterXdata,app.MinSpinner.Value,app.MaxSpinner.Value,app.SliderSpinner.Value,app.ScXYdataCheckBox.Value);        
            end
            hold(app.scatterXdata,'off')
            if isempty(app.BKGylims)==0
                
                app.scatterXdata.YLim=app.BKGylims
                app.scatterXdata.XLim=app.BKGxlims
                
            end     
% 
% a=findall(app.XProfile,'Type','ConstantLine')
%             delete(a)
%             
%                  switch app.ChannelButtonGroup.SelectedObject.Text
%                     
%                     case 'UG'
%                         imgDATA1=app.DATA.UG;
%                         imgplot=app.DATA.roi1plotG
%                     case 'UR'
%                         imgDATA1=app.DATA.UR;
%                         imgplot=app.DATA.roi1plotR
%              end
%              
%              
%             
%             
%             %             if app.BinTSpinner.Value==1
%            imgXData1=app.DATA.XData;
%             imgYData1=app.DATA.YData;
%             imgTData1=app.DATA.TData;
%          
%             app.timepoint=app.Slider.Value
%              timepoint2=uint16(app.timepoint/app.DATA.TData(2)-app.DATA.TData(1));
%        if timepoint2==0
%            timepoint2=1
%        end
%              imagesc(app.MainImageAx,imgDATA1(:,:,timepoint2),"YData",imgYData1,"XData",imgXData1);
%                   plot(app.XProfile,imgplot,'XData',imgTData1);
%             axis(app.XProfile,'tight');
%             app.XProfile.XLim=[0.015 max(imgTData1,[],"all")]
%             app.xline3d=xline(app.XProfile,app.timepoint)
if app.DATA.file=="FF"
% app.Display3D
end
        end

        % Callback function: SliderSpinner, SliderSpinner
        function changeslid(app, event)
%        try
       dt=app.DATA.TData(2)-app.DATA.TData(1);
       Tindex=app.DATA.TData>app.SliderSpinner.Value-dt & app.DATA.TData<app.SliderSpinner.Value+dt;
       ind=1:1:size(app.DATA.TData,2);
       val=min(ind(Tindex));

       if app.DATA.Type=="FF"
       if app.GreenChButton.Value==1
       [~,app.imgDATA,app.imgTData,app.imgYData,app.imgXData]=app.DATA.FF_Data_2D(val,1,app.MainImageAx,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,viridis);
       else
       [~,app.imgDATA,app.imgTData,app.imgYData,app.imgXData]=app.DATA.FF_Data_2D(val,2,app.MainImageAx,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,viridis);
       end
       elseif app.DATA.Type=="Line2"
   if app.bkgUG.Value==1
                app.scatterXdataonBKG=app.DATA.DisplayBKG(1,app.scatterXdata); %Green channel
            elseif app.bkgUG.Value==2
                app.scatterXdataonBKG=app.DATA.DisplayBKG(2,app.scatterXdata); %red channel
            elseif app.bkgUG.Value==3
                 app.scatterXdataonBKG=app.DATA.DisplayBKG(3,app.scatterXdata); % TiR channel
           end
            
            
            
            hold(app.scatterXdata,'on')
            switch app.DisplayPatternButton.Value
                case 0
                    delete(app.patterndisp);
                case 1
                    app.patterndisp=app.DATA.Scatter_Scanline_on_Image(app.scatterXdata,app.MinSpinner.Value,app.MaxSpinner.Value,val,app.ScXYdataCheckBox.Value);        
            end
            hold(app.scatterXdata,'off');
            if isempty(app.BKGylims)==0
                
                app.scatterXdata.YLim=app.BKGylims;
                app.scatterXdata.XLim=app.BKGxlims;
                
            end    
       end
%         end
        end

        % Callback function
        function testbutton(app, event)
            data = app.HTML.Data;
            disp(data);
        end

        % Button pushed function: SurfaceFittingAppButton
        function helperapps(app, event)
                    app.FitDatadisp=SurfaceFit_Data_2021b         
        end

        % Callback function
        function FemtoROIselect(app, event)
           MaxX=uint16(app.DATA.scanline.roi(app.OperationsListBox.Value,2)/app.DATA.samples)
           if MaxX>size(app.imgDATA,1)
            app.MaxSpinner.Value=size(app.imgDATA,1)
           else
           app.MaxSpinner.Value=double(MaxX)
           end
           
           if  app.OperationsListBox.Value==1
               app.MinSpinner.Value=1
           else
             app.MinSpinner.Value=double(uint16(app.DATA.scanline.roi(app.OperationsListBox.Value,1)/app.DATA.samples))
           end
           app.change_pattern
        end

        % Callback function
        function savetraces(app, event)
           export=event.Source.Text
            switch export
                case 'Export All'
            data2save=app.tracedatastore;
                case 'Export Current'
            data2save =app.tracedatastore(app.traceindices(1))
            end
%                 [filename, pathname, filterindex] = uiputfile({'*.FGUI','Fiji-GUI Files (*.FGUI)'});
%                 savename=cat(2,pathname,filename);
%                 if size(data2save,2)>size(data2save,1)==1
%                    data2save=transpose(data2save)
%                 end
%                 
%                 save(savename, 'data2save' );
                
                 h = findobj('Tag','Gui1');
                 h.RunningAppInstance.Adddataset(transpose(data2save))

                
        end

        % Callback function
        function reset_circ_spinner(app, event)
            app.CircSpinner.Value=0
        end

        % Callback function
        function Plot_2D_location(app, event)
            
            Img_sp2imgtile(1)=findall(app.sp2imgtile1,'Type','Image')
            Img_sp2imgtile(2)=findall(app.sp2imgtile2,'Type','Image')
            Img_sp2imgtile(3)=findall(app.sp2imgtile3,'Type','Image')
            Img_sp2imgtile(4)=findall(app.sp2imgtile4,'Type','Image')
            Img_sp2imgtile(5)=findall(app.sp2imgtile5,'Type','Image')         
%      
for i=1:size(Img_sp2imgtile,2)
    
xsize=size(Img_sp2imgtile(1, i).CData,2);ysize=size(Img_sp2imgtile(1, i).CData,1)
MapData(1,i)=mat2cell(Img_sp2imgtile(1, i).CData,ysize,xsize);
MapXData(1,i)=mat2cell(Img_sp2imgtile(1, i).XData,1);
MapYData(1,i)=mat2cell(Img_sp2imgtile(1, i).YData,1);
end
        
            h = findobj('Tag','Gui1');
            peaksDATA.metainfo{1,1}=app.DATA.Index;
            peaksDATA.metainfo{1,2}=app.DATA.comment;
            peaksDATA.metainfo{1,3}=get(app.XProfile,'Children');
            peaksDATA.metainfo{1,4}=get(app.ephysAx,'Children');
            peaksDATA.metainfo{1,5}=h.RunningAppInstance.DateDatePicker.Value;
            peaksDATA.metainfo{1,6}=datetime("now");
            peaksDATA.metainfo{1,7}=h.RunningAppInstance.SliceNumber.Value;
            peaksDATA.metainfo{1,8}=h.RunningAppInstance.CellNo.Value;
            peaksDATA.metainfo{1,9}=h.RunningAppInstance.BoutonNo.Value;
            peaksDATA.metainfo{1,10}=h.RunningAppInstance.SensorDropDown.Value
            peaksDATA.metainfo{1,11}=h.RunningAppInstance.ScanTypeDropDown.Value;
            peaksDATA.metainfo{1,12}=h.RunningAppInstance.EventType.Value;
            peaksDATA.metainfo{1,13}=app.DATA.linetime;
            peaksDATA.metainfo{1,14}=h.RunningAppInstance.Structure.Value;
            peaksDATA.metainfo{1,15}=h.RunningAppInstance.MinIntervalsEditField.Value;
            peaksDATA.metainfo{1,16}=h.RunningAppInstance.ConditionEditField.Value;
            
            [twoD_EventData]=Event_Data(peaksDATA,[],1,MapData,MapXData,MapYData,app.Switch.Value)  
            h.RunningAppInstance.Datastore_class(h.RunningAppInstance.Data_Selection,1).EventData(end+1,1)=twoD_EventData
            h.RunningAppInstance.Datastore_class(h.RunningAppInstance.Data_Selection,1).EventData.findComment(h.RunningAppInstance.EventsListBox)
        end

        % Menu selected function: cividisMenu, hotMenu, infernoMenu, 
        % ...and 4 other components
        function defaultColorMap(app, event)
          for i=1:size(app.ColourMapsMenu.Children,1)
                    app.ColourMapsMenu.Children(i).Checked='off';
          end 
          eval(sprintf('app.ImageViewUIFigure.Colormap=%s',event.Source.Text));
          a=findall(app.ColourMapsMenu.Children,'Text',event.Source.Text)
            a.Checked='on'
        end

        % Button pushed function: Hz_21
        function getpeaksfromEP(app, event)
         threshold=0.7*max(app.DATA.Aux1,[],'all')
            [epks,elocs,ew,ep]=findpeaks(app.DATA.Aux1,app.DATA.eXData,"NPeaks",1,"MinPeakProminence",threshold,'MinPeakWidth',0.1/1000);
            if length(elocs)==4
                AP1=double(uint16(elocs(1)*1000)+5)
%                 AP2=uint16(elocs(2)*1000)+10
%                 AP3=uint16(elocs(3)*1000)+10
%                 AP4=uint16(elocs(4)*1000)+10
                
            end
             app.AP1Spinner.Value=AP1
%                 app.AP2Spinner.Value=double(AP2)
%                 app.AP3Spinner.Value=double(AP3)
%                 app.AP4Spinner.Value=double(AP4)
        end

        % Selection changed function: BKGChannel
        function background_image(app, event)
%             selectedButton = app.BKGChannel.SelectedObject;
             if app.bkgUG.Value==1
                app.scatterXdataonBKG=app.DATA.DisplayBKG(1,app.scatterXdata)
             elseif app.bkgUR.Value==1
                app.scatterXdataonBKG=app.DATA.DisplayBKG(2,app.scatterXdata)
             elseif app.bkgTiR.Value==1
                app.scatterXdataonBKG=app.DATA.DisplayBKG(3,app.scatterXdata)
             end
            
            hold(app.scatterXdata,'on')
            switch app.DisplayPatternButton.Value
                case 0
                    delete(app.patterndisp);
                case 1
                    app.patterndisp=app.DATA.Scatter_Scanline_on_Image(app.scatterXdata,app.MinSpinner.Value,app.MaxSpinner.Value,app.ScanLocationsDisplayedatTimemsSpinner.Value,app.ScXYdataCheckBox.Value);        
            end
            hold(app.scatterXdata,'off')
            if isempty(app.BKGylims)==0
                
                app.scatterXdata.YLim=app.BKGylims
                app.scatterXdata.XLim=app.BKGxlims
                
            end
        end

        % Button pushed function: Prim_Brush
        function brush_Y(app, event)
                  if app.YProf_Brush.Enable=="on"
                     app.YProf_Brush.Enable="off"   
                    elseif app.YProf_Brush.Enable=="off" 
                     app.YProf_Brush.Enable="on"   
                    end  
        end

        % Button pushed function: SButton
        function set_YCursors(app, event)
            %%%%%%%%%%%%%%%%%%
            %   Set Cursors: Sets cursors and determines region by gaussian
            %   fitting
            %
            %
            %
            %%%%%%%%%%%%%%%%%%
            %remove any display elements from axes
            a=findall(app.YProfile, 'Type','ConstantLine');
            delete(a)
            a=findall(app.YProfile, 'Type','Scatter');
            delete(a)
            
            
            try  %get axes data and fit selction with gauss1 curve fitting toolbox
            ind = find(get(app.YProfile.Children, 'BrushData'));
            app.selectedXIndices = logical(get(app.YProfile.Children, 'BrushData'));
            app.selectedXValues=app.YProfile.Children.XData(1,app.selectedXIndices);
            if table2array(app.DATA.Units(1,'Y'))=="Theta(Degrees)"
           
            end
            selectedYValues=app.YProfile.Children.YData(1,app.selectedXIndices);
            fitdata=cat(2,ind.',selectedYValues.');
            [data,fitvalues]=fit(fitdata(:,1),fitdata(:,2),'gauss1',fitoptions('gauss1'));
            minselection=min(ind,[],'all')
            maxselection=max(ind,[],'all')
            data1=struct(data);
            centre=floor(data1.coeffValues{1,2});
            width=floor(data1.coeffValues{1,3});
            app.YProf_Brush.Enable='off'  %disable brush
            plotdata=feval(data,ind);
            hold(app.YProfile,'on')
            plot(plotdata,'XData',ind,'Tag','Display');
            y=[0;0;max(app.DATA.TData,[],'all');max(app.DATA.TData,[],'all')]
            x=[centre-width;centre+width;centre+width;centre-width]
            if table2array(app.DATA.Units(1,'Y'))~="Theta(Degrees)"
            patch(app.MainImageAx,y,x,'red','FaceAlpha',.3,'LineStyle','none','Tag','Display')
            end
            hold(app.MainImageAx,'off')
            hold(app.YProfile,'off')
            answer = questdlg('Fit or Selection?','Data Cropping','Fit','Selection','Neither','Fit')
            if answer=="Selection"
                a=findall(app.MainImageAx,'Tag','Display')
        delete(a) 
        a=findall(app.YProfile,'Tag','Display')
        delete(a) 
            x=[minselection;maxselection;maxselection;minselection]
            y=[0;0;max(app.DATA.TData,[],'all');max(app.DATA.TData,[],'all')]
            patch(app.MainImageAx,y,x,'red','FaceAlpha',.3,'LineStyle','none','Tag','Display')
            hold(app.MainImageAx,'off')
            hold(app.YProfile,'off')
            elseif answer=="Neither"
                return
                  a=findall(app.MainImageAx,'Tag','Display')
        delete(a) 
        a=findall(app.YProfile,'Tag','Display')
        delete(a)   
          end

%             app.MinSpinner.Value=round(min(app.selectedXValues),2)
%             app.MaxSpinner.Value=round(max(app.selectedXValues),2)
%             app.MinSpinner.Value=min;
%             app.MaxSpinner.Value=max;
            
            
            %             selected_mean=mean(app.roi_2_plot(:,app.selectedXIndices),2);
            %             selected_min=min(app.roi_2_plot(:,app.selectedXIndices),[],2);
            %             selected_max=max(app.roi_2_plot(:,app.selectedXIndices),[],2);
            %             selected_std=std(app.roi_2_plot(:,app.selectedXIndices),[],2);
%             app.baseline_cursor_min=round(min(app.selectedXValues),2)%set baseline cursor minimum
%             app.Baseline_Cursor_max=round(max(app.selectedXValues),2)%set baseline cursor maximum
            app.YProf_Brush.Enable='off'  %disable brush
            catch ME
                errordlg(ME.message)
            end
            pause(2)
         a=findall(app.YProfile,'Type','ConstantLine')
        delete(a)   ;clear a 
         a=findall(app.YProfile,'Type','Brushdata')
        delete(a)  ;clear a 
        a=findall(app.MainImageAx,'Tag','Display')
        delete(a)  ;clear a 
        a=findall(app.YProfile,'Tag','Display')
        delete(a)  ;clear a 
        %draw baseline
%         xline(app.YProfile,app.MinSpinner.Value,'--r');
%         xline(app.YProfile,app.MaxSpinner.Value,'--r');
%         hold(app.scatterXdata,'on')
%         scatter(app.scatterXdata,mean(app.DATA.ScX([app.MinSpinner.Value:app.MaxSpinner.Value],:),2),mean(app.DATA.ScY([app.MinSpinner.Value:app.MaxSpinner.Value],:),2),24,"red","filled",'Tag','Display')
% hold(app.scatterXdata,'off')
%         pause(1)
%          a=findall(app.YProfile,'Type','ConstantLine')
%          
%           b=findall(app.scatterXdata,'Tag','Display')
          
       
       
        app.ReturnDATA=copyobj2(app.DATA)
        app.ReturnDATA=app.ReturnDATA.crop_data(1,x(1,1),x(2,1),'ask')
        app.ReturnDATA.scanline.roi=[1;size(app.ReturnDATA.UG,1)]
        app.ReturnDATA.comment=sprintf('LSROI | %s,',app.ReturnDATA.comment);
          a=findall(app.YProfile,'Type','ConstantLine')
        delete(a) 
        clear a
         a=findall(app.YProfile,'Type','Brushdata')
        delete(a)
        clear a
        a=findall(app.MainImgAx,'Tag','Display')
        delete(a) ;clear a
        a=findall(app.YProfile,'Tag','Display')
        delete(a) ;clear a
%            [~,~,~,~,~,~,~,yprof]=app.ReturnDATA.Plot_TData_1D(1,1,app.XProfile,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,1,app.ephysAx,0,[],[]) ;

%             %
%             plot(app.YProfile,yprof);
%             app.YProfile.View=[270,90];
%             app.YProfile.CameraUpVector=[-1 0 0];
%             app.YProfile.XTick=[];
%             app.YProfile.YTick=[];
%             app.YProfile.XLim=[0 size(yprof,1)];
%           
        app.ReturnROIButton.FontColor='red'
app.ReturnROIButton.FontWeight='bold'
        end

        % Value changed function: XSmoothSpinner, YSmoothSpinner
        function XYSmooth(app, event)
            %             DAT=load('template.mat')

            a=findall(app.XProfile,'Type','ConstantLine');
            delete(a);
            a=findall(app.MainImageAx,'Type','ConstantLine');
            delete(a);
            a=findall(app.MainImageAx,'Type','Image');
            delete(a);

            %             h = findobj('Tag','Gui1');
            if app.DATA.Type=="FF"
                try
                    if app.GreenChButton.Value==1
                        [~,app.imgDATA,app.imgDATA,~,~]=app.DATA.FF_Data_2D(app.Slider.Value,1,app.MainImageAx,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,viridis);
                    else
                        [~,app.imgDATA,app.imgDATA,~,~]=app.DATA.FF_Data_2D(app.Slider.Value,2,app.MainImageAx,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,viridis);
                    end
                end
                if app.GreenChButton.Value==1
                    [~,~,~,~,yprof]=app.DATA.Image_LSData_2D(1,[],app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value);
                    [~,~,~,~,~,~,~,~]=app.DATA.Plot_TData_1D(1,1,app.XProfile,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,1,app.ephysAx,0,[],[]);
                else
                    [~,~,~,~,yprof]=app.DATA.Image_LSData_2D(2,[],app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value);
                    [~,~,~,~,~,~,~,~]=app.DATA.Plot_TData_1D(2,1,app.XProfile,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,1,app.ephysAx,0,[],[]) ;
                end

            elseif app.DATA.Type=="Line2"


                if app.GreenChButton.Value==1
                    [~,app.imgDATA,~,~,yprof]=app.DATA.Image_LSData_2D(1,app.MainImageAx,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,[],app.XSmoothSpinner.Value,app.YSmoothSpinner.Value,app.YShiftEditField.Value);
                    [~,~,~,~,~,~,~,~]=app.DATA.Plot_TData_1D(1,1,app.XProfile,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,1,app.ephysAx,0,[],[]);
                else
                    [~,app.imgDATA,~,~,yprof]=app.DATA.Image_LSData_2D(2,app.MainImageAx,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,[],app.XSmoothSpinner.Value,app.YSmoothSpinner.Value,app.YShiftEditField.Value);
                    [~,~,~,~,~,~,~,~]=app.DATA.Plot_TData_1D(2,1,app.XProfile,app.DeltaFF0Button.Value,app.F0StartTimesSpinner.Value,app.F0endTimesSpinner.Value,1,app.ephysAx,0,[],[]) ;
                end
            end


            app.imgXDATA=app.DATA.XData
            app.imgYDATA=app.DATA.YData
            refreshdata
            drawnow
        end

        % Button pushed function: ReturnROIButton
        function returndata(app, event)
            h = findobj('Tag','Gui1');
            h.RunningAppInstance.Adddataset(app.ReturnDATA);
             app.ReturnROIButton.FontColor='black';
app.ReturnROIButton.FontWeight='normal';
app.ReturnDATA=[];
        end

        % Button pushed function: YShiftButton
        function returnshifted(app, event)
            DATA=copyobj2(app.DATA);
            newdata=DATA.Shift_data(1,app.YShiftEditField.Value,1)
            h = findobj('Tag','Gui1');
            h.RunningAppInstance.Adddataset(newdata); 
        end

        % Menu selected function: ReturnCroppedDataMenu
        function return_crop(app, event)
            DATA=copyobj2(app.DATA);
            app.ReturnDATA=DATA.crop_data(1,app.MinSpinner.Value,app.MaxSpinner.Value,'just do')
            app.ReturnDATA.comment=sprintf('Crop |%s',app.ReturnDATA.comment);
            app.ReturnROIButton.FontColor='black';
            app.ReturnROIButton.FontWeight='normal';
            app.ReturnDATA=[];
        end

        % Callback function
        function pol(app, event)
            
        end

        % Button pushed function: ClearButton
        function clear(app, event)
            delete(app.currentROI);
        end

        % Button pushed function: Drawassist
        function drawassist(app, event)
            app.currentROI=drawassisted(app.scatterXdata);
        end

        % Button pushed function: GOButton
        function Operations(app, event)
            if app.MeasureButton.Value==1
              ax=app.MainImageAx;
            elseif app.MeasureButton.Value==0
              ax=app.scatterXdata;
            end
            switch app.OperationsListBox.Value
            
                case "Copy Mat"
                    data=zeros(size(ax.Children.CData)+1)
                    data(2:end,2:end)=ax.Children.CData
                    if app.MeasureButton.Value==1
                    data(2:end,1)=ax.Children.YData.'
                    data(1,2:end)=ax.Children.XData
                    else
                    data(2:end,1)=ax.Children.YData
                    data(1,2:end)=ax.Children.XData.'
                    end
                    data(1,1)=nan;
                    num2clip(data)
                case "Colour Bar"
                    try
                    colorbar(ax,'off')
                    end
                    col=colorbar(ax,'east');
                    col.Color=[1 1 1]
                case "Export 2 Fig"
%                     copyobj(app.MainImageAx,figure)
                    copygraphics(ax,'BackgroundColor','none','Resolution',300,'ContentType','vector');
                case "Mat 2 Origin"
                    data=zeros(size(ax.Children.CData)+1)
                    data(2:end,2:end)=ax.Children.CData
                    data(2:end,1)=ax.Children.YData.'
                    data(1,2:end)=ax.Children.XData
                    data(1,1)=nan;
                    MATLABCallOrigin(data,'dataname','Raster')

            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create ImageViewUIFigure and hide until all components are created
            app.ImageViewUIFigure = uifigure('Visible', 'off');
            app.ImageViewUIFigure.Position = [100 100 1127 736];
            app.ImageViewUIFigure.Name = 'ImageView';
            app.ImageViewUIFigure.HandleVisibility = 'on';
            app.ImageViewUIFigure.Tag = 'Gui2';

            % Create PlottingMenu
            app.PlottingMenu = uimenu(app.ImageViewUIFigure);
            app.PlottingMenu.Text = 'Plotting/       ';

            % Create GetVerticalProfileXMenu
            app.GetVerticalProfileXMenu = uimenu(app.PlottingMenu);
            app.GetVerticalProfileXMenu.MenuSelectedFcn = createCallbackFcn(app, @mainAxVert, true);
            app.GetVerticalProfileXMenu.Text = 'Get Vertical Profile (X)';

            % Create GetHorizontalProfileYMenu
            app.GetHorizontalProfileYMenu = uimenu(app.PlottingMenu);
            app.GetHorizontalProfileYMenu.MenuSelectedFcn = createCallbackFcn(app, @HorizontalProfile, true);
            app.GetHorizontalProfileYMenu.Text = 'Get Horizontal Profile (Y)';

            % Create ClearLinesMenu_2
            app.ClearLinesMenu_2 = uimenu(app.PlottingMenu);
            app.ClearLinesMenu_2.MenuSelectedFcn = createCallbackFcn(app, @clearlines, true);
            app.ClearLinesMenu_2.Text = 'Clear Lines';

            % Create SendtodataMenu_2
            app.SendtodataMenu_2 = uimenu(app.PlottingMenu);
            app.SendtodataMenu_2.MenuSelectedFcn = createCallbackFcn(app, @todata_checkmain, true);
            app.SendtodataMenu_2.Text = 'Send to data';

            % Create OptionsMenu
            app.OptionsMenu = uimenu(app.ImageViewUIFigure);
            app.OptionsMenu.Text = 'Options';

            % Create ColourMapsMenu
            app.ColourMapsMenu = uimenu(app.OptionsMenu);
            app.ColourMapsMenu.Text = 'ColourMaps';

            % Create parulaMenu
            app.parulaMenu = uimenu(app.ColourMapsMenu);
            app.parulaMenu.MenuSelectedFcn = createCallbackFcn(app, @defaultColorMap, true);
            app.parulaMenu.Text = 'parula';

            % Create hotMenu
            app.hotMenu = uimenu(app.ColourMapsMenu);
            app.hotMenu.MenuSelectedFcn = createCallbackFcn(app, @defaultColorMap, true);
            app.hotMenu.Text = 'hot';

            % Create viridisMenu
            app.viridisMenu = uimenu(app.ColourMapsMenu);
            app.viridisMenu.MenuSelectedFcn = createCallbackFcn(app, @defaultColorMap, true);
            app.viridisMenu.Text = 'viridis';

            % Create cividisMenu
            app.cividisMenu = uimenu(app.ColourMapsMenu);
            app.cividisMenu.MenuSelectedFcn = createCallbackFcn(app, @defaultColorMap, true);
            app.cividisMenu.Text = 'cividis';

            % Create plasmaMenu
            app.plasmaMenu = uimenu(app.ColourMapsMenu);
            app.plasmaMenu.MenuSelectedFcn = createCallbackFcn(app, @defaultColorMap, true);
            app.plasmaMenu.Text = 'plasma';

            % Create infernoMenu
            app.infernoMenu = uimenu(app.ColourMapsMenu);
            app.infernoMenu.MenuSelectedFcn = createCallbackFcn(app, @defaultColorMap, true);
            app.infernoMenu.Text = 'inferno';

            % Create twilightMenu
            app.twilightMenu = uimenu(app.ColourMapsMenu);
            app.twilightMenu.MenuSelectedFcn = createCallbackFcn(app, @defaultColorMap, true);
            app.twilightMenu.Text = 'twilight';

            % Create Panel
            app.Panel = uipanel(app.ImageViewUIFigure);
            app.Panel.Position = [6 349 639 384];

            % Create FemtoXROIsPanel
            app.FemtoXROIsPanel = uipanel(app.ImageViewUIFigure);
            app.FemtoXROIsPanel.Title = 'Femto X ROIs ';
            app.FemtoXROIsPanel.Position = [498 5 149 114];

            % Create XSmoothSpinnerLabel
            app.XSmoothSpinnerLabel = uilabel(app.FemtoXROIsPanel);
            app.XSmoothSpinnerLabel.HorizontalAlignment = 'right';
            app.XSmoothSpinnerLabel.Position = [9 33 58 22];
            app.XSmoothSpinnerLabel.Text = 'X Smooth';

            % Create XSmoothSpinner
            app.XSmoothSpinner = uispinner(app.FemtoXROIsPanel);
            app.XSmoothSpinner.Limits = [0 Inf];
            app.XSmoothSpinner.ValueChangedFcn = createCallbackFcn(app, @XYSmooth, true);
            app.XSmoothSpinner.Position = [81 33 49 22];

            % Create YSmoothSpinnerLabel
            app.YSmoothSpinnerLabel = uilabel(app.FemtoXROIsPanel);
            app.YSmoothSpinnerLabel.HorizontalAlignment = 'right';
            app.YSmoothSpinnerLabel.Position = [9 6 58 22];
            app.YSmoothSpinnerLabel.Text = 'Y Smooth';

            % Create YSmoothSpinner
            app.YSmoothSpinner = uispinner(app.FemtoXROIsPanel);
            app.YSmoothSpinner.Limits = [0 Inf];
            app.YSmoothSpinner.ValueChangedFcn = createCallbackFcn(app, @XYSmooth, true);
            app.YSmoothSpinner.Position = [81 6 49 22];

            % Create ImageNormalisationPanel
            app.ImageNormalisationPanel = uipanel(app.ImageViewUIFigure);
            app.ImageNormalisationPanel.Title = 'Image Normalisation';
            app.ImageNormalisationPanel.Position = [108 5 288 114];

            % Create F0StartTimesSpinnerLabel
            app.F0StartTimesSpinnerLabel = uilabel(app.ImageNormalisationPanel);
            app.F0StartTimesSpinnerLabel.HorizontalAlignment = 'right';
            app.F0StartTimesSpinnerLabel.Position = [103 53 95 22];
            app.F0StartTimesSpinnerLabel.Text = 'F0 Start Time (s)';

            % Create F0StartTimesSpinner
            app.F0StartTimesSpinner = uispinner(app.ImageNormalisationPanel);
            app.F0StartTimesSpinner.Step = 0.025;
            app.F0StartTimesSpinner.Position = [205 53 60 22];
            app.F0StartTimesSpinner.Value = 0.2;

            % Create F0endTimesSpinnerLabel
            app.F0endTimesSpinnerLabel = uilabel(app.ImageNormalisationPanel);
            app.F0endTimesSpinnerLabel.HorizontalAlignment = 'right';
            app.F0endTimesSpinnerLabel.Position = [108 14 90 22];
            app.F0endTimesSpinnerLabel.Text = 'F0 end Time (s)';

            % Create F0endTimesSpinner
            app.F0endTimesSpinner = uispinner(app.ImageNormalisationPanel);
            app.F0endTimesSpinner.Step = 0.025;
            app.F0endTimesSpinner.Position = [205 14 60 22];
            app.F0endTimesSpinner.Value = 0.3;

            % Create Normalisation
            app.Normalisation = uidropdown(app.ImageNormalisationPanel);
            app.Normalisation.Items = {'DF/F0', 'DF0', 'A.U', 'DF/R', 'F/R'};
            app.Normalisation.ItemsData = {'1', '2', '0', '3', '4'};
            app.Normalisation.Position = [11 37 77 29];
            app.Normalisation.Value = '0';

            % Create UnitsLabel
            app.UnitsLabel = uilabel(app.ImageNormalisationPanel);
            app.UnitsLabel.FontName = 'Arial';
            app.UnitsLabel.FontSize = 14;
            app.UnitsLabel.FontWeight = 'bold';
            app.UnitsLabel.Position = [12 65 40 22];
            app.UnitsLabel.Text = 'Units';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.ImageViewUIFigure);
            app.TabGroup.Position = [652 4 474 732];

            % Create BackgroundTab
            app.BackgroundTab = uitab(app.TabGroup);
            app.BackgroundTab.Title = 'Background';

            % Create PatternSpinnerLabel
            app.PatternSpinnerLabel = uilabel(app.BackgroundTab);
            app.PatternSpinnerLabel.HorizontalAlignment = 'right';
            app.PatternSpinnerLabel.Position = [113 388 44 22];
            app.PatternSpinnerLabel.Text = 'Pattern';

            % Create PatternSpinner
            app.PatternSpinner = uispinner(app.BackgroundTab);
            app.PatternSpinner.ValueChangedFcn = createCallbackFcn(app, @plot_pattern, true);
            app.PatternSpinner.Position = [160 388 50 22];
            app.PatternSpinner.Value = 1;

            % Create RefreshButton
            app.RefreshButton = uibutton(app.BackgroundTab, 'push');
            app.RefreshButton.ButtonPushedFcn = createCallbackFcn(app, @start, true);
            app.RefreshButton.Position = [7 356 58 22];
            app.RefreshButton.Text = 'Refresh';

            % Create ScanXCoordinatesPanel
            app.ScanXCoordinatesPanel = uipanel(app.BackgroundTab);
            app.ScanXCoordinatesPanel.Title = 'Scan X Coordinates';
            app.ScanXCoordinatesPanel.Position = [10 417 341 281];

            % Create ScanLocationsDisplayedatTimemsSpinnerLabel
            app.ScanLocationsDisplayedatTimemsSpinnerLabel = uilabel(app.BackgroundTab);
            app.ScanLocationsDisplayedatTimemsSpinnerLabel.HorizontalAlignment = 'center';
            app.ScanLocationsDisplayedatTimemsSpinnerLabel.WordWrap = 'on';
            app.ScanLocationsDisplayedatTimemsSpinnerLabel.Position = [373 532 88 54];
            app.ScanLocationsDisplayedatTimemsSpinnerLabel.Text = 'Scan Locations Displayed at Time (ms) ';

            % Create ScanLocationsDisplayedatTimemsSpinner
            app.ScanLocationsDisplayedatTimemsSpinner = uispinner(app.BackgroundTab);
            app.ScanLocationsDisplayedatTimemsSpinner.ValueChangingFcn = createCallbackFcn(app, @SliderValueChanging, true);
            app.ScanLocationsDisplayedatTimemsSpinner.Limits = [1 Inf];
            app.ScanLocationsDisplayedatTimemsSpinner.Position = [390 511 62 22];
            app.ScanLocationsDisplayedatTimemsSpinner.Value = 20;

            % Create BKGChannel
            app.BKGChannel = uibuttongroup(app.BackgroundTab);
            app.BKGChannel.SelectionChangedFcn = createCallbackFcn(app, @background_image, true);
            app.BKGChannel.Position = [360 614 105 82];

            % Create bkgUG
            app.bkgUG = uitogglebutton(app.BKGChannel);
            app.bkgUG.Text = 'Green Channel';
            app.bkgUG.Position = [5 56 97 22];
            app.bkgUG.Value = true;

            % Create bkgUR
            app.bkgUR = uitogglebutton(app.BKGChannel);
            app.bkgUR.Text = 'Red Channel';
            app.bkgUR.Position = [5 31 97 22];

            % Create bkgTiR
            app.bkgTiR = uitogglebutton(app.BKGChannel);
            app.bkgTiR.Text = 'TiR Channel';
            app.bkgTiR.Position = [5 7 97 22];

            % Create DisplayPatternButton
            app.DisplayPatternButton = uibutton(app.BackgroundTab, 'state');
            app.DisplayPatternButton.ValueChangedFcn = createCallbackFcn(app, @change_pattern, true);
            app.DisplayPatternButton.Text = 'Display Pattern';
            app.DisplayPatternButton.Position = [9 388 96 22];
            app.DisplayPatternButton.Value = true;

            % Create SetXYLimitsButton
            app.SetXYLimitsButton = uibutton(app.BackgroundTab, 'state');
            app.SetXYLimitsButton.ValueChangedFcn = createCallbackFcn(app, @holdBKG, true);
            app.SetXYLimitsButton.Text = 'Set X/Y Limits';
            app.SetXYLimitsButton.Position = [364 593 96 22];

            % Create elipse_select
            app.elipse_select = uibutton(app.BackgroundTab, 'push');
            app.elipse_select.ButtonPushedFcn = createCallbackFcn(app, @elipseROI, true);
            app.elipse_select.Icon = 'roi_ellip_icon.png';
            app.elipse_select.Position = [360 472 46 22];
            app.elipse_select.Text = '';

            % Create RectangleROI
            app.RectangleROI = uibutton(app.BackgroundTab, 'push');
            app.RectangleROI.ButtonPushedFcn = createCallbackFcn(app, @rectangleROI, true);
            app.RectangleROI.Icon = 'roi_rect_icon.png';
            app.RectangleROI.Position = [360 445 46 22];
            app.RectangleROI.Text = '';

            % Create Polyroi
            app.Polyroi = uibutton(app.BackgroundTab, 'push');
            app.Polyroi.ButtonPushedFcn = createCallbackFcn(app, @polygon, true);
            app.Polyroi.Icon = 'PolyShape.png';
            app.Polyroi.Position = [360 419 46 22];
            app.Polyroi.Text = '';

            % Create ClearButton
            app.ClearButton = uibutton(app.BackgroundTab, 'push');
            app.ClearButton.ButtonPushedFcn = createCallbackFcn(app, @clear, true);
            app.ClearButton.Position = [412 472 40 22];
            app.ClearButton.Text = 'Clear';

            % Create Drawassist
            app.Drawassist = uibutton(app.BackgroundTab, 'push');
            app.Drawassist.ButtonPushedFcn = createCallbackFcn(app, @drawassist, true);
            app.Drawassist.Icon = 'Freehand.png';
            app.Drawassist.Position = [411 445 40 22];
            app.Drawassist.Text = '';

            % Create OperationsListBoxLabel
            app.OperationsListBoxLabel = uilabel(app.BackgroundTab);
            app.OperationsListBoxLabel.HorizontalAlignment = 'right';
            app.OperationsListBoxLabel.FontSize = 14;
            app.OperationsListBoxLabel.FontWeight = 'bold';
            app.OperationsListBoxLabel.Position = [9 326 79 22];
            app.OperationsListBoxLabel.Text = 'Operations';

            % Create OperationsListBox
            app.OperationsListBox = uilistbox(app.BackgroundTab);
            app.OperationsListBox.Items = {'Copy Mat', 'Colour Bar', 'Export 2 Fig'};
            app.OperationsListBox.Position = [15 224 90 99];
            app.OperationsListBox.Value = 'Copy Mat';

            % Create GOButton
            app.GOButton = uibutton(app.BackgroundTab, 'push');
            app.GOButton.ButtonPushedFcn = createCallbackFcn(app, @Operations, true);
            app.GOButton.Position = [107 224 102 24];
            app.GOButton.Text = 'GO';

            % Create DataButtonGroup
            app.DataButtonGroup = uibuttongroup(app.BackgroundTab);
            app.DataButtonGroup.Title = 'Data';
            app.DataButtonGroup.Position = [109 254 100 69];

            % Create MeasureButton
            app.MeasureButton = uiradiobutton(app.DataButtonGroup);
            app.MeasureButton.Text = 'Measure';
            app.MeasureButton.Position = [7 23 68 22];
            app.MeasureButton.Value = true;

            % Create BackgroundButton
            app.BackgroundButton = uiradiobutton(app.DataButtonGroup);
            app.BackgroundButton.Text = 'Background';
            app.BackgroundButton.Position = [7 1 87 22];

            % Create ListSelectorTwoPane
            app.ListSelectorTwoPane = wt.ListSelectorTwoPane(app.BackgroundTab);
            app.ListSelectorTwoPane.Position = [322 283 146 127];

            % Create Spiral2ImgTab
            app.Spiral2ImgTab = uitab(app.TabGroup);
            app.Spiral2ImgTab.Title = 'Spiral 2 Img';

            % Create Sp2ImgPanel
            app.Sp2ImgPanel = uipanel(app.Spiral2ImgTab);
            app.Sp2ImgPanel.Position = [9 316 386 382];

            % Create Button
            app.Button = uibutton(app.Spiral2ImgTab, 'push');
            app.Button.ButtonPushedFcn = createCallbackFcn(app, @setclims, true);
            app.Button.Position = [37 146 17 22];
            app.Button.Text = '>';

            % Create RunSpiral2ImageButton
            app.RunSpiral2ImageButton = uibutton(app.Spiral2ImgTab, 'push');
            app.RunSpiral2ImageButton.ButtonPushedFcn = createCallbackFcn(app, @getmapsfrompoint, true);
            app.RunSpiral2ImageButton.FontWeight = 'bold';
            app.RunSpiral2ImageButton.Position = [158 287 124 22];
            app.RunSpiral2ImageButton.Text = 'Run Spiral 2 Image';

            % Create Get2DDecayProfilesButton
            app.Get2DDecayProfilesButton = uibutton(app.Spiral2ImgTab, 'push');
            app.Get2DDecayProfilesButton.ButtonPushedFcn = createCallbackFcn(app, @getpeaklocs, true);
            app.Get2DDecayProfilesButton.FontWeight = 'bold';
            app.Get2DDecayProfilesButton.Position = [9 287 140 22];
            app.Get2DDecayProfilesButton.Text = 'Get 2D Decay Profiles';

            % Create AutoCheckBox
            app.AutoCheckBox = uicheckbox(app.Spiral2ImgTab);
            app.AutoCheckBox.Text = 'Auto';
            app.AutoCheckBox.Position = [301 287 47 22];
            app.AutoCheckBox.Value = true;

            % Create PeakdTmsSpinnerLabel
            app.PeakdTmsSpinnerLabel = uilabel(app.Spiral2ImgTab);
            app.PeakdTmsSpinnerLabel.HorizontalAlignment = 'right';
            app.PeakdTmsSpinnerLabel.Position = [14 224 78 22];
            app.PeakdTmsSpinnerLabel.Text = 'Peak dT (ms)';

            % Create PeakdTmsSpinner
            app.PeakdTmsSpinner = uispinner(app.Spiral2ImgTab);
            app.PeakdTmsSpinner.Limits = [0 Inf];
            app.PeakdTmsSpinner.Position = [94 224 59 22];
            app.PeakdTmsSpinner.Value = 10;

            % Create CMaxSpinnerLabel
            app.CMaxSpinnerLabel = uilabel(app.Spiral2ImgTab);
            app.CMaxSpinnerLabel.HorizontalAlignment = 'right';
            app.CMaxSpinnerLabel.Position = [56 146 37 22];
            app.CMaxSpinnerLabel.Text = 'CMax';

            % Create CMaxSpinner
            app.CMaxSpinner = uispinner(app.Spiral2ImgTab);
            app.CMaxSpinner.Step = 0.05;
            app.CMaxSpinner.Limits = [0 Inf];
            app.CMaxSpinner.ValueChangedFcn = createCallbackFcn(app, @changeclims, true);
            app.CMaxSpinner.Position = [95 146 59 22];
            app.CMaxSpinner.Value = 0.5;

            % Create AP1SpinnerLabel
            app.AP1SpinnerLabel = uilabel(app.Spiral2ImgTab);
            app.AP1SpinnerLabel.HorizontalAlignment = 'right';
            app.AP1SpinnerLabel.Position = [-1 254 28 22];
            app.AP1SpinnerLabel.Text = 'AP1';

            % Create AP1Spinner
            app.AP1Spinner = uispinner(app.Spiral2ImgTab);
            app.AP1Spinner.ValueChangedFcn = createCallbackFcn(app, @getmapsfrompoint, true);
            app.AP1Spinner.Position = [32 254 56 22];
            app.AP1Spinner.Value = 300;

            % Create AP2Label
            app.AP2Label = uilabel(app.Spiral2ImgTab);
            app.AP2Label.HorizontalAlignment = 'right';
            app.AP2Label.Position = [88 255 28 22];
            app.AP2Label.Text = 'AP2';

            % Create AP2Spinner
            app.AP2Spinner = uispinner(app.Spiral2ImgTab);
            app.AP2Spinner.ValueChangedFcn = createCallbackFcn(app, @getmapsfrompoint, true);
            app.AP2Spinner.Position = [121 255 56 22];
            app.AP2Spinner.Value = 350;

            % Create AP3Label
            app.AP3Label = uilabel(app.Spiral2ImgTab);
            app.AP3Label.HorizontalAlignment = 'right';
            app.AP3Label.Position = [176 255 28 22];
            app.AP3Label.Text = 'AP3';

            % Create AP3Spinner
            app.AP3Spinner = uispinner(app.Spiral2ImgTab);
            app.AP3Spinner.ValueChangedFcn = createCallbackFcn(app, @getmapsfrompoint, true);
            app.AP3Spinner.Position = [209 255 56 22];
            app.AP3Spinner.Value = 400;

            % Create AP4Label
            app.AP4Label = uilabel(app.Spiral2ImgTab);
            app.AP4Label.HorizontalAlignment = 'right';
            app.AP4Label.Position = [265 255 28 22];
            app.AP4Label.Text = 'AP4';

            % Create AP4Spinner
            app.AP4Spinner = uispinner(app.Spiral2ImgTab);
            app.AP4Spinner.RoundFractionalValues = 'on';
            app.AP4Spinner.ValueChangedFcn = createCallbackFcn(app, @getmapsfrompoint, true);
            app.AP4Spinner.Position = [299 256 56 22];
            app.AP4Spinner.Value = 450;

            % Create Hz_10
            app.Hz_10 = uibutton(app.Spiral2ImgTab, 'push');
            app.Hz_10.ButtonPushedFcn = createCallbackFcn(app, @autoAPsetting, true);
            app.Hz_10.IconAlignment = 'center';
            app.Hz_10.FontSize = 11;
            app.Hz_10.Position = [322 194 59 22];
            app.Hz_10.Text = '10Hz APs';

            % Create Hz_20
            app.Hz_20 = uibutton(app.Spiral2ImgTab, 'push');
            app.Hz_20.ButtonPushedFcn = createCallbackFcn(app, @autoAPsetting20, true);
            app.Hz_20.IconAlignment = 'center';
            app.Hz_20.FontSize = 11;
            app.Hz_20.Position = [394 194 57 22];
            app.Hz_20.Text = '20Hz APs';

            % Create BasedTmsSpinnerLabel
            app.BasedTmsSpinnerLabel = uilabel(app.Spiral2ImgTab);
            app.BasedTmsSpinnerLabel.HorizontalAlignment = 'right';
            app.BasedTmsSpinnerLabel.Position = [14 198 78 22];
            app.BasedTmsSpinnerLabel.Text = 'Base dT (ms)';

            % Create BasedTmsSpinner
            app.BasedTmsSpinner = uispinner(app.Spiral2ImgTab);
            app.BasedTmsSpinner.Limits = [0 Inf];
            app.BasedTmsSpinner.Position = [94 198 59 22];
            app.BasedTmsSpinner.Value = 10;

            % Create BaseoffsetmsSpinnerLabel
            app.BaseoffsetmsSpinnerLabel = uilabel(app.Spiral2ImgTab);
            app.BaseoffsetmsSpinnerLabel.HorizontalAlignment = 'right';
            app.BaseoffsetmsSpinnerLabel.Position = [0 173 93 22];
            app.BaseoffsetmsSpinnerLabel.Text = 'Base offset (ms)';

            % Create BaseoffsetmsSpinner
            app.BaseoffsetmsSpinner = uispinner(app.Spiral2ImgTab);
            app.BaseoffsetmsSpinner.Limits = [0 Inf];
            app.BaseoffsetmsSpinner.Position = [95 173 59 22];
            app.BaseoffsetmsSpinner.Value = 5;

            % Create Switch
            app.Switch = uiswitch(app.Spiral2ImgTab, 'slider');
            app.Switch.Items = {'Pos2Img', 'Sp2Img'};
            app.Switch.Orientation = 'vertical';
            app.Switch.Position = [420 640 20 45];
            app.Switch.Value = 'Sp2Img';

            % Create RunfitButton
            app.RunfitButton = uibutton(app.Spiral2ImgTab, 'push');
            app.RunfitButton.ButtonPushedFcn = createCallbackFcn(app, @run_surffit, true);
            app.RunfitButton.Position = [408 579 52 32];
            app.RunfitButton.Text = 'Run fit';

            % Create SurfaceFittingAppButton
            app.SurfaceFittingAppButton = uibutton(app.Spiral2ImgTab, 'push');
            app.SurfaceFittingAppButton.ButtonPushedFcn = createCallbackFcn(app, @helperapps, true);
            app.SurfaceFittingAppButton.WordWrap = 'on';
            app.SurfaceFittingAppButton.Position = [407 509 55 55];
            app.SurfaceFittingAppButton.Text = 'Surface Fitting App';

            % Create AutoFitCheckBox
            app.AutoFitCheckBox = uicheckbox(app.Spiral2ImgTab);
            app.AutoFitCheckBox.Text = 'Auto Fit';
            app.AutoFitCheckBox.Position = [405 480 63 22];

            % Create ScXYdataCheckBox
            app.ScXYdataCheckBox = uicheckbox(app.Spiral2ImgTab);
            app.ScXYdataCheckBox.Text = 'ScX/Y data ';
            app.ScXYdataCheckBox.WordWrap = 'on';
            app.ScXYdataCheckBox.Position = [406 439 58 34];
            app.ScXYdataCheckBox.Value = true;

            % Create TabGroup2
            app.TabGroup2 = uitabgroup(app.Spiral2ImgTab);
            app.TabGroup2.Position = [14 9 251 130];

            % Create PeaksTab
            app.PeaksTab = uitab(app.TabGroup2);
            app.PeaksTab.Title = 'Peaks';

            % Create OneDpeaks
            app.OneDpeaks = uicheckbox(app.PeaksTab);
            app.OneDpeaks.Text = '1D peaks';
            app.OneDpeaks.Position = [7 78 73 22];
            app.OneDpeaks.Value = true;

            % Create ThresholdxSDSpinnerLabel
            app.ThresholdxSDSpinnerLabel = uilabel(app.PeaksTab);
            app.ThresholdxSDSpinnerLabel.HorizontalAlignment = 'right';
            app.ThresholdxSDSpinnerLabel.WordWrap = 'on';
            app.ThresholdxSDSpinnerLabel.Position = [0 51 91 22];
            app.ThresholdxSDSpinnerLabel.Text = 'Threshold (xSD)';

            % Create ThresholdxSDSpinner
            app.ThresholdxSDSpinner = uispinner(app.PeaksTab);
            app.ThresholdxSDSpinner.Step = 0.1;
            app.ThresholdxSDSpinner.Limits = [2 Inf];
            app.ThresholdxSDSpinner.Position = [100 51 64 22];
            app.ThresholdxSDSpinner.Value = 2.5;

            % Create Sp2ImgTab
            app.Sp2ImgTab = uitab(app.TabGroup2);
            app.Sp2ImgTab.Title = 'Sp2Img';

            % Create addBackgroundValueCheckBox
            app.addBackgroundValueCheckBox = uicheckbox(app.Sp2ImgTab);
            app.addBackgroundValueCheckBox.Text = 'add Background Value ';
            app.addBackgroundValueCheckBox.Position = [17 -1 146 22];
            app.addBackgroundValueCheckBox.Value = true;

            % Create ResolutionSpinnerLabel
            app.ResolutionSpinnerLabel = uilabel(app.Sp2ImgTab);
            app.ResolutionSpinnerLabel.HorizontalAlignment = 'right';
            app.ResolutionSpinnerLabel.Position = [15 72 62 22];
            app.ResolutionSpinnerLabel.Text = 'Resolution';

            % Create ResolutionSpinner
            app.ResolutionSpinner = uispinner(app.Sp2ImgTab);
            app.ResolutionSpinner.Step = 0.01;
            app.ResolutionSpinner.Limits = [0 2];
            app.ResolutionSpinner.ValueChangedFcn = createCallbackFcn(app, @resolutionchange, true);
            app.ResolutionSpinner.Position = [80 73 59 22];
            app.ResolutionSpinner.Value = 0.11;

            % Create Smooth2DSpinnerLabel
            app.Smooth2DSpinnerLabel = uilabel(app.Sp2ImgTab);
            app.Smooth2DSpinnerLabel.HorizontalAlignment = 'right';
            app.Smooth2DSpinnerLabel.Position = [14 47 62 22];
            app.Smooth2DSpinnerLabel.Text = 'Smooth2D';

            % Create Smooth2DSpinner
            app.Smooth2DSpinner = uispinner(app.Sp2ImgTab);
            app.Smooth2DSpinner.Limits = [0 Inf];
            app.Smooth2DSpinner.ValueChangedFcn = createCallbackFcn(app, @sp2imgsmoothing, true);
            app.Smooth2DSpinner.Position = [80 47 59 22];
            app.Smooth2DSpinner.Value = 3;

            % Create BackgroundSpinnerLabel
            app.BackgroundSpinnerLabel = uilabel(app.Sp2ImgTab);
            app.BackgroundSpinnerLabel.HorizontalAlignment = 'right';
            app.BackgroundSpinnerLabel.Position = [9 21 70 22];
            app.BackgroundSpinnerLabel.Text = 'Background';

            % Create BackgroundSpinner
            app.BackgroundSpinner = uispinner(app.Sp2ImgTab);
            app.BackgroundSpinner.Step = 0.02;
            app.BackgroundSpinner.Position = [81 21 58 22];

            % Create Pos2ImgTab
            app.Pos2ImgTab = uitab(app.TabGroup2);
            app.Pos2ImgTab.Title = 'Pos2Img';

            % Create I_ScalingSpinnerLabel
            app.I_ScalingSpinnerLabel = uilabel(app.Pos2ImgTab);
            app.I_ScalingSpinnerLabel.HorizontalAlignment = 'right';
            app.I_ScalingSpinnerLabel.Position = [0 72 55 22];
            app.I_ScalingSpinnerLabel.Text = 'I_Scaling';

            % Create I_ScalingSpinner
            app.I_ScalingSpinner = uispinner(app.Pos2ImgTab);
            app.I_ScalingSpinner.Step = 0.025;
            app.I_ScalingSpinner.Limits = [0 1];
            app.I_ScalingSpinner.Position = [58 73 59 22];
            app.I_ScalingSpinner.Value = 0.1;

            % Create BKGSpinnerLabel
            app.BKGSpinnerLabel = uilabel(app.Pos2ImgTab);
            app.BKGSpinnerLabel.HorizontalAlignment = 'right';
            app.BKGSpinnerLabel.Position = [23 48 31 22];
            app.BKGSpinnerLabel.Text = 'BKG';

            % Create BKGSpinner
            app.BKGSpinner = uispinner(app.Pos2ImgTab);
            app.BKGSpinner.Limits = [0 Inf];
            app.BKGSpinner.Position = [58 48 59 22];
            app.BKGSpinner.Value = 200;

            % Create PsfwdSpinnerLabel
            app.PsfwdSpinnerLabel = uilabel(app.Pos2ImgTab);
            app.PsfwdSpinnerLabel.HorizontalAlignment = 'right';
            app.PsfwdSpinnerLabel.Position = [19 21 38 22];
            app.PsfwdSpinnerLabel.Text = 'Psfwd';

            % Create PsfwdSpinner
            app.PsfwdSpinner = uispinner(app.Pos2ImgTab);
            app.PsfwdSpinner.Step = 0.1;
            app.PsfwdSpinner.Limits = [0.25 0.5];
            app.PsfwdSpinner.Position = [59 21 58 22];
            app.PsfwdSpinner.Value = 0.35;

            % Create BoundsTab
            app.BoundsTab = uitab(app.TabGroup2);
            app.BoundsTab.Title = 'Bounds';

            % Create XminEditFieldLabel
            app.XminEditFieldLabel = uilabel(app.BoundsTab);
            app.XminEditFieldLabel.HorizontalAlignment = 'right';
            app.XminEditFieldLabel.Position = [137 80 36 22];
            app.XminEditFieldLabel.Text = 'X min';

            % Create XminEditField
            app.XminEditField = uieditfield(app.BoundsTab, 'numeric');
            app.XminEditField.Position = [188 80 43 22];

            % Create XmaxEditFieldLabel
            app.XmaxEditFieldLabel = uilabel(app.BoundsTab);
            app.XmaxEditFieldLabel.HorizontalAlignment = 'right';
            app.XmaxEditFieldLabel.Position = [133 53 40 22];
            app.XmaxEditFieldLabel.Text = 'X max';

            % Create XmaxEditField
            app.XmaxEditField = uieditfield(app.BoundsTab, 'numeric');
            app.XmaxEditField.Position = [188 53 43 22];

            % Create YminEditFieldLabel
            app.YminEditFieldLabel = uilabel(app.BoundsTab);
            app.YminEditFieldLabel.HorizontalAlignment = 'right';
            app.YminEditFieldLabel.Position = [141 27 33 22];
            app.YminEditFieldLabel.Text = 'Ymin';

            % Create YminEditField
            app.YminEditField = uieditfield(app.BoundsTab, 'numeric');
            app.YminEditField.Position = [189 27 42 22];

            % Create YmaxEditFieldLabel
            app.YmaxEditFieldLabel = uilabel(app.BoundsTab);
            app.YmaxEditFieldLabel.HorizontalAlignment = 'right';
            app.YmaxEditFieldLabel.Position = [139 1 36 22];
            app.YmaxEditFieldLabel.Text = 'Ymax';

            % Create YmaxEditField
            app.YmaxEditField = uieditfield(app.BoundsTab, 'numeric');
            app.YmaxEditField.Position = [190 1 42 22];

            % Create SetBoundsManuallyCheckBox
            app.SetBoundsManuallyCheckBox = uicheckbox(app.BoundsTab);
            app.SetBoundsManuallyCheckBox.Text = 'Set Bounds Manually';
            app.SetBoundsManuallyCheckBox.Position = [5 76 135 22];

            % Create Hz_21
            app.Hz_21 = uibutton(app.Spiral2ImgTab, 'push');
            app.Hz_21.ButtonPushedFcn = createCallbackFcn(app, @getpeaksfromEP, true);
            app.Hz_21.IconAlignment = 'center';
            app.Hz_21.FontSize = 11;
            app.Hz_21.Position = [321 167 130 22];
            app.Hz_21.Text = 'Find First AP time';

            % Create EditField
            app.EditField = uieditfield(app.Spiral2ImgTab, 'text');
            app.EditField.FontColor = [0.8 0.8 0.8];
            app.EditField.Position = [365 257 100 22];
            app.EditField.Value = '[]';

            % Create AdditionalTimesLabel
            app.AdditionalTimesLabel = uilabel(app.Spiral2ImgTab);
            app.AdditionalTimesLabel.FontColor = [0.8 0.8 0.8];
            app.AdditionalTimesLabel.Position = [368 285 94 22];
            app.AdditionalTimesLabel.Text = 'Additional Times';

            % Create Panel_2
            app.Panel_2 = uipanel(app.Spiral2ImgTab);
            app.Panel_2.Position = [170 148 112 89];

            % Create FFBKG_start
            app.FFBKG_start = uieditfield(app.Panel_2, 'numeric');
            app.FFBKG_start.Limits = [0 Inf];
            app.FFBKG_start.Position = [74 40 36 22];
            app.FFBKG_start.Value = 0.1;

            % Create FFBKG_end
            app.FFBKG_end = uieditfield(app.Panel_2, 'numeric');
            app.FFBKG_end.Limits = [0 Inf];
            app.FFBKG_end.Position = [74 12 35 22];
            app.FFBKG_end.Value = 0.2;

            % Create StartEndTimessLabel
            app.StartEndTimessLabel = uilabel(app.Panel_2);
            app.StartEndTimessLabel.Position = [2 66 112 22];
            app.StartEndTimessLabel.Text = 'Start - End Times(s)';

            % Create FrameScaninImageButton
            app.FrameScaninImageButton = uibutton(app.Panel_2, 'state');
            app.FrameScaninImageButton.Text = 'Frame Scan in Image';
            app.FrameScaninImageButton.WordWrap = 'on';
            app.FrameScaninImageButton.FontWeight = 'bold';
            app.FrameScaninImageButton.Position = [6 5 64 61];
            app.FrameScaninImageButton.Value = true;

            % Create DropDown_2
            app.DropDown_2 = uidropdown(app.Spiral2ImgTab);
            app.DropDown_2.Items = {'DF/F0', 'DF0', 'F', 'F/F0', 'DF/R', 'F/R'};
            app.DropDown_2.Position = [398 384 70 22];
            app.DropDown_2.Value = 'DF/F0';

            % Create NormaliseLabel
            app.NormaliseLabel = uilabel(app.Spiral2ImgTab);
            app.NormaliseLabel.FontSize = 14;
            app.NormaliseLabel.Position = [400 409 69 22];
            app.NormaliseLabel.Text = 'Normalise';

            % Create AlexaasReferenceCheckBox
            app.AlexaasReferenceCheckBox = uicheckbox(app.Spiral2ImgTab);
            app.AlexaasReferenceCheckBox.Text = 'Alexa as Reference';
            app.AlexaasReferenceCheckBox.WordWrap = 'on';
            app.AlexaasReferenceCheckBox.Position = [398 356 78 22];

            % Create DeltaFF0Button
            app.DeltaFF0Button = uibutton(app.Spiral2ImgTab, 'state');
            app.DeltaFF0Button.ValueChangedFcn = createCallbackFcn(app, @setDFF, true);
            app.DeltaFF0Button.Text = 'Delta F/F0';
            app.DeltaFF0Button.FontName = 'Arial';
            app.DeltaFF0Button.FontSize = 13;
            app.DeltaFF0Button.FontWeight = 'bold';
            app.DeltaFF0Button.Position = [377 7 84 27];

            % Create Sp2ImgURTab
            app.Sp2ImgURTab = uitab(app.TabGroup);
            app.Sp2ImgURTab.Title = 'Sp2Img UR';

            % Create Sp2ImgPanel_2
            app.Sp2ImgPanel_2 = uipanel(app.Sp2ImgURTab);
            app.Sp2ImgPanel_2.Position = [13 313 386 382];

            % Create MinSpinnerLabel
            app.MinSpinnerLabel = uilabel(app.ImageViewUIFigure);
            app.MinSpinnerLabel.HorizontalAlignment = 'right';
            app.MinSpinnerLabel.Position = [-2 317 25 22];
            app.MinSpinnerLabel.Text = 'Min';

            % Create MinSpinner
            app.MinSpinner = uispinner(app.ImageViewUIFigure);
            app.MinSpinner.ValueChangedFcn = createCallbackFcn(app, @change_pattern, true);
            app.MinSpinner.Position = [24 317 60 22];
            app.MinSpinner.Value = 1;

            % Create PlotDisplayPanel
            app.PlotDisplayPanel = uipanel(app.ImageViewUIFigure);
            app.PlotDisplayPanel.Position = [85 124 562 188];

            % Create MaxSpinnerLabel
            app.MaxSpinnerLabel = uilabel(app.ImageViewUIFigure);
            app.MaxSpinnerLabel.HorizontalAlignment = 'right';
            app.MaxSpinnerLabel.Position = [-2 292 28 22];
            app.MaxSpinnerLabel.Text = 'Max';

            % Create MaxSpinner
            app.MaxSpinner = uispinner(app.ImageViewUIFigure);
            app.MaxSpinner.ValueChangedFcn = createCallbackFcn(app, @change_pattern, true);
            app.MaxSpinner.Position = [25 292 59 22];
            app.MaxSpinner.Value = 1;

            % Create SetYAxisDisplayLimitstoMinimumMaximumButton
            app.SetYAxisDisplayLimitstoMinimumMaximumButton = uibutton(app.ImageViewUIFigure, 'push');
            app.SetYAxisDisplayLimitstoMinimumMaximumButton.ButtonPushedFcn = createCallbackFcn(app, @minXmax, true);
            app.SetYAxisDisplayLimitstoMinimumMaximumButton.WordWrap = 'on';
            app.SetYAxisDisplayLimitstoMinimumMaximumButton.Position = [3 8 101 68];
            app.SetYAxisDisplayLimitstoMinimumMaximumButton.Text = 'Set Y Axis Display Limits to Minimum-Maximum';

            % Create AutoYCheckBox
            app.AutoYCheckBox = uicheckbox(app.ImageViewUIFigure);
            app.AutoYCheckBox.Text = 'Auto Y';
            app.AutoYCheckBox.Position = [8 128 58 22];
            app.AutoYCheckBox.Value = true;

            % Create AutoRunSpiraltoImageCheckBox
            app.AutoRunSpiraltoImageCheckBox = uicheckbox(app.ImageViewUIFigure);
            app.AutoRunSpiraltoImageCheckBox.Text = 'Auto Run Spiral to Image';
            app.AutoRunSpiraltoImageCheckBox.WordWrap = 'on';
            app.AutoRunSpiraltoImageCheckBox.Position = [8 82 78 42];

            % Create ChannelButtonGroup
            app.ChannelButtonGroup = uibuttongroup(app.ImageViewUIFigure);
            app.ChannelButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @setDFF, true);
            app.ChannelButtonGroup.Title = 'Channel';
            app.ChannelButtonGroup.Position = [400 5 90 114];

            % Create GreenChButton
            app.GreenChButton = uitogglebutton(app.ChannelButtonGroup);
            app.GreenChButton.Text = 'Green Ch.';
            app.GreenChButton.FontWeight = 'bold';
            app.GreenChButton.Position = [8 70 71 19];
            app.GreenChButton.Value = true;

            % Create RedChButton
            app.RedChButton = uitogglebutton(app.ChannelButtonGroup);
            app.RedChButton.Text = 'Red Ch.';
            app.RedChButton.FontWeight = 'bold';
            app.RedChButton.Position = [9 48 71 19];

            % Create ButtonGroup
            app.ButtonGroup = uibuttongroup(app.ChannelButtonGroup);
            app.ButtonGroup.Position = [7 6 55 38];

            % Create Aux1Button
            app.Aux1Button = uiradiobutton(app.ButtonGroup);
            app.Aux1Button.Text = 'Aux 1';
            app.Aux1Button.Position = [4 16 53 22];
            app.Aux1Button.Value = true;

            % Create Aux2Button
            app.Aux2Button = uiradiobutton(app.ButtonGroup);
            app.Aux2Button.Text = 'Aux 2';
            app.Aux2Button.Position = [5 2 53 22];

            % Create Prim_Brush
            app.Prim_Brush = uibutton(app.ImageViewUIFigure, 'push');
            app.Prim_Brush.ButtonPushedFcn = createCallbackFcn(app, @brush_Y, true);
            app.Prim_Brush.Icon = 'Databrush.png';
            app.Prim_Brush.VerticalAlignment = 'top';
            app.Prim_Brush.FontName = 'Arial';
            app.Prim_Brush.FontSize = 11;
            app.Prim_Brush.Tooltip = {'Start Databrush '};
            app.Prim_Brush.Position = [7 251 50 36];
            app.Prim_Brush.Text = '';

            % Create SButton
            app.SButton = uibutton(app.ImageViewUIFigure, 'push');
            app.SButton.ButtonPushedFcn = createCallbackFcn(app, @set_YCursors, true);
            app.SButton.Position = [60 251 20 36];
            app.SButton.Text = 'S';

            % Create ReturnROIButton
            app.ReturnROIButton = uibutton(app.ImageViewUIFigure, 'push');
            app.ReturnROIButton.ButtonPushedFcn = createCallbackFcn(app, @returndata, true);
            app.ReturnROIButton.Position = [6 221 74 22];
            app.ReturnROIButton.Text = 'Return ROI';

            % Create YShiftEditField
            app.YShiftEditField = uieditfield(app.ImageViewUIFigure, 'numeric');
            app.YShiftEditField.ValueChangedFcn = createCallbackFcn(app, @circshift, true);
            app.YShiftEditField.Position = [53 175 29 22];

            % Create YShiftButton
            app.YShiftButton = uibutton(app.ImageViewUIFigure, 'push');
            app.YShiftButton.ButtonPushedFcn = createCallbackFcn(app, @returnshifted, true);
            app.YShiftButton.Position = [4 175 48 22];
            app.YShiftButton.Text = 'YShift';

            % Create AutoReturnButton
            app.AutoReturnButton = uibutton(app.ImageViewUIFigure, 'state');
            app.AutoReturnButton.Text = 'Auto Return';
            app.AutoReturnButton.FontSize = 10;
            app.AutoReturnButton.Position = [6 202 74 16];

            % Create SliderSpinner
            app.SliderSpinner = wt.SliderSpinner(app.ImageViewUIFigure);
            app.SliderSpinner.ValueChangedFcn = createCallbackFcn(app, @changeslid, true);
            app.SliderSpinner.ValueChangingFcn = createCallbackFcn(app, @changeslid, true);
            app.SliderSpinner.Position = [103 302 542 40];

            % Create ContextMenu
            app.ContextMenu = uicontextmenu(app.ImageViewUIFigure);

            % Create CopydataMenu
            app.CopydataMenu = uimenu(app.ContextMenu);
            app.CopydataMenu.Text = 'Copy data';

            % Create BKGMenu
            app.BKGMenu = uimenu(app.CopydataMenu);
            app.BKGMenu.MenuSelectedFcn = createCallbackFcn(app, @copymapdata, true);
            app.BKGMenu.Text = 'BKG';

            % Create AP1Menu
            app.AP1Menu = uimenu(app.CopydataMenu);
            app.AP1Menu.MenuSelectedFcn = createCallbackFcn(app, @copymapdata, true);
            app.AP1Menu.Text = 'AP1';

            % Create AP2Menu
            app.AP2Menu = uimenu(app.CopydataMenu);
            app.AP2Menu.MenuSelectedFcn = createCallbackFcn(app, @copymapdata, true);
            app.AP2Menu.Text = 'AP2';

            % Create AP3Menu
            app.AP3Menu = uimenu(app.CopydataMenu);
            app.AP3Menu.MenuSelectedFcn = createCallbackFcn(app, @copymapdata, true);
            app.AP3Menu.Text = 'AP3';

            % Create AP4Menu
            app.AP4Menu = uimenu(app.CopydataMenu);
            app.AP4Menu.MenuSelectedFcn = createCallbackFcn(app, @copymapdata, true);
            app.AP4Menu.Text = 'AP4';

            % Create All
            app.All = uimenu(app.CopydataMenu);
            app.All.MenuSelectedFcn = createCallbackFcn(app, @copymapdata, true);
            app.All.Text = 'All';

            % Create OpeninImageJMenu
            app.OpeninImageJMenu = uimenu(app.ContextMenu);
            app.OpeninImageJMenu.Text = 'Open in ImageJ';

            % Create BKGMenu_2
            app.BKGMenu_2 = uimenu(app.OpeninImageJMenu);
            app.BKGMenu_2.Text = 'BKG';

            % Create AP1Menu_2
            app.AP1Menu_2 = uimenu(app.OpeninImageJMenu);
            app.AP1Menu_2.Text = 'AP1';

            % Create AP2Menu_2
            app.AP2Menu_2 = uimenu(app.OpeninImageJMenu);
            app.AP2Menu_2.Text = 'AP2';

            % Create AP3Menu_2
            app.AP3Menu_2 = uimenu(app.OpeninImageJMenu);
            app.AP3Menu_2.Text = 'AP3';

            % Create AP4Menu_2
            app.AP4Menu_2 = uimenu(app.OpeninImageJMenu);
            app.AP4Menu_2.Text = 'AP4';

            % Create ALLMenu
            app.ALLMenu = uimenu(app.OpeninImageJMenu);
            app.ALLMenu.Text = 'ALL';

            % Create LineProfileMenu
            app.LineProfileMenu = uimenu(app.ContextMenu);
            app.LineProfileMenu.Text = 'Line-Profile';

            % Create BKGMenu_3
            app.BKGMenu_3 = uimenu(app.LineProfileMenu);
            app.BKGMenu_3.MenuSelectedFcn = createCallbackFcn(app, @Polylineprofile, true);
            app.BKGMenu_3.Text = 'BKG';

            % Create AP1Menu_3
            app.AP1Menu_3 = uimenu(app.LineProfileMenu);
            app.AP1Menu_3.MenuSelectedFcn = createCallbackFcn(app, @Polylineprofile, true);
            app.AP1Menu_3.Text = 'AP1';

            % Create AP2Menu_3
            app.AP2Menu_3 = uimenu(app.LineProfileMenu);
            app.AP2Menu_3.MenuSelectedFcn = createCallbackFcn(app, @Polylineprofile, true);
            app.AP2Menu_3.Text = 'AP2';

            % Create AP3Menu_3
            app.AP3Menu_3 = uimenu(app.LineProfileMenu);
            app.AP3Menu_3.MenuSelectedFcn = createCallbackFcn(app, @Polylineprofile, true);
            app.AP3Menu_3.Text = 'AP3';

            % Create AP4Menu_3
            app.AP4Menu_3 = uimenu(app.LineProfileMenu);
            app.AP4Menu_3.MenuSelectedFcn = createCallbackFcn(app, @Polylineprofile, true);
            app.AP4Menu_3.Text = 'AP4';

            % Create AllMenu
            app.AllMenu = uimenu(app.LineProfileMenu);
            app.AllMenu.MenuSelectedFcn = createCallbackFcn(app, @Polylineprofile, true);
            app.AllMenu.Text = 'All';

            % Create SendtoDataMenu
            app.SendtoDataMenu = uimenu(app.LineProfileMenu);
            app.SendtoDataMenu.MenuSelectedFcn = createCallbackFcn(app, @todata_check, true);
            app.SendtoDataMenu.Separator = 'on';
            app.SendtoDataMenu.Text = 'Send to Data';
            
            % Assign app.ContextMenu
            app.Sp2ImgPanel.ContextMenu = app.ContextMenu;
            app.Sp2ImgPanel_2.ContextMenu = app.ContextMenu;

            % Create BKGcontext
            app.BKGcontext = uicontextmenu(app.ImageViewUIFigure);

            % Create BKGLineProfile
            app.BKGLineProfile = uimenu(app.BKGcontext);
            app.BKGLineProfile.MenuSelectedFcn = createCallbackFcn(app, @Polylineprofile, true);
            app.BKGLineProfile.Text = 'BKG Profile';

            % Create SendtodataMenu
            app.SendtodataMenu = uimenu(app.BKGcontext);
            app.SendtodataMenu.MenuSelectedFcn = createCallbackFcn(app, @bkgsend, true);
            app.SendtodataMenu.Text = 'Send to data';
            
            % Assign app.BKGcontext
            app.ScanXCoordinatesPanel.ContextMenu = app.BKGcontext;

            % Create ContextMenu2
            app.ContextMenu2 = uicontextmenu(app.ImageViewUIFigure);

            % Create VerticalProfileMenu
            app.VerticalProfileMenu = uimenu(app.ContextMenu2);
            app.VerticalProfileMenu.MenuSelectedFcn = createCallbackFcn(app, @mainAxVert, true);
            app.VerticalProfileMenu.Text = 'Vertical Profile';

            % Create HoriztonalProfileMenu
            app.HoriztonalProfileMenu = uimenu(app.ContextMenu2);
            app.HoriztonalProfileMenu.MenuSelectedFcn = createCallbackFcn(app, @HorizontalProfile, true);
            app.HoriztonalProfileMenu.Text = 'Horiztonal Profile';

            % Create ClearLinesMenu
            app.ClearLinesMenu = uimenu(app.ContextMenu2);
            app.ClearLinesMenu.MenuSelectedFcn = createCallbackFcn(app, @clearlines, true);
            app.ClearLinesMenu.Text = 'Clear Lines';

            % Create scan2axes
            app.scan2axes = uimenu(app.ContextMenu2);
            app.scan2axes.MenuSelectedFcn = createCallbackFcn(app, @todata_checkmain, true);
            app.scan2axes.Text = 'Send to data';
            
            % Assign app.ContextMenu2
            app.Panel.ContextMenu = app.ContextMenu2;

            % Create ContextMenu3
            app.ContextMenu3 = uicontextmenu(app.ImageViewUIFigure);

            % Create DebugMenu
            app.DebugMenu = uimenu(app.ContextMenu3);
            app.DebugMenu.MenuSelectedFcn = createCallbackFcn(app, @break1, true);
            app.DebugMenu.Text = 'Debug';
            
            % Assign app.ContextMenu3
            app.ImageViewUIFigure.ContextMenu = app.ContextMenu3;

            % Create ContextMenu4
            app.ContextMenu4 = uicontextmenu(app.ImageViewUIFigure);

            % Create ReturnCroppedDataMenu
            app.ReturnCroppedDataMenu = uimenu(app.ContextMenu4);
            app.ReturnCroppedDataMenu.MenuSelectedFcn = createCallbackFcn(app, @return_crop, true);
            app.ReturnCroppedDataMenu.Text = 'Return Cropped Data';
            
            % Assign app.ContextMenu4
            app.MaxSpinner.ContextMenu = app.ContextMenu4;

            % Show the figure after all components are created
            app.ImageViewUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = ImageView2x_2022b_m(varargin)

            runningApp = getRunningApp(app);

            % Check for running singleton app
            if isempty(runningApp)

                % Create UIFigure and components
                createComponents(app)

                % Register the app with App Designer
                registerApp(app, app.ImageViewUIFigure)

                % Execute the startup function
                runStartupFcn(app, @(app)startupFcn(app, varargin{:}))
            else

                % Focus the running singleton app
                figure(runningApp.ImageViewUIFigure)

                app = runningApp;
            end

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.ImageViewUIFigure)
        end
    end
end