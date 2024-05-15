classdef Fiji_GUI_2Px_2022b_m < matlab.apps.AppBase

    % Properties that correspond to app components
    % to access variables from default workspace run command
    %h=findobj('Tag','Gui1')
    properties (Access = public)
        FijiGUIUIFigure                 matlab.ui.Figure
        ImportRawDataMenu               matlab.ui.container.Menu
        EditDataMenu                    matlab.ui.container.Menu
        AddEmptyDataItemsMenu           matlab.ui.container.Menu
        EqualiseTimeDimensionMenu       matlab.ui.container.Menu
        SeparateLineDataitemsMenu       matlab.ui.container.Menu
        ReturnLineAverageMenu           matlab.ui.container.Menu
        ReturnRasterPlotMenu            matlab.ui.container.Menu
        ReturnConcatenatedtraceMenu     matlab.ui.container.Menu
        AverageLine2DataitemsMenu       matlab.ui.container.Menu
        MeanMenu                        matlab.ui.container.Menu
        SumMenu                         matlab.ui.container.Menu
        CropX2DtimeaxisMenu             matlab.ui.container.Menu
        NewItemMenu                     matlab.ui.container.Menu
        OverwriteMenu                   matlab.ui.container.Menu
        lastEPMenu                      matlab.ui.container.Menu
        FromMulitpleSelectionsMenu      matlab.ui.container.Menu
        SelectionMenu                   matlab.ui.container.Menu
        knownSelectionMenu              matlab.ui.container.Menu
        keeptimeidx                     matlab.ui.container.Menu
        CropYaxisMenu                   matlab.ui.container.Menu
        NewItemMenu_2                   matlab.ui.container.Menu
        OverwriteMenu_2                 matlab.ui.container.Menu
        CropfromImageJselectionMenu     matlab.ui.container.Menu
        NewDataMenu_12                  matlab.ui.container.Menu
        OverwriteMenu_13                matlab.ui.container.Menu
        SplitbyFemtonicsROIsMenu        matlab.ui.container.Menu
        BinXDimensionMenu_2             matlab.ui.container.Menu
        NewDataMenu_5                   matlab.ui.container.Menu
        OverwriteMenu_7                 matlab.ui.container.Menu
        BinYDimensionMenu_2             matlab.ui.container.Menu
        NewDataMenu_6                   matlab.ui.container.Menu
        OverwriteMenu_8                 matlab.ui.container.Menu
        BinZDimensionMenu               matlab.ui.container.Menu
        NewDataMenu_10                  matlab.ui.container.Menu
        OverwriteMenu_12                matlab.ui.container.Menu
        CollapseStackMenu               matlab.ui.container.Menu
        BinXYZMenu                      matlab.ui.container.Menu
        NewDataMenu_15                  matlab.ui.container.Menu
        ReplaceDataMenu_4               matlab.ui.container.Menu
        ShiftDataAxesMenu               matlab.ui.container.Menu
        ShiftYAxesMenu                  matlab.ui.container.Menu
        ShiftXorTaxesMenu               matlab.ui.container.Menu
        ShiftZorTaxesMenu               matlab.ui.container.Menu
        BinAuxillaryChannelsMenu        matlab.ui.container.Menu
        Aux1Menu                        matlab.ui.container.Menu
        Aux2Menu                        matlab.ui.container.Menu
        ReplaceAuxillaryChanneldataMenu  matlab.ui.container.Menu
        SingleMenu                      matlab.ui.container.Menu
        AllMenu                         matlab.ui.container.Menu
        ConcatenateDataMenu             matlab.ui.container.Menu
        XaxisMenu                       matlab.ui.container.Menu
        YaxisMenu                       matlab.ui.container.Menu
        ZAxisMenu                       matlab.ui.container.Menu
        ThresholdDataMenu               matlab.ui.container.Menu
        NewDataMenu_11                  matlab.ui.container.Menu
        ReplaceDataMenu                 matlab.ui.container.Menu
        EditCommentMenu                 matlab.ui.container.Menu
        FoldedFrame2Line2Menu           matlab.ui.container.Menu
        XDimMenu                        matlab.ui.container.Menu
        YDimMenu                        matlab.ui.container.Menu
        LineScan2BackgroundMenu         matlab.ui.container.Menu
        NewDataMenu_17                  matlab.ui.container.Menu
        FunctionsMenu                   matlab.ui.container.Menu
        CCImageMenu                     matlab.ui.container.Menu
        ShowScanPatternsMenu            matlab.ui.container.Menu
        Spiral2XYTMenu_2                matlab.ui.container.Menu
        NewDataMenu_8                   matlab.ui.container.Menu
        OverwriteMenu_10                matlab.ui.container.Menu
        UseScXYdataMenu_2               matlab.ui.container.Menu
        Pos2ImgMenu                     matlab.ui.container.Menu
        NewDataitemMenu                 matlab.ui.container.Menu
        OverwriteMenu_11                matlab.ui.container.Menu
        Spiral2DMenu                    matlab.ui.container.Menu
        ThetaBinningMenu                matlab.ui.container.Menu
        ThetaSortingMenu                matlab.ui.container.Menu
        VectorSortingMenu               matlab.ui.container.Menu
        Auto_2D_Peak_locsMenu_2         matlab.ui.container.Menu
        NormalisationMenu_2             matlab.ui.container.Menu
        DeltaFFMenu_2                   matlab.ui.container.Menu
        DeltaFRMenu_2                   matlab.ui.container.Menu
        SubtractBaselineMenu_2          matlab.ui.container.Menu
        SubtractEPbaselineMenu          matlab.ui.container.Menu
        DeconvolutionMenu               matlab.ui.container.Menu
        DiGluSnFRkineticsMenu           matlab.ui.container.Menu
        XYTiGluSnFRkineticsMenu         matlab.ui.container.Menu
        BleachCorrectionMenu            matlab.ui.container.Menu
        LineScanMenu                    matlab.ui.container.Menu
        NewDataMenu_14                  matlab.ui.container.Menu
        ReplaceDataMenu_3               matlab.ui.container.Menu
        FrameScanMenu                   matlab.ui.container.Menu
        NewDataMenu_13                  matlab.ui.container.Menu
        ReplaceDataMenu_2               matlab.ui.container.Menu
        tFilteringMenu                  matlab.ui.container.Menu
        LineScanMenu_2                  matlab.ui.container.Menu
        FrameScanMenu_2                 matlab.ui.container.Menu
        tZScoreMenu                     matlab.ui.container.Menu
        LineScanMenu_3                  matlab.ui.container.Menu
        FrameScanMenu_3                 matlab.ui.container.Menu
        KalmanStackFilterMenu           matlab.ui.container.Menu
        NewDataMenu_16                  matlab.ui.container.Menu
        ReplaceDataMenu_5               matlab.ui.container.Menu
        RasterPlotMenu                  matlab.ui.container.Menu
        GetMapsFromEphysPeaksMenu       matlab.ui.container.Menu
        NewDataMenu_18                  matlab.ui.container.Menu
        FLIMMenu                        matlab.ui.container.Menu
        NTCMenu                         matlab.ui.container.Menu
        OGB1Menu                        matlab.ui.container.Menu
        Cal590Menu                      matlab.ui.container.Menu
        CalculateMenu                   matlab.ui.container.Menu
        CalciumMappingMenu              matlab.ui.container.Menu
        OGB1Menu_2                      matlab.ui.container.Menu
        Cal590Menu_2                    matlab.ui.container.Menu
        CalculateMenu_2                 matlab.ui.container.Menu
        CombineDecayfromDataitemsMenu   matlab.ui.container.Menu
        DebugMenu                       matlab.ui.container.Menu
        DebugMenu_2                     matlab.ui.container.Menu
        DataOutputMenu                  matlab.ui.container.Menu
        SaveSelectedDataasFGUIMenu      matlab.ui.container.Menu
        ImportmatrixfromworkspaceMenu   matlab.ui.container.Menu
        SaveTifFileMenu                 matlab.ui.container.Menu
        ChannelsMenu                    matlab.ui.container.Menu
        AllMenu_2                       matlab.ui.container.Menu
        CombinedMenu                    matlab.ui.container.Menu
        UGMenu                          matlab.ui.container.Menu
        URMenu                          matlab.ui.container.Menu
        OutputSelectiontoBaseMenu_2     matlab.ui.container.Menu
        ExitMenu                        matlab.ui.container.Menu
        ExitMenu_2                      matlab.ui.container.Menu
        NButton                         matlab.ui.control.StateButton
        Holdlimits                      matlab.ui.control.StateButton
        RefreshButton_3                 matlab.ui.control.Button
        FijiProfileButton               matlab.ui.control.Button
        ClearSessionButton              matlab.ui.control.Button
        Prim_Brush                      matlab.ui.control.Button
        Button_27                       matlab.ui.control.Button
        FindDataitemsLabel              matlab.ui.control.Label
        PeakfindShorcutsOffButton       matlab.ui.control.StateButton
        ROIsListBox                     matlab.ui.control.ListBox
        ROIsListBoxLabel                matlab.ui.control.Label
        AuxListener                     matlab.ui.control.StateButton
        PrimListen                      matlab.ui.control.StateButton
        New_Trace_Data                  matlab.ui.control.Button
        Calculate                       matlab.ui.control.Button
        OperationDropDown               matlab.ui.control.DropDown
        OperationDropDownLabel          matlab.ui.control.Label
        Aux_select                      matlab.ui.control.StateButton
        Prim_Select                     matlab.ui.control.StateButton
        TabGroup3                       matlab.ui.container.TabGroup
        ImageJShortcutsTab              matlab.ui.container.Tab
        PrimAx_info_label_2             matlab.ui.control.Label
        Normalisation                   matlab.ui.control.DropDown
        AdjustBCButton                  matlab.ui.control.Button
        StackControlSlider              matlab.ui.control.Slider
        StackControlLabel               matlab.ui.control.Label
        DistanceSet                     matlab.ui.control.NumericEditField
        DownImg                         matlab.ui.control.Button
        LeftImg                         matlab.ui.control.Button
        RightImg                        matlab.ui.control.Button
        UPimg                           matlab.ui.control.Button
        OpenFilesinFijiPanel            matlab.ui.container.Panel
        BKGRceck_2                      matlab.ui.control.CheckBox
        AllMsButton                     matlab.ui.control.Button
        TiRcheck_3                      matlab.ui.control.CheckBox
        ScYButton                       matlab.ui.control.Button
        TiRcheck_2                      matlab.ui.control.CheckBox
        ScXButton                       matlab.ui.control.Button
        BKGRceck                        matlab.ui.control.CheckBox
        BKGcheck                        matlab.ui.control.CheckBox
        TiRcheck                        matlab.ui.control.CheckBox
        Redcheck                        matlab.ui.control.CheckBox
        Greencheck                      matlab.ui.control.CheckBox
        TiRButton                       matlab.ui.control.Button
        ChanRButton                     matlab.ui.control.Button
        ChanGButton                     matlab.ui.control.Button
        BKGRButton                      matlab.ui.control.Button
        BKGGButton                      matlab.ui.control.Button
        Switch                          matlab.ui.control.Switch
        ResliceStackButton              matlab.ui.control.Button
        DProjectButton                  matlab.ui.control.Button
        Images2StackButton              matlab.ui.control.Button
        Stack2ImagesButton              matlab.ui.control.Button
        AverageStackButton              matlab.ui.control.Button
        SelectallButton                 matlab.ui.control.Button
        DuplicateButton                 matlab.ui.control.Button
        PasteButton                     matlab.ui.control.Button
        CopysystemButton                matlab.ui.control.Button
        CopyButton                      matlab.ui.control.Button
        CropButton                      matlab.ui.control.Button
        Button_5                        matlab.ui.control.Button
        Button_7                        matlab.ui.control.Button
        Button_6                        matlab.ui.control.Button
        Button_4                        matlab.ui.control.Button
        Button_3                        matlab.ui.control.Button
        Button_2                        matlab.ui.control.Button
        Button                          matlab.ui.control.Button
        AutocontrastButton              matlab.ui.control.Button
        RedButton                       matlab.ui.control.Button
        InfernoButton                   matlab.ui.control.Button
        LUToptionsLabel                 matlab.ui.control.Label
        MagentaHotButton                matlab.ui.control.Button
        ViridisButton                   matlab.ui.control.Button
        RedHotButton                    matlab.ui.control.Button
        GreenButton                     matlab.ui.control.Button
        SharpenButton                   matlab.ui.control.Button
        Button_Smooth                   matlab.ui.control.Button
        PlottingTab                     matlab.ui.container.Tab
        SaveButton_2                    matlab.ui.control.Button
        PeakDataStore                   matlab.ui.control.Table
        AutoAddCheckBox                 matlab.ui.control.CheckBox
        Copy_table_3                    matlab.ui.control.Button
        LoadButton                      matlab.ui.control.Button
        AddButton                       matlab.ui.control.Button
        CopyTrace                       matlab.ui.control.Button
        DeleteLastButton                matlab.ui.control.Button
        Panel_2                         matlab.ui.container.Panel
        ArrayLabel                      matlab.ui.control.Label
        ArrayLabel_2                    matlab.ui.control.Label
        VariableLabel_2                 matlab.ui.control.Label
        VariableLabel                   matlab.ui.control.Label
        Array_Number_DropDown           matlab.ui.control.DropDown
        NumberDropDown_2                matlab.ui.control.DropDown
        CopyDataButton                  matlab.ui.control.Button
        Arraytable                      matlab.ui.control.Table
        XDropDown                       matlab.ui.control.DropDown
        YDropDown                       matlab.ui.control.DropDown
        PeakMapsTab                     matlab.ui.container.Tab
        Copy_Data_from_Prim_Ax_2        matlab.ui.control.Button
        LocalisationCheckBox            matlab.ui.control.CheckBox
        NormalisationLabel              matlab.ui.control.Label
        DropDown                        matlab.ui.control.DropDown
        URMapsPanel                     matlab.ui.container.Panel
        UGMapsPanel                     matlab.ui.container.Panel
        StatisticsTab                   matlab.ui.container.Tab
        Copy_table_4                    matlab.ui.control.Button
        StatisticDropDown               matlab.ui.control.DropDown
        StatisticDropDownLabel          matlab.ui.control.Label
        LoadfromStatButton              matlab.ui.control.Button
        VariablesTable                  matlab.ui.control.Table
        SecAx_info_label                matlab.ui.control.Label
        PrimAx_info_label               matlab.ui.control.Label
        Plot_Panel                      matlab.ui.container.Panel
        PlotSelectedCheckBox            matlab.ui.control.CheckBox
        DownY                           matlab.ui.control.Button
        UpY                             matlab.ui.control.Button
        ZoomOutY                        matlab.ui.control.Button
        ZoomInY                         matlab.ui.control.Button
        RightY                          matlab.ui.control.Button
        LeftX                           matlab.ui.control.Button
        ShowCursorsButton               matlab.ui.control.StateButton
        NumButton                       matlab.ui.control.StateButton
        Selction_Edit_Field             matlab.ui.control.EditField
        ZoomOutX                        matlab.ui.control.Button
        ZoomInX                         matlab.ui.control.Button
        DATAFILEVIEWButton              matlab.ui.control.Button
        EPIntEditField                  matlab.ui.control.NumericEditField
        TestButton                      matlab.ui.control.Button
        EPWidthEditFieldLabel           matlab.ui.control.Label
        EPIntEditFieldLabel             matlab.ui.control.Label
        EPWidthEditField                matlab.ui.control.NumericEditField
        clcButton                       matlab.ui.control.Button
        add_next_Array_entry            matlab.ui.control.Button
        SetCursorButton                 matlab.ui.control.Button
        MaxSpinner                      matlab.ui.control.Spinner
        MaxSpinnerLabel                 matlab.ui.control.Label
        MinSpinner                      matlab.ui.control.Spinner
        MinSpinnerLabel                 matlab.ui.control.Label
        ArraynumberButtonGroup          matlab.ui.container.ButtonGroup
        ArrayButton5                    matlab.ui.control.ToggleButton
        ArrayButton4                    matlab.ui.control.ToggleButton
        ArrayButton1                    matlab.ui.control.ToggleButton
        ArrayButton2                    matlab.ui.control.ToggleButton
        ArrayButton3                    matlab.ui.control.ToggleButton
        Panel_3                         matlab.ui.container.Panel
        RButton                         matlab.ui.control.Button
        CpButton                        matlab.ui.control.Button
        DelButton                       matlab.ui.control.Button
        SaveSelButton                   matlab.ui.control.Button
        SaveButton                      matlab.ui.control.Button
        ImViewButton                    matlab.ui.control.Button
        FijiROImanagerButton            matlab.ui.control.Button
        Display1ImageCheckBox           matlab.ui.control.CheckBox
        MultiselectCheckBox             matlab.ui.control.CheckBox
        CurrentDataFilesPanel           matlab.ui.container.Panel
        Commentedit                     matlab.ui.control.EditField
        ListBox_2                       matlab.ui.control.ListBox
        EPthreshEditField               matlab.ui.control.NumericEditField
        EPthreshEditFieldLabel          matlab.ui.control.Label
        TabGroup2                       matlab.ui.container.TabGroup
        IJMacrosTab_2                   matlab.ui.container.Tab
        RecordButton                    matlab.ui.control.Button
        MacroEditorButton               matlab.ui.control.Button
        SaveNewButton                   matlab.ui.control.Button
        RefreshButton_2                 matlab.ui.control.Button
        MacrosListBox_2                 matlab.ui.control.ListBox
        MacrosListBox_2Label            matlab.ui.control.Label
        RunMacroButton_3                matlab.ui.control.Button
        MacrotorunTextArea              matlab.ui.control.TextArea
        MacrotorunTextAreaLabel         matlab.ui.control.Label
        PeaksTab                        matlab.ui.container.Tab
        PeakOffsetSpinner               matlab.ui.control.Spinner
        PeakOffsetSpinnerLabel          matlab.ui.control.Label
        AllButton                       matlab.ui.control.StateButton
        aButton                         matlab.ui.control.Button
        Peaks2DataButton                matlab.ui.control.Button
        ResponseTypeDropDown            matlab.ui.control.DropDown
        ResponseTypeDropDownLabel       matlab.ui.control.Label
        BaselineWindowSpinner           matlab.ui.control.Spinner
        BaselineWindowSpinnerLabel      matlab.ui.control.Label
        BaselineOffsetSpinner           matlab.ui.control.Spinner
        BaselineOffsetSpinnerLabel      matlab.ui.control.Label
        PeakWindowSpinner               matlab.ui.control.Spinner
        PeakWindowSpinnerLabel          matlab.ui.control.Label
        FFButton                        matlab.ui.control.StateButton
        MinWidthEditFieldLabel_6        matlab.ui.control.Label
        MinWidthEditFieldLabel_5        matlab.ui.control.Label
        Peak_time_neg_window            matlab.ui.control.NumericEditField
        MinWidthEditFieldLabel_4        matlab.ui.control.Label
        Peak_time_pos_window            matlab.ui.control.NumericEditField
        SendPeaks2Sp2ImgsButton         matlab.ui.control.Button
        MinWidthEditFieldLabel_3        matlab.ui.control.Label
        MinWidthEditFieldLabel_2        matlab.ui.control.Label
        epmode                          matlab.ui.control.Switch
        APanalysisCheckBox              matlab.ui.control.CheckBox
        DatafileListBox_2               matlab.ui.control.ListBox
        FindPeaksqButton_2              matlab.ui.control.Button
        Button_16                       matlab.ui.control.Button
        Button_15                       matlab.ui.control.Button
        ButtonGroup_2                   matlab.ui.container.ButtonGroup
        PromButton                      matlab.ui.control.ToggleButton
        PeakButton                      matlab.ui.control.ToggleButton
        EphystimingCheckBox             matlab.ui.control.CheckBox
        PositivepeakCheckBox            matlab.ui.control.CheckBox
        SetCurrentDataButton            matlab.ui.control.Button
        lastpeakszButton                matlab.ui.control.Button
        peaksaButton                    matlab.ui.control.Button
        filterSpinner                   matlab.ui.control.Spinner
        width_constr                    matlab.ui.control.CheckBox
        prom_constr                     matlab.ui.control.CheckBox
        Interval_constr                 matlab.ui.control.CheckBox
        MinWidthEditField               matlab.ui.control.NumericEditField
        MinWidthEditFieldLabel          matlab.ui.control.Label
        FilterCheckBox                  matlab.ui.control.CheckBox
        MinIntervalsEditField           matlab.ui.control.NumericEditField
        UITable_2                       matlab.ui.control.Table
        MinPromEditField                matlab.ui.control.NumericEditField
        peaknodrop                      matlab.ui.control.DropDown
        ROImaxEditField                 matlab.ui.control.NumericEditField
        ROImaxEditFieldLabel            matlab.ui.control.Label
        ROIminEditField                 matlab.ui.control.NumericEditField
        ROIminEditFieldLabel            matlab.ui.control.Label
        NoPeaksCheckBox                 matlab.ui.control.CheckBox
        FittingTab                      matlab.ui.container.Tab
        SelectedDataonlyCheckBox        matlab.ui.control.CheckBox
        ReplotButton                    matlab.ui.control.Button
        CBCoefsButton                   matlab.ui.control.Button
        EditParamsButton                matlab.ui.control.StateButton
        FitBounds                       matlab.ui.control.Table
        FitParams                       matlab.ui.control.Table
        NewDataItemfromFitButton        matlab.ui.control.Button
        ScaleinputButton                matlab.ui.control.Button
        EditField                       matlab.ui.control.EditField
        FitButton                       matlab.ui.control.Button
        ButtonGroup                     matlab.ui.container.ButtonGroup
        PolyButton                      matlab.ui.control.ToggleButton
        LinearButton                    matlab.ui.control.ToggleButton
        ExpButton                       matlab.ui.control.ToggleButton
        GaussButton                     matlab.ui.control.ToggleButton
        FWHMEditField                   matlab.ui.control.NumericEditField
        FWHMButton                      matlab.ui.control.Button
        NumberDropDown                  matlab.ui.control.DropDown
        PeaksDataTab                    matlab.ui.container.Tab
        DFFButton                       matlab.ui.control.StateButton
        LoadDataButton                  matlab.ui.control.Button
        SavedataButton                  matlab.ui.control.Button
        Copy_table_2                    matlab.ui.control.Button
        Copy_table                      matlab.ui.control.Button
        ResponseDatafileListBox         matlab.ui.control.ListBox
        ResponseDatafileListBoxLabel    matlab.ui.control.Label
        CombinedAPsCheckBox             matlab.ui.control.CheckBox
        OnlySucessesCheckBox            matlab.ui.control.CheckBox
        BinWidthLabel                   matlab.ui.control.Label
        Spinner                         matlab.ui.control.Spinner
        GetQ_analysisButton             matlab.ui.control.Button
        PlotHistogramsButton            matlab.ui.control.Button
        send2histo                      matlab.ui.control.Button
        Copy_Data_from_Prim_Ax          matlab.ui.control.Button
        Panel_for_baseline_Selection    matlab.ui.container.Panel
        Baseline_Label                  matlab.ui.control.Label
        Baseline_Max                    matlab.ui.control.Spinner
        Baseline_Max_Label              matlab.ui.control.Label
        Baseline_Min                    matlab.ui.control.Spinner
        Baseline_Min_Label              matlab.ui.control.Label
        IJ_Centre_Profile               matlab.ui.control.CheckBox
        IJ_Stack_Int_Profile_Z_T        matlab.ui.control.Button
        IJ_Horizontal_Profile_X_T       matlab.ui.control.Button
        IJ_Vertical_Profile_Y           matlab.ui.control.Button
        IJ_Square_Selection             matlab.ui.control.Button
        IJ_Segmented_Line_Selction      matlab.ui.control.Button
        IJ_Line_Width_Control           matlab.ui.control.Spinner
        LineWidthSpinnerLabel           matlab.ui.control.Label
        IJ_Line_Selection               matlab.ui.control.Button
        DataItemListMenu                matlab.ui.container.ContextMenu
        TransfertonewfileMenu           matlab.ui.container.Menu
        LoadFGUIfileMenu                matlab.ui.container.Menu
        LoadMESMenu                     matlab.ui.container.Menu
        LoadImageFilesMenu              matlab.ui.container.Menu
        DatafilesfromClipboardMenu      matlab.ui.container.Menu
        New_Data_From_Clipboard         matlab.ui.container.Menu
        SaveAllMenu                     matlab.ui.container.Menu
        SaveSelectedMenu                matlab.ui.container.Menu
        DeleteSelectedMenu              matlab.ui.container.Menu
        CopySelectedMenu                matlab.ui.container.Menu
        EditCommentsMenu                matlab.ui.container.Menu
        AppendFGUIMenu                  matlab.ui.container.Menu
        AdddataMenu                     matlab.ui.container.Menu
        ScanXYMenu                      matlab.ui.container.Menu
        EPhysMenu                       matlab.ui.container.Menu
        ContextMenu2                    matlab.ui.container.ContextMenu
        AutoReplotMenu                  matlab.ui.container.Menu
        ContextMenu3                    matlab.ui.container.ContextMenu
        ExporttoExcelMenu               matlab.ui.container.Menu
        ExporttoClipboardMenu           matlab.ui.container.Menu
        SaveTableasmatMenu              matlab.ui.container.Menu
        SaveHignlightedasPointDataMenu  matlab.ui.container.Menu
        NewMenu                         matlab.ui.container.Menu
        ContextMenu4                    matlab.ui.container.ContextMenu
        ClearDataMenu                   matlab.ui.container.Menu
        CopyDataMenu                    matlab.ui.container.Menu
        ContextMenu5                    matlab.ui.container.ContextMenu
        ExportColumnMenu                matlab.ui.container.Menu
        ExcelMenu                       matlab.ui.container.Menu
        OriginMenu                      matlab.ui.container.Menu
        ExportTableMenu                 matlab.ui.container.Menu
        matMenu                         matlab.ui.container.Menu
        OriginMenu_2                    matlab.ui.container.Menu
        WorkspaceMenu                   matlab.ui.container.Menu
    end


    properties (Access = public)
        default_vars; % Variables set for various functions as default can be edited in .m file
        roi_2_plot; % the default variable for output of the current Primary Axis trace
        DATA; % Description
        OUTPUT; % Description
        importtype; % Description
        sharedapp; % Description
        ImageViewopen; % Description
        % Description
        Datastore; % Description
        imgdataplot;
        % Description
        currentplot_Prim;
        currentplot_Sec; % Description
        DATAfile; % Description
        Datastore_class; % Description
        Data_Selection ;% Selected dataitems, single selected (Int) multi select (cell of ints
        Aux_Chan_Ax; %Tile 2: Auxillary Channel data
        Prim_Chan_Ax; %Tile 1: Primary Channel data
        Maindisplay; % Tiled Layout for main plots
        matrect;
        matpolyline;
        matlogprofile;
        matline;
        FGUIpath;
        IJM; % Description
        IJPath; % Description
        grammplot; % Description
        File_Browse; % Description
        Variables; % Description
        MapData; % Description
    end

    properties (Access = private)
        oneDEvent; % Description
        twoDEvent; % Description
        PrimaryChannelMenu; % Description
        SecondaryChannelMenu;
        EphysCh1Menu;
        EphysCh2Menu;
        ImageCh1DFFMenu;
        ImageCh2DFFMenu;
        PockellCellMenu;
        StimpulseMenu;
        PeakParametersMenu;
        PositivePeakMenu;
        NegativePeakMenu;
        MethodMenu;
        PeakMenu;
        ProminenceMenu;
        ImagingChannel1Menu;
        ImagingChannel2Menu;
        FLIMChannelMenu;
        EphysChannel1Menu;
        EphysChannel2Menu;
        ReplotMenu;
        DetrendPlotMenu;
        DFFMenu;
        SubtractBaselineMenu;
        AutoDFFMenu;
        MeanofTracesMenu;
        %%%%

        outputvar; % Description:variable name to create in workspace
        importvar; % Description:variable name to import to MIJ
        importvar_cell;
        Filevalue;
        channel;
        UIAxes;
        vars;
        data;
        alldata;
        datalist;
        Property13; % Description
        IMAGES; % Description

        commondims;
        bkgG; % Description
        bkgR;
        FWHM; % Description
        vpro; % Description
        Yvals; % Description
        XVals; % Description
        minXfit ;% Description
        maxXfit; % Description
        profile; % Description
        fitdata; % Description
        correctpix4imgtype; % Description
        x1line; % Description
        x2line; % Description
        Property30; % Description
        Xnormprofile; % Description
        stepvalue; % Description
        lastimgtype ;% Description
        nameforexportvar; % Description
        dirconts; % Description
        fitymax; % Description
        fitymin  ;
        exp_options; % Description
        optionnames; % Description
        options;
        fittype; % Description
        edittednewData; % Description
        edittedIn;
        selectedfield; % Description
        proper; % Description
        num2input; % Description
        scaled_data; % Description
        ROIselected ;% Description
        ScandataG_DFF; % Description
        SharedData; % Description
        filtered_roi_2_plot; % Description
        peaksplot; % Description
        ephysplot1 ;% Description
        peakdatafile; % Description
        metainfoG; % Description
        metainfoR; % Description

        roinames; % Description
        ephysdata ;% Description
        ephysmetadata ;% Description
        vars2add; % Description
        filename; % Description
        raw_data;
        dataname;
        isdata;
        struct_data;
        peakdata2; % Description

        ScX;
        ScY;
        res;
        smooth2d;


        scanpoints; % Description
        commentfile; % Description
        fileidx ;% Description
        fitmodel;
        coef;% Description

        key; % Description
        file2change; % Description
        fileref; % Description
        residue; % Description
        traces;
        Bin_width; % Description
        allresponsetable;
        peakstable;
        locstable;
        Widthstable;
        Promstable; % Description
        responsetable; % Description
        etraces; % Description
        tiffdata; % Description
        cpoint; % Description
        cp ;% Description
        selectedXValues; % Description
        selectedXIndices;
        clickrel; % Description
        selectedYValues; % Description

        Response_locations ;% Description
        fig_h ;% Description
        arraydata1; % Description
        arraydata2;
        arraydata3;
        arraydata4;
        arraydata5;% Description
        spiral_gui ;% Description
        maps;
        mapsxdata;
        mapsydata ;% Description
        sp2imgtiles;
        sp2imgtile1 ;% Description
        sp2imgtile2;
        sp2imgtile3;
        sp2imgtile4;
        sp2imgtile5;
        sp2imgtile6; % Description
        CLims; % Description
        tempdata; % Description
        % Description
        PrimCh_X;
        SecCh_X; % Description
        Sec_menuselected; % Description
        epeaklocmarkers; % Description
        peaklocmarkers;
        epeakfindprops;
        peakfindsprops;
        % Description
        peaksDATA ;% Description
        % Description
        defaultdir; % Description
        peaksdisplay; % Description
        peaksAx; % Description
        Plot_Primary; % Description
        Plot_Secondary; % Description
        XList; % Description
        brushlistener; % Description
        Prim_menuselected ;% Description
        baseline_cursor_min;
        Baseline_Cursor_max;
        ephysplot2; % Description
        Selected_eventdata; % indices of eventdata selection
        inputvars; % Description
        Fitdisplay;
        data2Fit;
        ArrayDataDisplay; % Description
        ArrayDataplot; % Description
        Selected_Channel; % Description
        last_op_imgX;
        last_op_imgY;
        last_op_ephysx;
        last_op_ephysy;
        Prim_ax_brush;
        Aux_Ax_brush ;% Description
        ByPassAPPeakMenu; % Description
        Event_Fit_Param; % Description
        Rise_Polyfit_Terms_Menu ;% Description
        Num_Rise_Fit_Terms; % Description
        DecayExp_Terms_Menu ;% Description
        Dataax_plot; % Description
        PeakStats; % Description
        Num_Decay_Fit_Terms; % Description
        lastfile; % Description
        ftime;
        Peakdata ;% Description
        Peakdata_store % Description
        MLpath % Path to MATLAB folder
        Macrospath % Path to IJ Macros folder
        Documentspath % Path to Documents folder
        Datastore1 % Variable containing new dataitems
        Datastore2 % Variable containing new dataitems
        Datastore3 % Variable containing new dataitems
        Xmin % Description
        Xmax % Description
        Dataholder % Description
        cursorstruct % variable containing data on cursor positions
        cursordata % variable containing descriptive stats on cursor data
    end

    methods (Access = private)

        function results = XLim_shift_listener(app)
            %Action for Primary Data plot X Limit change
            %app.XList=addlistener(app.Prim_Chan_Ax, 'XLim', 'PostSet', @(src, evnt)app.XLim_shift_listener)
            if app.Prim_Chan_Ax.XLim ~= app.Aux_Chan_Ax.XLim;
                app.Aux_Chan_Ax.XLim = app.Prim_Chan_Ax.XLim;
            elseif app.Aux_Chan_Ax.XLim ~=app.Prim_Chan_Ax.XLim;
                app.Prim_Chan_Ax.XLim = app.Aux_Chan_Ax.XLim;
            end
        end




        function tiffdata = load_tiff_name(app,filename)

        end


        function [amp,locs,widths,proms,suc_fail,DFFUR_Accum,error,Dataout] = Get_Response_Data(app,APstarts,DATA,event)
            DATA=copyobj2(DATA);
            error=0
            baseline1=app.Baseline_Min.Value;
            baseline2= app.Baseline_Max.Value;
            inputvars=[baseline1,baseline2 APstarts];
            offset=app.BaselineOffsetSpinner.Value/1000;
            offsetvals=uint16(offset/DATA.linetime);
            baseline_window=app.BaselineWindowSpinner.Value/1000;
            baseline_offset=app.BaselineOffsetSpinner.Value/1000;

            APstarts=sort(APstarts,'ascend');
            APstarts=APstarts+app.PeakOffsetSpinner.Value/1000;
            APends=APstarts+app.PeakWindowSpinner.Value/1000;
            BKGends=APstarts-baseline_offset-baseline_window(:);
            BKGstarts=APstarts-baseline_offset(:);
            for i=1:size(BKGstarts,2)

                baselineindexes(i,:)=DATA.TData>=BKGends(i)&DATA.TData<=BKGstarts(i);
                %             responseindexes(i,:)=app.DATA.TData>=BKGends(i)&app.DATA.TData<=APends(i);
                APindexes(i,:)=DATA.TData>=APstarts(i)&DATA.TData<=APends(i);
                traceindexes(i,:)=DATA.TData>=BKGends(i)&DATA.TData<=APends(i)+0.02;
                etraceindexes(i,:)=DATA.eXData>=BKGends(i)&DATA.eXData<=APends(i)+0.02;
            end

            if event.Source.Tag=="test"
                xline1=xline(app.Prim_Chan_Ax,APstarts,'Tag','Display');
                xline1a=xline(app.Prim_Chan_Ax,APends,'--r','Tag','Display');
                BKGxline1=xline(app.Prim_Chan_Ax,BKGstarts,'--b','Tag','Display');
                BKGxline1a=xline(app.Prim_Chan_Ax,BKGends,'--','Tag','Display');
                pause(1)
                a=findall(app.Prim_Chan_Ax,'Tag','Display');
                delete(a)
                return
            end



            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if DATA.Type=="Line2"
                DATA.UG=permute(nanmean(DATA.UG,1),[1,3,2]);
                DATA.UR=permute(nanmean(DATA.UR,1),[1,3,2]);
            end
            F0indexs=DATA.TData>=inputvars(1)&DATA.TData<=inputvars(2);
            BKGimageUG=mean(DATA.UG(:,:,F0indexs),3);
            BKGimageUR=mean(DATA.UR(:,:,F0indexs),3);

            for i=1:size(APindexes,1)
                %Delta F/F with F0 as Baseline Defined by Baseline Indexs (immediately prior to event)
                DFFintimageUG(:,:,i)=bsxfun(@rdivide,bsxfun(@minus,mean(DATA.UG(:,:,APindexes(i,:)),3),mean(DATA.UG(:,:,baselineindexes(i,:)),3)),mean(DATA.UG(:,:,baselineindexes(i,:)),3));
                DFFintimageUR(:,:,i)=bsxfun(@rdivide,bsxfun(@minus,mean(DATA.UR(:,:,APindexes(i,:)),3),mean(DATA.UR(:,:,baselineindexes(i,:)),3)),mean(DATA.UR(:,:,baselineindexes(i,:)),3));
                %Delta F with F0 as Baseline Defined by Baseline Indexs (immediately prior to event)
                DFintimageUG(:,:,i)=bsxfun(@minus,mean(DATA.UG(:,:,APindexes(i,:)),3),mean(DATA.UG(:,:,baselineindexes(i,:)),3));
                DFintimageUR(:,:,i)=bsxfun(@minus,mean(DATA.UR(:,:,APindexes(i,:)),3),mean(DATA.UR(:,:,baselineindexes(i,:)),3));
                %Delta F/F with F0 defined by F0 Indexes (i.e. the cumulative response)
                DFFUGF0(:,:,i)=bsxfun(@rdivide,bsxfun(@minus,mean(DATA.UG(:,:,APindexes(i,:)),3),BKGimageUG),BKGimageUG);
                DFFURF0(:,:,i)=bsxfun(@rdivide,bsxfun(@minus,mean(DATA.UR(:,:,APindexes(i,:)),3),BKGimageUR),BKGimageUR);
                %Delta F with F0 defined by F0 Indexes (i.e. the cumulative response)
                DFUGF0(:,:,i)=bsxfun(@minus,mean(DATA.UG(:,:,APindexes(i,:)),3),BKGimageUG);
                DFURF0(:,:,i)=bsxfun(@minus,mean(DATA.UR(:,:,APindexes(i,:)),3),BKGimageUR);
                %Raw F over response indexes
                FintimageUG(:,:,i)=mean(DATA.UG(:,:,APindexes(i,:)),3);
                FintimageUR(:,:,i)=mean(DATA.UR(:,:,APindexes(i,:)),3);
                %Delta F/F with F0 as Baseline Defined by Baseline Indexs (immediately prior to event)
                DFRintimageUG(:,:,i)=bsxfun(@rdivide,bsxfun(@minus,mean(DATA.UG(:,:,APindexes(i,:)),3),mean(DATA.UG(:,:,baselineindexes(i,:)),3)),mean(DATA.UR(:,:,APindexes(i,:)),3));
                DFRintimageUR(:,:,i)=mean(DATA.UR(:,:,APindexes(i,:)),3);

                AP(i)=nanmean(DATA.UG(:,:,APindexes(i,:)),'all');
                BKG(i)=nanmean(DATA.UG(:,:,baselineindexes(i,:)),'all');
                CalAP(i)=nanmean(DATA.UR(:,:,APindexes(i,:)),'all');
                CalBKG(i)=nanmean(DATA.UR(:,:,baselineindexes(i,:)),'all');

            end



            BKGimageUG=mean(DATA.UG(:,:,F0indexs),3);
            BKGimageUR=mean(DATA.UR(:,:,F0indexs),3);

            switch app.DropDown.Value
                case "DF/F0"
                    intimageUG=cat(3,BKGimageUG,DFFintimageUG);
                    intimageUR=cat(3,BKGimageUR,DFFintimageUR);
                case "DF0"
                    intimageUG=cat(3,BKGimageUG,DFintimageUG);
                    intimageUR=cat(3,BKGimageUR,DFintimageUR);
                case "F"
                    intimageUG(:,:,i)=cat(3,BKGimageUG,FintimageUG);
                    intimageUR(:,:,i)=cat(3,BKGimageUR,FintimageUR);
                case "F/Fbase"
                    intimageUG(:,:,i)=cat(3,BKGimageUG, DFFUGF0);
                    intimageUR(:,:,i)=cat(3,BKGimageUR, DFFURF0);
                case "DF/R"
                    intimageUG(:,:,i)=cat(3,BKGimageUG,DFRintimageUG);
                    intimageUR(:,:,i)=cat(3,BKGimageUR,DFRintimageUR);

            end



            app.FijiGUIUIFigure.Colormap=viridis;
            sp2imgtiles=tiledlayout(app.UGMapsPanel,'flow',"TileSpacing","compact","Padding","none");
            sp2imgtiles_UR=tiledlayout(app.URMapsPanel,'flow',"TileSpacing","compact","Padding","none");
            %           a=figure;b=figure
            %           sp2imgtiles=tiledlayout(a,'flow',"TileSpacing","compact","Padding","none");
            %           sp2imgtiles_UR=tiledlayout(b,'flow',"TileSpacing","compact","Padding","none");
            for i=1:size(intimageUG,3);
                %create tile for Background and image of spiral data
                temp_sp2imgtile=nexttile(sp2imgtiles);
                temp_sp2imgtile2=nexttile(sp2imgtiles_UR);

                if i==1
                    gridx=DATA.XData;
                    gridy=DATA.YData;
                    imagesc(temp_sp2imgtile,BKGimageUG,'XData',gridx(1,:),'YData',gridy(1,:),'Tag','iGluSnFR map','Visible','on');
                    imagesc(temp_sp2imgtile2,BKGimageUR,'XData',gridx(1,:),'YData',gridy(1,:),'Tag','iGluSnFR map','Visible','on');
                else
                    gridx=DATA.XData;
                    gridy=DATA.YData;
                    imagesc(temp_sp2imgtile,intimageUG(:,:,i),'XData',gridx(1,:),'YData',gridy(1,:),'Tag','iGluSnFR map','Visible','on');
                    imagesc(temp_sp2imgtile2,intimageUR(:,:,i),'XData',gridx(1,:),'YData',gridy(1,:),'Tag','iGluSnFR map','Visible','on');
                end
                clim(i,1)=temp_sp2imgtile.CLim(2);
                climUR(i,1)=temp_sp2imgtile2.CLim(2);
            end
            cmax=max(clim(2:end,1),[],'all');
            cmaxUR=max(climUR(2:end,1),[],'all');
            sp2imgtile1=sp2imgtiles.Children ;
            sp2imgtile2=sp2imgtiles_UR.Children ;
            for j=2:size(clim,1)-1
                sp2imgtile1(j).CLim(2)=cmax;
                sp2imgtile2(j).CLim(2)=cmax;
            end

            %             app.sync_CLimits(app.CLims);    %synchronise climits


            mapsUG=mat2cell2(intimageUG,'f');
            mapsUR=mat2cell2(intimageUR,'f');
            Peaks_mapUG=squeeze(cellfun(@(x) nanmean(x,'all'),mapsUG,'UniformOutput',false));
            Peaks_mapsUR=squeeze(cellfun(@(x) nanmean(x,'all'),mapsUR,'UniformOutput',false));
            %             [pks,locs,w,p,sucs_fail,redchannel_amps]
            pks=cell2mat(Peaks_mapUG(2:end).');
            locs=APstarts;
            DFFUR_Accum=cell2mat(Peaks_mapsUR(2:end).');
            %                widths2=widths
            widths=app.PeakWindowSpinner.Value;
            proms=pks;
            baseSDmap=std(double(DATA.UG(:,:,F0indexs)),[],3)*3;
            if str2double(app.Normalisation.Value)==0
                thresh=std(squeeze(nanmean(DATA.UG(:,:,F0indexs),[1 2])))*app.MinPromEditField.Value;
            elseif str2double(app.Normalisation.Value)==1
                thresh=std((squeeze(nanmean(DATA.UG(:,:,F0indexs),[1 2]))/nanmean(DATA.UG(:,:,F0indexs),[1 2 3])))*app.MinPromEditField.Value;
            end
            amp=bsxfun(@rdivide,bsxfun(@minus,AP,BKG),BKG);
            Calamp=bsxfun(@rdivide,bsxfun(@minus,CalAP,CalBKG),CalBKG);
            baselineCa=nanmean(BKGimageUR,[1 2]);
            CalAccum=bsxfun(@rdivide,bsxfun(@minus,CalAP,baselineCa),baselineCa);
            baselinevals=squeeze(nanmean(DATA.UG(:,:,baselineindexes(1,:)),[1 2]));
            baseline=squeeze(nanmean(DATA.UG(:,:,baselineindexes(1,:)),'all'));
            dfbaseline=(baselinevals-baseline)/baseline;
            thresh=rms(dfbaseline)*app.MinPromEditField.Value;
            suc_fail=uint8(amp>thresh);
            hold(app.Prim_Chan_Ax,'on');

            xline1=xline(app.Prim_Chan_Ax,APstarts,'Tag','peaklines');
            xline1a=xline(app.Prim_Chan_Ax,APends,'--r','Tag','peaklines');
            BKGxline1=xline(app.Prim_Chan_Ax,BKGstarts,'--b','Tag','peaklines');
            BKGxline1a=xline(app.Prim_Chan_Ax,BKGends,'--','Tag','peaklines');
            hold(app.Prim_Chan_Ax,'off');
            pause(3);
            a=findall(app.Prim_Chan_Ax,'Tag','peaklines');
            delete(a);
            if DATA.Type=="Line2"
                Dataout=[]
                return
            end
            data=intimageUG(:,:,2);
            minX=min(DATA.XData);minY=min(DATA.YData);maxX=max(DATA.XData);maxY=max(DATA.YData);
            bkgyind=DATA.bkgYData >= minY & DATA.bkgYData<=maxY;
            bkgxind=DATA.bkgXData >= minX & DATA.bkgXData<=maxX;
            bkgUG=DATA.bkgUG(bkgyind,bkgxind);
            bkgUR=DATA.bkgUR(bkgyind,bkgxind);
            newbkgx=DATA.bkgXData(bkgxind);
            newbkgy=DATA.bkgYData(bkgyind);

            %generate output for maps data intensity
            sp2img_int_outputUG=[];
            sp2img_int_outputUR=[];
            sp2img_fullgridx_output=[];
            sp2img_fullgridy_output=[];
            for i=1:size(sp2imgtiles.Children,1);

                sp2img_int_outputUG{1,i}=sp2imgtiles.Children(i,1).Children.CData;
                sp2img_int_outputUR{1,i}=sp2imgtiles_UR.Children(i,1).Children.CData ;

                sp2img_fullgridx_output{1,i}=sp2imgtiles.Children(i,1).Children.XData;
                sp2img_fullgridy_output{1,i}=sp2imgtiles_UR.Children(i,1).Children.YData;
            end

            sp2img_int_outputUG=fliplr(sp2img_int_outputUG);
            sp2img_int_outputUR=fliplr(sp2img_int_outputUR);
            sp2img_fullgridx_output=fliplr(sp2img_fullgridx_output);
            sp2img_fullgridy_output=fliplr(sp2img_fullgridy_output);
            [X,Y]=ndgrid(sp2img_fullgridx_output{1,1},sp2img_fullgridy_output{1,1});
            opts.positive = true; %So that the gain parameter is positive;
            opts.errorbars = 'none';
            opts.tilted=1;
            X=DATA.ScX(:,:,1);
            Y=DATA.ScY(:,:,1);
            if size(sp2img_int_outputUG{1,1}) ~= size(DATA.ScX(:,:,1))
                X=X.';
                Y=Y.';
            end
            Dataout=copyobj2(DATA);
            if app.LocalisationCheckBox.Value==1
                try
                    for i=1:size(sp2img_int_outputUG,2)
                        gsurf_fit(i)=autoGaussianSurf(X,Y,sp2img_int_outputUG{1,i},opts);
                        gsurf_fitUR(i)=autoGaussianSurf(X,Y,sp2img_int_outputUR{1,i},opts);
                    end
                    for i=1:size(sp2img_int_outputUG,2)
                        %             gsurf_fit(i).dX0=gsurf_fit(i).x0-gsurf_fit(1).x0;gsurf_fit(i).dY0=gsurf_fit(i).y0-gsurf_fit(1).y0;gsurf_fit(i).input=sp2img_int_outputUG{1,i};
                        gsurf_fitUR(i).dX0=gsurf_fitUR(i).x0-gsurf_fitUR(1).x0;gsurf_fitUR(i).dY0=gsurf_fitUR(i).y0-gsurf_fitUR(1).y0;gsurf_fitUR(i).input=sp2img_int_outputUR{1,i};
                        if i==1
                            gsurf_fit(i).APnum='BKG';
                            gsurf_fitUR(i).APnum='BKG';
                        else
                            gsurf_fit(i).APnum=sprintf('AP%d',i-1);
                            gsurf_fitUR(i).APnum=sprintf('AP%d',i-1);
                        end
                        gsurf_fit(i).Trialnum=DATA.Index;gsurf_fit(i).Comment=DATA.comment;gsurf_fit(i).Date=DATA.Time;gsurf_fit(i).XData=DATA.XData;gsurf_fit(i).YData=DATA.YData;gsurf_fit(i).dX0=gsurf_fit(i).x0-gsurf_fit(1).x0;gsurf_fit(i).dY0=gsurf_fit(i).y0-gsurf_fit(1).y0;gsurf_fit(i).input=sp2img_int_outputUG{1,i};
                        if i==1;
                            gsurf_fit(i).Success=0;gsurf_fit(i).Amp=dfbaseline(1);gsurf_fit(i).CalAmp=0;gsurf_fit(i).CalInc=0,
                            gsurf_fit(i).eYData=0;gsurf_fit(i).eXData=0;
                            gsurf_fit(i).iYData=0;gsurf_fit(i).iXData=0;
                            gsurf_fit(i).bkgUG=bkgUG;gsurf_fit(i).bkgXData=newbkgx;gsurf_fit(i).bkgYData=newbkgy;
                            gsurf_fit(i).Response_Type={suc_fail}
                        else
                            gsurf_fit(i).Success=suc_fail(i-1);gsurf_fit(i).Amp=amp(i-1);gsurf_fit(i).CalAmp=Calamp(i-1);gsurf_fit(i).CalInc=CalAccum(i-1);
                            gsurf_fit(i).eYData=DATA.Aux1(etraceindexes(i-1,:));gsurf_fit(i).eXData=DATA.eXData(etraceindexes(i-1,:));
                            gsurf_fit(i).iYData=DATA.UG(:,:,traceindexes(i-1,:));gsurf_fit(i).iXData=DATA.TData(traceindexes(i-1,:));
                            gsurf_fit(i).bkgUG=bkgUG;gsurf_fit(i).bkgXData=newbkgx;gsurf_fit(i).bkgYData=newbkgy;
                            gsurf_fit(i).Response_Type={suc_fail}

                        end;
                        %get distance of peak Red (Calcium) channel to centre of the
                        %iGluSnFR channel
                        gsurf_fitUR(i).dX0=gsurf_fitUR(i).x0-gsurf_fit(1).x0;gsurf_fitUR(i).dY0=gsurf_fitUR(i).y0-gsurf_fit(1).y0;gsurf_fitUR(i).input=sp2img_int_outputUR{1,i};
                        gsurf_fitUR(i).bkgUR=bkgUR;
                        gsurf_fit(i).iamp={amp};gsurf_fit(i).calAmp=Calamp;gsurf_fit(i).calinc=CalAccum;

                    end
                catch
                    errordlg('Error Fitting Surface');
                    error=1;
                end

                gsurf_fitUR=cell2struct(struct2cell(gsurf_fitUR), strcat(fieldnames(gsurf_fitUR), '_UR'))  ;
                gsurf_fit=struct2table(gsurf_fit);gsurf_fitUR=struct2table(gsurf_fitUR);


                dX_UG_UR=[table2array(gsurf_fit(:,[3])) table2array(gsurf_fitUR(:,[3]))] ;%X distances
                dY_UG_UR=[table2array(gsurf_fit(:,[4])) table2array(gsurf_fitUR(:,[4]))] ;%Y distances

                dY_UG_UR=dY_UG_UR-dY_UG_UR(:,1);
                dX_UG_UR=dX_UG_UR-dX_UG_UR(:,1);

                [~,rho]=arrayfun(@cart2pol,dX_UG_UR,dY_UG_UR,"UniformOutput",false);
                dUG_UR=cell2table(rho(:,2));
                dUG_UR.Properties.VariableNames{1} = 'dUG_UR';

                gsurf_all=[gsurf_fit dUG_UR gsurf_fitUR];
                gsurffit_all=table2struct(gsurf_all,"ToScalar",false);

                app.MapData=struct('DFFMapsG',DFFintimageUG,'DFFMapsR',DFFintimageUR,'DFMapsG',DFintimageUG,'DFMapsR',DFintimageUR,...
                    'FMapsG',FintimageUG,'FMapsR',FintimageUR,'BKGG',BKGimageUG,'BKGR',BKGimageUR,'SurffitG',[],'SurffitR',[],'PeakData',[]);

                Dataout=copyobj2(DATA);
                Dataout.Subtype=="Maps"
                Dataout.UG=cat(3,app.MapData.BKGG,app.MapData.DFMapsG);
                Dataout.UR=cat(3,app.MapData.BKGR,app.MapData.DFMapsR);
                Dataout.ScX=Dataout.ScX(:,:,1:size(Dataout.UG,3));
                Dataout.predScX=Dataout.predScX(:,:,1:size(Dataout.UG,3));
                Dataout.ScY=Dataout.ScY(:,:,1:size(Dataout.UG,3));
                Dataout.predScY=Dataout.predScY(:,:,1:size(Dataout.UG,3));
                Dataout.TData=1:size(Dataout.UR,3);
                Dataout.ZData=1:size(Dataout.UR,3);
                Dataout.STAT.SurfaceFit=gsurffit_all;
                Dataout.comment=sprintf('Maps Loc| %s',Dataout.comment);
                Dataout.Aux1=zeros(size(Dataout.TData));
                Dataout.Aux2=zeros(size(Dataout.TData));
                Dataout.eXData=zeros(size(Dataout.TData));
                Dataout.bkgUG=DATA.bkgUG(bkgyind,bkgxind);
                Dataout.bkgUR=DATA.bkgUR(bkgyind,bkgxind);
                Dataout.bkgXData=DATA.bkgXData(bkgxind);
                Dataout.bkgYData=DATA.bkgYData(bkgyind);
                Dataout.Ch3Data=cell2mat(permute(arrayfun(@(x) x.G, gsurffit_all,"UniformOutput",0),[2,3,1]));
                Dataout.Ch4Data=cell2mat(permute(arrayfun(@(x) x.G_UR, gsurffit_all,"UniformOutput",0),[2,3,1]));
            elseif app.LocalisationCheckBox.Value==0
                app.MapData=struct('DFFMapsG',DFFintimageUG,'DFFMapsR',DFFintimageUR,'DFMapsG',DFintimageUG,'DFMapsR',DFintimageUR,...
                    'FMapsG',FintimageUG,'FMapsR',FintimageUR,'BKGG',BKGimageUG,'BKGR',BKGimageUR,'SurffitG',[],'SurffitR',[],'PeakData',[]);

                for i=1:size(intimageUG,3)
                    [obj,theta,rho,Int_Profile,XData_4_plot,Cal_Row,Cal_Col,UGvT]=DATA.twoD_intensity_Profile(intimageUG(:,:,i),DATA.XData,DATA.YData,DATA.XData(2)-DATA.XData(1),0.05);

                    if i==1
                        peakdata(i).Success=0 ;
                        peakdata(i).Peak=dfbaseline(1);
                        peakdata(i).AdjPeak=dfbaseline(1);
                        peakdata(i).Type='bkg';
                        peakdata(i).calAmp=0;
                        peakdata(i).calinc=0;
                    else
                        peakdata(i).Type=sprintf('AP%d',i-1)  ;
                        peakdata(i).Success=suc_fail(i-1);
                        peakdata(i).calAmp=Calamp(i-1);
                        peakdata(i).calinc=CalAccum(i-1);
                        F0=nanmean(UGvT(peakdata(i).XData_4_plot<0.4,F0indexs),[1 2]);
                        peakdata(i).Peak=amp(i-1);
                        if peakdata(i).Success==1
                            peakdata(i).AdjPeak=nanmean(Int_Profile(XData_4_plot<0.5));
                        elseif peakdata(i).Success==0
                            peakdata(i).AdjPeak=amp(i-1);
                        end
                    end
                    peakdata(i).theta(:,:,i)=theta;
                    peakdata(i).rho(:,:,i)=rho;
                    peakdata(i).Int_Profile=Int_Profile;
                    peakdata(i).XData_4_plot=XData_4_plot;
                    peakdata(i).Cal_Row=Cal_Row;
                    peakdata(i).Cal_Col=Cal_Col  ;
                    peakdata(i).UGvT={UGvT};
                    peakdata(i).Comment=DATA.comment;
                    peakdata(i).Num=DATA.Index;
                    peakdata(i).Widths=widths;

                    %             h=circle(sp2imgtile1(i),Cal_Row,Cal_Col,0.5)


                end

                Dataout=copyobj2(DATA);
                Dataout.UG=app.MapData.DFFMapsG;
                Dataout.UR=app.MapData.DFFMapsR;
                Dataout.ScX=Dataout.ScX(:,:,1:size(Dataout.UG,3));
                Dataout.predScX=Dataout.predScX(:,:,1:size(Dataout.UG,3));
                Dataout.ScY=Dataout.ScY(:,:,1:size(Dataout.UG,3));
                Dataout.predScY=Dataout.predScY(:,:,1:size(Dataout.UG,3));
                Dataout.TData=1:size(Dataout.UR,3);
                Dataout.ZData=1:size(Dataout.UR,3);
                Dataout.STAT.SurfaceDiffusion=peakdata;
                Dataout.comment=sprintf('Maps| %s',Dataout.comment);
                Dataout.Aux1=zeros(size(Dataout.TData));
                Dataout.Aux2=zeros(size(Dataout.TData));
                Dataout.eXData=zeros(size(Dataout.TData));
                Dataout.bkgUG=app.MapData.BKGG;
                Dataout.bkgUR=app.MapData.BKGR;
                Dataout.bkgXData=DATA.XData;
                Dataout.bkgYData=DATA.YData;
                Dataout.Ch3Data=peakdata(i).theta;
                Dataout.Ch4Data=peakdata(i).rho;
                Dataout.TiR=peakdata(i).rho;
                Dataout.Subtype=="Maps";




            end

            app.Dataholder=Dataout;
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



            try
                app.MapData.SurffitG=gsurf_fit;
                app.MapData.SurffitR=gsurf_fitUR;
                app.MapData.PeakData=peakdata;
            end

            %             end


        end





        function results = BrushCall(app,event)
            if app.AuxListener.Value==1 % Process callback when recieved

                try  % remove additional display components, x and y lines, scatter points
                    display=findall(app.Plot_Panel,'Tag','Display');
                    delete(display);
                    %            a=findall(app.Plot_Panel,'Type','Constantline');
                    %            b=findall(app.Plot_Panel,'Type','Scatter');
                    %            delete(b)
                    %             delete(a)
                end

                if event.Button==1

                    TData=app.Prim_Chan_Ax.Children.XData;
                    x=app.Aux_Chan_Ax.CurrentPoint(1,1);y=app.Aux_Chan_Ax.CurrentPoint(1,2);%looks like this should be refreshed using the intersectionpoint value from Hit, might not be backward compatible though
                    xmin=x-0.05*app.Datastore_class(app.Data_Selection,1).linetime;
                    xmax=x+0.05*app.Datastore_class(app.Data_Selection,1).linetime;
                    Clickref=TData>=xmin&TData<=xmax;
                    YAmp=app.roi_2_plot(Clickref);

                    PrimCh=get(app.Prim_Chan_Ax,'Children');
                    SecCh=get(app.Aux_Chan_Ax,'Children');
                    imgX=PrimCh.XData;
                    imgY=PrimCh.YData;
                    ephysx=SecCh.XData;
                    disp_ephysx=SecCh.XData;
                    ephysy=SecCh.YData;
                    disp_ephysy=SecCh.YData;
                    ephysy=sgolayfilt(ephysy,1,15);
                    disp_ephysy=sgolayfilt(disp_ephysy,1,15);
                    EPbasestart=app.Baseline_Min.Value; %start time for ephys baseline
                    EPbaseend=app.Baseline_Max.Value; %end time for ephys baseline
                    eProm=app.EPthreshEditField.Value;
                    Ep_F0_Indices=ephysx>=EPbasestart& ephysx<=EPbaseend;
                    if app.ByPassAPPeakMenu.Checked==0;
                        eROI_min=x-0.025;
                        eROI_max=x+0.025;
                        epeaksplot_search_Indices=ephysx>=eROI_min& ephysx<=eROI_max;
                        eThreshold=nanmean(ephysy(:,Ep_F0_Indices),2)+std(ephysy(:,Ep_F0_Indices),[],2)*eProm;
                        NPeaks=1;
                        eInterval=app.EPIntEditField.Value/1000;
                        ewidth_min=app.EPWidthEditField.Value/1000;
                        %do peak finding (findpeaks) by threshold by peak, or peak prominence
                        epeaksplot=ephysy(epeaksplot_search_Indices);
                        ephysx=ephysx(epeaksplot_search_Indices);

                        if app.PositivePeakMenu.Checked==1
                            if app.ProminenceMenu.Checked==1
                                [epks,elocs,ew,ep]=findpeaks(epeaksplot,ephysx,"NPeaks",NPeaks,"MinPeakDistance",eInterval,"MinPeakProminence",eThreshold,'MinPeakWidth', ewidth_min,'Annotate','extents');
                            else
                                [epks,elocs,ew,ep]=findpeaks(epeaksplot,ephysx,"NPeaks",NPeaks,"MinPeakDistance",eInterval,'MinPeakWidth', ewidth_min,'MinPeakHeight', eThreshold,'Annotate','extents');
                            end
                        else
                            if  app.ProminenceMenu.Checked==1
                                [epks,elocs,ew,ep]=findpeaks(-epeaksplot,ephysx,"NPeaks",NPeaks,"MinPeakDistance",eInterval,"MinPeakProminence",eThreshold,'Annotate','extents');
                            else
                                [epks,elocs,ew,ep]=findpeaks(-epeaksplot,ephysx,"NPeaks",NPeaks,"MinPeakDistance",eInterval,'MinPeakWidth', ewidth_min,'MinPeakHeight', eThreshold,'Annotate','extents');
                            end
                        end
                    else
                        Clickref=ephysx>=x-0.005 & ephysx<=x+0.005;
                        epks=nanmean(ephysy(Clickref),2);
                        elocs=x;
                        app.PeakStats.EP_PeakTime(1)=x
                    end
                    %display peak locations
                    hold(app.Aux_Chan_Ax,'on');
                    epeaklocmarkers=scatter(app.Aux_Chan_Ax,elocs,epks,29,'r',"filled","Tag",'Display');
                    hold(app.Aux_Chan_Ax,'off');

                    if isempty(elocs)==0;

                        F0start=app.Baseline_Min.Value;    %Get baseline minimum
                        F0end=app.Baseline_Max.Value; %Get baseline maximum
                        Img_F0_Indices=imgX>=F0start & imgX<=F0end;

                        ROI_min=x-app.Peak_time_neg_window.Value/1000;
                        ROI_max=x+app.Peak_time_pos_window.Value/1000;
                        Prom=app.MinPromEditField.Value;
                        Interval=app.MinIntervalsEditField.Value/1000;
                        width_min=app.MinWidthEditField.Value/1000;
                        if app.FilterCheckBox.Value==1                             %Filter data?

                            % set peak data trace as separate variable'peaksplot' and calculate prominence threshold as n * std or baseline
                            Img_T_Indices=imgX>=ROI_min & imgX<=ROI_max;
                            peaksplot=sgolayfilt(imgY,2,app.filterSpinner.Value);
                            Threshold=std(peaksplot(:,Img_F0_Indices),[],2)*Prom;
                            peaksplot=peaksplot(:,Img_T_Indices);
                            peaksplotX=imgX(:,Img_T_Indices);
                        else
                            Img_T_Indices=imgX>=ROI_min & imgX<=ROI_max;

                            %             Img_T_Indices=imgX>=app.ROIminEditField.Value-0.020 & imgX<=app.ROImaxEditField.Value;
                            Threshold=mean(imgY(:,Img_F0_Indices),2)+std(imgY(:,Img_F0_Indices),[],2)*Prom;
                            peaksplot=imgY(:,Img_T_Indices);
                            peaksplotX=imgX(:,Img_T_Indices);


                            %             Img_T_Indices=imgX>=app.ROIminEditField.Value-0.020 & imgX<=app.ROImaxEditField.Value;
                            Threshold=mean(imgY(:,Img_F0_Indices),2)+std(imgY(:,Img_F0_Indices),[],2)*Prom;

                        end
                        edisp_T_Indices=disp_ephysx>=ROI_min & disp_ephysx<=ROI_max;
                        edisp_peaksplot=disp_ephysy(:,edisp_T_Indices);
                        edisp_peaksplotx=disp_ephysx(:,edisp_T_Indices);

                        if app.PositivepeakCheckBox.Value==1
                            if app.PromButton.Value==1
                                [pks,locs,w,p]=findpeaks(peaksplot,peaksplotX,"NPeaks",1,"MinPeakProminence",Threshold,'MinPeakWidth', width_min,'Annotate','extents');
                            else
                                [pks,locs,w,p]=findpeaks(peaksplot,peaksplotX,"NPeaks",1,'MinPeakWidth', width_min,'MinPeakHeight', Threshold,'Annotate','extents');
                            end
                        else
                            if app.PromButton.Value==1
                                [pks,locs,w,p]=findpeaks(-peaksplot,peaksplotX,"NPeaks",1,"MinPeakProminence",Threshold,'Annotate','extents');
                            else
                                [pks,locs,w,p]=findpeaks(-peaksplot,peaksplotX,"NPeaks",1,'MinPeakWidth', width_min,'MinPeakHeight', Threshold,'Annotate','extents');
                            end
                        end
                        hold(app.Prim_Chan_Ax,'on')
                        a=scatter(app.Prim_Chan_Ax,locs,pks,36,'black',"filled","Tag", 'Display');
                        hold(app.Prim_Chan_Ax,'off')
                        if app.Datastore_class(app.Data_Selection,1).file=="FF"

                            app.TraceBackPeaks(app.Prim_Chan_Ax,peaksplotX,peaksplot,edisp_peaksplotx,edisp_peaksplot,locs,elocs,ROI_min,ROI_max,0.0025);
                        elseif app.Datastore_class(app.Data_Selection,1).file=="Line2"
                            app.TraceBackPeaks(app.Prim_Chan_Ax,peaksplotX,peaksplot,edisp_peaksplotx,edisp_peaksplot,locs,elocs,ROI_min,ROI_max,0.0005);
                        end
                    end

                end
            else
            end

        end

        function [XYtraces] = CopyTraces2Clipboard(app,datax,datay,dataname)

            if size(datax,1)==1%single line to export

                XYtraces(:,1)=datax;
                XYtraces(:,2)=datay;
            else
                a=0;
                [~,ncols] = cellfun(@size,datay,'UniformOutput',false);% get size of each plot
                ncols=cell2mat(ncols); %convert to num
                ncols1=max(ncols);% get maximum size

                daty=NaN(size(datay,1),ncols1); %preallocate NaN array of n traces by maximum length
                datx=NaN(size(datay,1),ncols1);%preallocate NaN array of n traces by maximum length


                for i=1:size(daty,1) %loop to convert cell array to double matrix
                    daty(i,[1:ncols(i,1)])=cell2mat(datay(i,1));
                    datx(i,[1:ncols(i,1)])=cell2mat(datax(i,1));
                end

                daty=fliplr(transpose(daty));%reformat to columns=traces,rows=time, L-R=order of adding columns to axes
                datx=fliplr(transpose(datx));

                XYtraces = daty(:,[1;1]*(1:size(daty,2)));%interleave X and Y matrices
                XYtraces(:,1:2:end) = datx;
            end

            num2clip(XYtraces);%copy to clipboard


        end









        function XYtraces = CopyAxesData(app, Handle)
            a=findall(Handle,'Type','ConstantLine')
            delete(a)
            datax=get(Handle.Children,'XData');% get xdata
            datay=get(Handle.Children,'YData');% get ydata

            if size(datax,1)==1%single line to export

                XYtraces(:,1)=datax
                XYtraces(:,2)=datay
            else
                a=0
                [~,ncols] = cellfun(@size,datay,'UniformOutput',false);% get size of each plot
                ncols=cell2mat(ncols); %convert to num
                ncols1=max(ncols);% get maximum size

                daty=NaN(size(datay,1),ncols1); %preallocate NaN array of n traces by maximum length
                datx=NaN(size(datay,1),ncols1);%preallocate NaN array of n traces by maximum length


                for i=1:size(daty,1) %loop to convert cell array to double matrix
                    daty(i,[1:ncols(i,1)])=cell2mat(datay(i,1));
                    datx(i,[1:ncols(i,1)])=cell2mat(datax(i,1));
                end

                daty=fliplr(transpose(daty));%reformat to columns=traces,rows=time, L-R=order of adding columns to axes
                datx=fliplr(transpose(datx));

                XYtraces = daty(:,[1;1]*(1:size(daty,2)));%interleave X and Y matrices
                XYtraces(:,1:2:end) = datx;
            end

            num2clip(XYtraces);%copy to clipboard




        end

        function [dUG,dUR] = DF_over_X(app,UG,UR,F0start,F0end,F_or_R)
            if ndims(UG)==2
                f_0_G_raw = nanmean(UG(:,[F0start:F0end]),2);
                scandataG_DF=bsxfun(@minus,double(UG(:,:)),f_0_G_raw);
                f_0_R_raw = nanmean(UR(:,[F0start:F0end]),2);
                scandataR_DF=bsxfun(@minus,double(UR(:,:)),f_0_R_raw);
            elseif ndims(UG)==3
                try
                    [~,dUG,TDATA,YDATA,XDATA]=app.DATA.FF_Data_2D(1,1,[],1,app.Baseline_Min.Value,app.Baseline_Max.Value,[]);
                    try
                        [~,dUR,TDATA,YDATA,XDATA]=app.DATA.FF_Data_2D(1,2,[],1,app.Baseline_Min.Value,app.Baseline_Max.Value,[]);
                    end
                catch
                    errordlg('Not ready for frame scan, will be fixed soon')
                end
                return
            end

            if F_or_R==1
                dUG=bsxfun(@rdivide,double(scandataG_DF(:,:)),f_0_G_raw);
                dUR=bsxfun(@rdivide,double(scandataR_DF(:,:)),f_0_R_raw);
            elseif F_or_R==2
                dUG=scandataG_DF./double(UR);
                dUR=UR;
            elseif F_or_R==3
                dUG=scandataG_DF
                dUR=scandataR_DF;
            end

        end



        function [selected_dataitems,dataitems_index] = SelectedItems(app)
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end

            dataitems_index=1:1:size(app.ListBox_2.Items,2)  ;
        end

        function results = Parse_data_4_plot(app)
            %identify data type to send to plotdata
            try
                if  app.Datastore_class(app.Data_Selection,1).Type=="XY";
                    app.PrimAx_info_label.Text=sprintf('Date   %s,  Z Height   %5f,  Z pixel size   %5f',...
                        string(app.Datastore_class(app.Data_Selection,1).Time),...
                        app.Datastore_class(app.Data_Selection,1).z_pixel_num*app.Datastore_class(app.Data_Selection,1).z_pixel_size,...
                        app.Datastore_class(app.Data_Selection,1).z_pixel_size);
                    return

                end
            end
            if  length(app.Data_Selection)>1;
                return
            end
            switch app.Prim_menuselected
                %switch primary channel types
                case '10000'
                    %Green
                    [Prim_plot,~,app.roi_2_plot,app.PrimCh_X,~,~]=app.Datastore_class(app.Data_Selection,1).Plot_TData_1D(1,app.ROIsListBox.Value,app.Prim_Chan_Ax,app.Normalisation.Value,app.Baseline_Min.Value,app.Baseline_Max.Value,1,[],[],[]);
                    %                 drawnow
                case '01000'
                    %Red
                    [Prim_plot,~,app.roi_2_plot,app.PrimCh_X,~,~]=app.Datastore_class(app.Data_Selection,1).Plot_TData_1D(2,app.ROIsListBox.Value,app.Prim_Chan_Ax,app.Normalisation.Value,app.Baseline_Min.Value,app.Baseline_Max.Value,1,[],[],[]);
                    %                     drawnow
                case '00100'
                    %Ca2+FLIM
                    [Prim_plot,~,app.roi_2_plot,app.PrimCh_X,~,~]=app.Datastore_class(app.Data_Selection,1).Plot_TData_1D(3,app.ROIsListBox.Value,app.Prim_Chan_Ax,app.Normalisation.Value,app.Baseline_Min.Value,app.Baseline_Max.Value,1,[],[],[]);
                    %                     drawnow
                case '00010'
                    %Ephys
                    [Prim_plot,~,app.roi_2_plot,app.PrimCh_X,~,~]=app.Datastore_class(app.Data_Selection,1).Plot_TData_1D(4,app.ROIsListBox.Value,app.Prim_Chan_Ax,app.Normalisation.Value,app.Baseline_Min.Value,app.Baseline_Max.Value,1,[],[],[]);
                    %                     drawnow
                case '00001'
                    %Ephys2
                    [Prim_plot,~,app.roi_2_plot,app.PrimCh_X,~,~]=app.Datastore_class(app.Data_Selection,1).Plot_TData_1D(5,app.ROIsListBox.Value,app.Prim_Chan_Ax,app.Normalisation.Value,app.Baseline_Min.Value,app.Baseline_Max.Value,1,[],[],[]);
                    %                     drawnow

            end

            switch app.Sec_menuselected
                case '1000000'
                    [~,Sec_plot,~,~,app.ephysplot1,app.SecCh_X]=app.Datastore_class(app.Data_Selection,1).Plot_TData_1D(1,app.ROIsListBox.Value,[],app.Normalisation.Value,app.Baseline_Min.Value,app.Baseline_Max.Value,1,app.Aux_Chan_Ax,[],[]);
                    %                     drawnow
                case '0100000'
                    [~,Sec_plot,~,~,app.ephysplot1,app.SecCh_X]=app.Datastore_class(app.Data_Selection,1).Plot_TData_1D(1,app.ROIsListBox.Value,[],app.Normalisation.Value,app.Baseline_Min.Value,app.Baseline_Max.Value,2,app.Aux_Chan_Ax,[],[]);
                    %                     drawnow
                case '0010000'
                    [~,~,app.ephysplot1,app.SecCh_X]=app.Datastore_class(app.Data_Selection,1).Plot_TData_1D(1,app.ROIsListBox.Value,[],app.Normalisation.Value,app.Baseline_Min.Value,app.Baseline_Max.Value,3,app.Aux_Chan_Ax,[],[]);
                    %                drawnow
                case '0001000'
                    [~,Sec_plot,~,~,app.ephysplot1,app.SecCh_X]=app.Datastore_class(app.Data_Selection,1).Plot_TData_1D(1,app.ROIsListBox.Value,[],app.Normalisation.Value,app.Baseline_Min.Value,app.Baseline_Max.Value,4,app.Aux_Chan_Ax,[],[]);
                    %                 drawnow
                case '0000100'
                    [~,Sec_plot,~,~,app.ephysplot1,app.SecCh_X]=app.Datastore_class(app.Data_Selection,1).Plot_TData_1D(1,app.ROIsListBox.Value,[],app.Normalisation.Value,app.Baseline_Min.Value,app.Baseline_Max.Value,5,app.Aux_Chan_Ax,[],[]);
                    %                     drawnow
                case '0000010'
                    [~,Sec_plot,~,~,app.ephysplot1,app.SecCh_X]=app.Datastore_class(app.Data_Selection,1).Plot_TData_1D(1,app.ROIsListBox.Value,[],app.Normalisation.Value,app.Baseline_Min.Value,app.Baseline_Max.Value,6,app.Aux_Chan_Ax,[],[]);
                    %                    drawnow
            end
            
            if app.ShowCursorsButton.Value==1
                a=findall(app.Prim_Chan_Ax,'Type','ConstantLine');
                delete(a);
                app.Draw_Cursors;
            end
            app.Aux_Chan_Ax.ButtonDownFcn = createCallbackFcn(app, @BrushCall, true);
            app.XList=addlistener(app.Prim_Chan_Ax, 'XLim', 'PostSet', @(src, evnt)app.XLim_shift_listener)  ;
            %xlim(app.Prim_Chan_Ax,"tight");
            if app.Holdlimits.Value==1
                app.Prim_Chan_Ax.XLim=[app.Xmin app.Xmax]
            end

        end

        function [YMat,XMat] = format_traces(app,datay,datax)

            [~,ncols] = cellfun(@size,datay,'UniformOutput',false);% get size of each plot
            ncols=cell2mat(ncols); %convert to num
            ncols1=max(ncols);% get maximum size
            daty=NaN(size(datay,1),ncols1); %preallocate NaN array of n traces by maximum length
            datx=NaN(size(datay,1),ncols1);%preallocate NaN array of n traces by maximum length
            for i=1:size(daty,1); %loop to convert cell array to double matrix
                daty(i,[1:ncols(i,1)])=cell2mat(datay(i,1));
                datx(i,[1:ncols(i,1)])=cell2mat(datax(i,1));
            end
            YMat=fliplr(transpose(daty));%reformat to columns=traces,rows=time, L-R=order of adding columns to axes
            XMat=fliplr(transpose(datx));

        end

        function results = Draw_Cursors(app)
            a=findall(app.Prim_Chan_Ax,'Type','ConstantLine');
            delete(a)    ;
            %draw baseline
            xline(app.Prim_Chan_Ax,app.baseline_cursor_min,'--r','baseline','LabelHorizontalAlignment','left');
            xline(app.Prim_Chan_Ax,app.Baseline_Cursor_max,'--r');
            %draw 1AP
            xline(app.Prim_Chan_Ax,app.cursorstruct(1).Minimum,'--g','Cursor 1','LabelHorizontalAlignment','left');
            xline(app.Prim_Chan_Ax,app.cursorstruct(1).Maximum,'--g');
            %draw 2AP
            xline(app.Prim_Chan_Ax,app.cursorstruct(2).Minimum,'--g','Cursor 2','LabelHorizontalAlignment','left');
            xline(app.Prim_Chan_Ax,app.cursorstruct(2).Maximum,'--g');
            %draw 3AP
            xline(app.Prim_Chan_Ax,app.cursorstruct(3).Minimum,'--g','Cursor 3','LabelHorizontalAlignment','left');
            xline(app.Prim_Chan_Ax,app.cursorstruct(3).Maximum,'--g');
            %draw 4AP
            xline(app.Prim_Chan_Ax,app.cursorstruct(4).Minimum,'--g','Cursor 4','LabelHorizontalAlignment','left');
            xline(app.Prim_Chan_Ax,app.cursorstruct(4).Maximum,'--g');
            %draw 5AP
            xline(app.Prim_Chan_Ax,app.cursorstruct(5).Minimum,'--g','Cursor 5','LabelHorizontalAlignment','left');
            xline(app.Prim_Chan_Ax,app.cursorstruct(5).Maximum,'--g');

        end




    end
    methods (Access = public)

        function results = FIT(app)

            options=fitoptions(fittype)

            switch app.ButtonGroup.SelectedObject.Text

                case 'Gauss'
                    app.fittype=sprintf('gauss%s',num2str(app.NumberDropDown.Value))
                    app.options=fitoptions(app.fittype)

                case 'Exp'
                    app.fittype=sprintf('exp%s',num2str(app.NumberDropDown.Value))
                    app.options=fitoptions(app.fittype)

                    %             app.options.Algorithm='Levenberg-Marquardt'
                case 'Linear'
                    app.fittype='linearinterp'
                    app.options=fitoptions(app.fittype)
                case 'Poly'
                    app.fittype=sprintf('poly%s',num2str(app.NumberDropDown.Value))
                    app.options=fitoptions(app.fittype)

            end
            %

            paramsvals=zeros(str2num(app.NumberDropDown.Value),3)
            minboundvals=-inf(str2num(app.NumberDropDown.Value),1)
            maxboundsvals=inf(str2num(app.NumberDropDown.Value),1)
            boundsvals=cat(2,minboundvals,maxboundsvals)
            app.FitParams.Data=cell2table(num2cell(paramsvals))
            %          boundsL=num2cell(transpose(app.options.Lower))
            %          boundsH=num2cell(transpose(app.options.Upper))
            %          boundsvals=cat(2,boundsL,boundsH)
            %          app.FitBounds.Data=cell2table(boundsvals)



            app.profile=[]
            if app.SelectedDataonlyCheckBox.Value==0
                app.profile=[]
                app.profile(:,1)=transpose(app.Prim_Chan_Ax.Children.XData)
                app.profile(:,2)=transpose( app.Prim_Chan_Ax.Children.YData)
                app.minXfit=1;
                app.maxXfit=size(app.profile,1);

            else
                app.profile(:,1)=transpose(app.Prim_Chan_Ax.Children.XData(1,app.cursorstruct(1).selectedC1XIndices));
                app.profile(:,2)=transpose( app.Prim_Chan_Ax.Children.YData(1,app.cursorstruct(1).selectedC1XIndices));

                app.minXfit=app.cursorstruct(1).Minimum;

                app.maxXfit==app.cursorstruct(1).Maximum;
            end




            [not_nan]=~isnan(app.profile(:,2)) & ~isnan(app.profile(:,1))
            [data,fitvalues]=fit(app.profile(not_nan,1),app.profile(not_nan,2),app.fittype,app.options)

            if app.SelectedDataonlyCheckBox.Value==0
                app.XVals=app.profile(not_nan,1)
                app.Yvals=data(app.XVals);
            else
                app.XVals=app.cursorstruct(1).selectedC1Values;
                app.Yvals=data(app.cursorstruct(1).selectedC1Values);
            end

            fitmodel=data
            coefvalues=fitvalues

            app.fitmodel=data
            app.coef=fitvalues

            app.fitdata=[]
            app.fitdata(:,1)=transpose(app.XVals);
            app.fitdata(:,2)=app.Yvals;
            hold(app.Prim_Chan_Ax,'on');
            plot(app.Prim_Chan_Ax,app.XVals(1,:),app.Yvals(:,1),"Tag",'Fit');
            hold(app.Prim_Chan_Ax,'off');
            try
                app.residue(:,1)=app.XVals(:,1)
                app.residue(:,2)=app.profile(:,2)-app.Yvals(:,2)
                plot(app.Aux_Chan_Ax,app.residue(:,2),'XData',app.residue(:,2))
            end

            try
                app.Display_FWHM_of_Gaussian
            end
            Coefs=coeffvalues(data)
            transpose(Coefs)
            Coefs=reshape(ans,str2num(app.NumberDropDown.Value),size(ans,1)/str2num(app.NumberDropDown.Value))
            app.FitParams.Data=array2table(Coefs)
            fdb=struct(fitmodel)
            coeffnames=string(fdb.coeff).'
            CoefsAranged=reshape(Coefs.',1,[])

            for i=1:size(CoefsAranged,2)
                coefvalues.(coeffnames(i))=CoefsAranged(i)
            end
            coefvalues.fittype=string(fdb.fType)
            coefvalues.fitdef=string(fdb.defn)
            fitoutput=struct2table(coefvalues)
            app.Datastore_class(app.Data_Selection,1).STAT.Fit=fitoutput
        end



        function results = Next(app,nextorlast)
            if nextorlast==1;
                app.Callback_to_set_Next_Dataitem
            else
                app.Callback_to_set_Previous_Dataitem
            end

        end


        function results = Adddataset(app,DATA) %Adds ImData in shared app to datastore
            app.Datastore_class=cat(1,app.Datastore_class,DATA);
            app.Datastore_class.findComment(app.ListBox_2) ;
        end



        function results = Prepare_trace_data_plots(app)
            %%%generate_standard_trace_Display

            app.Maindisplay=tiledlayout(app.Plot_Panel,3,1,"TileSpacing","none","Padding","none");
            app.Prim_Chan_Ax=nexttile(app.Maindisplay,1,[2 1])
            app.Aux_Chan_Ax=nexttile(app.Maindisplay,3,[1 1]);
            app.Aux_Chan_Ax.XTick=[]

            %%%
            %% primary context menu generation

            % Create PrimaryChannelMenu
            app.PrimaryChannelMenu = uicontextmenu(app.FijiGUIUIFigure);

            % Assign app.PrimaryChannelMenu
            app.Prim_Chan_Ax.ContextMenu = app.PrimaryChannelMenu;

            % Create ImagingChannel1Menu
            app.ImagingChannel1Menu = uimenu(app.PrimaryChannelMenu);
            app.ImagingChannel1Menu.MenuSelectedFcn = createCallbackFcn(app, @Secondary_Channel_selection, true);
            app.ImagingChannel1Menu.Checked = 'on';
            app.ImagingChannel1Menu.Text = 'Imaging Channel 1';

            % Create ImagingChannel2Menu
            app.ImagingChannel2Menu = uimenu(app.PrimaryChannelMenu);
            app.ImagingChannel2Menu.MenuSelectedFcn = createCallbackFcn(app, @Secondary_Channel_selection, true);
            app.ImagingChannel2Menu.Text = 'Imaging Channel 2';

            % Create FLIMChannelMenu
            app.FLIMChannelMenu = uimenu(app.PrimaryChannelMenu);
            app.FLIMChannelMenu.Text = 'FLIM Channel';

            % Create EphysChannel1Menu
            app.EphysChannel1Menu = uimenu(app.PrimaryChannelMenu);
            app.EphysChannel1Menu.MenuSelectedFcn = createCallbackFcn(app, @Secondary_Channel_selection, true);
            app.EphysChannel1Menu.Text = 'Ephys Channel 1';

            % Create EphysChannel2Menu
            app.EphysChannel2Menu = uimenu(app.PrimaryChannelMenu);
            app.EphysChannel2Menu.MenuSelectedFcn = createCallbackFcn(app, @Secondary_Channel_selection, true);
            app.EphysChannel2Menu.Text = 'Ephys Channel 2';

            % Create ReplotMenu
            app.ReplotMenu = uimenu(app.PrimaryChannelMenu);
            app.ReplotMenu.MenuSelectedFcn = createCallbackFcn(app, @Dataitem_Listbox_Callback, true);
            app.ReplotMenu.Separator = 'on';
            app.ReplotMenu.Text = 'Refresh';

            % Create Peaks_By_Datatips
            app.DetrendPlotMenu = uimenu(app.PrimaryChannelMenu);
            app.DetrendPlotMenu.MenuSelectedFcn = createCallbackFcn(app, @Peaks_By_Datatips, true);
            app.DetrendPlotMenu.Text = 'Get Peaks By Datatips';

            % Create DFFMenu
            app.DFFMenu = uimenu(app.PrimaryChannelMenu);
            app.DFFMenu.MenuSelectedFcn = createCallbackFcn(app, @deltaFF, true);
            app.DFFMenu.Text = 'DF/F';

            % Create SubtractBaselineMenu
            app.SubtractBaselineMenu = uimenu(app.PrimaryChannelMenu);
            app.SubtractBaselineMenu.MenuSelectedFcn = createCallbackFcn(app, @DFoverR, true);
            app.SubtractBaselineMenu.Text = 'Subtract Baseline';

            % Create AutoDFFMenu
            app.AutoDFFMenu = uimenu(app.PrimaryChannelMenu);
            app.AutoDFFMenu.MenuSelectedFcn = createCallbackFcn(app, @autodff, true);
            app.AutoDFFMenu.Text = 'Auto DFF';

            % Create MeanofTracesMenu
            app.MeanofTracesMenu = uimenu(app.PrimaryChannelMenu);
            app.MeanofTracesMenu.MenuSelectedFcn = createCallbackFcn(app, @Equalise, true);
            app.MeanofTracesMenu.Text = 'Mean of Traces';
            %%  Secondary channel Contextmenu

            % Create SecondaryChannelMenu
            app.SecondaryChannelMenu = uicontextmenu(app.FijiGUIUIFigure);

            % Assign app.SecondaryChannelMenu
            app.Aux_Chan_Ax.ContextMenu = app.SecondaryChannelMenu;

            % Create EphysCh1Menu
            app.EphysCh1Menu = uimenu(app.SecondaryChannelMenu);
            app.EphysCh1Menu.MenuSelectedFcn = createCallbackFcn(app, @Secondary_Channel_selection, true);
            app.EphysCh1Menu.Separator = 'on';
            app.EphysCh1Menu.Checked = 'on';
            app.EphysCh1Menu.Text = 'Ephys Ch.1';

            % Create EphysCh2Menu
            app.EphysCh2Menu = uimenu(app.SecondaryChannelMenu);
            app.EphysCh2Menu.MenuSelectedFcn = createCallbackFcn(app, @Secondary_Channel_selection, true);
            app.EphysCh2Menu.Text = 'Ephys Ch.2';

            % Create ImageCh1DFFMenu
            app.ImageCh1DFFMenu = uimenu(app.SecondaryChannelMenu);
            app.ImageCh1DFFMenu.MenuSelectedFcn = createCallbackFcn(app, @Secondary_Channel_selection, true);
            app.ImageCh1DFFMenu.Text = 'Image Ch.1 DFF';

            % Create ImageCh2DFFMenu
            app.ImageCh2DFFMenu = uimenu(app.SecondaryChannelMenu);
            app.ImageCh2DFFMenu.MenuSelectedFcn = createCallbackFcn(app, @Secondary_Channel_selection, true);
            app.ImageCh2DFFMenu.Text = 'Image Ch.2 DFF';

            % Create PockellCellMenu
            app.PockellCellMenu = uimenu(app.SecondaryChannelMenu);
            app.PockellCellMenu.MenuSelectedFcn = createCallbackFcn(app, @Secondary_Channel_selection, true);
            app.PockellCellMenu.Text = 'Pockell Cell';

            % Create StimpulseMenu
            app.StimpulseMenu = uimenu(app.SecondaryChannelMenu);
            app.StimpulseMenu.MenuSelectedFcn = createCallbackFcn(app, @Secondary_Channel_selection, true);
            app.StimpulseMenu.Text = 'Stim pulse';

            % Create PeakParametersMenu
            app.PeakParametersMenu = uimenu(app.SecondaryChannelMenu);
            app.PeakParametersMenu.Separator = 'on';
            app.PeakParametersMenu.Text = 'Peak Parameters';

            % Create PositivePeakMenu
            app.PositivePeakMenu = uimenu(app.PeakParametersMenu);
            app.PositivePeakMenu.MenuSelectedFcn = createCallbackFcn(app, @epeakparams, true);
            app.PositivePeakMenu.Checked = 'on';
            app.PositivePeakMenu.Text = 'Positive Peak';

            % Create NegativePeakMenu
            app.NegativePeakMenu = uimenu(app.PeakParametersMenu);
            app.NegativePeakMenu.MenuSelectedFcn = createCallbackFcn(app, @epeakparams, true);
            app.NegativePeakMenu.Text = 'Negative Peak';

            % Create NegativePeakMenu
            app.ByPassAPPeakMenu = uimenu(app.PeakParametersMenu);
            app.ByPassAPPeakMenu.MenuSelectedFcn = createCallbackFcn(app, @epeakparams, true);
            app.ByPassAPPeakMenu.Text = 'Bypass EP Peaks';

            % Create RisePolyfitMenu
            app.Rise_Polyfit_Terms_Menu = uimenu(app.PeakParametersMenu);
            app.Rise_Polyfit_Terms_Menu.MenuSelectedFcn = createCallbackFcn(app, @Set_Fit_Terms, true);
            app.Rise_Polyfit_Terms_Menu.Text = 'Rise Polyfit Terms';

            % Create DecayExpfitMenu
            app.DecayExp_Terms_Menu = uimenu(app.PeakParametersMenu);
            app.DecayExp_Terms_Menu.MenuSelectedFcn = createCallbackFcn(app, @Set_Fit_Terms, true);
            app.DecayExp_Terms_Menu.Text = 'Decay Exponential Terms';

            % Create MethodMenu
            app.MethodMenu = uimenu(app.PeakParametersMenu);
            app.MethodMenu.Text = 'Method';

            % Create PeakMenu
            app.PeakMenu = uimenu(app.MethodMenu);
            app.PeakMenu.MenuSelectedFcn = createCallbackFcn(app, @epeakparams, true);
            app.PeakMenu.Checked = 'on';
            app.PeakMenu.Text = 'Peak';

            % Create ProminenceMenu
            app.ProminenceMenu = uimenu(app.MethodMenu);
            app.ProminenceMenu.MenuSelectedFcn = createCallbackFcn(app, @epeakparams, true);
            app.ProminenceMenu.Text = 'Prominence';

            % Plot Dummy Data
%             plot(app.Prim_Chan_Ax,1:1:100,1:1:100)
%             plot(app.Aux_Chan_Ax,1:1:100,1:1:100)

            %set unused listeners
            %             app.Aux_Chan_Ax.ButtonDownFcn = createCallbackFcn(app, @BrushCall, true);
            %             app.Aux_Chan_Ax.ButtonDownFcn.Enabled=false
            %             app.Prim_Chan_Ax.ButtonDownFcn.Enabled=false
            %        app.Aux_Chan_Ax.Tag='Auxillary'

        end

        function results = Set_Brush_Listen(app)
            %            app.brushlistener=addlistener(app.Prim_Chan_Ax.Children, 'BrushData', 'PostSet', @(src, evnt)app.BrushCall)
        end

        function [x1,y1,ynorm,stats] = TraceBackPeaks(app,handle,XData,YData,edisp_peaksplotX,edisp_peaksplot,ImgPeaktimes,EpPeaktimes,t_positive,t_negative,dX);
            try
                currentfile=app.Data_Selection
                if app.lastfile==currentfile
                    app.ftime=0;
                end
                if app.ftime==0
                    app.ftime=ImgPeaktimes;
                else
                    app.ftime(numel(app.ftime)+1)=ImgPeaktimes;
                end
            end

            app.PeakStats=cell2table(num2cell(zeros(1,25)),'VariableNames',{'FNum','Peak_amp','Min','Peak_Time','pc20_Imgpeak','pc20_ImgTime','EP_PeakTime','pc50_Imgpeak','pc50_ImgTime','pc80_Imgpeak','pc80_ImgTime','slope_20_80','dT_20pc_AP','dT_50pc_AP',...
                'Img_TracedataX','Img_TracedataY','EP_TraceDataX','EP_TraceDataY','ImgRise_FitX','ImgRise_FitY','ImgRise_Func','ImgDecayFit','ImgDecayFunc','ImgExp_Tau','ImgExp_Amp'});
            for i=1:size(ImgPeaktimes,2);
                Peak_T_Indices=XData>=ImgPeaktimes(i)-t_negative & XData<=ImgPeaktimes(i);
                Decay_T_Indices=XData>=ImgPeaktimes(i) & XData<=ImgPeaktimes(i)+t_positive;
                PeakY=YData(Peak_T_Indices);
                PeakX=XData(Peak_T_Indices);
                poly=polyfit(PeakX,PeakY,app.Num_Rise_Fit_Terms);
                x1 = PeakX(1):dX:PeakX(end);
                y1 = polyval(poly,x1);
                ynorm=normalize(y1,'range');
                pc20_idx=ynorm>=0.17 & ynorm<=0.23;
                pc50_idx=ynorm>=0.47 & ynorm<=0.53;
                pc80_idx=ynorm>=0.77 & ynorm<=0.83;
                slope=nanmean(y1(pc80_idx),2)-nanmean(y1(pc20_idx),2)/nanmean(x1(pc80_idx),2)-nanmean(x1(pc20_idx),2);
                dT_20pc_AP=EpPeaktimes(i)-nanmean(x1(pc20_idx),2);
                dT_50pc_AP=EpPeaktimes(i)-nanmean(x1(pc50_idx),2);
                PeakYImg=max(y1,[],'all');%peak of the Polyfit
                app.PeakStats(i,'pc20_Imgpeak')={nanmean(y1(pc20_idx),2)};
                app.PeakStats(i,'pc50_Imgpeak')={nanmean(y1(pc50_idx),2)};
                app.PeakStats(i,'pc80_Imgpeak')={nanmean(y1(pc80_idx),2)};
                app.PeakStats(i,'Peak_amp')={PeakYImg};
                app.PeakStats(i,'pc20_ImgTime')={nanmean(x1(pc20_idx),2)};
                app.PeakStats(i,'pc50_ImgTime')={nanmean(x1(pc50_idx),2)};
                app.PeakStats(i,'pc80_ImgTime')={nanmean(x1(pc80_idx),2)};
                app.PeakStats(i,'Peak_Time')={ImgPeaktimes(i)};
                app.PeakStats(i,'EP_PeakTime')={EpPeaktimes(i)};
                app.PeakStats(i,'slope_20_80')={nanmean(y1(pc80_idx),2)-nanmean(y1(pc20_idx),2)/(nanmean(x1(pc80_idx),2)-nanmean(x1(pc20_idx),2))};
                app.PeakStats(i,'Min')={min(PeakY)};
                app.PeakStats(i,'dT_20pc_AP')={dT_20pc_AP};
                app.PeakStats(i,'dT_50pc_AP')={dT_50pc_AP};
                if app.Datastore_class(app.Data_Selection,1).Subtype=="Raster"
                    app.PeakStats(i,'FNum')={app.ROIsListBox.Value};
                else
                    app.PeakStats(i,'FNum')={app.Data_Selection};
                end
                app.Peakdata(i).Img_TracedataX={XData};
                app.Peakdata(i).Img_TracedataY={YData};
                app.Peakdata(i).EP_TracedataX={edisp_peaksplotX};
                app.Peakdata(i).EP_TracedataY={edisp_peaksplot};
                app.Peakdata(i).ImgRise_FitX={x1};
                app.Peakdata(i).ImgRise_FitY={y1};


                ephystrace=normalize(edisp_peaksplot,'range');
                %% plot rise etc. on data display
                cla(app.ArrayDataplot);
                hold(app.ArrayDataplot,'on');
                app.Dataax_plot.PrimTraceData=plot(app.ArrayDataplot,YData,'XData',XData,"Tag",'Data');
                try
                    app.Dataax_plot.ImTime50=xline(app.ArrayDataplot,app.PeakStats.pc50_ImgTime(i),'-.',"Color",'black',"Tag",'Display','alpha',0.7);
                    app.Dataax_plot.ImTime20=xline(app.ArrayDataplot,app.PeakStats.pc20_ImgTime(i),'-.',"Color",'black',"Tag",'Display','alpha',0.7);
                end
                app.Dataax_plot.EPTraceData=plot(app.ArrayDataplot, ephystrace,'XData',edisp_peaksplotX,"Visible",'off',"Tag",'Data');
                app.Dataax_plot.PeakData=scatter(app.ArrayDataplot,ImgPeaktimes(i),PeakYImg,29,'black',"filled","Tag",'Display');
                app.ArrayDataplot.YLim=[min(YData,[],'all') max(YData,[],'all')];app.ArrayDataplot.XLim=[min(XData,[],'all') max(XData,[],'all')];
                app.Dataax_plot.RiseFitData=plot(app.ArrayDataplot,x1,y1,"Color",'r',"Tag",'Display');
                app.Dataax_plot.EPTime=xline(app.ArrayDataplot,app.PeakStats.EP_PeakTime(i),"Color",'black',"LineStyle",'-.',"Tag",'Display');
                hold(app.ArrayDataplot,'off');
                %%Briefly plot rise etc. on main display
                hold(handle,'on');
                Poly_fit=plot(handle,x1,y1,"Color",'r',"Tag",'Display');
                try
                    ImPeak50=yline(handle,app.PeakStats.pc50_Imgpeak(i),'-.',"Color",'r',"Tag",'Display','alpha',1);
                    ImTime50=xline(handle,app.PeakStats.pc50_ImgTime(i),'-.',"Color",'black',"Tag",'Display','alpha',0.7);
                    ImTime20=xline(handle,app.PeakStats.pc20_ImgTime(i),'-.',"Color",'black',"Tag",'Display','alpha',0.7);
                end
                EPTime=xline(handle,app.PeakStats.EP_PeakTime(i),"Color",'b',"Tag",'Display');
                hold(handle,'off');
                % writetable(app.PeakStats,'state_funfacts.xlsx')
                num2cell(app.PeakStats.Variables);
                %                 app.PeakStats(1,'Img_TracedataX')=array2table({XData});
                %                 app.PeakStats(i,'Img_TracedataY')=array2table({YData});
                %                 app.PeakStats(i,'EP_TracedataX')=array2table({edisp_peaksplotX});
                %                 app.PeakStats(i,'EP_TracedataY')=array2table({edisp_peaksplot});
                %                 app.PeakStats(i,'ImgRise_FitX')=array2table({x1});
                %                 app.PeakStats(i,'ImgRise_FitY')=array2table({y1});
                %                 data2clip(cat(1,app.PeakStats.Properties.VariableNames,num2cell(app.PeakStats.Variables)));
                % table2cell(app.PeakStats)
                % Table2str=cat(1,arrayfun(@convertCharsToStrings,app.PeakStats.Properties.VariableNames),convertCharsToStrings(arrayfun(@num2str,app.PeakStats.Variables,'UniformOutput',false)))
                pause(2);
%                 if app.Hold_PrimChan_Ax.Value==1
%                     return
%                 end
                display=findall(app.Plot_Panel,'Tag','Display');
                delete(display);
                %                 delete(a)
                %                 delete(b)
                %                 delete(c)
                %                 delete(d)
                try
                    b=findall(app.Plot_Panel,'Type','Scatter','Tag','Display');
                    delete(b);
                end
                num2cell(app.PeakStats.Variables);
                %                 data2clip(cat(1,app.PeakStats.Properties.VariableNames,num2cell(app.PeakStats.Variables)));
                %                 app.Arraytable.Data=app.PeakStats
                columns=app.Arraytable.ColumnName;
                app.Arraytable.ColumnName=app.PeakStats.Properties.VariableNames;

                app.lastfile=app.Data_Selection;





                if app.AutoAddCheckBox.Value==1;
                    app.Add_traces;
                end
            end


        end

        function results = Brushcall1(app,event)
            try
                a=findall(app.Plot_Panel,'Type','Scatter');
                delete(a)
            end
            %
            % app.Parse_data_4_plot
            %%Get data from plots
            PrimCh=get(app.Prim_Chan_Ax,'Children');
            SecCh=get(app.Aux_Chan_Ax,'Children');
            imgX=PrimCh.XData;
            imgY=PrimCh.YData;
            ephysx=SecCh.XData;
            ephysy=SecCh.YData;
            F0start=app.Baseline_Min.Value;    %Get baseline minimum
            F0end=app.Baseline_Max.Value %Get baseline maximum
            Img_F0_Indices=imgX>=F0start & imgX<=F0end;

            if app.FilterCheckBox.Value==1                             %Filter data?

                % set peak data trace as separate variable'peaksplot' and calculate prominence threshold as n * std or baseline
                Img_T_Indices=imgX>=ROI_min-0.020 & imgX<=ROI_max;

                peaksplot=sgolayfilt(imgY,2,app.filterSpinner.Value)
                Threshold=std(peaksplot(:,Img_F0_Indices),[],2)*Prom;
                peaksplot=peaksplot(:,Img_T_Indices);
                peaksplotX=imgX(:,Img_T_Indices);
            else
                Img_T_Indices=imgX>=ROI_min-0.020 & imgX<=ROI_max;

                %             Img_T_Indices=imgX>=app.ROIminEditField.Value-0.020 & imgX<=app.ROImaxEditField.Value;
                Threshold=mean(imgY(:,Img_F0_Indices),2)+std(imgY(:,Img_F0_Indices),[],2)*Prom;
                peaksplot=imgY(:,Img_T_Indices);
                peaksplotX=imgX(:,Img_T_Indices);

                if app.PositivepeakCheckBox.Value==1
                    if app.PromButton.Value==1
                        [pks,locs,w,p]=findpeaks(peaksplot,peaksplotX,"NPeaks",1,"MinPeakDistance",Interval,"MinPeakProminence",Threshold,'MinPeakWidth', width_min,'Annotate','extents');
                    else
                        [pks,locs,w,p]=findpeaks(peaksplot,peaksplotX,"NPeaks",1,"MinPeakDistance",Interval,'MinPeakWidth', width_min,'MinPeakHeight', Threshold,'Annotate','extents');
                    end
                else
                    if app.PromButton.Value==1
                        [pks,locs,w,p]=findpeaks(-peaksplot,peaksplotX,"NPeaks",1,"MinPeakDistance",Interval,"MinPeakProminence",Threshold,'Annotate','extents');
                    else
                        [pks,locs,w,p]=findpeaks(-peaksplot,peaksplotX,"NPeaks",1,"MinPeakDistance",Interval,'MinPeakWidth', width_min,'MinPeakHeight', Threshold,'Annotate','extents');
                    end
                end

            end
        end

        function results = func41(app)

            app.Callback_to_set_Previous_Dataitem
        end



        function results = autoloadFGUI(app,filename)
            if ~iscell(filename)
                filename={filename}
            end
            if size(filename,2)>1
                replace=0
                if isfolder(filename{1,1})
                    fold=filename(1,1);
                    files=filename(1,[2:end]);
                    filename=cellfun(@fullfile,repmat(fold,[1,size(files,2)]),files,'UniformOutput',false);
                 a=0   
                end
            else
                replace=0
            end
           

            i=1
            if ~isfolder(filename)
            if filename{i,1}(1,[end-4:end])==".FGUI"
                dlg = msgbox('Load operation in progress...','Loading file');
                data=load(filename{i,1}, '-mat' ) ;
                data=data.data2save;
                if isstruct(data)==1
                    data=Old_ImData_2_New(data)
                end
                if ishghandle(dlg)
                    delete(dlg);
                end
            elseif filename{i,1}(1,[end-3:end])==".mat"
                dlg = msgbox('Load operation in progress...','Loading file');
                data=load(filename{i,1}, '-mat' ) ;
                data=data.data2save;
                if isstruct(data)==1
                    data=Old_ImData_2_New(data)
                end
                if ishghandle(dlg)
                    delete(dlg);
                end
            elseif filename{i,1}(1,[end-3:end])==".mes"

                data=LoadMESfile1(filename{i,1});

            elseif filename{i,1}(1,[end-3:end])==".abf"

                data=abf2ImData(filename{i,1});

            elseif filename{i,1}(1,[end-3:end])==".oib" 
                app.IJM=[]
                [axisinfo,meta,data]=oib2ImData(filename);
                app.IJM=ij.IJ()
            elseif filename{i,1}(1,[end-3:end])==".spc" | filename{i,1}(1,[end-3:end])==".SPC"

                if replace==0
                    progressbar(size(filename,2))
                    for i=1:size(filename,2)
                        progressbar(i/size(filename,2))
                        Data_in(i,1)=ImData
                        isG=~isempty(strfind(filename{1,i},'_m1_'))
                        if isG==1
                            channel=1
                            Import_FLIM_LS2(Data_in(i,1),filename{1,i},channel,3);
                            channel=2
                            filename2=strrep(filename{1,i},'_m1_','_m2_');
                            Import_FLIM_LS2(Data_in(i,1),filename2,channel,3);
                        else
                            channel=2
                            Import_FLIM_LS2(Data_in(i,1),filename{1,i},channel,3);
                            channel=1
                            filename2=strrep(filename{1,i},'_m2_','_m1_');
                            Import_FLIM_LS2(Data_in(i,1),filename2,channel,3);
                        end
                    end

                    app.importtype='Class';
                    app.Datastore_class=cat(1,app.Datastore_class,Data_in)
                    app.Datastore_class.findComment(app.ListBox_2);

                    return
                elseif replace==1

                    data=app.Datastore_class(app.Data_Selection,1);
                    if size(filename,1)==size(data,1)
                        for i=1:size(filename)
                            isG=~isempty(strfind(filename{i,1},'_m1_'))
                            if isG==1
                                channel=1
                                Import_FLIM_LS2(data(i,1),filename{i,1},channel,3);
                                channel=2
                                filename2=strrep(filename{i,1},'_m1_','_m2_');
                                Import_FLIM_LS2(data(i,1),filename2,channel,3);
                            else
                                channel=2
                                Import_FLIM_LS2(data(i,1),filename{i,1},channel,3);
                                channel=1
                                filename2=strrep(filename{i,1},'_m2_','_m1_');
                                Import_FLIM_LS2(data(i,1),filename2,channel,3);
                            end
                        end
                    end


                    app.importtype='Class';
                    app.Datastore_class.findComment(app.ListBox_2);
                end
                return
            elseif filename{i,1}(1,[end-4:end])==".mesc"
                data=LoadMESc(filename{i,1});
            elseif filename{i,1}(1,[end-3:end])==".gor"
                data=ImData_from_gor(filename{i,1});
            else
                app.IJM.open(filename);
            end
            
            else
            filename=strcat(filename{1,1},'/',"*.tif")
            files=dir(filename);
            prompt = {'Type (Line2,FF,XY):','Channel Order:'};
                        dlgtitle = 'Load .tif folder';
                        dims = 1;
                        definput = {'["Line2"]','["UG","ScX","ScY"]'};
            output=inputdlg(prompt,dlgtitle,dims,definput);
            type=eval(output{1,1});
            Channels=eval(output{2,1});
            for i=1:size(files,1)
                data(i,1)=load_tiff2ImData(files(i).name,type,Channels);
            end

            end

            data=arrayfun(@(x) FixSubtype(x),data,'UniformOutput',true)
            if isobject(data)
                app.Datastore_class=cat(1,app.Datastore_class,data);
                app.importtype='Class';
                app.Datastore_class.findComment(app.ListBox_2);

            end
       [filepath, name, ext]=fileparts(filename{:,1});
       app.defaultdir=cat(2,filepath,'/');
      
        end


    end

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            app.default_vars=defaultvars;
            if ispc==1
                app.MLpath=app.default_vars.MLpath;
                app.Macrospath=app.default_vars.Macrospath;
                app.Documentspath=app.default_vars.Documentspath;
                app.IJPath=app.default_vars.IJPath;
                app.FGUIpath=app.default_vars.FGUIpath;
            else
                app.MLpath=app.default_vars.macMLpath;
                app.Macrospath=app.default_vars.macMacrospath;
                app.Documentspath=app.default_vars.macDocumentspath;
                app.IJPath=app.default_vars.macIJPath;
                app.FGUIpath=app.default_vars.macFGUIpath;
            end
            try
                app.defaultdir=app.default_vars.Documentspath;
            catch
            end
            app.file2change=[];
            app.SharedData=0;
            app.DATAfile=[];
            %
            % ---------------------------------------------------
            % version related initialisation for parallel computing
            [ ver, date ] = version;
            release_yr = str2double(datestr(date,'YYYY'));
            switch release_yr
                case {2019,2020,2021,2022,2023,2024}
                    feature('accel','on');
                otherwise
                    errordlg(sprintf('Incompatible MATLAB Version.\nCurrent Version %s\nRequire >R2019b',ver),'Version Error','modal');
            end
            app.ftime=0;
            app.lastfile=1;
            switch app.ButtonGroup.SelectedObject.Text;
                case 'Gaussian'
                    app.fittype=sprintf('gauss%s',num2str(app.NumberDropDown.Value));
                    app.options=fitoptions(app.fittype);

                case 'Exponential'
                    app.fittype=sprintf('exp%s',num2str(app.NumberDropDown.Value));
                    app.options=fitoptions(app.fittype);
                case 'Linear'
                    app.fittype='linearinterp'
                    app.options=fitoptions(app.fittype);
                case 'Poly'
                    app.fittype=sprintf('poly%s',num2str(app.NumberDropDown.Value));
                    app.options=fitoptions(app.fittype);

            end
            app.cursorstruct=repmat(struct("selectedC1XIndices",[],"selectedC1Values",[],"Minimum",0.1,"Maximum",0.2),5,1);
            app.Baseline_Min;
            app.Baseline_Max;
            app.metainfoG=cell(1,4);
            app.fileidx=[];
            app.commentfile=[];
            app.Callback_to_Change_Labels_on_Ephys_timing;
            app.traces=[];
            app.maps=[];
            app.mapsxdata=[];
            app.mapsydata=[];
            app.commondims=[0.03,0.03,0.002];         
            app.baseline_cursor_min=0.1;
            app.Baseline_Cursor_max=0.2;
            app.Datastore=[];
            app.arraydata1=cell(1,5);
            app.arraydata2=cell(1,5);
            app.arraydata3=cell(1,5);
            app.arraydata4=cell(1,5);
            app.arraydata5=cell(1,5);
            app.Sec_menuselected='1000000';
            app.Prim_menuselected='10000';

            %set secondary peakfind propertys
            app.epeakfindprops.NPeaks='4';app.epeakfindprops.MinInt='40'; app.epeakfindprops.PeakorProm='Peak';
            app.epeakfindprops.Minwidth='Peak'; app.epeakfindprops.plus_or_min='+';
            
            for i=1:100;
                if i==1
                    a{i,1}='All Regions';
                else
                    a{i,1}=sprintf('Femto ROI%d',i-1);
                end
                b{i,1}=i;
            end
            app.ROIsListBox.Items=a;
            app.ROIsListBox.ItemsData=b;
            %            %%%generate_standard_trace_Display
            app.Prepare_trace_data_plots;
            %%Important LISTENER for Primary channel X-Axis, incompatable with <2020b for
            app.XList=addlistener(app.Prim_Chan_Ax, 'XLim', 'PostSet', @(src, evnt)app.XLim_shift_listener);
            app.ArrayDataDisplay=tiledlayout(app.Panel_2,1,1,"TileSpacing","none","Padding","none");
            app.ArrayDataplot=nexttile(app.ArrayDataDisplay,1,[1 1]);

            if ispc==1
                eval(app.default_vars.PCpath2add1);
                eval(app.default_vars.PCpath2add2);
                %javaaddpath 'C:\Program Files\MATLAB\R2022b\java\ij-1.53t.jar';

                MIJ.start(app.IJPath);
            else
                eval(app.default_vars.macpath2add1);
                eval(app.default_vars.macpath2add2);
                MIJ.start(app.IJPath);

            end
            app.Prim_ax_brush=brush(app.Prim_Chan_Ax);
            app.IJM=ij.IJ()
            banner=app.IJM.openImage(cat(2,app.FGUIpath,'Icons/FijiGUI.png'));
            banner.show();

            %              app.Aux_Ax_brush=brush(app.Aux_Chan_Ax);
            %               app.Prim_Chan_Ax.ButtonDownFcn = createCallbackFcn(app, @Brushcall1, true);
            app.Num_Rise_Fit_Terms=4;
            app.Num_Decay_Fit_Terms=1;
            app.Datastore_class=ImData;

            app.Datastore_class.findComment(app.ListBox_2);

            app.ListBox_2.Value=1;
            app.Data_Selection=1;
            app.importtype='Class';

           
            %DnD_uifigure(app.ListBox_2, @(o,dat)app.autoloadFGUI(dat.names{1,1}));
            %DnD_uifigure(app.ListBox_2, @(o,dat)app.autoloadFGUI(dat.names));
            app.Refresh_List_of_IJ_Macros
            app.Dataitem_Listbox_Callback;
            Vars=struct('Amplitude',0,'Width',0,'Centre',0,'Minimum',0,'Maximum',0,'Set',0);
            Vars=repmat(Vars,6,1);
            app.Variables=struct2table(Vars,'AsArray',1);
            app.VariablesTable.Data=app.Variables;
            app.VariablesTable.ColumnEditable=[true true true true true false];
            app.VariablesTable.RowName={"1","2","3","4","5","6"};
            banner.close();
            app.Prim_Chan_Ax.Tag='Prim';
            app.Aux_Chan_Ax.Tag='Aux';
        end

        % Button pushed function: AdjustBCButton, AutocontrastButton,
        % ...and 34 other components
        function IJ_Shortcuts(app, event)
            %%Runs all ImageJ shorcuts
            switch event.Source.Text
                case "Fiji ROI manager"
                    MIJ.run('ROI Manager...');

                case "ROI Manager Add"
                    app.IJM.runMacroFile(cat(2,app.Macrospath,'AddROI.txt'))
                case 'Run Macro'
                    app.IJM.runMacroFile(cat(2,app.Macrospath,'Percentile Threhold.txt'))
                case "Fiji Profile"
                    if app.Datastore_class(app.Data_Selection,1).Type=="FF"
                        MIJ.run('Plot Z-axis Profile')
                    else
                        MIJ.run('Plot Profile')
                    end

                case "Smooth"
                    MIJ.run('Smooth', 'slice');
                case "Select all"
                    MIJ.run('Select All');
                case "Copy"
                    MIJ.run('Copy');
                case "Copy (system)"
                    MIJ.run('Copy to System');
                case "Paste"
                    MIJ.run('Paste');
                case "Duplicate"
                    MIJ.run('Duplicate...');
                case "Sharpen"
                    MIJ.run('Sharpen');
                    
                case "Adjust B/C"
                    MIJ.run("Brightness/Contrast...");
                case "Crop"
                    MIJ.run('Crop');
                case "Inferno"
                    MIJ.run('mpl-inferno');
                case "Viridis"
                    MIJ.run('mpl-viridis');
                case "Magma"
                    MIJ.run('mpl-magma');
                case "Green"
                    MIJ.run('Green');
                case "Red"
                    MIJ.run('Red');
                case "Red Hot"
                    MIJ.run('Red Hot');
                case "G-Fire Blue"
                    MIJ.run('Green Fire Blue');
                case "Magenta Hot"
                    MIJ.run('Magenta Hot');
                case "Fire"
                    MIJ.run('Fire');
                case "Auto contrast"
                    MIJ.run('Enhance Contrast', 'saturated=0.35');
                case "Reslice Stack"
                    MIJ.run("Reslice [/]...", "start=Top avoid");
                case ""
                    switch event.Source.Icon
                        case "flipvert.png"
                            MIJ.run('Flip Vertically');
                        case "in.png"
                            MIJ.run('In [+]');
                        case "out.png"
                            MIJ.run('Out [-]');
                        case "rotate.png"
                            MIJ.run('Rotate... ');
                        case "cclock.png"
                            MIJ.run('Rotate 90 Degrees Left');
                        case "fliphor.png"
                            MIJ.run('Flip Horizontally');
                        case "clock.png"
                            MIJ.run('Rotate 90 Degrees Right');
                        case "normoff_icon.png"
                            instruct=sprintf('MIJ.run(''Translate...'', ''x=0 y=%0.2f interpolation=None'');',app.DistanceSet.Value)
                            eval(instruct)
                            %                           MIJ.run('Translate...', 'x=0 y=1 interpolation=None');
                        case "Down.png"
                            instruct=sprintf('MIJ.run(''Translate...'', ''x=0 y=-%0.2f interpolation=None'');',app.DistanceSet.Value)
                            eval(instruct)
                        case "Left.png"
                            instruct=sprintf('MIJ.run(''Translate...'', ''x=%0.2f y=0 interpolation=None'');',app.DistanceSet.Value)
                            eval(instruct)
                        case "right.png"
                            instruct=sprintf('MIJ.run(''Translate...'', ''x=-%0.2f y=0 interpolation=None'');',app.DistanceSet.Value)
                            eval(instruct)
                    end
                case "Stack2Images"
                    MIJ.run('Images to Stack', 'name=Stack title=[] use');
                case "Images2Stack"
                    MIJ.run('Images to Stack', 'name=Stack title=[] use');
                case "Average Stack"
                    MIJ.run('Z Project...', 'projection=[Average Intensity]');
                case "3D-Project"
                    MIJ.run('3D Project...');
                case "Auto Contrast"
                    MIJ.run('Enhance Contrast', 'saturated=0.35');
            end
        end

        % Callback function
        function Set_Fit_Terms(app, event)

            %% Callback to set the number of fitting terms on peak fit, the UI element this is linked to is created programatically following startup.
            %% The function Prepare_trace_data_plots is called to create this


            if event.Source.Text=="Rise Polyfit Terms"
                Terms = inputdlg('Number of Polynomial Terms','Rise fit terms',[1 55],{''});
                str2double(Terms{1,1})
                app.Num_Rise_Fit_Terms=str2double(Terms{1,1});

            elseif event.Source.Text=="Decay Exponential Terms"
                Terms = inputdlg('Number of Decay Exponentials','Decay fit terms',[1 55],{''});
                str2double(Terms{1,1})
                app.Num_Decay_Fit_Terms=str2double(Terms{1,1})
            end
        end

        % Button pushed function: IJ_Horizontal_Profile_X_T,
        % IJ_Horizontal_Profile_Y_T, IJ_Horizontal_Profile_Z_T
        function IJ_Profile(app, event)
            %Install Log profile macro update 07092021 to IJ Macros
            %directory in scripts
            if event.Source.Text=="Profile X"
                MIJ.run('Plot Profile');
            elseif event.Source.Text=="Profile Y"
                MIJ.run('Plots...', 'width=530 height=300 font=12 draw draw_ticks minimum=0 maximum=0 vertical interpolate');
                MIJ.run('Plot Profile'); %plot profile    
                MIJ.run('Plots...', 'width=530 height=300 font=12 draw draw_ticks minimum=0 maximum=0 interpolate');
            elseif event.Source.Text=="Profile Z"
                MIJ.run('Plot Z-axis Profile');
            end
            app.IJM.runMacroFile(cat(2,app.Macrospath,'MATlogprofile.txt'));
            app.profile=str2num(MIJ.getLog);
            app.roi_2_plot=app.profile(:,2);
            MIJ.selectWindow('Log');
            MIJ.run('Close');
            MIJ.run('Close');

            if app.IJ_Centre_Profile.Value==1
                Xnorm2cent(:,1)=app.profile(:,1)-max(app.profile(:,1))/2;
                app.Xnormprofile=Xnorm2cent(:,1);
                app.Xnormprofile(:,2)=app.profile(:,2);
                plot(app.Prim_Chan_Ax,app.Xnormprofile(:,2),'XData',app.Xnormprofile(:,1));
                num2clip(app.Xnormprofile);
                app.vpro=app.Xnormprofile;
            else
                % plot(app.Prim_Chan_Ax,profile(:,2),'XData',profile(:,1))
                num2clip(app.profile);
                app.DATA.XData=transpose(app.profile(:,1));
                app.roi_2_plot=transpose(app.profile(:,2));
                plot(app.Prim_Chan_Ax,app.roi_2_plot,'XData',app.DATA.XData);
                app.Prim_Chan_Ax.XLim=[min(app.DATA.XData,[],"all") max(app.DATA.XData,[],"all")];
                %             app.Prim_Chan_Ax.XLimMode='auto'
            end
            if app.NButton.Value==1
                app.Set_new_data(event);
            end
        end

        % Callback function: ListBox_2, ListBox_2, RefreshButton_3
        function Dataitem_Listbox_Callback(app, event)

            % app.clickcallback
            cla(app.Prim_Chan_Ax);
            cla(app.Aux_Chan_Ax);
            if iscell(app.ListBox_2.Value)==1
                app.Data_Selection=cell2mat(app.ListBox_2.Value);
            else
                app.Data_Selection=app.ListBox_2.Value;
            end


            %             if iscell(app.ListBox_2.Value)==1 & app.PlotSelectedCheckBox.Value==1
            if numel(app.Data_Selection) > 1 & app.PlotSelectedCheckBox.Value==1;
                app.plotmultiple;
            else
                app.Parse_data_4_plot;
            end
            
            try
                app.PrimAx_info_label.Text=sprintf('%d samples, %.1fHz, [%d X %d x %d pixels]  %s',size(app.Datastore_class(app.Data_Selection,1).UG,2),1/app.Datastore_class(app.Data_Selection,1).TData(2)-app.Datastore_class(app.Data_Selection,1).TData(1),size(app.Datastore_class(app.Data_Selection,1).UG,1),size(app.Datastore_class(app.Data_Selection,1).UG,2),size(app.Datastore_class(app.Data_Selection,1).UG,3),string(app.Datastore_class(app.Data_Selection, 1).Time));
                app.SecAx_info_label.Text=sprintf('%d samples, %.1fHz',size(app.Datastore_class(app.Data_Selection,1).Aux1,2),1/app.Datastore_class(app.Data_Selection,1).eXData(2)-app.Datastore_class(app.Data_Selection,1).eXData(1));

            end

            app.Commentedit.Value=app.Datastore_class(app.Data_Selection,1).comment;
            %  app.Commentedit.Value=app.DATA.comment
            if app.Greencheck.Value==1
                app.IJ_open_Green_or_Red_Channel;
            elseif app.Redcheck.Value==1
                app.IJ_open_Green_or_Red_Channel;
            elseif app.TiRcheck.Value==1
                app.IJ_open_TiR_channel;
            elseif app.BKGcheck.Value==1
                app.IJ_Open_Background_Green;
            elseif app.BKGRceck.Value==1
                app.IJ_Open_Background_Red;
            end
            try
                if app.Datastore_class(app.Data_Selection,1).Type~="XY"
                    %app.Datastore_class(app.Data_Selection, 1).ROIobj.findComment(app.ROIsListBox);
                end
            end

            try
                app.sharedapp.newdata(app.Datastore_class(app.Data_Selection,1));
            catch ME
                assignin('base','message',ME.message);
            end


            try
                app.DATAfile.Newdata(app.Datastore_class(app.Data_Selection,1),app.Data_Selection);
            catch
                'Newdata might not be open?';
            end

            imtype=app.Datastore_class(app.Data_Selection(1,1),1).Type;
            if imtype=="FF"
                try
                    app.StackControlSlider.Visible=1;
                    app.StackControlSlider.Limits=[min(app.Datastore_class(app.Data_Selection(1)).TData),max(app.Datastore_class(app.Data_Selection(1,1),1).TData)]
                end
            elseif imtype=="XY"
                app.StackControlSlider.Visible=1;
                app.StackControlSlider.Limits=[min(app.Datastore_class(app.Data_Selection(1)).ZData),max(app.Datastore_class(app.Data_Selection(1,1),1).ZData)]
            else
                app.StackControlSlider.Visible=0;
            end
            try
                app.StatisticDropDown.Items=fieldnames(app.Datastore_class(app.Data_Selection,1).STAT)
            end
        end

        % Button pushed function: AllMsButton, ChanGButton, ChanRButton,
        % ...and 2 other components
        function IJ_open_Green_or_Red_Channel(app, event)
            %Opens the Primary Green Channel (ImData.UG) in Image J
            if app.Display1ImageCheckBox.Value==1
                MIJ.closeAllWindows;
            end

            try

                %             if app.Datastore_class(app.Data_Selection,1).file=="Line2"
                %                 try
                if event.Source.Text=="Chan G"
                    %app.Datastore=app.Datastore_class(app.Data_Selection,1).IJsave2tif('c:/',"UG",0)
                    Datastore=arrayfun(@(x) x.IJsave2tif('c:/',"UG",0,str2double(app.Normalisation.Value),app.Baseline_Min.Value,app.Baseline_Max.Value),app.Datastore_class(app.Data_Selection,1),"UniformOutput",false);
                    %                         [~,img,~,~,~]=app.Datastore_class(app.Data_Selection,1).Image_LSData_2D(1,[],app.DFFButton.Value,app.Baseline_Min.Value,app.Baseline_Max.Value,viridis,0,0,0);
                    %                  img=app.Datastore_class(app.Data_Selection,1).UG;
                elseif event.Source.Text=="Chan R"
                    %app.Datastore=app.Datastore_class(app.Data_Selection,1).IJsave2tif('c:/',"UR",0)
                    Datastore=arrayfun(@(x) x.IJsave2tif('c:/',"UR",0,str2double(app.Normalisation.Value),app.Baseline_Min.Value,app.Baseline_Max.Value),app.Datastore_class(app.Data_Selection,1),"UniformOutput",false);
                    %                         [~,img,~,~,~]=app.Datastore_class(app.Data_Selection,1).Image_LSData_2D(2,[],app.DFFButton.Value,app.Baseline_Min.Value,app.Baseline_Max.Value,viridis,0,0,0);
                    %                  img=app.Datastore_class(app.Data_Selection,1).UR  ;
                elseif event.Source.Text=="ScX"
                    app.Datastore=app.Datastore_class(app.Data_Selection,1).IJsave2tif('c:/',"ScX",0)
                    Datastore=arrayfun(@(x) x.IJsave2tif('c:/',"ScX",0),app.Datastore_class(app.Data_Selection,1),"UniformOutput",false);
                elseif event.Source.Text=="ScY"
                    app.Datastore=app.Datastore_class(app.Data_Selection,1).IJsave2tif('c:/',"ScY",0)
                elseif event.Source.Text=="TiR"
                    app.Datastore=app.Datastore_class(app.Data_Selection,1).IJsave2tif('c:/',"TiR",0)
                elseif event.Source.Text=="All M's"
                    app.Datastore=app.Datastore_class(app.Data_Selection,1).IJsave2tif('c:/',"Combined",0,str2double(app.Normalisation.Value),app.Baseline_Min.Value,app.Baseline_Max.Value)
                end
            catch ME
                if ME.message=="Not enough input arguments."
                    if app.Greencheck.Value==1
                        Datastore=arrayfun(@(x) x.IJsave2tif('c:/',"UG",0,str2double(app.Normalisation.Value),app.Baseline_Min.Value,app.Baseline_Max.Value),app.Datastore_class(app.Data_Selection,1),"UniformOutput",false);
                    elseif app.Redcheck.Value==1
                        Datastore=arrayfun(@(x) x.IJsave2tif('c:/',"UR",0,str2double(app.Normalisation.Value),app.Baseline_Min.Value,app.Baseline_Max.Value),app.Datastore_class(app.Data_Selection,1),"UniformOutput",false);

                    end
                end
            end
           
            app.lastimgtype="measurement";
            MIJ.run('Enhance Contrast', 'saturated=0.35');
            %             MIJ.run('Green Fire Blue');
            %             MIJ.run("rename('UG')");
        end

        % Button pushed function: TiRButton
        function IJ_open_TiR_channel(app, event)
            %Opens the Transmitted Light Channel (ImData.TiR) in Image J
            if app.Display1ImageCheckBox.Value==1
                MIJ.closeAllWindows;
            end
            MIJ.createImage(app.Datastore_class(app.Data_Selection,1).TiR);
            xpix=app.Datastore_class(app.Data_Selection,1).x_pixel_size
            ypix=app.Datastore_class(app.Data_Selection,1).y_pixel_size
            img=app.Datastore_class(app.Data_Selection,1).TiR;


            switch app.Datastore_class(app.Data_Selection,1).file
                case 'Line2'
                    a="MIJ.run('Properties...', 'unit=micron pixel_width=%d pixel_height=%d')"
                    eval(sprintf(a,xpix,ypix));
                case 'XY'
                    if size(img,3)>1
                        zpix=app.Datastore_class(app.Data_Selection,1).z_pixel_size
                        a="MIJ.run('Properties...', 'unit=micron pixel_width=%d pixel_height=%d voxel_depth=%d')"
                        eval(sprintf(a,xpix,ypix,zpix));
                    elseif  size(img,3)==1
                        a="MIJ.run('Properties...', 'unit=micron pixel_width=%d pixel_height=%d')"
                        eval(sprintf(a,xpix,ypix));
                    end
                case 'FF'
                    timestep=app.Datastore_class(app.Data_Selection,1).FoldedFrameInfo.frameTimeLength/1000
                    a="MIJ.run('Properties...', 'unit=micron pixel_width=%d pixel_height=%d voxel_depth=%d')"
                    eval(sprintf(a,xpix,ypix,timestep));
            end
            MIJ.run('Enhance Contrast', 'saturated=0.35');




            app.lastimgtype="measurement"
        end

        % Button pushed function: BKGGButton
        function IJ_Open_Background_Green(app, event)
            %Opens the Green Channel (ImData.bkgUG) in Image J
            if app.Display1ImageCheckBox.Value==1
                MIJ.closeAllWindows;
            end
            MIJ.createImage(app.Datastore_class(app.Data_Selection,1).bkgUG);
            a="MIJ.run('Properties...', 'unit=micron pixel_width=%d pixel_height=%d')"

            xpix=app.Datastore_class(app.Data_Selection,1).bkgx_pixel_size
            ypix=app.Datastore_class(app.Data_Selection,1).bkgy_pixel_size
            eval(sprintf(a,xpix,ypix))
            app.lastimgtype="BKG"
            MIJ.run('Enhance Contrast', 'saturated=0.35');
            MIJ.run('Green Fire Blue');
        end

        % Button pushed function: BKGRButton
        function IJ_Open_Background_Red(app, event)
            %Opens the Red Channel (ImData.bkgUR) in Image J
            if app.Display1ImageCheckBox.Value==1
                MIJ.closeAllWindows;
            end
            MIJ.createImage(app.Datastore_class(app.Data_Selection,1).bkgUR);
            a="MIJ.run('Properties...', 'unit=micron pixel_width=%d pixel_height=%d')"

            xpix=app.Datastore_class(app.Data_Selection,1).bkgx_pixel_size
            ypix=app.Datastore_class(app.Data_Selection,1).bkgy_pixel_size
            eval(sprintf(a,xpix,ypix))
            app.lastimgtype="BKG"
            MIJ.run('Enhance Contrast', 'saturated=0.35');
            MIJ.run('Green Fire Blue');
        end

        % Button pushed function: IJ_Line_Selection
        function IJ_Make_Line(app, event)
            app.IJM.setTool("line");
        end

        % Value changed function: IJ_Line_Width_Control
        function IJ_Control_Line_Width(app, event)
            %Sets the Linewidth of ImageJ Line profile selections
            value = app.IJ_Line_Width_Control.Value;
            switch app.Datastore_class(app.Data_Selection,1).file
                case 'Line2'
                    if app.lastimgtype=="BKG"
                        linewidth=round(app.IJ_Line_Width_Control.Value/app.Datastore_class(app.Data_Selection,1).bkgx_pixel_size);
                        eval(sprintf('MIJ.run("Line Width...", "line=%d")',linewidth));
                    else

                        linewidth=round(app.IJ_Line_Width_Control.Value/app.Datastore_class(app.Data_Selection,1).y_pixel_size);
                        eval(sprintf('MIJ.run("Line Width...", "line=%d")',linewidth));
                    end
                case 'FF'
                    if app.lastimgtype=="BKG"
                        linewidth=round(app.IJ_Line_Width_Control.Value/app.Datastore_class(app.Data_Selection,1).bkgx_pixel_size);
                        eval(sprintf('MIJ.run("Line Width...", "line=%d")',linewidth));
                    else

                        linewidth=round(app.IJ_Line_Width_Control.Value/app.Datastore_class(app.Data_Selection,1).x_pixel_size);
                        eval(sprintf('MIJ.run("Line Width...", "line=%d")',linewidth));
                    end
                case 'XY'

                    linewidth=round(app.IJ_Line_Width_Control.Value/app.Datastore_class(app.Data_Selection,1).x_pixel_size);
                    eval(sprintf('MIJ.run("Line Width...", "line=%d")',linewidth));
            end
        end

        % Button pushed function: IJ_Segmented_Line_Selction
        function IJ_set_Segmented_Line(app, event)
            %Selects ImageJ Polyline Tool via Macro in Fiji.app directory
            app.IJM.setTool("polyline");
        end

        % Button pushed function: IJ_Square_Selection
        function IJ_set_Rectangle(app, event)
            %Selects ImageJ Rectangle Tool via Macro in Fiji.app directory
            app.IJM.setTool("rectangle")
        end

        % Callback function: ExitMenu_2, FijiGUIUIFigure
        function Figure_Shutdown_Callback(app, event)
            %Close Down and Save file request
            msg = 'Save data before exit?';
            title = 'Confirm session end';
            selection = uiconfirm(app.FijiGUIUIFigure,msg,title, ...
                'Options',{'Yes', 'No','cancel'}, ...
                'DefaultOption',1,'CancelOption',3);

            %exportloc=questdlg('Save data before exit?','Yes','Yes', 'No','cancel')
            if selection=="Yes"
                data2save=app.Datastore_class;
                [filename, pathname, filterindex] = uiputfile({'*.FGUI','Fiji-GUI Files (*.FGUI)'});
                savename=cat(2,pathname,filename);
                save(savename, 'data2save' );
                datasaved=1
                delete(app)
            elseif selection=="No"
                try
                    movefile(app.file2change,app.fileref,'f');
                end
                delete(app)
            elseif selection=="Cancel"
                return
            end


            try
                movefile(app.file2change,app.fileref,'f');


            end

        end

        % Callback function
        function Callback_to_Hold_Primary_plot(app, event)
            value = app.Hold_PrimChan_Ax.Value;
            if app.Hold_PrimChan_Ax.Value==1
                hold(app.Prim_Chan_Ax,"on")
                hold(app.Aux_Chan_Ax,"on")
            else
                hold(app.Prim_Chan_Ax,"off")
                hold(app.Aux_Chan_Ax,"off")
            end
        end

        % Callback function
        function Set_Fit_Parameter_Table_Cols(app, event)

            switch app.ButtonGroup.SelectedObject.Text;
                case 'Gauss'
                    app.fittype=sprintf('gauss%s',num2str(app.NumberDropDown.Value));
                    app.options=fitoptions(app.fittype);

                case 'Exp'
                    app.fittype=sprintf('exp%s',num2str(app.NumberDropDown.Value));
                    app.options=fitoptions(app.fittype);

                case 'Linear'
                    app.fittype='linearinterp';
                    app.options=fitoptions(app.fittype);

                case 'Poly'
                    app.fittype=sprintf('poly%s',num2str(app.NumberDropDown.Value));
                    app.options=fitoptions(app.fittype);

            end

            paramsvals=zeros(str2num(app.NumberDropDown.Value),3);
            minboundvals=-inf(str2num(app.NumberDropDown.Value),1);
            maxboundsvals=inf(str2num(app.NumberDropDown.Value),1);
            boundsvals=cat(2,minboundvals,maxboundsvals);
            app.FitParams.Data=cell2table(num2cell(paramsvals));
        end

        % Button pushed function: ScaleinputButton
        function Scale_Prim_Ax_Data(app, event)
            if app.IJ_Centre_Profile.Value==1
                x=app.vpro(:,1);
                y=app.vpro(:,2);
            else
                x=app.profile(:,1);
                y=app.profile(:,2);
            end

            %             x=app.Pri;m_Chan_Ax.Children(3).XData
            %            y=app.Prim_Chan_Ax.Children(3).YData;


            max_val=1;baseline=0;
            y_scaled=y-min(y);
            y_scaled=y_scaled/max(y_scaled);
            y_scaled=y_scaled*(max_val-baseline)+baseline;
            plot(app.Prim_Chan_Ax,y_scaled,'XData',x);
            app.scaled_data(:,1)=transpose(x);
            app.scaled_data(:,2)=transpose(y_scaled);
            num2clip(app.scaled_data);

            if app.IJ_Centre_Profile.Value==1
                app.vpro=app.scaled_data;
            else
                app.profile=app.scaled_data;
            end

        end

        % Value changed function: IJ_Centre_Profile
        function Centre_Prim_Ax_Profile(app, event)
            value = app.IJ_Centre_Profile.Value;

        end

        % Button pushed function: FWHMButton
        function Display_FWHM_of_Gaussian(app, event)
            app.FWHM=fwhm(app.XVals(1,:),app.Yvals(:,1));
            app.FWHMEditField.Value=app.FWHM;
        end

        % Button pushed function: Copy_Data_from_Prim_Ax
        function Copy_Primary_Axes_Traces(app, event)


            comments=get(app.Prim_Chan_Ax.Children,'UserData');% get ydata
            datax=get(app.Prim_Chan_Ax.Children,'XData');% get xdata
            datay=get(app.Prim_Chan_Ax.Children,'YData');% get ydata

            if size(datax,1)==1%single line to export

                XYtraces(:,1)=datax;
                XYtraces(:,2)=datay;
            else


                % datax=datax(1:end-1,1)
                % datay=datay(1:end-1,1)


                datax=get(app.Prim_Chan_Ax.Children,'XData');% get xdata
                datay=get(app.Prim_Chan_Ax.Children,'YData');% get ydata
                a=0
                [~,ncols] = cellfun(@size,datay,'UniformOutput',false);% get size of each plot
                ncols=cell2mat(ncols); %convert to num
                ncols1=max(ncols);% get maximum size

                daty=NaN(size(datay,1),ncols1); %preallocate NaN array of n traces by maximum length
                datx=NaN(size(datay,1),ncols1);%preallocate NaN array of n traces by maximum length


                for i=1:size(daty,1) %loop to convert cell array to double matrix
                    daty(i,[1:ncols(i,1)])=cell2mat(datay(i,1));
                    datx(i,[1:ncols(i,1)])=cell2mat(datax(i,1));
                end

                daty=fliplr(transpose(daty));%reformat to columns=traces,rows=time, L-R=order of adding columns to axes
                datx=fliplr(transpose(datx));

                XYtraces = daty(:,[1;1]*(1:size(daty,2)));%interleave X and Y matrices
                XYtraces(:,1:2:end) = datx;
            end

            num2clip(XYtraces);%copy to clipboard
            celldata=num2cell(XYtraces);
            CellDatacomments=comments.';
            commentinterleave=repmat({""},1,numel(CellDatacomments));
            CellDatacomments = CellDatacomments(:,[1;1]*(1:size(CellDatacomments,2)));
            % CellDatacomments(:,1:2:end) = commentinterleave;

            % data_comments=cat(1,CellDatacomments,celldata)
            


        end

        % Callback function
        function fitexp(app, event)
            %gets the number of terms to fit the data with
            numexp=sprintf('exp%s',num2str(app.OptionsDropDown.Value));

            %gets start and end of the data to be fitting
            app.fitymax = interp1(app.profile(:,1),app.profile(:,2),app.minXfit);
            app.fitymin = interp1(app.profile(:,1),app.profile(:,2),app.maxXfit);

            %prepares the fitoptions object
            app.exp_options=fitoptions(numexp);

            %Sets upper and lower bounds of the fit
            app.exp_options.Upper=app.fitymax;
            app.exp_options.Lower=app.fitymin;

            % determines is data is normalised to the centre of X data points
            if app.IJ_Centre_Profile.Value==1
                [data,fitvalues]=fit(app.vpro([app.minXfit:app.maxXfit],1),app.vpro([app.minXfit:app.maxXfit],2),numexp,app.exp_options);
            else
                [data,fitvalues]=fit(transpose(interp1(app.profile(:,1),app.profile(:,2),app.minXfit:0.25:app.maxXfit)),transpose(app.minXfit:0.25:app.maxXfit),numexp,app.exp_options);
            end

            %             app.XVals=min(app.vpro(:,1)):0.025:max(app.vpro(:,1)) gets X
            %             values for fitting from X data size
            app.XVals=app.minXfit:0.025:app.maxXfit%gets X
            %             values for fitting from X data size
            %           Querys the fit object from minimum to maximum X
            app.Yvals=data(app.XVals);
            app.fitdata=[];
            app.fitdata(:,1)=transpose(app.XVals);
            app.fitdata(:,2)=app.Yvals;
            %Plots the fitting line profile
            hold(app.Prim_Chan_Ax,'on');
            plot(app.Prim_Chan_Ax,app.XVals(1,:),app.Yvals(:,1));
            hold(app.Prim_Chan_Ax,'off');
            try
                app.Display_FWHM_of_Gaussian
            end
        end

        % Button pushed function: RefreshButton_2
        function Refresh_List_of_IJ_Macros(app, event)
            a=dir(app.Macrospath);
            files=struct2cell(a);
            app.MacrosListBox_2.Items=files(1,[3:end]).';
            app.MacrosListBox_2.ItemsData =fullfile(files(2,2:end).',files(1,2:end).');
        end

        % Menu selected function: DebugMenu
        function Callback_to_Insert_Breakpoint(app, event)
            %insert breakpoint to make debug button
            'Insert a Breakpoint'
        end

        % Selection changed function: ButtonGroup
        function Callback_to_Select_Fit_Type(app, event)
            selectedButton = app.ButtonGroup.SelectedObject;
            app.Set_Fit_Parameter_Table_Cols;
        end

        % Value changed function: NumberDropDown
        function Callback_to_Select_Number_of_fit_terms(app, event)
            value = app.NumberDropDown.Value;
            app.Set_Fit_Parameter_Table_Cols;
        end

        % Button pushed function: FitButton
        function Callback_to_Fit_selected_data(app, event)
            app.FIT;
        end

        % Callback function
        function Callback_to_Cell_Selection(app, event)
            app.cellindices = event.Indices;
        end

        % Callback function
        function Callback_to_Cell_Edit(app, event)
            app.edittedindices = event.Indices;
            app.edittednewData = event.NewData;

        end

        % Value changed function: DFFButton, Normalisation
        function Callback_to_Toggle_DFF_Display(app, event)
            app.Parse_data_4_plot;
        end

        % Value changed function: Switch
        function Callback_to_toggle_Channel_Displayed(app, event)
            if app.Switch.Value=='2'
                app.ImagingChannel2Menu.Checked='on';
                app.ImagingChannel1Menu.Checked='off';
                app.Prim_menuselected='01000';
            elseif app.Switch.Value=='1'
                app.ImagingChannel2Menu.Checked='off';
                app.ImagingChannel1Menu.Checked='on';
                app.Prim_menuselected='10000';
            end
            app.Dataitem_Listbox_Callback;

        end

        % Button pushed function: peaksaButton
        function Callback_to_Add_Peakfind_Data_to_Output(app, event)

            switch app.EphystimingCheckBox.Value

                case 1
                    if isempty(app.fileidx)==1
                        app.fileidx=convertCharsToStrings(app.peaksDATA.metainfo{1,1});
                        app.commentfile=convertCharsToStrings(app.peaksDATA.metainfo{1,2});
                    else
                        app.fileidx(end+1,1)=convertCharsToStrings(app.peaksDATA.metainfo{1,1});
                        app.commentfile(end+1,1)=convertCharsToStrings(app.peaksDATA.metainfo{1,2});
                    end
                    comments = transpose(arrayfun(@(x)char(app.commentfile(x)),1:numel(app.commentfile),'uni',false));
                    fileidxs=transpose(arrayfun(@(x)char(app.fileidx(x)),1:numel(app.fileidx),'uni',false));

                    newsucs=[app.UITable_2.Data(5,:) NaN app.UITable_2.Data(1,:) NaN app.UITable_2.Data(2,:) NaN app.UITable_2.Data(3,:) NaN app.UITable_2.Data(4,:) NaN]
                    newpks=app.UITable_2.Data(1,:);

                    tablessize=size(app.allresponsetable,1);
                    peak2add2table=tablessize+1;
                    if isempty(app.allresponsetable)==1
                        app.allresponsetable=newsucs;
                    else
                        app.allresponsetable(end+1,:)=newsucs;
                    end



                    NPeaks=str2num(app.peaknodrop.Value);

                    datasize=size(app.allresponsetable,2);
                    datastarts=1:NPeaks+1:datasize;

                    %                         app.DATA.metainfo{1,1}=app.DATA.commments
                    app.responsetable=app.allresponsetable(:,[1:NPeaks]);
                    app.peakstable=app.allresponsetable(:,[datastarts(2):datastarts(2)+NPeaks-1]);
                    app.locstable=app.allresponsetable(:,[datastarts(3):datastarts(3)+NPeaks-1]);
                    app.Widthstable=app.allresponsetable(:,[datastarts(4):datastarts(4)+NPeaks-1]);
                    app.Promstable=app.allresponsetable(:,[datastarts(5):datastarts(5)+NPeaks-1]);


                    ROI_min=double(app.ROIminEditField.Value);
                    app.DatafileListBox_2.Items=comments;

                    peakssize=size(app.traces,2);
                    peak2addsize=peakssize+1;
                    if isempty(app.traces)==1
                        app.traces{1,1}=get(app.Prim_Chan_Ax.Children(2,1),'XData');
                        app.traces{2,1}=get(app.Prim_Chan_Ax.Children(2,1),'YData');
                        app.etraces{1,1}=get(app.Aux_Chan_Ax.Children(2,1),'XData');
                        app.etraces{2,1}=get(app.Aux_Chan_Ax.Children(2,1),'YData');
                    else
                        app.traces{1,peak2addsize}=get(app.Prim_Chan_Ax.Children(2,1),'XData');
                        app.traces{2,peak2addsize}=get(app.Prim_Chan_Ax.Children(2,1),'YData');
                        app.etraces{1,peak2addsize}=get(app.Aux_Chan_Ax.Children(2,1),'XData');
                        app.etraces{2,peak2addsize}=get(app.Aux_Chan_Ax.Children(2,1),'YData');
                    end


                case 0
                    if isempty(app.fileidx)==1
                        app.fileidx=convertCharsToStrings(app.peaksDATA.metainfo{1,1});
                        app.commentfile=convertCharsToStrings(app.peaksDATA.metainfo{1,2});
                    else
                        app.fileidx(end+1,1)=convertCharsToStrings(app.peaksDATA.metainfo{1,1});
                        app.commentfile(end+1,1)=convertCharsToStrings(app.peaksDATA.metainfo{1,2});
                    end
                    comments = transpose(arrayfun(@(x)char(app.commentfile(x)),1:numel(app.commentfile),'uni',false));
                    fileidxs=transpose(arrayfun(@(x)char(app.fileidx(x)),1:numel(app.fileidx),'uni',false));

                    newsucs=[app.UITable_2.Data(1,:) NaN app.UITable_2.Data(2,:) NaN app.UITable_2.Data(3,:) NaN app.UITable_2.Data(4,:) NaN]
                    newpks=app.UITable_2.Data(1,:);

                    tablessize=size(app.allresponsetable,1);
                    peak2add2table=tablessize+1;
                    if isempty(app.allresponsetable)==1
                        app.allresponsetable=newsucs;
                    else
                        app.allresponsetable(end+1,:)=newsucs;
                    end


                    NPeaks=str2num(app.peaknodrop.Value);

                    datasize=size(app.allresponsetable,2);
                    datastarts=1:NPeaks+1:datasize;
                    app.peakstable=app.allresponsetable(:,[1:NPeaks]);
                    app.locstable=app.allresponsetable(:,[datastarts(2):datastarts(2)+NPeaks-1]);
                    app.Widthstable=app.allresponsetable(:,[datastarts(3):datastarts(3)+NPeaks-1]);
                    app.Promstable=app.allresponsetable(:,[datastarts(4):datastarts(4)+NPeaks-1]);

                    ROI_min=double(app.ROIminEditField.Value);

                    peakssize=size(app.traces,2);
                    peak2addsize=peakssize+1;
                    if isempty(app.traces)==1
                        app.traces{1,1}=get(app.Prim_Chan_Ax.Children(2,1),'XData');
                        app.traces{2,1}=get(app.Prim_Chan_Ax.Children(2,1),'YData');
                        %                         app.etraces{1,1}=get(app.Aux_Chan_Ax.Children(2,1),'XData')
                        %                         app.etraces{2,1}=get(app.Aux_Chan_Ax.Children(2,1),'YData')
                    else
                        app.traces{1,peak2addsize}=get(app.Prim_Chan_Ax.Children(2,1),'XData');
                        app.traces{2,peak2addsize}=get(app.Prim_Chan_Ax.Children(2,1),'YData');
                        %                         app.etraces{1,peak2addsize}=get(app.Aux_Chan_Ax.Children(2,1),'XData')
                        %                         app.etraces{2,peak2addsize}=get(app.Aux_Chan_Ax.Children(2,1),'YData')
                    end
                    
                    app.DatafileListBox_2.Items=comments


            end

            nums=(1:1:size(app.peakstable,1)).';

            %             scatter(app.peaksAx,nums,cell2mat(app.peakstable(:,1)));
            try
                app.sharedapp.triggeraddfit;
            end

        end

        % Button pushed function: lastpeakszButton
        function Callback_to_Remove_Peakfind_Data_from_Output(app, event)
            
            plotsize=size(app.traces,2);
            minusplotsize=plotsize-1;
            if app.EphystimingCheckBox.Value==1
                if  plotsize>1
                    app.traces=app.traces(:,[1:minusplotsize]);
                    app.etraces=app.etraces(:,[1:minusplotsize]);
                else
                    app.traces=[];
                    app.etraces=[];
                end
            else
                if  plotsize>1
                    app.traces=app.traces(:,[1:minusplotsize]);
                    %              app.etraces=app.etraces(:,[1:minusplotsize])
                else
                    app.traces=[];
                    %              app.etraces=[]
                end
            end

            plotsize=size(app.maps,1);
            minusplotsize=plotsize-1;
            if app.EphystimingCheckBox.Value==1
                if  plotsize>1
                    app.maps=app.maps([1:minusplotsize],:);
                    app.mapsxdata=app.mapsxdata([1:minusplotsize],:);
                    app.mapsydata=app.mapsydata([1:minusplotsize],:);
                else
                    app.maps=[];
                    app.mapsxdata=[];
                    app.mapsydata=[];
                end
            else
                if  plotsize>1
                    app.maps=app.maps([1:minusplotsize],:);
                    app.mapsxdata=app.mapsxdata([1:minusplotsize],:);
                    app.mapsydata=app.mapsydata([1:minusplotsize],:);

                else
                    app.maps=[];
                    app.mapsxdata=[];
                    app.mapsydata=[];

                end
            end



            app.allresponsetable(end,:)=[];
            %             app.metainfoG(end,:)=[]
            %             app.metainfoR(end,:)=[]
            app.fileidx(end,:)=[];
            app.commentfile(end,:)=[];

            NPeaks=str2num(app.peaknodrop.Value);
            datasize=size(app.allresponsetable,2);
            datastarts=1:NPeaks+1:datasize;

            if app.EphystimingCheckBox.Value==1
                app.responsetable=[];
                app.responsetable=app.allresponsetable(:,[1:NPeaks]);
                app.peakstable=[];
                app.peakstable=app.allresponsetable(:,[datastarts(2):datastarts(2)+NPeaks-1]);
                app.locstable=[];
                app.locstable=app.allresponsetable(:,[datastarts(3):datastarts(3)+NPeaks-1]);
                app.Widthstable=[];
                app.Widthstable=app.allresponsetable(:,[datastarts(4):datastarts(4)+NPeaks-1]);
                app.Promstable=[];
                app.Promstable=app.allresponsetable(:,[datastarts(5):datastarts(5)+NPeaks-1]);
                ROI_min=double(app.ROIminEditField.Value);

            else
                app.peakstable=[];
                app.peakstable=app.allresponsetable(:,[1:NPeaks]);
                app.locstable=[];
                app.locstable=app.allresponsetable(:,[datastarts(2):datastarts(2)+NPeaks-1]);
                app.Widthstable=[];
                app.Widthstable=app.allresponsetable(:,[datastarts(3):datastarts(3)+NPeaks-1]);
                app.Promstable=[];
                app.Promstable=app.allresponsetable(:,[datastarts(4):datastarts(4)+NPeaks-1]);
                ROI_min=double(app.ROIminEditField.Value);
            end

            fileidxs=[];
            fileidxs=transpose(arrayfun(@(x)char(app.fileidx(x)),1:numel(app.fileidx),'uni',false));
            comments = transpose(arrayfun(@(x)char(app.commentfile(x)),1:numel(app.commentfile),'uni',false));
            app.DatafileListBox_2.Items=comments;
        end

        % Button pushed function: SetCurrentDataButton
        function Callback_to_send_response_data_to_display(app, event)
            a=0
            switch app.EphystimingCheckBox.Value
                case 1

                    app.vars2add{1,1}='responsetable';app.vars2add{2,1}='peakstable';app.vars2add{3,1}='locstable';app.vars2add{4,1}='Widthstable';app.vars2add{5,1}='Promstable';app.vars2add{6,1}='metainfoG'
                    aadd='1'
                    %sprintf('%s_Cell_%s_Bouton_%s_analysis.iGlu%s=app.%s',matlab.lang.makeValidName(string(app.DateDatePicker.Value)),app.CellNo.Value,app.BoutonNo.Value,app.vars2add{i,1},app.vars2add{i,1})

                    for i=1:5
                        eval(sprintf('app.OUTPUT.b%s_analysis.iGlu%s=app.%s',aadd,app.vars2add{i,1},app.vars2add{i,1}))
                    end
                    eval(sprintf('app.OUTPUT.b%s_analysis.iGlu%s=app.%s(2:end,:)',aadd,app.vars2add{6,1},app.vars2add{6,1}))
                    eval(sprintf('app.OUTPUT.b%s_analysis.xtraces=app.traces(1,:)',aadd));
                    eval(sprintf('app.OUTPUT.b%s_analysis.ytraces=app.traces(2,:)',aadd));
                    eval(sprintf('app.OUTPUT.b%s_analysis.extraces=app.etraces(1,:)',aadd));
                    eval(sprintf('app.OUTPUT.b%s_analysis.eytraces=app.etraces(2,:)',aadd));

                    eval(sprintf('app.OUTPUT.b%s_analysis.Fnums=app.fileidx',aadd));
                    eval(sprintf('app.OUTPUT.b%s_analysis.comments=app.commentfile',aadd));
                    eval(sprintf('app.OUTPUT.b%s_analysis.PeakMaps=app.maps',aadd));
                    eval(sprintf('app.OUTPUT.b%s_analysis.PeakMapsXData=app.mapsxdata',aadd));
                    eval(sprintf('app.OUTPUT.b%s_analysis.PeakMapsYData=app.mapsydata',aadd));

                case 0
                    app.vars2add{1,1}='peakstable';app.vars2add{2,1}='locstable';app.vars2add{3,1}='Widthstable';app.vars2add{4,1}='Promstable';app.vars2add{5,1}='metainfoG'
                    aadd=app.BoutonNo.Value
                    for i=1:4
                        eval(sprintf('app.OUTPUT.b%s_analysis.iGlu%s=app.%s',aadd,app.vars2add{i,1},app.vars2add{i,1}))
                    end
                    eval(sprintf('app.OUTPUT.b%s_analysis.iGlu%s=app.%s(2:end,:)',aadd,app.vars2add{5,1},app.vars2add{5,1}))

                    eval(sprintf('app.OUTPUT.b%s_analysis.Fnums=app.fileidx',aadd));
                    eval(sprintf('app.OUTPUT.b%s_analysis.comments=app.commentfile',aadd));
                    try
                        eval(sprintf('app.OUTPUT.b%s_analysis.xtraces=app.traces(1,:)',aadd));
                        eval(sprintf('app.OUTPUT.b%s_analysis.ytraces=app.traces(2,:)',aadd));
                        %                     eval(sprintf('app.OUTPUT.b%s_analysis.extraces=app.etraces(1,:)',aadd));
                        %                     eval(sprintf('app.OUTPUT.b%s_analysis.eytraces=app.etraces(2,:)',aadd));
                    end
            end

            app.hist_bin
            switch app.EphystimingCheckBox.Value
                case 1

                    for i=1:size(app.OUTPUT.b1_analysis.iGluresponsetable,1)
                        table2(i,:)=cat(2,app.OUTPUT.b1_analysis.Fnums(i,:),' ',string(cell2mat(app.OUTPUT.b1_analysis.iGluresponsetable(i,:))),' ',app.OUTPUT.b1_analysis.comments(i,:))
                    end
                case 0
                    for i=1:size(app.OUTPUT.b1_analysis.iGlupeakstable,1)
                        table2(i,:)=cat(2,app.OUTPUT.b1_analysis.Fnums(i,:),' ',app.OUTPUT.b1_analysis.comments(i,:))
                    end
            end


            cat(2,table2(:,:));
            table3=join(table2);
            app.ResponseDatafileListBox.Items=table3;
            app.ResponseDatafileListBox.ItemsData=transpose(1:1:size(table3,1));
            app.SetCurrentDataButton.Text='In Data';
            app.SetCurrentDataButton.FontWeight='bold';
            app.SetCurrentDataButton.FontColor=[1,0,0];
            pause(3);
            app.SetCurrentDataButton.Text='iGlu';
            app.SetCurrentDataButton.FontWeight='normal';
            app.SetCurrentDataButton.FontColor=[0,0,0];
        end

        % Value changed function: ROIsListBox
        function Callback_to_select_Femtonics_ROI_to_Display(app, event)
            %% Sets the Femtonics or custom specified ROI to plot
            app.Parse_data_4_plot;
        end

        % Value changed function: MultiselectCheckBox
        function Set_Multiselect_on_UIListbox(app, event)
            value = app.MultiselectCheckBox.Value;
            app.ListBox_2.Multiselect=value;
        end

        % Button pushed function: CopyDataButton, Copy_table, Copy_table_3
        function Export_Response_Data_to_Excel_File(app, event)
            %             path=uigetdir   %get directory to save excel file
            %
            %            %Set filename, sets column headings
            %             file=sprintf('/PeaksData_Bouton_%s__%s_channel',app.BoutonNo.Value,app.Switch.Items{str2num(app.Switch.Value)})
            %             export2=fullfile(path,file)

            if event.Source.Icon=="excel.png"
                [filename, pathname] = uiputfile({'Excel files (*.xlsx)'});
                writetable(app.Arraytable.Data,cat(2,pathname,filename(1,[1:end-1])));
                return
            elseif event.Source.Icon=="content_copy_black_96x96.png"
                data=app.Arraytable.Data;
                fancyClipboard(cat(1,data.Properties.VariableNames,table2cell(data)));
                return
            else

                filetype='.xlsx'
                export2=sprintf('%s%s',export2,filetype)
                for i=1:str2num(app.peaknodrop.Value)
                    eval(sprintf('a(i)="%dAP"',i));
                end

                % Formats data for export
                a=(str2num(app.peaknodrop.Value)+1);
                alldata=cell2mat(app.allresponsetable);

                switch app.EphystimingCheckBox.Value          %test if responses are evoked by ephys (AP dependent)
                    case 1
                        a=repmat(a,1,5);

                        writematrix(alldata,export2,'Range','C4')   ;   %send raw data to file
                        writematrix(app.fileidx,export2,'Range','B4') ; %send MES File number to row headings
                        writematrix(app.commentfile,export2,'Range','A4');%  send MES comment to row headingd

                        writematrix("Sucess/fail",export2,'Range','C2') ;   %add data field headings
                        writematrix("Peak Amp",export2,'Range','H2');
                        writematrix("Time(s)",export2,'Range','M2');
                        writematrix("Width(s)",export2,'Range','R2');
                        writematrix("Prominence",export2,'Range','W2');
                    case 0

                        a=repmat(a,1,4)
                        writematrix(alldata,export2,'Range','C4')   ;    %as per case 1 but excluding success/failure classification
                        writematrix(app.commentfile,export2,'Range','A4');
                        writematrix(app.fileidx,export2,'Range','B4');
                        writematrix("Peak Amp",export2,'Range','C2');
                        writematrix("Time(s)",export2,'Range','H2');
                        writematrix("Width(s)",export2,'Range','M2');
                        writematrix("Prominence",export2,'Range','R2');
                end
            end
        end

        % Menu selected function: ShowScanPatternsMenu
        function Trigger_Display_Scan_Patterns_Function(app, event)
            displaypatterns2(app.Datastore_class(app.Data_Selection));     %generates figure showing the scanning patterns used in the selected data
        end

        % Button pushed function: SavedataButton
        function Callback_to_Save_PeaksData_to_MATfile(app, event)
            [filename, pathname, filterindex] = uiputfile();
            savename=cat(2,pathname,filename);
            OUTPUT=struct(app.OUTPUT)
            save(savename, 'OUTPUT','-v7' );

        end

        % Value changed function: EphystimingCheckBox
        function Callback_to_Change_Labels_on_Ephys_timing(app, event)
            switch app.EphystimingCheckBox.Value;
                case 1
                    app.ROIminEditFieldLabel.Text=''
                    app.ROImaxEditFieldLabel.Text='dT(s)'
                    app.ROIminEditField.Value=0
                case 0
                    app.ROIminEditFieldLabel.Text='ROImin'
                    app.ROImaxEditFieldLabel.Text='ROImax'
                    app.ROIminEditField.Value=0.2
            end
        end

        % Button pushed function: LoadDataButton
        function Callback_to_load_Old_PeakDatafile(app, event)
            [file,path]=uigetfile('*.mat','Select MAT file to load');
            load(cat(2,path,file),'-mat','OUTPUT');
            app.OUTPUT=OUTPUT
            try
                app.hist_bin
            end
            for i=1:size(app.OUTPUT.b1_analysis.iGluresponsetable,1)
                table2(i,:)=cat(2,app.OUTPUT.b1_analysis.Fnums(i,:),' ',string(cell2mat(app.OUTPUT.b1_analysis.iGluresponsetable(i,:))),' ',app.OUTPUT.b1_analysis.comments(i,:))
            end
            cat(2,table2(:,:))
            table3=join(table2)
            app.ResponseDatafileListBox.Items=table3
            app.ResponseDatafileListBox.ItemsData=transpose(1:1:size(table3,1))
            app.LoadDataButton.Text='In Data Tab'
            app.LoadDataButton.FontWeight='bold'
            app.LoadDataButton.FontColor=[1,0,0]
            pause(3)
            app.LoadDataButton.Text='Load Data'
            app.LoadDataButton.FontWeight='normal'
            app.LoadDataButton.FontColor=[0,0,0]
        end

        % Value changed function: ResponseDatafileListBox
        function UNUSED_Callback_to_get_Spiral_Mapping_Data(app, event)
            %              cla(app.Prim_Chan_Ax);
            if iscell(app.ListBox_2.Value)==1;
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end

            switch app.EphystimingCheckBox.Value
                case 1
                    plot(app.Prim_Chan_Ax,cell2mat(app.OUTPUT.b1_analysis.xtraces(1,app.ResponseDatafileListBox.Value)),cell2mat(app.OUTPUT.b1_analysis.ytraces(1,app.ResponseDatafileListBox.Value)))
                    plot(app.Aux_Chan_Ax,cell2mat(app.OUTPUT.b1_analysis.extraces(1,app.ResponseDatafileListBox.Value)),cell2mat(app.OUTPUT.b1_analysis.eytraces(1,app.ResponseDatafileListBox.Value)))
                case 0
                    plot(app.Prim_Chan_Ax,cell2mat(app.OUTPUT.b1_analysis.xtraces(1,app.ResponseDatafileListBox.Value)),cell2mat(app.OUTPUT.b1_analysis.ytraces(1,app.ResponseDatafileListBox.Value)))
            end


            if app.ReturnDataitemButton.Value==1
                app.sp2imgtiles=tiledlayout(app.UGMapsPanel,3, 2,"TileSpacing","none","Padding","none");
                for i2=1:5
                    eval(sprintf('app.sp2imgtile%d=nexttile(app.sp2imgtiles)',i2));
                    eval(sprintf('imagesc(app.sp2imgtile%d,cell2mat(app.OUTPUT.b1_analysis.PeakMaps(app.ResponseDatafileListBox.Value,%d)),''XData'',cell2mat(app.OUTPUT.b1_analysis.PeakMapsXData(app.ResponseDatafileListBox.Value,%d)),''YData'',cell2mat(app.OUTPUT.b1_analysis.PeakMapsYData(app.ResponseDatafileListBox.Value,%d)))',i2,i2,i2,i2));
                    eval(sprintf('app.CLims(%d,:)=app.sp2imgtile%d.CLim',i2,i2));
                end
                try
                    app.sp2imgtile6=nexttile(app.sp2imgtiles);
                    imagesc(app.sp2imgtile6,cell2mat(app.OUTPUT.b1_analysis.PeakMaps(app.ResponseDatafileListBox.Value,6)),'XData',cell2mat(app.OUTPUT.b1_analysis.PeakMapsXData(app.ResponseDatafileListBox.Value,6)),'YData',cell2mat(app.OUTPUT.b1_analysis.PeakMapsYData(app.ResponseDatafileListBox.Value,6)));
                    app.CLims(6,:)=app.sp2imgtile6.CLim;
                end
                title(app.sp2imgtile1,'Background');
                title(app.sp2imgtile2,'1AP');
                title(app.sp2imgtile3,'2AP');
                title(app.sp2imgtile4,'3AP');
                title(app.sp2imgtile5,'4AP');
                try
                    title(app.sp2imgtile6,'5AP');
                end
                %                 app.sync_CLims(app.CLims);
            end


        end

        % Callback function
        function Peaks_By_Datatips(app, event)
            %     Xlim=app.Prim_Chan_Ax.XLim;
            %     imgX=app.PrimCh_X;
            %     signal=app.roi_2_plot;
            %     baseline = asLS_smooth(signal) ;
            %     app.roi_2_plot=signal-baseline.' ;
            %     app.DFoverR
            line=app.Prim_Chan_Ax.Children
            APstarts=arrayfun(@(x) x.X,line.Children,"UniformOutput",true)
            APstarts=sort(APstarts,'ascend').'
            app.Get_Response_Data(APstarts,app.Datastore_class(app.Data_Selection,1),event)

        end

        % Callback function
        function DFoverR(app, event)
            xlim=app.Prim_Chan_Ax.XLim
            f_0_G_raw = mean(app.roi_2_plot(:,[uint16(app.Baseline_Min.Value/app.Datastore_class(app.Data_Selection,1).linetime):uint16(app.Baseline_Max.Value/app.Datastore_class(app.Data_Selection,1).linetime)]),2);

            app.roi_2_plot=app.roi_2_plot-f_0_G_raw
            plot(app.Prim_Chan_Ax,app.roi_2_plot,'XData',app.PrimCh_X);
            app.Prim_Chan_Ax.XLim=xlim;

        end

        % Button pushed function: ReplotButton
        function replot(app, event)
            datax=get(app.Prim_Chan_Ax.Children,'XData');% get xdata
            numlines=size(datax,1)
            if numlines>1
                plot(app.Prim_Chan_Ax,app.roi_2_plot,'XData',app.Prim_Chan_Ax.Children(numlines).XData);
            else
                plot(app.Prim_Chan_Ax,app.roi_2_plot,'XData',app.Prim_Chan_Ax.Children.XData);
            end
            %             app.Prim_Chan_Ax.XLim=[0.015 max(app.Prim_Chan_Ax.Children(end).XData,[],"all")];
        end

        % Menu selected function: CentreXYMenu
        function callback_to_centre_XY(app, event)
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end
            data2crop=copyobj2(app.Datastore_class(selected_dataitems,1));
            Dataout=arrayfun(@(x) x.ZeroScX_Y(x),data2crop,'UniformOutput',false)

            app.Datastore_class=cat(1,app.Datastore_class,Dataout{:});
            app.Datastore_class.findComment(app.ListBox_2);
        end

        % Menu selected function: SaveSelectedDataasFGUIMenu
        function Callback_to_Save_Selected(app, event)
            
            data2save=app.Datastore_class(app.ListBox_2.Value,1);
            [filename, pathname, filterindex] = uiputfile('C:\Users\Tom PC\Dropbox\data.FGUI');
            savename=cat(2,pathname,filename);
            save(savename, 'data2save');
        end

        % Button pushed function: Button_15
        function Callback_to_set_Next_Dataitem(app, event)
            app.ListBox_2.Value=app.ListBox_2.Value+1;
            app.Dataitem_Listbox_Callback
        end

        % Button pushed function: Button_16
        function Callback_to_set_Previous_Dataitem(app, event)
            app.ListBox_2.Value=app.ListBox_2.Value-1
            app.Dataitem_Listbox_Callback
        end

        % Button pushed function: FindPeaksqButton_2, TestButton
        function Callback_to_FINDPEAKS_function(app, event)
            try
                a=findall(app.Prim_Chan_Ax,'Tag','Display');delete(a);
                a=findall(app.Aux_Chan_Ax,'Tag','Display');delete(a);

            end
            %
            % app.Parse_data_4_plot
            %%Get data from plots
            PrimCh=get(app.Prim_Chan_Ax,'Children');
            SecCh=get(app.Aux_Chan_Ax,'Children');
            imgX=PrimCh.XData;
            imgY=PrimCh.YData;
            ephysx=SecCh.XData;
            ephysy=SecCh.YData;
            %Filter Imaging Data?
            if app.FilterCheckBox.Value==1
                imgY=sgolayfilt(imgY,2,app.filterSpinner.Value);
            end
            %% standard Peakfinding for line-scan data
            %are imaging events triggered by electrophysiology

            %if yes then
            elinetime=ephysx(:,2)-ephysx(:,1);  %sample time for ephys
            etimebase=1/elinetime;          %sampling rate for ephys

            eF0start=uint16(app.Baseline_Min.Value/elinetime); %start time for ephys baseline
            eF0end=uint16(app.Baseline_Max.Value/elinetime); %end time for ephys baseline

            EPbasestart=app.Baseline_Min.Value; %start time for ephys baseline
            EPbaseend=app.Baseline_Max.Value; %end time for ephys baseline


            epeaksplot=ephysy(:,:);
            eProm=app.EPthreshEditField.Value;
            Ep_F0_Indices=ephysx>=EPbasestart& ephysx<=EPbaseend;
            eThreshold=nanmean(epeaksplot(:,Ep_F0_Indices),2)+std(epeaksplot(:,Ep_F0_Indices),[],2)*eProm;

            if app.NoPeaksCheckBox.Value==1        %Sets number of APs as constraint
                NPeaks=str2num(app.peaknodrop.Value);
            else
                NPeaks=[];
            end

            %Sets peak prominence as constraint


            % sets minimum peak interval(s)
            eInterval=app.EPIntEditField.Value/1000;

            %set minimum peak width (s)
            ewidth_min=app.EPWidthEditField.Value/1000;

            % set threshold
            %             eThreshold=app.EPthreshEditField.Value;

            %do peak finding (findpeaks) by threshold by peak, or peak prominence
            if app.PositivePeakMenu.Checked==1
                if app.ProminenceMenu.Checked==1
                    [epks,elocs,ew,ep]=findpeaks(epeaksplot,ephysx,"NPeaks",NPeaks,"MinPeakDistance",eInterval,"MinPeakProminence",eThreshold,'MinPeakWidth', ewidth_min);
                else
                    [epks,elocs,ew,ep]=findpeaks(epeaksplot,ephysx,"NPeaks",NPeaks,"MinPeakDistance",eInterval,'MinPeakWidth', ewidth_min,'MinPeakHeight', eThreshold);
                end
            else
                if  app.ProminenceMenu.Checked==1
                    [epks,elocs,ew,ep]=findpeaks(-epeaksplot,ephysx,"NPeaks",NPeaks,"MinPeakDistance",eInterval,"MinPeakProminence",eThreshold,'Annotate','extents');
                else
                    [epks,elocs,ew,ep]=findpeaks(-epeaksplot,ephysx,"NPeaks",NPeaks,"MinPeakDistance",eInterval,'MinPeakWidth', ewidth_min,'MinPeakHeight', eThreshold,'Annotate','extents');
                end
            end
            app.PeakStats.EP_PeakTime=elocs;
            %display peak locations
            edisplocs=elocs;
            elocs=elocs+double(app.ROIminEditField.Value);
            epeakdata(1,:)=epks;epeakdata(2,:)=elocs;epeakdata(3,:)=ew;epeakdata(4,:)=ep;
            %
            hold(app.Aux_Chan_Ax,'on');
            app.epeaklocmarkers=scatter(app.Aux_Chan_Ax,elocs,epks,'MarkerFaceColor',"auto",'Tag','Display');
            hold(app.Aux_Chan_Ax,'off');
            epeaktimes=elocs;

            %starting to integrate spike analysis
            if app.APanalysisCheckBox.Value==1
                if app.epmode.Value==2
                    APdata={"count","T1st","SpikeIntervals","SpikeIntervalsNorm1st","ThresholdInitial","ThresholdMean","ThresholdsNorm1st","AmplitudeTR1st","AmplitudeMeanTR","AmplitudesNorm1st","AHPAmp1st","AHPAmpsLS","AHPAmpsLSNorm1st","AHPDecayT1st",	"AHPDecayTimesLS","AHPDecayTimesLSNorm1st","SpkHWTR1st","SpkHWsTRMean","SpkHWsTRNorm1st","SpkWZ1st","SpkWsZMean","SpkWsZNorm1st","SpkHWF1st","SpkHWsFMean","SpkWWsFNorm1st","ThreshTimes","SpikeTimes","RiseTimes","MaxRiseSlope"};
                else
                    APdata={"Peak","Time","Width","Prominence"};
                end
                figure
                tiledlayout(gcf,2,2,"TileSpacing","none","Padding","none");
                for i=1:length(elocs)
                    nexttile()
                    if app.epmode.Value==2
                        APStart=  round((elocs(i)-0.010)/elinetime);
                        APend=  round((elocs(i)+0.020)/elinetime);
                        epXData=ephysx(1,[APStart:APend]);
                        epYData=ephysy(1,[APStart:APend]);
                        averageNum=app.EPWidthEditField.Value;
                        epthreshold=app.EPthreshEditField.Value;
                        lastspike=1;
                        [output]=APanalysis(app,epXData,epYData,averageNum,epthreshold,lastspike,elinetime);
                        APdata=cat(1,APdata,output);

                    elseif app.epmode.Value==1
                        APStart=  round((elocs(i))/elinetime);
                        APend=  round((elocs(i)+0.01)/elinetime);
                        epXData=ephysx(1,[APStart:APend]);
                        epYData=-ephysy(1,[APStart:APend]);
                        [epks1,elocs1,ew1,ep1]=findpeaks(epYData,etimebase,"NPeaks",1,"MinPeakProminence",eThreshold,'Annotate','extents');
                        findpeaks(epYData,etimebase,"NPeaks",1,"MinPeakProminence",eThreshold,'Annotate','extents');
                        edata(i,1)=epks1;edata(i,2)=elocs1;edata(i,3)=ew1;edata(i,4)=ep1;
                    end


                end
                if app.epmode.Value==1
                    APdata=cat(1,APdata,num2cell(edata));
                end
                writecell(APdata,'APdata.xlsx','Sheet',cat(2,app.Datastore_class(app.Data_Selection,1).comment(1:25),'_',num2str(app.Datastore_class(app.Data_Selection,1).Index)),'Range','A4');
            end


            %if test then return
            try
                switch event.Source.Text
                    case "Find Peaks (q)"
                        source=1
                    case "Test"
                        source=2
                end
            catch
                source=3
                event.Source.Tag="test"

            end

            if source==2
                pause(2)
                a=findall(app.Aux_Chan_Ax,'Tag','Display')
                delete(a)
                return
            end
            %%Imaging Peak Detection

            %set imaging peak parameters
            Interval=app.MinIntervalsEditField.Value/1000
            linetime=imgX(2)-imgX(1)
            Prom=app.MinPromEditField.Value
            width_min=app.MinWidthEditField.Value/1000

            %determine startpoint for electrophysiology
            if app.EphystimingCheckBox.Value==1
                APstart=elocs(1)
                xelocs=elocs
                %set start to end of trace to analyse
                ROI_min=APstart-0.020   %Sets minimum time
                ROI_max=ROI_min+app.ROImaxEditField.Value
            else
                ROI_min=app.ROIminEditField.Value     %Sets minimum time
                ROI_max=app.ROImaxEditField.Value
                Img_T_Indices=imgX>=ROI_min-0.020 & imgX<=ROI_max;
                EP_T_Indices=ephysx>=ROI_min & ephysx<=ROI_max;
            end

            %set baseline period
            F0start=app.Baseline_Min.Value    %Get baseline minimum
            F0end=app.Baseline_Max.Value %Get baseline maximum
            Img_F0_Indices=imgX>=F0start & imgX<=F0end;

            % set peak data trace as separate variable'peaksplot' and calculate prominence threshold as n * std or baseline

            Img_T_Indices=imgX>=ROI_min-0.020 & imgX<=ROI_max;
            EP_T_Indices=ephysx>=ROI_min & ephysx<=ROI_max;
            Threshold=mean(imgY(:,Img_F0_Indices),2)+std(imgY(:,Img_F0_Indices),[],2)*Prom;
            peaksplot=imgY(:,Img_T_Indices);
            peaksplotX=imgX(:,Img_T_Indices);

            [~,~,redpeaksplot,redXData,~,~,~,~]=app.Datastore_class(app.Data_Selection,1).Plot_TData_1D(2,app.ROIsListBox.Value,[],app.Normalisation.Value,app.Baseline_Min.Value,app.Baseline_Max.Value,1,[],[],[],[]);
            %              Img_T_Indices=redXData>=app.ROIminEditField.Value & redXData<=app.ROImaxEditField.Value;
            %             redpeaksplot=redpeaksplot(:,Img_T_Indices);
            if size(redpeaksplot,2)~=numel(imgX)
                redpeaksplot=interp1(redXData,redpeaksplot,imgX);
            end
            redXData=imgX;

            linetime=imgX(2)-imgX(1);  %sample time for ephys
            timebase=1/linetime;
            %% do findpeaks with selected parameters
            if app.PositivepeakCheckBox.Value==1
                if app.PromButton.Value==1
                    [pks,locs,w,p]=findpeaks(peaksplot,peaksplotX,"NPeaks",NPeaks,"MinPeakDistance",Interval,"MinPeakProminence",Threshold,'MinPeakWidth', width_min,'Annotate','extents');
                else
                    [pks,locs,w,p]=findpeaks(peaksplot,peaksplotX,"NPeaks",NPeaks,"MinPeakDistance",Interval,'MinPeakWidth', width_min,'MinPeakHeight', Threshold,'Annotate','extents');
                end
            else
                if app.PromButton.Value==1
                    [pks,locs,w,p]=findpeaks(-peaksplot,peaksplotX,"NPeaks",NPeaks,"MinPeakDistance",Interval,"MinPeakProminence",Threshold,'Annotate','extents');
                else
                    [pks,locs,w,p]=findpeaks(-peaksplot,peaksplotX,"NPeaks",NPeaks,"MinPeakDistance",Interval,'MinPeakWidth', width_min,'MinPeakHeight', Threshold,'Annotate','extents');
                end
            end
            a=0
            peakdata(1,:)=num2cell(pks);peakdata(2,:)=num2cell(locs);peakdata(3,:)=num2cell(w);peakdata(4,:)=num2cell(p);
            NPeaks=str2num(app.peaknodrop.Value)
            if size(peakdata,2)<NPeaks
                numpeaks2add=NPeaks-size(peakdata,2)
                peaks2add=num2cell(NaN(4,numpeaks2add))
                peakdata=cat(2,peakdata,peaks2add)
            end
            peakdata(5,:)=num2cell(zeros(1,size(peakdata,2))+1);
            app.UITable_2.Data=peakdata
            %check ephys peak times
            if app.EphystimingCheckBox.Value==0
                if app.FFButton.Value==1
                    [pks,locs,w,p,sucs_fail,redchannel_amps,error,~]=app.Get_Response_Data(locs,app.Datastore_class(app.Data_Selection,1),event)
                    Peaks=pks;locations=locs;Widths=repmat(w,1,size(locs,2));Prominences=p;sucs_fail=double(sucs_fail).';
                    skip=1
                end
                %         try
                % [pks,locs,w,p,sucs_fail,redchannel_amps,error,~]=app.Get_Response_Data(locs,app.Datastore_class(app.Data_Selection,1),event)
                %         end
                a=9
            elseif app.EphystimingCheckBox.Value==1

                Positivewindow=app.Peak_time_pos_window.Value/1000
                Negativewindow=app.Peak_time_neg_window.Value/1000
                windows=elocs+Positivewindow
                edges=[elocs-Negativewindow;windows];
                edges=edges(:)'
                [a,b,c]=histcounts(locs,[0,edges])
                sucs_fail=a(2:2:end)
                find(sucs_fail)
                amps=NaN(1,size(sucs_fail,2))
                suc_index=find(sucs_fail)
                %  amps(suc_index)=pks(:)

                uint16(elocs/linetime)
                Peaks=zeros(1,size(elocs,2))
                locations=zeros(1,size(elocs,2))
                Widths=zeros(1,size(elocs,2))
                Prominences=zeros(1,size(elocs,2))

                a=9
                if app.FFButton.Value==1
                    [pks,locs,w,p,sucs_fail,redchannel_amps,error,~]=app.Get_Response_Data(elocs,app.Datastore_class(app.Data_Selection,1),event)
                    Peaks=pks;locations=locs;Widths=repmat(w,1,size(locs,2));Prominences=p;sucs_fail=double(sucs_fail).';
                    skip=1
                else
                    try
                        Peaks(suc_index)=pks;locations(suc_index)=locs;Widths(suc_index)=w;Prominences(suc_index)=p;
                        skip=0
                    catch ME
                        assignin('base','ME',ME)
                        [pks,locs,w,p,sucs_fail,redchannel_amps,error,~]=app.Get_Response_Data(elocs,app.Datastore_class(app.Data_Selection,1),event)
                        Peaks=pks;locations=locs;Widths=repmat(w,1,size(locs,2));Prominences=p;sucs_fail=double(sucs_fail);
                        skip=1
                    end
                end
                if skip==0
                    for i=1:size(sucs_fail,2)    %set 1 if in window (success), use imaging peak amplitude
                        failindex=peaksplotX>=elocs(i)-0.005 & peaksplotX<=elocs(i)+0.005;
                        failamp=nanmean(peaksplot(:,failindex),2)
                        failprom=nanmean(peaksplot(:,failindex),2)-min(peaksplot(:,failindex))
                        if sucs_fail(i)==0
                            Peaks(i)=failamp
                            Prominences(i)=failprom
                            locations(i)=elocs(i)
                            Widths(i)=app.MinWidthEditField.Value/1000
                        end


                        redAPindex=imgX >= xelocs(i) & imgX <= xelocs(i)+0.012;
                        redchannel_amps(1,i)=nanmean(redpeaksplot(:,redAPindex),2)
                    end
                end
                try
                    peakdata=cat(1,Peaks,locations,Widths,Prominences,sucs_fail.',xelocs,redchannel_amps)
                catch
                    peakdata=cat(1,Peaks,locations,Widths,Prominences,sucs_fail,xelocs,redchannel_amps)
                end
                app.UITable_2.Data=num2cell(peakdata)

            end



            %add formatting to peak table
            peakdata2=app.UITable_2.Data
            app.UITable_2.RowName(5)={'Suc_Fail'}
            app.UITable_2.RowName(6)={'EP_Times'}
            app.UITable_2.RowName(7)={'UR'}
            %             for i=1:size(locs)
            %             [x1,y1,ynorm] = app.TraceBackPeaks(app.ArrayDataDisplay,imgX,imgY,ephysx,ephysy,locs,elocs,Positivewindow,Negativewindow,0.002)
            % %             TraceBackPeaks(app,handle,XData,YData,edisp_peaksplotX,edisp_peaksplot,ImgPeaktimes,EpPeaktimes,t_positive,t_negative,dX);
            %             end
            %             if app.ImagingChannel1Menu.Checked=='on';
            %             for i=1:size(epks,2)
            %             redchannel_amps(1,i)=mean(redpeaksplot(:,[uint16((xelocs(i)-0.005)/linetime):uint16((xelocs(i)+0.010)/linetime)]),2)
            %             end
            %             end

            %% Plot trace
            %             plot(app.Prim_Chan_Ax,imgY,'XData',imgX);
            %             app.Prim_Chan_Ax.XLim=[min(app.Prim_Chan_Ax.Children.XData,[],"includenan") max(app.Prim_Chan_Ax.Children.XData,[],"includenan")];
            hold(app.Prim_Chan_Ax,'on')

            %% plot peaks onto trace
            scatter(app.Prim_Chan_Ax,cell2mat(app.UITable_2.Data(2,:)),cell2mat(app.UITable_2.Data(1,:)),'MarkerFaceColor',"auto",'Tag','Display')
            hold(app.Prim_Chan_Ax,'off')
            try
                xlineSucs=xline(app.Prim_Chan_Ax,~isnan(cell2mat(app.UITable_2.Data(2,:))),'Tag','Display',"Alpha",0.1,"LineStyle","-");
            end
            %               if app.EphystimingCheckBox.Value==1
            %             app.Prim_Chan_Ax.XLim=[elocs(1)-0.1 elocs(end)+0.1]
            %             else
            %             app.Prim_Chan_Ax.XLim=[ROI_min ROI_max]
            %             end
            %%plot ephys trace
            %             plot(app.Aux_Chan_Ax,epeaksplot,'XData',ephysx);
            %             app.Aux_Chan_Ax.XLim=[min(app.Aux_Chan_Ax.Children.XData,[],"includenan") max(app.Aux_Chan_Ax.Children.XData,[],"includenan")];
            if app.EphystimingCheckBox.Value==1

                %%plot peaks onto ephystrace
                hold(app.Aux_Chan_Ax,'on')
                scatter(app.Aux_Chan_Ax,elocs,epks,'MarkerFaceColor',"auto",'Tag','Display')
                hold(app.Aux_Chan_Ax,'off')

            else % only to stop errors later in workflow
                elocs=locs
                epks=zeros(1,size(elocs,2))
                hold(app.Aux_Chan_Ax,'on')
                %                 scatter(app.Aux_Chan_Ax,elocs,epks,'MarkerFaceColor',"auto",'Tag','Display')
                hold(app.Aux_Chan_Ax,'off')
            end

            %maybe redundant check next time
            app.peaksDATA.peakstrace=[];,app.peaksDATA.ephystrace=[];
            app.peaksDATA.peakstrace(:,1)=imgX.';app.peaksDATA.peakstrace(:,2)=imgY.';
            app.peaksDATA.ephystrace(:,1)=ephysx.';app.peaksDATA.ephystrace(:,2)=ephysy.';
            app.peaksDATA.Fnum=sprintf('F%d',app.ListBox_2.Value);
            app.peaksDATA.metainfo{1,1}=app.peaksDATA.Fnum;app.peaksDATA.metainfo{1,2}=app.Datastore_class(app.Data_Selection,1).comment;...
                app.peaksDATA.metainfo{1,3}=get(app.Prim_Chan_Ax,'Children'); app.peaksDATA.metainfo{1,4}=get(app.Aux_Chan_Ax,'Children');...
                %             app.peaksDATA.metainfo{1,5}=app.DateDatePicker.Value;app.peaksDATA.metainfo{1,6}=datetime("now");...
            %             app.peaksDATA.metainfo{1,7}=app.SliceNumber.Value;app.peaksDATA.metainfo{1,8}=app.CellNo.Value;app.peaksDATA.metainfo{1,9}=app.BoutonNo.Value;...
            %             app.peaksDATA.metainfo{1,10}=app.SensorDropDown.Value,app.peaksDATA.metainfo{1,11}=app.ScanTypeDropDown.Value;...
            %             app.peaksDATA.metainfo{1,12}=app.EventType.Value; app.peaksDATA.metainfo{1,13}=linetime;app.peaksDATA.metainfo{1,14}=app.Structure.Value;app.peaksDATA.metainfo{1,15}=app.MinIntervalsEditField.Value;...
            %             app.peaksDATA.metainfo{1,16}=app.ConditionEditField.Value;
            %             if app.ImagingChannel1Menu.Checked=='on';
            %             app.peaksDATA.metainfo{1,17}=redchannel_amps; app.peaksDATA.metainfo{1,18}=redpeaksplot;
            %             end
            if app.importtype=='Class'
                %add Channel number info here for Column Number
                %actually make a class
                %             [app.oneDEvent]=Event_Data(app.peaksDATA,app.UITable_2.Data,0)

            end
            % sending data to spiral2img in ImageView

            if app.EphystimingCheckBox.Value==1

                %set peak time to
                locations=cell2mat(peakdata2(2,:))
                if size(epks,2)>1
                    app.inputvars=cat(2,app.Baseline_Min.Value,app.Baseline_Max.Value,locations)
                else
                    app.inputvars=[app.Baseline_Min.Value,app.Baseline_Max.Value,locations(1)]
                end
                % inputvars=[app.Baseline_Min.Value,app.Baseline_Max.Value,epeaktimes(1),epeaktimes(2),epeaktimes(3),epeaktimes(4)]
                try
                    app.inputvars(1,7)=locations(5)
                end

            elseif app.EphystimingCheckBox.Value==0
                start=double(ROI_min)*linetime
                responselocs=locs+start
                %send peak times -4ms
                timefromresponce=0.004
                try
                    app.inputvars=[app.Baseline_Min.Value,app.Baseline_Max.Value,responselocs(1)-timefromresponce,responselocs(2)-timefromresponce,responselocs(3)-timefromresponce,responselocs(4)-timefromresponce]
                end
                try
                    app.inputvars(1,7)=responselocs(5)
                end

                %  exportloc=questdlg('Send to Sp2Img?','Yes','Yes', 'No','No');
                %  exportloc=convertCharsToStrings(exportloc);
                %  if exportloc=="Yes";
                %  oneDim_sucs=cell2mat(app.UITable_2.Data(5,:))
                %  if app.PromButton.Value==1
                %  oneDim_amp=cell2mat(app.UITable_2.Data(4,:))
                %  else
                %  oneDim_amp=cell2mat(app.UITable_2.Data(1,:))
                %  end
                % app.sharedapp.triggerspiral(inputvars,oneDim_sucs,oneDim_amp)
                %  end
                % if app.DFFButton.Value==1
                %    app.sharedapp.DFFButton.Value==1
                %    app.sharedapp.setDFF
                % end
                % if app.Switch.Value=='2'
                %     app.sharedapp.ButtonGroup.SelectedObject.Text='UR'
                %     app.sharedapp.ChangeImage
                % end
            end
            try
                if app.FFButton.Value==1
                    if error==0
                        msg = 'Return Map Data?';
                        title = 'Return Map Data?';
                        selection = uiconfirm(app.FijiGUIUIFigure,msg,title, ...
                            'Options',{'Yes', 'No','cancel'}, ...
                            'DefaultOption',1,'CancelOption',3);

                        %exportloc=questdlg('Return Map Data?','Mapping','Yes', 'No','cancel')

                        if selection=="Yes"
                            app.Datastore_class=cat(1,app.Datastore_class,app.Dataholder);
                            app.Datastore_class.findComment(app.ListBox_2);
                        end
                    end
                end
            end
        end

        % Button pushed function: Button_27, aButton
        function CPbaseline(app, event)
            a=findall(app.Prim_Chan_Ax, 'Type','ConstantLine');
            delete(a)
            a=findall(app.Prim_Chan_Ax, 'Type','Scatter');
            delete(a)
            ind = find(get(app.Prim_Chan_Ax.Children, 'BrushData'));
            if event.Source.Text=="a"
                selectedXIndices = logical(get(app.Prim_Chan_Ax.Children, 'BrushData'));
                selectedXValues=app.Prim_Chan_Ax.Children.XData(1,selectedXIndices);
                app.ROIminEditField.Value=round(min(selectedXValues),2);
                app.ROImaxEditField.Value=round(max(selectedXValues),2);
                app.Prim_ax_brush.Enable='off'  %disable brush
                return
            end
            app.selectedXIndices = logical(get(app.Prim_Chan_Ax.Children, 'BrushData'));
            app.selectedXValues=app.Prim_Chan_Ax.Children.XData(1,app.selectedXIndices)
            app.Baseline_Min.Value=round(min(app.selectedXValues),2)
            app.Baseline_Max.Value=round(max(app.selectedXValues),2)
            %             selected_mean=mean(app.roi_2_plot(:,app.selectedXIndices),2);
            %             selected_min=min(app.roi_2_plot(:,app.selectedXIndices),[],2);
            %             selected_max=max(app.roi_2_plot(:,app.selectedXIndices),[],2);
            %             selected_std=std(app.roi_2_plot(:,app.selectedXIndices),[],2);
            app.baseline_cursor_min=round(min(app.selectedXValues),2)%set baseline cursor minimum
            app.Baseline_Cursor_max=round(max(app.selectedXValues),2)%set baseline cursor maximum
            app.Prim_ax_brush.Enable='off'  %disable brush

            if app.ShowCursorsButton.Value==1
                a=findall(app.Prim_Chan_Ax,'Type','ConstantLine')
                delete(a)

                app.Draw_Cursors
            else
                a=findall(app.Prim_Chan_Ax,'Type','ConstantLine')%find cursor lines
                delete(a)%delete them
                app.Draw_Cursors%redraw new cursor lines
                pause(0.6)%display them
                a=findall(app.Prim_Chan_Ax,'Type','ConstantLine')%find cursor lines
                delete(a)%delete them
            end
            app.Parse_data_4_plot
            try
                app.sharedapp.F0endTimesSpinner.Value=app.Baseline_Max.Value;
                app.sharedapp.F0StartTimesSpinner.Value=app.Baseline_Min.Value;
                app.sharedapp.DeltaFF0Button.Value=str2double(app.Normalisation.Value);
            catch ME

            end
        end

        % Button pushed function: ImViewButton
        function ImView(app, event)
            app.sharedapp = ImageView2x_2022b_m(app.Datastore_class(app.Data_Selection,1))
            app.ImageViewopen=1
        end

       

        % Button pushed function: Copy_table_2
        function export2text(app, event)
            try
                plotsize=size(app.traces,2)
            catch
                plotsize=0
            end
            if  plotsize>=1
                app.traces=[]
                app.etraces=[]
            end
            try
                plotsize=size(app.maps,1)
            catch
                plotsize=0
            end
            plotsize=size(app.maps,1)
            if  plotsize>=1
                app.maps=[]
                app.mapsxdata=[]
                app.mapsydata=[]
            end



            app.allresponsetable=[]
            %              app.metainfoG=[]
            %             app.metainfoR=[]
            app.fileidx=[]
            app.commentfile=[]
            app.responsetable=[]
            app.peakstable=[]
            app.locstable=[]
            app.Widthstable=[]
            app.Promstable=[]




            app.DatafileListBox_2.Items={}
            % currentdir=pwd
            %             path=uigetdir   %get directory to save excel file
            %             cd(path)
            %             app.OUTPUT.iGlu_Resp=logical(app.OUTPUT.iGlu_Resp)%make iGlu resp logical
            %             %%extract amplitudes for all
            %             allfail=app.OUTPUT.iGlu_amp(app.OUTPUT.iGlu_Resp==0)
            %             allsucs=app.OUTPUT.iGlu_amp(app.OUTPUT.iGlu_Resp)
            %             alltrials=reshape(app.OUTPUT.iGlu_amp,[size(app.OUTPUT.iGlu_amp,1)*size(app.OUTPUT.iGlu_amp,2),1])
            %
            %             %1AP
            %             for i=1:size(app.OUTPUT.iGlu_Resp,2)
            %                 eval(sprintf('AP%dfail=app.OUTPUT.iGlu_amp(app.OUTPUT.iGlu_Resp(:,%d)==0,%d)',i,i,i))
            %                 eval(sprintf('AP%dsucs=app.OUTPUT.iGlu_amp(app.OUTPUT.iGlu_Resp(:,%d),%d)',i,i,i))
            %                 eval(sprintf('writematrix(AP%dfail,''AP%dfail.txt'',''Delimiter'',''tab'')',i,i))
            %                 eval(sprintf('writematrix(AP%dsucs,''AP%dsucs.txt'',''Delimiter'',''tab'')',i,i))
            %             end
            %             writematrix(allsucs,'APallsucs.txt','Delimiter','tab')
            %             writematrix(allfail,'APallfail.txt','Delimiter','tab')
            %             writematrix(alltrials,'APalltrials.txt','Delimiter','tab')
            %             cd(currentdir)
        end

        % Callback function
        function getbasicstats(app, event)
            ind = find(get(app.Prim_Chan_Ax.Children, 'BrushData'));
            app.selectedXValues=app.Datastore_class(app.Data_Selection,1).XData(:,ind);
            app.selectedXIndices = logical(get(app.Prim_Chan_Ax.Children, 'BrushData'));

            %             selected_mean=mean(app.roi_2_plot(:,[uint16(app.MinSpinner.Value/app.Datastore_class(app.Data_Selection,1).linetime):uint16(app.MaxSpinner.Value/app.Datastore_class(app.Data_Selection,1).linetime)]),2);
            %             selected_min=min(app.roi_2_plot(:,[uint16(app.MinSpinner.Value/app.Datastore_class(app.Data_Selection,1).linetime):uint16(app.MaxSpinner.Value/app.Datastore_class(app.Data_Selection,1).linetime)]),[],2);
            %             selected_max=max(app.roi_2_plot(:,[uint16(app.MinSpinner.Value/app.Datastore_class(app.Data_Selection,1).linetime):uint16(app.MaxSpinner.Value/app.Datastore_class(app.Data_Selection,1).linetime)]),[],2);
            %             selected_std=std(app.roi_2_plot(:,[uint16(app.MinSpinner.Value/app.Datastore_class(app.Data_Selection,1).linetime):uint16(app.MaxSpinner.Value/app.Datastore_class(app.Data_Selection,1).linetime)]),[],2);
            %             selected_sum=sum(app.roi_2_plot(:,[uint16(app.MinSpinner.Value/app.Datastore_class(app.Data_Selection,1).linetime):uint16(app.MaxSpinner.Value/app.Datastore_class(app.Data_Selection,1).linetime)]),2);
            selected_mean=mean(app.roi_2_plot(:,app.selectedXIndices),2);
            selected_min=min(app.roi_2_plot(:,app.selectedXIndices),[],2);
            selected_max=max(app.roi_2_plot(:,app.selectedXIndices),[],2);
            selected_std=std(app.roi_2_plot(:,app.selectedXIndices),[],2);
            selected_sum=sum(app.roi_2_plot(:,app.selectedXIndices),2);
            copydata(1,1)=selected_mean
            copydata(1,2)=selected_min
            copydata(1,3)=selected_max
            copydata(1,4)=selected_std
            copydata(1,5)=selected_sum
            num2clip(copydata)



        end

        % Callback function: MaxSpinner, MinSpinner, SetCursorButton
        function setcursor(app, event)
            %             assignin('base','event',event);
            a=findall(app.Prim_Chan_Ax,'Type','ConstantLine')
            delete(a)

            if event.Source.Type == "uibutton" %if brush is used to define region
                ind=[]
                try; ind = find(get(app.Prim_Chan_Ax.Children, 'BrushData')); end
                datax=get(app.Prim_Chan_Ax.Children,'XData');% get xdata

                selectedcursor=str2double(app.ArraynumberButtonGroup.SelectedObject.Text);
                app.cursorstruct(selectedcursor).selectedC1XIndices=logical(get(app.Prim_Chan_Ax.Children, 'BrushData'));
                app.cursorstruct(selectedcursor).selectedC1Values=app.Prim_Chan_Ax.Children.XData(:,ind);
                app.cursorstruct(selectedcursor).Minimum=round(min(app.cursorstruct(selectedcursor).selectedC1Values),2);
                app.cursorstruct(selectedcursor).Maximum=round(max(app.cursorstruct(selectedcursor).selectedC1Values),2);
                app.MinSpinner.Value=app.cursorstruct(selectedcursor).Minimum;
                app.MaxSpinner.Value=app.cursorstruct(selectedcursor).Maximum;

            elseif event.Source.Type == "uispinner"      % if spinner is used to define region
                datax=get(app.Prim_Chan_Ax.Children,'XData');% get xdata
                selectedcursor=str2double(app.ArraynumberButtonGroup.SelectedObject.Text);
                app.cursorstruct(selectedcursor).Minimum=app.MinSpinner.Value;
                app.cursorstruct(selectedcursor).Maximum=app.MaxSpinner.Value;
                app.cursorstruct(selectedcursor).selectedC1XIndices=datax >= app.cursorstruct(selectedcursor).Minimum & datax<=app.cursorstruct(selectedcursor).Maximum;
                app.cursorstruct(selectedcursor).selectedC1Values=datax(app.cursorstruct(selectedcursor).selectedC1XIndices)



            end
            if app.ShowCursorsButton.Value==1
                a=findall(app.Prim_Chan_Ax,'Type','ConstantLine')
                delete(a)
                app.Draw_Cursors
            else
                a=findall(app.Prim_Chan_Ax,'Type','ConstantLine')
                delete(a)
                app.Draw_Cursors
                pause(1)
                a=findall(app.Prim_Chan_Ax,'Type','ConstantLine')
                delete(a)
            end
            app.Prim_ax_brush.Enable='off'  %disable brush
        end

        % Selection changed function: ArraynumberButtonGroup
        function selectedcursor(app, event)
            selectedcursor=str2double(app.ArraynumberButtonGroup.SelectedObject.Text);
            app.MinSpinner.Value=app.cursorstruct(selectedcursor).Minimum;
            app.MaxSpinner.Value=app.cursorstruct(selectedcursor).Maximum;
        end

        % Button pushed function: add_next_Array_entry
        function addarray(app, event)
            %% Gets data from plots on Primary Axes, calculates stats and plots
            a=app.Prim_Chan_Ax.Children; %get line plots
            a=flipud(a); %axes are stored FILO so Flip array
            %Get data from axes,stored as cell array of structures
            for cursor=1:5  %each of the arrays
                app.cursordata{1,cursor}=struct("Mean",[],"Minimum",[],"Maximum",[],"StDev",[],"Sum",[]);
                for numplots=1:size(a) %each of the plots in the axes
                    roi_2_plot=a(numplots).YData;
                    linetime=a(numplots).XData(2)-a(numplots).XData(1);
                    xdata=a(numplots).XData;
                    index=xdata>=app.cursorstruct(cursor).Minimum & xdata <=app.cursorstruct(cursor).Maximum;
                    app.cursordata{1,cursor}(numplots).Mean=mean(roi_2_plot(:,index),2);
                    app.cursordata{1,cursor}(numplots).Minimum=min(roi_2_plot(:,index),[],2);
                    app.cursordata{1,cursor}(numplots).Maximum=max(roi_2_plot(:,index),[],2);
                    app.cursordata{1,cursor}(numplots).StDev=std(roi_2_plot(:,index),[],2);
                    app.cursordata{1,cursor}(numplots).Sum=nansum(roi_2_plot(:,index),2);
                end
            end
            %display invidual variable as plot and array in the UITable
            plotTable=struct2table(app.cursordata{1,str2double(app.Array_Number_DropDown.Value)});
            Data2Plot=table2array(plotTable(:,str2double(app.YDropDown.Value)));
            scatter(app.ArrayDataplot,1:1:size(Data2Plot,1),Data2Plot,'Tag','Data');
            app.Arraytable.ColumnName=plotTable.Properties.VariableNames;
            app.Arraytable.Data=[];
            app.Arraytable.Data=plotTable;
        end

        % Callback function
        function removefromarray(app, event)

        end

        % Callback function
        function copydataplot(app, event)
            a=findall(app.ArrayDataplot,'Type','ConstantLine')
            delete(a)

            datax=get(app.ArrayDataplot.Children,'XData');% get xdata
            datay=get(app.ArrayDataplot.Children,'YData');% get ydata

            XYtraces(:,1)=datax
            XYtraces(:,2)=datay
            data2clip(cat(1,app.Arraytable.ColumnName.',num2cell(table2array(app.Arraytable.Data))))
            % num2clip(XYtraces);%copy to clipboard
        end

        % Value changed function: Array_Number_DropDown, YDropDown
        function plotarray(app, event)
            plotTable=struct2table(app.cursordata{1,str2double(app.Array_Number_DropDown.Value)});
            Data2Plot=table2array(plotTable(:,str2double(app.YDropDown.Value)));
            scatter(app.ArrayDataplot,1:1:size(Data2Plot,1),Data2Plot,'Tag','Data');
            app.Arraytable.ColumnName=plotTable.Properties.VariableNames;
            app.Arraytable.Data=[];
            app.Arraytable.Data=plotTable;
        end

        % Button pushed function: clcButton
        function cleararray(app, event)
            cla(app.ArrayDataplot)
            app.Arraytable.Data={}
        end

        % Value changed function: NumberDropDown_2
        function change_array_plotted(app, event)

        end

        % Callback function
        function getmapsfrompoints(app, event)
            baseline1= app.Prim_Chan_Ax.Children.Children(1).X
            baseline2= app.Prim_Chan_Ax.Children.Children(2).X
            AP1=app.Prim_Chan_Ax.Children.Children(3).X
            AP2=app.Prim_Chan_Ax.Children.Children(4).X
            AP3=app.Prim_Chan_Ax.Children.Children(5).X
            AP4=app.Prim_Chan_Ax.Children.Children(6).X
            try
                AP5=app.Prim_Chan_Ax.Children.Children(7).X
            end
            inputvars=[baseline1,baseline2,AP1,AP2,AP3,AP4]
            try
                inputvars(7)=AP5
            end
            app.sharedapp.sp2imgpeaks(inputvars)
        end

        % Menu selected function: fullMESfileMenu
        function Load_Full_MES_MESc_file(app, event)
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end
            data2crop=copyobj2(app.Datastore_class(selected_dataitems,1));

            normtotalcount(data2crop)
            a=0
        end

        % Value changed function: Baseline_Min
        function setminyline(app, event)
            %this maybe redundant, probably added when I wanted to display
            %the maxX location on the plot
            value = app.Baseline_Min.Value;
            app.minXfit=app.Baseline_Min.Value;
            %             app.x1line=xline(app.Prim_Chan_Ax, 0, 'b', 'LineWidth', 0.25)
            try
                if app.IJ_Centre_Profile.Value==1
                    plot(app.Prim_Chan_Ax,app.Xnormprofile(:,2),'XData',app.Xnormprofile(:,1));
                else

                    plot(app.Prim_Chan_Ax,app.profile(:,2),'XData',app.profile(:,1))
                end
            end
            %             app.x1line=xline(app.Prim_Chan_Ax, 0, 'b', 'LineWidth', 0.25)
            %             app.x1line.Value=app.Baseline_Min.Value;
            %             app.x2line=xline(app.Prim_Chan_Ax, 0, 'b', 'LineWidth', 0.25)
            %             app.x2line.Value=app.Baseline_Max.Value;
        end

        % Callback function
        function Secondary_Channel_selection(app, event)
            if  size(event.Source.Parent.Children,1)==11
                for i=7:11
                    app.PrimaryChannelMenu.Children(i).Checked='off'
                end

            elseif size(event.Source.Parent.Children,1)==7

                for i=1:7
                    app.SecondaryChannelMenu.Children(i).Checked='off'
                end
            end

            switch cat(2,event.Source.Text,'_',event.Source.Parent.Type)
                %switch primary channel types
                case 'Imaging Channel 1_uicontextmenu'
                    app.ImagingChannel1Menu.Checked='on'
                    app.Prim_menuselected='10000'
                    app.Parse_data_4_plot
                    app.Switch.Value='1'
                    app.Dataitem_Listbox_Callback
                case 'Imaging Channel 2_uicontextmenu'
                    app.ImagingChannel2Menu.Checked='on'
                    app.Prim_menuselected='01000'
                    app.Parse_data_4_plot
                    app.Switch.Value='2'
                    app.Dataitem_Listbox_Callback
                case 'FLIM Channel_uicontextmenu'
                    app.FLIMChannelMenu.Checked='on'
                    app.Prim_menuselected='00100'
                    app.Parse_data_4_plot
                case 'Ephys Channel 1_uicontextmenu'
                    if isnumeric(app.Datastore_class(app.Data_Selection,1).Aux1)==1
                        app.EphysChannel1Menu.Checked='on'
                        app.Prim_menuselected='00010'
                        app.Parse_data_4_plot
                        app.Dataitem_Listbox_Callback
                    end
                case 'Ephys Channel 2_uicontextmenu'
                    if isnumeric(app.Datastore_class(app.Data_Selection,1).Aux2)==1
                        app.EphysChannel2Menu.Checked='on'
                        app.Prim_menuselected='00001'
                        app.Parse_data_4_plot
                        app.Dataitem_Listbox_Callback
                    end
                    %switch Secondary channel types
                case 'Ephys Ch.1_uicontextmenu'
                    if isnumeric(app.Datastore_class(app.Data_Selection,1).Aux1)==1
                        app.EphysCh1Menu.Checked='on'
                        app.Sec_menuselected='1000000'
                        app.Parse_data_4_plot
                    end
                case 'Ephys Ch.2_uicontextmenu'
                    if isnumeric(app.Datastore_class(app.Data_Selection,1).Aux2)==1
                        app.EphysCh2Menu.Checked='on'
                        app.Sec_menuselected='0100000'
                        app.Parse_data_4_plot
                    end
                case 'Image Ch.1 DFF_uicontextmenu'
                    app.ImageCh1DFFMenu.Checked='on'
                    app.Sec_menuselected='0010000'
                    app.Parse_data_4_plot

                case 'Image Ch.2 DFF_uicontextmenu'
                    app.ImageCh2DFFMenu.Checked='on'
                    app.Sec_menuselected='0001000'
                    app.Parse_data_4_plot

                case 'Pockell Cell_uicontextmenu'
                    app.PockellCellMenu.Checked='on'
                    app.Sec_menuselected='0000100'
                    app.Parse_data_4_plot

                case 'Stim Pulse_uicontextmenu'
                    app.StimpulseMenu.Checked='on'
                    app.Sec_menuselected='0000010'
                    app.Parse_data_4_plot

            end
        end

        % Value changed function: EPthreshEditField
        function epeakparams(app, event)
            try
                a=findall(app.Plot_Panel,'Type','Constantline');
                b=findall(app.Plot_Panel,'Type','Scatter');
                delete(b);
                delete(a);
            end

            try
                if event.Source.Text=="Negative Peak" | event.Source.Text=="Positive Peak"
                    if  app.NegativePeakMenu.Checked==0;
                        app.NegativePeakMenu.Checked=1;
                        app.PositivePeakMenu.Checked=0;
                    elseif app.NegativePeakMenu.Checked==1;
                        app.NegativePeakMenu.Checked=0;
                        app.PositivePeakMenu.Checked=1;
                    end
                elseif event.Source.Text=="Bypass EP Peaks"
                    if  app.ByPassAPPeakMenu.Checked==0;
                        app.ByPassAPPeakMenu.Checked=1;
                    else
                        app.ByPassAPPeakMenu.Checked=0;

                    end
                end
            end

            SecCh=get(app.Aux_Chan_Ax,'Children');

            ephysx=SecCh.XData;
            ephysy=SecCh.YData;
            ephysy=sgolayfilt(ephysy,2,43);
            EPbasestart=app.Baseline_Min.Value; %start time for ephys baseline
            EPbaseend=app.Baseline_Max.Value; %end time for ephys baseline
            eProm=app.EPthreshEditField.Value;
            Ep_F0_Indices=ephysx>=EPbasestart& ephysx<=EPbaseend;
            eThreshold=nanmean(ephysy(:,Ep_F0_Indices),2)+std(ephysy(:,Ep_F0_Indices),[],2)*eProm;
            eThreshold2=nanmean(ephysy(:,Ep_F0_Indices),2)-std(ephysy(:,Ep_F0_Indices),[],2)*eProm;
            a=yline(app.Aux_Chan_Ax,eThreshold);
            b=yline(app.Aux_Chan_Ax,eThreshold2);
            pause(2);
            delete(a);
            delete(b);

        end

        % Callback function
        function Save_Selected_Data(app, event)
            if event.Source.Text=="Save All";
                data2save=app.Datastore;
            else
                data2save=app.Datastore(cell2mat(app.ListBox_2.Value));
            end
            [filename, pathname, filterindex] = uiputfile({'*.FGUI','Fiji-GUI Files (*.FGUI)'});
            savename=cat(2,pathname,filename);
            save(savename, 'data2save','-v7' );
        end

        % Menu selected function: FGUIfileMenu, LoadFGUIfileMenu
        function loadFGUI(app, event)
            [filename, pathname] = uigetfile({'*.FGUI','Fiji-GUI Files (*.FGUI)'},'Select FGUI file', 'Select file(s)', 'MultiSelect', 'on');
            file2load=cat(2,pathname,filename)
            data=load(file2load, '-mat' )

            if isobject(data.data2save)
                app.Datastore_class=data.data2save;
%                 app.CentreXYMenu.Checked=0;
%                 %             app.MESFileMenu.Checked=0;
%                 app.ImageFileMenu.Checked=0;
%                 app.FIMAsedfMenu.Checked=0;
%                 app.FIMAsMenu.Checked=0;
%                 %             app.MEScfileMenu.Checked=0;
%                 app.fullMESfileMenu.Checked=0;
%                 app.FGUIfileMenu.Checked=0;
%                 app.AsImDataClassMenu.Checked=1
                app.importtype='Class';
                app.Datastore_class.findComment(app.ListBox_2);
%                 app.CurrentDataFilesPanel.Title=filename
                for i=1:size(app.Datastore_class,1)
                    if isempty(app.Datastore_class(i,1).Subtype)==1
                        app.Datastore_class(i,1).Subtype="Single"
                    end
                end
            else
                data2save= data.data2save ;
                Datastore=Old_ImData_2_New(data2save)
                for i=1:size(Datastore,1)
                    if isempty(Datastore(i,1).Subtype)==1
                        Datastore(i,1).Subtype="Single"
                    end
                    if isempty(Datastore(i,1).comment)==1
                        Datastore(i,1).comment='-'
                    end
                    if isempty(Datastore(i,1).y_pixel_num)==1
                        Datastore(i,1).y_pixel_num=size(Datastore(i,1).UG,1);
                    end
                    if isempty(Datastore(i,1).Type)==1
                        Datastore(i,1).Type='XY'
                    end
                    if isempty(Datastore(i,1).predScX)==1
                        %                errordlg(sprintf('no scanline data in file num %d',i))
                        %               return
                        try

                            scanline=Datastore(i,1).scanline;
                            switch scanline.Type
                                case 'composite'
                                    index=linspace(1,size(scanline.ODDarray(1).Data1,2),size(scanline.ODDarray(1).Data1,2));
                                    [~,~,locs]=histcounts(index(1,:),size(Datastore(i,1).UG.',2));
                                    scanpoints=transpose(accumarray(locs(:),scanline.ODDarray(1).Data1(1,:),[],@mean));
                                    scanpoints(2,:)=transpose(accumarray(locs(:),scanline.ODDarray(1).Data1(2,:),[],@mean));
                                    Datastore(i,1).scanline.ODDarray(1).Data1=[]
                                    Datastore(i,1).scanline.ODDarray(1).Data1=double(scanpoints);

                                case 'square'
                                    index=linspace(1,size(scanline.Data1,2),size(scanline.Data1,2));
                                    [~,~,locs]=histcounts(index(1,:),size(Datastore(i,1).UG.',2));
                                    scanpoints=transpose(accumarray(locs(:),scanline.Data1(1,:),[],@mean));
                                    scanpoints(2,:)=transpose(accumarray(locs(:),scanline.Data1(2,:),[],@mean));
                                    Datastore(i,1).scanline.Data1=[]
                                    Datastore(i,1).scanline.Data1=double(scanpoints);
                            end ;


                            Datastore(i,1).predScX=double(repmat(scanpoints(1,:),size(Datastore(i,1).UG,2),1));
                            Datastore(i,1).predScY=double(repmat(scanpoints(2,:),size(Datastore(i,1).UG,2),1));

                            if size(Datastore(i,1).predScX)==size(Datastore(i,1).UG)==0;
                                Datastore(i,1).predScX=transpose(Datastore(i,1).predScX);
                                Datastore(i,1).predScY=transpose(Datastore(i,1).predScY);
                            else
                            end
                            if isempty(Datastore(i,1).ScX)==1
                                Datastore(i,1).ScX=Datastore(i,1).predScX
                                Datastore(i,1).ScY=Datastore(i,1).predScY
                            end

                        end
                    end

                end
                app.importtype='Class';
                app.Datastore_class=Datastore;
                app.Datastore_class.findComment(app.ListBox_2);
            end

%             app.CentreXYMenu.Checked=0;
%             %             app.MESFileMenu.Checked=0;
%             app.ImageFileMenu.Checked=0;
%             app.FIMAsedfMenu.Checked=0;
%             app.FIMAsMenu.Checked=0;
%             %             app.MEScfileMenu.Checked=0;
%             app.fullMESfileMenu.Checked=0;
%             app.FGUIfileMenu.Checked=0;
            app.importtype='Class';
            app.CurrentDataFilesPanel.Title=filename;
%             app.AsImDataClassMenu.Checked=1




        end

        % Callback function: CopySelectedMenu, CpButton, DelButton,
        % ...and 5 other components
        function Operations_on_Dataitem_list(app, event)
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value)
            else
                selected_dataitems=app.ListBox_2.Value
            end

            dataitems_index=1:1:size(app.ListBox_2.Items,2)


            if event.Source.Text=="Save All" | event.Source.Text=="Save";
                desc=inputdlg('Provide File Description','Description',[15 55]);
                desc=cell2mat(desc)
                %                 data2save=app.Datastore_class;
                data2save=arrayfun(@ImData_2_Struct,app.Datastore_class,'UniformOutput',true);
                %                 data2save=arrayfun(@struct,app.Datastore_class,'UniformOutput',true);
                [filename, pathname, filterindex] = uiputfile(cat(2,app.Documentspath,'/data.FGUI'));
                savename=cat(2,pathname,filename);
                dlg = msgbox('Save operation in progress...','Saving file');
                save(savename, 'data2save', 'desc');
                if ishghandle(dlg)
                    delete(dlg);
                end
            elseif event.Source.Text=="Save Selected" | event.Source.Text=="Save Sel";
                desc=inputdlg('Provide File Description','Description',[15 55]);
                desc=cell2mat(desc)
                data2save=arrayfun(@ImData_2_Struct,app.Datastore_class(selected_dataitems,1),'UniformOutput',true);
                [filename, pathname, filterindex] = uiputfile(cat(2,app.Documentspath,'/data.FGUI'));
                dlg = msgbox('Save operation in progress...','Saving file');
                savename=cat(2,pathname,filename);
                save(savename, 'data2save', 'desc');
                if ishghandle(dlg)
                    delete(dlg);
                end
            elseif event.Source.Text=="Delete Selected" | event.Source.Text=="Del";
                flag = ~ismember(dataitems_index,selected_dataitems);
                index = find(flag);

                app.Datastore_class=app.Datastore_class(index,1)

            elseif event.Source.Text=="Copy Selected" | event.Source.Text=="Cp";

                data2copy=copyobj2(app.Datastore_class(selected_dataitems,1))
                alldata=cat(1,app.Datastore_class,data2copy)
                app.Datastore_class=alldata


            end
            app.Datastore_class.findComment(app.ListBox_2)
        end


        % Menu selected function: NewItemMenu, OverwriteMenu
        function Crop_Time_DImension(app, event)
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value)
            else
                selected_dataitems=app.ListBox_2.Value
            end

            dataitems_index=1:1:size(app.ListBox_2.Items,2)
            if exist('event.Source.Text')==0
                event.Source.Text="New Item"
            end

            if event.Source.Text=="New Item"   
                data2crop=copyobj2(app.Datastore_class(selected_dataitems,1));
            else
                data2crop=app.Datastore_class(selected_dataitems,1);
            end

            %get time indices to crop to
            for i=1:size(data2crop,1)
                if data2crop(i,1).TimeDim==2
                    data2crop2(i,1)=data2crop(i,1).crop_data(2,app.MinSpinner.Value,app.MaxSpinner.Value,"just do",'zero')
                elseif data2crop(i,1).TimeDim==3
                    data2crop2(i,1)=data2crop(i,1).crop_data(3,app.MinSpinner.Value,app.MaxSpinner.Value,"just do",'zero')
                end
            end

            if event.Source.Text=="New Item"
                app.Datastore_class=cat(1,app.Datastore_class,data2crop2);
            end

            app.Datastore_class.findComment(app.ListBox_2)

        end

        % Callback function: Commentedit, EditCommentMenu,
        % EditCommentsMenu,
        % ...and 1 other component
        function Edit_Datafile_Comment(app, event)
            if event.Source.Type=="uieditfield"
                [data]=app.Datastore_class(app.Data_Selection,1).Editcomment(app.Commentedit.Value,app.Commentedit);
                app.Datastore_class(app.Data_Selection,1)=data;
                app.Datastore_class.findComment(app.ListBox_2);
                return
                %                   end
            end
            dataitems_index=1:1:size(app.Data_Selection,2)
            data2crop=app.Datastore_class(app.Data_Selection,1);
            comment = inputdlg('Comment String','Edit Comment',[1 55],{app.Datastore_class(app.Data_Selection,1).comment});
            comment=cell2mat(comment);
            if isempty(comment)==1
                return
            end

            for i=1:size(data2crop,1)
                data2crop(i,1).comment=sprintf('%s_Tr%d',comment,dataitems_index(i))
            end
            app.Datastore_class.findComment(app.ListBox_2);


            %             for i=1:size(app.Datastore,1)
            %                 numberi=sprintf('F%d',i)
            %                 %             app.ListBox_2.ItemsData{1,i}=get(mestaghandle(numberi),1,'Comment');
            %                 app.ListBox_2.Items{1,i}=sprintf('%s- %s---%s',numberi,app.Datastore(i).Type,app.Datastore(i).comment);
            %                 %             app.VariablesTable.Data{i,1}=sprintf('%d',i);
            %                 %             app.VariablesTable.Data{i,2}=get(mestaghandle(numberi),1,'Comment');
            %                 %             app.VariablesTable.Data{i,3}=false;
            %                 app.ListBox_2.ItemsData{1,i}=i;
            %             end




        end

        % Callback function
        function Import_Scanline_data_2_datafile(app, event)
            value = app.LinkScanlineDataButton.Value;
            exportloc=questdlg('Import method?','Clipboard','Clipboard', 'MAT file','MAT file');
            if exportloc=="MAT file"
                uigetfile;
            elseif exportloc=="Clipboard"
                return
            else
                return
            end
        end

        % Menu selected function: NewItemMenu_2, OverwriteMenu_2
        function Crop_X_Dimesions(app, event)
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value)
            else
                selected_dataitems=app.ListBox_2.Value
            end

            dataitems_index=1:1:size(app.ListBox_2.Items,2)
            if event.Source.Text=="New Item"
                %               if app.importtype=='Class'
                data2crop=copyobj2(app.Datastore_class(selected_dataitems,1));

            else
                data2crop=app.Datastore_class(selected_dataitems,1);
            end

            %get time indices to crop to
            data2crop=data2crop.crop_data(1,app.sharedapp.MinSpinner.Value,app.sharedapp.MaxSpinner.Value,"just do")



            if event.Source.Text=="New Item"
                %               if app.importtype=='Class'
                app.Datastore_class=cat(1,app.Datastore_class,data2crop);
            end

            app.Datastore_class.findComment(app.ListBox_2)
        end

        % Menu selected function: ThetaBinningMenu, ThetaSortingMenu
        function Spiral2D_linescan_theta_binning(app, event)
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end

            dataitems_index=1:1:size(app.ListBox_2.Items,2)  ;


            if app.importtype=='Class'
                if event.Source.Text=="Theta Binning"
                    binsize = inputdlg('Bin Angle');
                    binsize=cell2mat(binsize);
                    binsize=str2double(binsize);
                    data2crop=app.Datastore_class(selected_dataitems,1);
                    [objout,tUGcell,tURcell,tScXcell,tScYcell,YData,TData]=arrayfun(@(x) x.sort_spiral("theta_bin",[],binsize,1),data2crop,'UniformOutput',true);
                    app.Datastore_class=cat(1,app.Datastore_class,objout)
                elseif event.Source.Text=="Theta Sorting"
                    msgfig = msgbox('get yprofile','Success','modal');
                    uiwait(msgfig)
                    data2crop=app.Datastore_class(selected_dataitems,1);
                    [objout,tUGcell,tURcell,tScXcell,tScYcell,YData,TData]=arrayfun(@(x) x.sort_spiral("theta_sort",[],[],1),data2crop,'UniformOutput',true);
                    app.Datastore_class=cat(1,app.Datastore_class,objout)
                elseif event.Source.Text=="Vector Sorting"
                    data2crop=app.Datastore_class(selected_dataitems,1);
                    msgfig = msgbox('get yprofile','Success','modal');
                    uiwait(msgfig)
                    vector=mean(data2crop.UG(:,app.cursorstruct(1).selectedC1XIndices),2);
                    [B,I]=sort(vector);
                    %vector=app.
                    [objout,tUGcell,tURcell,tScXcell,tScYcell,YData,TData]=arrayfun(@(x) x.sort_spiral("vector_sort",I,[],1),data2crop,'UniformOutput',true);
                    app.Datastore_class=cat(1,app.Datastore_class,objout)
                end
            else
                data2crop=app.Datastore(selected_dataitems);
            end
            %            app.Datastore=alldata
            app.Datastore_class.findComment(app.ListBox_2)
            %           app.CopyAxesData
        end

        % Menu selected function: DeltaFFMenu_2, DeltaFRMenu_2,
        % ...and 1 other component
        function DFF_for_Linescans(app, event)
            %get list
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value)
            else
                selected_dataitems=app.ListBox_2.Value
            end
            data2crop=copyobj2(app.Datastore_class(selected_dataitems,1)); %duplicate data to operate on
            m=size(data2crop,1);
            progressbar %set progressbar

            for i=1:size(data2crop,1) %loop through data
                %get channels
                UG=data2crop(i,1).UG;
                UR=data2crop(i,1).UR;
                ScX=data2crop(i,1).ScX;
                ScY=data2crop(i,1).ScY;
                predScX=data2crop(i,1).predScX;
                predScY=data2crop(i,1).predScY;


                F0start=uint16(app.Baseline_Min.Value/data2crop(i,1).linetime);
                F0end=uint16(app.Baseline_Max.Value/data2crop(i,1).linetime);
                %set arguments for app.DF_x

                source=convertCharsToStrings(event.Source.Text)
                if source=="Delta F/F"
                    F_or_R=1;
                    type="DF/F"
                elseif source=="Delta F/R"
                    F_or_R=2;
                    type="DF/R"
                elseif source=="Subtract Baseline"
                    F_or_R=3;
                    type="DF"
                end
                if data2crop(i,1).Type=="Line2"
                    [dUG,dUR] =app.DF_over_X(UG,UR,F0start,F0end,F_or_R) %send data for processing
                elseif data2crop(i,1).Type=="FF"

                    [~,dUG,~,~,~]=data2crop(i,1).FF_Data_2D(1,1,[],1,app.Baseline_Min.Value,app.Baseline_Max.Value,[]);
                    %                      dUG(:,:,framenum)=UG;
                    try
                    [~,dUR,~,~,~]=data2crop(i,1).FF_Data_2D(1,2,[],1,app.Baseline_Min.Value,app.Baseline_Max.Value,[]);
                        %                      dUR(:,:,framenum)=UR;
                    end

                end

                data2crop(i,1).UG=dUG;
                data2crop(i,1).UR=dUR;
                if data2crop(i,1).Type=="Line2"
                    data2crop(i,1).ScX=ScX;
                    data2crop(i,1).ScY=ScY;
                    data2crop(i,1).predScX=predScX;
                    data2crop(i,1).predScY=predScY;
                end

                data2crop(i,1).ParentIdx=data2crop(i,1).Index;
                data2crop(i,1).Index=data2crop(i,1).Index+i;
                data2crop(i,1).comment=sprintf('%s| %s',type,data2crop(i,1).comment);
                progressbar(i/m) %update progressbar

            end
            app.Datastore_class=cat(1,app.Datastore_class,data2crop);
            app.Datastore_class.findComment(app.ListBox_2)



        end

        % Menu selected function: AppendFGUIMenu
        function Append_FGUI_file(app, event)
            [filename, pathname] = uigetfile({'*.FGUI','Fiji-GUI Files (*.FGUI)'},'Select FGUI file', 'Select file(s)', 'MultiSelect', 'on');
            file2load=cat(2,pathname,filename)
            data=load(file2load, '-mat' )
            if isobject(data.data2save)==1
                app.Datastore_class= cat(1,app.Datastore_class,data.data2save);
                app.Datastore_class.findComment(app.ListBox_2)
            else
                data=app.Datastore
                data2=cat(1,data,data2save)
                app.Datastore=data2
                app.CopyAxesData
            end

        end

        % Menu selected function: NewDataMenu_8, NewDataitemMenu
        function Spiral2XYT_Spiral2Image(app, event)
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end

            dataitems_index=1:1:size(app.ListBox_2.Items,2)  ;
            if app.importtype=='Class'
                if event.Source.Text=="New Data"
                    data2crop=copyobj2(app.Datastore_class(selected_dataitems,1));
                elseif event.Source.Text=="New Dataitem"
                    data2crop=copyobj2(app.Datastore_class(selected_dataitems,1));
                else
                    data2crop=app.Datastore_class(selected_dataitems,1);
                end

                try
                    res=app.sharedapp.ResolutionSpinner.Value;
                    smooth=app.sharedapp.Smooth2DSpinner.Value;
                    I_scaling=app.sharedapp.I_ScalingSpinner.Value;
                    bglev=app.sharedapp.BKGSpinner.Value;
                    psfwd=app.sharedapp.PsfwdSpinner.Value;


                catch
                    res=app.default_vars.pixel_size;
                    smooth=app.default_vars.smooth;
                    I_scaling=app.default_vars.gain;
                    bglev=app.default_vars.background;
                    psfwd=app.default_vars.psffwhm;
                end

                switch cat(2,event.Source.Text,'_',event.Source.Parent.Type);
                    case 'New Data_uimenu'
                        prompt = {'Pixel Size(um):','Smoothing (pixels):'};
                        dlgtitle = 'Spiral2Img Parameters';
                        dims = 1;
                        definput = {num2str(res),num2str(smooth)};
                        answer = cellfun(@str2double,inputdlg(prompt,dlgtitle,dims,definput)) ;
                        res=answer(1,1);
                        smooth=answer(2,1);
                end


                m=size(data2crop,1);
                progressbar

                for filenum = 1 : size(data2crop,1)
                    index=data2crop(filenum,1).TData>app.Baseline_Min.Value & data2crop(filenum,1).TData< app.Baseline_Max.Value;
                    ind=1:1:size(data2crop(filenum,1).ScX,2);
                    %             xstart=min(index(ind))
                    xstart=min(ind(index));
                    xend=max(ind(index));

                    xposdata=data2crop(filenum,1).ScX(:,index);
                    yposdata=data2crop(filenum,1).ScY(:,index);

                    xbound=[min(xposdata(:)),max(xposdata(:))];
                    ybound=[min(yposdata(:)),max(yposdata(:))];
                    if app.UseScXYdataMenu_2.Checked==0
                        useScandata=2;
                    else
                        useScandata=1;
                    end



                    switch cat(2,event.Source.Text,'_',event.Source.Parent.Type);
                        case 'New Data_uimenu'

                            [APUG,APXData,APYData,GridX3d,GridY3d]=data2crop(filenum,1).s2img(1,I_scaling,bglev,psfwd,data2crop(filenum,1).TData(1),data2crop(filenum,1).TData(end),1,xbound,ybound,[],2,useScandata,res);
                            [APUR,APXData,APYData,GridX3d,GridY3d]=data2crop(filenum,1).s2img(2,I_scaling,bglev,psfwd,data2crop(filenum,1).TData(1),data2crop(filenum,1).TData(end),1,xbound,ybound,[],2,useScandata,res);
                        case  'New Dataitem_uimenu'
                            [APUG,APXData,APYData,GridX3d,GridY3d]=data2crop(filenum,1).s2img(1,I_scaling,bglev,psfwd,data2crop(filenum,1).TData(1),data2crop(filenum,1).TData(end),1,xbound,ybound,[],1,useScandata,res);
                            [APUR,APXData,APYData,GridX3d,GridY3d]=data2crop(filenum,1).s2img(2,I_scaling,bglev,psfwd,data2crop(filenum,1).TData(1),data2crop(filenum,1).TData(end),1,xbound,ybound,[],1,useScandata,res);
                    end






                    data2crop(filenum,1).file='FF';
                    data2crop(filenum,1).Type='FF';
                    data2crop(filenum,1).UG=APUG;
                    data2crop(filenum,1).UR=APUR;
                    data2crop(filenum,1).ScX=repmat(APXData.',numel(APYData),1);
                    data2crop(filenum,1).ScY=repmat(APYData,1,numel(APXData));
                    data2crop(filenum,1).ScX=repmat(data2crop(filenum,1).ScX,1,1,size(data2crop(filenum,1).UG,3));
                    data2crop(filenum,1).ScY=repmat(data2crop(filenum,1).ScY,1,1,size(data2crop(filenum,1).UG,3));
                    data2crop(filenum,1).predScX=data2crop(filenum,1).ScX;
                    data2crop(filenum,1).predScY=data2crop(filenum,1).ScY;



                    try
                        data2crop(filenum,1).TiR=data2crop(filenum,1).TiR(:,:);
                    end
                    data2crop(filenum,1).ParentIdx=data2crop(filenum,1).Index;
                    data2crop(filenum,1).Index=size(app.Datastore_class,1)+1;
                    data2crop(filenum,1).YData=APYData.';
                    data2crop(filenum,1).XData=APXData.';
                    %data2crop(filenum,1).TData=linspace(0,size(data2crop(filenum,1).UG,3)*data2crop(filenum,1).linetime,size(data2crop(filenum,1).UG,3));
                    data2crop(filenum,1).x_pixel_num=size(data2crop(filenum,1).XData,2);
                    data2crop(filenum,1).x_pixel_size=data2crop(filenum,1).XData(2)-data2crop(filenum,1).XData(1);
                    data2crop(filenum,1).Height=size(data2crop(filenum,1).UG,1);
                    data2crop(filenum,1).y_pixel_size=data2crop(filenum,1).YData(2)-data2crop(filenum,1).YData(1);
                    data2crop(filenum,1).y_pixel_num=size(data2crop(filenum,1).UG,1);

                    data2crop(filenum,1).scanline.roi=[1;data2crop(filenum,1).y_pixel_num];
                    data2crop(filenum,1).TimeDim=3;
                    data2crop(filenum,1).XDim=2;
                    data2crop(filenum,1).YDim=1;
                    data2crop(filenum,1).z_pixel_size=data2crop(filenum,1).linetime;
                    data2crop(filenum,1).comment=sprintf('Spiral2XYT| %s | %d',data2crop(filenum,1).comment,data2crop(filenum,1).y_pixel_size);


                    progressbar(filenum/m);  %update progressbar;
                end
            end

            app.Datastore_class=cat(1,app.Datastore_class,data2crop);
            app.Datastore_class.findComment(app.ListBox_2);



        end

        % Menu selected function: CollapseStackMenu, NewDataMenu_10,
        % ...and 5 other components
        function X_or_Y_axis_binning(app, event)
            [selected_dataitems,dataitems_index]=app.SelectedItems;

                data2crop=copyobj2(app.Datastore_class(selected_dataitems,1));
                BinDimension=convertCharsToStrings(event.Source.Parent.Text);
                if event.Source.Text=="Collapse Stack"
                else
                    bindata = inputdlg('Bin Width (Pixels)');
                    bindata=cell2mat(bindata);
                    bindata=str2double(bindata);
                end
                if BinDimension=="Bin X Dimension"
                    Binneddata=data2crop.BinData(2,bindata);
                elseif BinDimension=="Bin Y Dimension"
                    Binneddata=data2crop.BinData(1,bindata);
                elseif BinDimension=="Bin Z Dimension" & event.Source.Text=="Collapse Stack"
                    Binneddata=data2crop.BinData(3,50000);

                elseif  event.Source.Text=="Bin Z Dimension"
                    Binneddata=data2crop.BinData(3,bindata);
                end
                if event.Source.Text=="New Data" | event.Source.Text=="Collapse Stack"
                    app.Datastore_class=cat(1,app.Datastore_class,Binneddata);
                elseif event.Source.Text=="Overwrite"
                    for i=1:size(data2crop)
                        app.Datastore_class(selected_dataitems(i),1)=Binneddata(i,1);
                    end
                end
                app.Datastore_class.findComment(app.ListBox_2);            
        end

        % Menu selected function: ShiftXorTaxesMenu, ShiftYAxesMenu,
        % ...and 1 other component
        function Shift_dataitem_Y_axis(app, event)
            %get list of DataItems to operate on
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end
            %duplicate data to operate on
            data2crop=app.Datastore_class(selected_dataitems,1)
            msg = 'New Dataitem?';
            title = 'New Dataitem?';
            answer = uiconfirm(app.FijiGUIUIFigure,msg,title, ...
                'Options',{'Yes', 'No','cancel'}, ...
                'DefaultOption',2,'CancelOption',3);

            %answer = questdlg('New Dataitem?','New Data','Yes','No','Yes');
            if answer=="Yes"
                newdata=1;
            else
                newdata=0;
            end
            shift = inputdlg('Shift Y (Pixels)');
            shift=cell2mat(shift);
            shift=str2double(shift);

            if event.Source.Text=="Shift Y Axes"
                obj=data2crop.Shift_data(1,shift,newdata);
            elseif event.Source.Text=="Shift X(or T) axes"
                obj=data2crop.Shift_data(2,shift,newdata);
            elseif event.Source.Text=="Shift Z(or T) axes"
                obj=data2crop.Shift_data(3,shift,newdata);
            end
            if answer=="Yes"
                app.Datastore_class=cat(1,app.Datastore_class,obj);
            end
            app.Datastore_class.findComment(app.ListBox_2);
        end

        % Button pushed function: DATAFILEVIEWButton
        function opendata(app, event)
            app.DATAfile=newdatafile_2022b_m;

        end

        % Menu selected function: AddEmptyDataItemsMenu
        function add_empty_data_holders(app, event)
            %find number of containers to add
            num2add = inputdlg('Number of Dataitems');
            num2add=cell2mat(num2add);

            for i=1:str2double(num2add)
                Data(i,1)=ImData;
            end

            app.Datastore_class=cat(1,app.Datastore_class,Data)
            app.Datastore_class.findComment(app.ListBox_2)
        end

        % Button pushed function: ZoomInX
        function zoominX(app, event)
            xlims=app.Prim_Chan_Ax.XLim;
            centre=median(xlims,2);
            range=xlims(2)-centre;
            newxlims=[centre-range/1.5, centre+range/1.5];
            app.Prim_Chan_Ax.XLim=newxlims;
            try
                app.sharedapp.MainImageAx.XLim=newxlims;
                app.sharedapp.XProfile.XLim=newxlims;
                app.sharedapp.ephysAx.XLim=newxlims;
            catch ME

            end
        end

        % Button pushed function: ZoomOutX
        function zoomoutX(app, event)

            xlims=app.Prim_Chan_Ax.XLim;
            centre=median(xlims,2);
            range=xlims(2)-centre;
            newxlims=[centre-range*1.5, centre+range*1.5];
            app.Prim_Chan_Ax.XLim=newxlims;

            try
                app.sharedapp.MainImageAx.XLim=newxlims;
                app.sharedapp.XProfile.XLim=newxlims;
                app.sharedapp.ephysAx.XLim=newxlims;
            catch ME

            end
        end

        % Menu selected function: UseScXYdataMenu_2, keeptimeidx
        function setposorpred(app, event)
            %For app.Spiral2XYT determines whether to use predicted scanner
            %locations or Scanner feedback signals
            %Predicted is almost certainly less accurate, but less liable to
            %arterfacts as data is more uniform over time
            if event.Source.Text=="Keep Time Index"
                if app.keeptimeidx.Checked=='on'
                    app.keeptimeidx.Checked=0;
                elseif app.keeptimeidx.Checked=='off'
                    app.keeptimeidx.Checked=1;
                end
            else
            if app.UseScXYdataMenu_2.Checked==0
                app.UseScXYdataMenu_2.Checked=1
                app.UseScXYdataMenu_2.Checked=1
            else
                app.UseScXYdataMenu_2.Checked=0
                app.UseScXYdataMenu_2.Checked=0
            end

        end
        end
        % Callback function
        function Collatedataplots(app, event)
            %semi-functional
            %Appends Line profile Dataitems to each other,

            % get dataitems selcted
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end

            dataitems_index=1:1:size(app.ListBox_2.Items,2)  ;
            data2crop=app.Datastore(selected_dataitems);
            m=size(data2crop,1);
            progressbar() %set progressbar
            num=size(data2crop,1)

            for i=1:num
                %gets plots of channels and converts all to cell array
                Greenchanplots(i,1)=mat2cell(data2crop(i).roi1plotG,1);
                Redchanplots(i,1)=mat2cell(data2crop(i).roi1plotR,1);
                Timedatas(i,1)=mat2cell(data2crop(i).TData,1);
                aux1chanplots(i,1)=mat2cell(data2crop(i).Aux1,1);
                auxtimedatas(i,1)=mat2cell(data2crop(i).Aux1XData,1);
                aux2chanplots(i,1)=mat2cell(data2crop(i).Aux2,1);
            end
            %sends traces to app.format_traces to pad maximum array length
            %with NaN's
            [GreenMat,TDataMat]=app.format_traces(Greenchanplots,Timedatas)
            [RedMat,TDataMat]=app.format_traces(Redchanplots,Timedatas)
            [Aux1Mat,AuxTDataMat]=app.format_traces(aux1chanplots,auxtimedatas)
            [Aux2Mat,AuxTDataMat]=app.format_traces(aux2chanplots,auxtimedatas)

            % Load Template Datafile
            DAT=load('template.mat');
            Datastore=DAT.DATA;

            %Add concatenated dataitems to new data %this should be a
            %seprate function somehow, but needs to do specific operations on data so one day I will sort that out, maybe by storing data in objects
            %prelimary Classdef is in main folder
            Datastore.UG=GreenMat.' ;
            Datastore.UR=RedMat.';
            Datastore.TData=TDataMat.';
            Datastore.Aux1=Aux1Mat.';
            Datastore.Aux2=Aux2Mat.';
            Datastore.eXData=AuxTDataMat.';
            Datastore.Aux1XData=AuxTDataMat.';
            Datastore.Aux2XData=AuxTDataMat.';
            Datastore.Type="Multi-line profile";
            Datastore.file="Multi-line profile";
            Datastore.source="FGUI"
            Datastore.Time=datetime(datetime)
            xpix=Datastore.TData(:,2)-Datastore.TData(:,1)
            Datastore.YData=1:1:size(Datastore.UG,1);
            ypix=1
            Datastore.ParentIdx=1;
            Datastore.Index=Datastore.Index+1;
            Datastore.x_pixel_num=size(Datastore.UG,2);
            Datastore.x_pixel_size=xpix;
            Datastore.Height=size(Datastore.UG,1);
            Datastore.y_pixel_num=Datastore.Height;
            Datastore.y_pixel_size=ypix;
            Datastore.linetime=xpix;
            Datastore.YData=1:1:size(data2crop(i).UG,1);
            Datastore.XData=Datastore.TData

            Datastore.TimeDim=2
            Datastore.XDim=2
            Datastore.YDim=1

            Datastore.roi1plotG=Datastore.UG;
            Datastore.roi1plotR=Datastore.UR;
            Datastore.comment=cat(2,'Collated Data','_',Datastore.comment)
            Datastore.roi1imgG=Datastore.UG;
            Datastore.roi1imgR=Datastore.UR;
            %             Datastore.roi1plotG=nanmean(data2crop(i).UG,1);
            %             Datastore.roi1plotR=nanmean(data2crop(i).UR,1);
            app.Datastore(end+1)=Datastore
            app.CopyAxesData
            error=[]


        end

        % Callback function
        function changetrace(app, event)
            %Changes the 1D plot displayed in primary channel Axis
            value = app.PeakWindowSpinner.Value;
            app.Parse_data_4_plot;
        end

        % Value changed function: Selction_Edit_Field
        function select_dataitems(app, event)
            %Uses Regexp to multiselect dataitems based in text patterns such as '1AP' for all items with '1AP' in app.Datastore.comment, or with
            %app.NumButton pressed by Vector, i.e. 1:5:40 selects every 5th item
            try
                %determines if numeric or string selection
                if app.NumButton.Value==1
                    %Number selection
                    selection=eval(app.Selction_Edit_Field.Value)
                    %                     selection=num2cell(selection)
                    app.ListBox_2.Multiselect=1
                    app.MultiselectCheckBox.Value=1
                    app.ListBox_2.Value=selection
                else
                    %Text selection
                    %get comment in Cell Array
                    for i=1:size(app.Datastore_class,1)
                        if isempty(app.Datastore_class(i,1).comment)
                            %                         Greenchanplots(i,1)=mat2cell(' ',1)
                            Greenchanplots(i,1)={' '}
                        else
                            % %                         Greenchanplots(i,1)=mat2cell(app.Datastore_class(i,1).comment,1)
                            Greenchanplots(i,1)={app.Datastore_class(i,1).comment}
                        end
                    end

                    %identify String Pattern in Comments
                    contains=regexp(Greenchanplots,app.Selction_Edit_Field.Value)
                    index=cellfun(@isempty,contains)
                    %return index of text matches
                    item_index=1:1:size(app.Datastore_class,1)
                    item_index(index)
                    item_index(index.')
                    selection=item_index(index==0)
                    %convert selection cell to format for ListBox Value
                    %                     selection=num2cell(selection)
                    app.ListBox_2.Multiselect=1
                    %                     selection=cell2mat(selection)
                    app.ListBox_2.Value=selection
                end
            catch ME
                %shows error
                errordlg(ME.message)
            end
            if app.PlotSelectedCheckBox.Value==1
                app.Dataitem_Listbox_Callback
            end
        end

        % Value changed function: ShowCursorsButton
        function show_cursors(app, event)
            %Just Runs Plot with Change in StateButton switch for Display
            %of Cursors
            app.Parse_data_4_plot
        end

        % Menu selected function: Auto_2D_Peak_locsMenu_2
        function Auto_2D_Peak_locations(app, event)
            %Loads new data and sends to public function in Imageview
            %Runs Sp2Img with current parameters
            %Then Runs getPeakLocs(2D_Profile) on Primary Channel and Secondary
            %Data (for d/T only)

            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end

            dataitems_index=1:1:size(app.ListBox_2.Items,2)  ;
            data2crop=copyobj2(app.Datastore_class(selected_dataitems,1));

            for i=1:size(data2crop,1)
                app.sharedapp.Callpeaklocs_auto(data2crop(i,1))
            end
        end


        % Button pushed function: ZoomInY
        function zoominY(app, event)
            %Callback to zoom in on YAxis of Primary Channel
            ylims=app.Prim_Chan_Ax.YLim;
            centre=median(ylims,2);
            range=ylims(2)-centre;
            newylims=[centre-range/1.5, centre+range/1.5]
            app.Prim_Chan_Ax.YLim=newylims
        end

        % Button pushed function: ZoomOutY
        function zoomoutY(app, event)
            %Callback to zoom out on YAxis of Primary Channel
            ylims=app.Prim_Chan_Ax.YLim;
            centre=median(ylims,2);
            range=ylims(2)-centre;
            newylims=[centre-range*1.5, centre+range*1.5]
            app.Prim_Chan_Ax.YLim=newylims
        end

        % Menu selected function: NewDataMenu_12
        function Crop_XY(app, event)
            ScaledROISize=MIJ.getRoi(1);
            ROISize=MIJ.getRoi(0);
            ROISize(ROISize==0)=1

            if iscell(app.ListBox_2.Value)==1;
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end
            %duplicate data to operate on
            data2crop=copyobj2(app.Datastore_class(selected_dataitems,1)) ;
            y=1:1:size(data2crop.UG,1);
            x=1:1:size(data2crop.UG,2);
            z=1:1:size(data2crop.UG,3);
            ycrop= y>= ROISize(2,2) & y<=ROISize(2,3);
            xcrop= x>= ROISize(1,1) & x<=ROISize(1,2)
            if data2crop.file=="Line2";
                excrop= data2crop.eXData>= ScaledROISize(1,1) &  data2crop.eXData<=ScaledROISize(1,2)
                data2crop.Aux1=data2crop.Aux1(excrop);
                try
                    data2crop.Aux2=data2crop.Aux1(excrop);
                end
                data2crop.eXData=data2crop.eXData(excrop);
                data2crop.eXData= data2crop.eXData- data2crop.eXData(1);
            end
            MIJ.getCurrentImage;

            if data2crop.file=="FF";
                data2crop.UG=data2crop.UG(ycrop,xcrop,:);
                data2crop.UR=data2crop.UR(ycrop,xcrop,:);
                data2crop.ScX=data2crop.ScX(ycrop,xcrop,:);
                data2crop.ScY=data2crop.ScY(ycrop,xcrop,:);
                data2crop.XData=data2crop.XData(xcrop);
                data2crop.YData=data2crop.YData(ycrop);
                data2crop.comment=sprintf('CropXY | %s',data2crop.comment);
                if data2crop.source=="MESc"
                    data2crop.bkgUG=nanmean(data2crop.UG,3);
                    data2crop.bkgUR=nanmean(data2crop.UR,3);
                    data2crop.bkgXData=data2crop.XData;
                    data2crop.bkgYData=data2crop.YData;
                end
                try
                    data2crop.TiR=data2crop.TiR([ROISize(2,1):ROISize(2,3)],[ROISize(1,1):ROISize(1,2)],:);
                end
            elseif data2crop.file=="Line2"
                data2crop.UG=data2crop.UG(ycrop,xcrop,:);
                data2crop.UR=data2crop.UR(ycrop,xcrop,:);
                data2crop.ScX=data2crop.ScX(ycrop,xcrop,:);
                data2crop.ScY=data2crop.ScY(ycrop,xcrop,:);
                data2crop.XData=data2crop.XData(xcrop);
                data2crop.YData=data2crop.YData(ycrop);

                try
                    data2crop.TiR=data2crop.TiR(ycrop,xcrop,:)  ;
                end
                %             data2crop.YData=data2crop.YData(ycrop);
                %             data2crop.XData=data2crop.XData(xcrop);
                data2crop.TData=data2crop.TData(xcrop);
                data2crop.TData=data2crop.TData-data2crop.TData(1);
                data2crop.XData=data2crop.XData-data2crop.XData(1);

            end

            data2crop.comment=sprintf('%s%s','CropXY |',data2crop.comment);
            data2crop.ParentIdx=data2crop.Index;
            data2crop.Index=size(app.Datastore_class,1)+1;
            data2crop.scanline.roi=[1;size(data2crop.UG,1)];

            %                for i1=2:8
            %                     eval(sprintf('data2crop.roi%dimgG=[];',i1));
            %                     eval(sprintf('data2crop.roi%dimgR=[];',i1));
            %                     eval(sprintf('data2crop.roi%dplotG=[];',i1));
            %                     eval(sprintf('data2crop.roi%dplotR=[];',i1));
            %                 end
            %                  alldata=cat(1,app.Datastore,data2crop);
            %Replace Datastore
            app.Datastore_class=cat(1,app.Datastore_class,data2crop);
            %refresh Data Item ListBox
            app.Datastore_class.findComment(app.ListBox_2)
        end

        % Button pushed function: LeftX
        function shiftLeft(app, event)
            %Callback to shift axes left
            xlims=app.Prim_Chan_Ax.XLim;
            centre=median(xlims,2);
            range=xlims(2)-centre;
            quarter_range=range/4;
            %             if app.Holdlimits.Value==0
            newxlims=[xlims(1)- quarter_range, xlims(2)- quarter_range]
            app.Prim_Chan_Ax.XLim=newxlims
            %             end


            try
                app.sharedapp.MainImageAx.XLim=newxlims
                app.sharedapp.XProfile.XLim=newxlims
                app.sharedapp.ephysAx.XLim=newxlims
            catch ME

            end
            app.Xmin= app.Prim_Chan_Ax.XLim(1)
            app.Xmax= app.Prim_Chan_Ax.XLim(2)


        end

        % Button pushed function: RightY
        function shift_Right(app, event)
            %Callback to shift axes right
            xlims=app.Prim_Chan_Ax.XLim;
            centre=median(xlims,2);
            range=xlims(2)-centre;
            quarter_range=range/4;
            %             if app.Holdlimits.Value==0
            newxlims=[xlims(1)+ quarter_range, xlims(2)+ quarter_range]
            app.Prim_Chan_Ax.XLim=newxlims
            %             end
            try
                app.sharedapp.MainImageAx.XLim=newxlims
                app.sharedapp.XProfile.XLim=newxlims
                app.sharedapp.ephysAx.XLim=newxlims
            catch ME

            end
            app.Xmin= app.Prim_Chan_Ax.XLim(1)
            app.Xmax= app.Prim_Chan_Ax.XLim(2)
        end

        % Button pushed function: UpY
        function shiftax_up(app, event)
            %Callback to shift primary axis up
            ylims=app.Prim_Chan_Ax.YLim;
            centre=median(ylims,2);
            range=ylims(2)-centre;
            quarter_range=range/4;
            newxlims=[ylims(1)+ quarter_range, ylims(2)+ quarter_range]
            app.Prim_Chan_Ax.YLim=newxlims
        end

        % Button pushed function: DownY
        function Shift_ax_down(app, event)
            %Callback to shift primary axis up
            ylims=app.Prim_Chan_Ax.YLim;
            centre=median(ylims,2);
            range=ylims(2)-centre;
            quarter_range=range/4;
            newxlims=[ylims(1)- quarter_range, ylims(2)- quarter_range]
            app.Prim_Chan_Ax.YLim=newxlims
        end

        % Callback function
        function plotmultiple(app, event)
            cla(app.Prim_Chan_Ax);
            if iscell(app.ListBox_2.Value)==1;
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end
            try
                source=  cat(2,event.Source.Text,'_',event.Source.Parent.Type);
            catch ME
                source="MES_select";
            end
            selected_dataitems=sort(selected_dataitems,'ascend');
            data=app.Datastore_class(selected_dataitems,1);
            cla(app.Prim_Chan_Ax);
            hold(app.Prim_Chan_Ax,'on');
            hold(app.Aux_Chan_Ax,'on');
            if app.ImagingChannel1Menu.Checked=="on"
                [Prim_plot,Prim_ax,roi_2_plot,PrimCh_X,sec1,sec2]=arrayfun(@(x) x.Plot_TData_1D(1,app.ROIsListBox.Value,app.Prim_Chan_Ax,app.Normalisation.Value,app.Baseline_Min.Value,app.Baseline_Max.Value,1,app.Aux_Chan_Ax,[],[]),data,'UniformOutput',false);
            elseif app.ImagingChannel2Menu.Checked=="on"
                [Prim_plot,Prim_ax,roi_2_plot,PrimCh_X,sec1,sec2]=arrayfun(@(x) x.Plot_TData_1D(2,app.ROIsListBox.Value,app.Prim_Chan_Ax,app.Normalisation.Value,app.Baseline_Min.Value,app.Baseline_Max.Value,1,app.Aux_Chan_Ax,[],[]),data,'UniformOutput',false);
            end

%             app.Prim_Chan_Ax.XLim(1)=0.02;
%             app.Aux_Chan_Ax.XLim(1)=0.02;
            hold(app.Prim_Chan_Ax,'off');
            hold(app.Aux_Chan_Ax,'off');
            app.XList=addlistener(app.Prim_Chan_Ax, 'XLim', 'PostSet', @(src, evnt)app.XLim_shift_listener);
            app.Aux_Chan_Ax.ColorOrder= [0    0.4470    0.7410];
            app.Prim_Chan_Ax.ColorOrder= [0    0.4470    0.7410];
        end

        % Menu selected function: NewMenu
        function new_points(app, event)
        a=0;
        hData=event.Source.Parent.Children.Parent.Parent.Parent.CurrentObject.Data;
        end
        % Menu selected function: ClipboardImportMenu,
        % ...and 1 other component
        function clipboard_XT_import(app, event)

            rawData1 = importdata('-pastespecial');
            exportloc=questdlg('Is the data in columns?','Clipboard Import','Yes','No', 'cancel');
            if exportloc=="No"
                rawData1=rawData1.';
            end
            exportloc=questdlg('Uniform X data in first column or interleaved?','Clipboard Import','1st Column','Interleaved', 'cancel');
            if exportloc=="1st Column"
                XData=rawData1(:,1);
                YData=rawData1(:,[2:end]);
            elseif exportloc=="Interleaved"
                YData=mat2cell(rawData1,size(rawData1,1),ones(1,size(rawData1,2)/2)+1);
            end
            spaceList = { 'Time(s)','Time(ms)','Distance(microns)'};
            [idx, tf] = listdlg('ListString', spaceList,...
                'SelectionMode', 'Single', 'PromptString', 'Select X datatype', 'Initialvalue', 1,'Name', 'Make choice', 'ListSize',[150,50]);
            spaceList = { 'Line plot','Scatter Plot'};
            [index, tf1] = listdlg('ListString', spaceList,...
                'SelectionMode', 'Single', 'PromptString', 'Select Datatype', 'Initialvalue', 1,'Name', 'Make choice', 'ListSize',[150,50]);

            for i=1:size(YData,2)
                data2crop(i,1)=ImData;
                data2crop(i,1).Type='Line1';
                data2crop(i,1).file='Line1';
                if exportloc=="1st Column"
                    Xtrace=XData.';
                    Ytrace=YData(:,i).';
                elseif exportloc=="Interleaved"
                    data=cell2mat(YData(1,i))
                    Xtrace=data(:,1).';Ytrace=data(:,2).'
                end
                if idx==2
                    Xtrace=Xtrace/1000
                end

                data2crop(i,1).UG=Ytrace;
                data2crop(i,1).UR=Ytrace;
                data2crop(i,1).Aux1=zeros(1,numel(Ytrace));
                data2crop(i,1).eXData=Xtrace;
                data2crop(i,1).TData=Xtrace;
                data2crop(i,1).XData=Xtrace;
                data2crop(i,1).Index=i;
                data2crop(i,1).comment=sprintf('LineProfile|%s|%d','CBImport',i);
                data2crop(i,1).source="Clipboard"
                data2crop(i,1).x_pixel_size=data2crop(i,1).XData(2)-data2crop(i,1).XData(1)
                data2crop(i,1).y_pixel_size=1
                data2crop(i,1).x_pixel_num=numel(Ytrace);
                data2crop(i,1).y_pixel_num=2
                data2crop(i,1).TimeDim=2
                data2crop(i,1).XDim=2
                data2crop(i,1).YDim=1
                data2crop(i,1).linetime=data2crop(i,1).TData(2)-data2crop(i,1).TData(1)
                data2crop(i,1).Height=2
                data2crop(i,1).scanline.roi=[1;size(data2crop(i,1).UG,1)]
                if spaceList(index)=="Scatter Plot"
                    data2crop(i,1).Subtype='Scatter'
                elseif spaceList(index)=="Line plot"
                    data2crop(i,1).Subtype='Single'
                end
            end
            app.Datastore_class=cat(1,app.Datastore_class,data2crop);
            app.Datastore_class.findComment(app.ListBox_2)
        end

        % Menu selected function: AllMenu
        function replaceAux(app, event)
            if iscell(app.ListBox_2.Value)==1;
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end
            dataitem_idx=1:size(selected_dataitems,2);
            [file,path] = uigetfile(cat(2,app.defaultdir,'*.abf;*.wcp'),'MultiSelect','on');
            filename=cat(2,path,file);

            [ephysdata,~,ephysmetadata] = abfload(filename);
            %duplicate data to operate on
            %             data2crop=app.Datastore(selected_dataitems) ;
            if length(selected_dataitems)==size(ephysdata,3)
                for i=1:length(selected_dataitems)
                    if ~isrow(ephysdata(:,1,dataitem_idx(i)))
                        app.Datastore_class(selected_dataitems(i),1).Aux1=ephysdata(:,1,dataitem_idx(i)).';
                        app.Datastore_class(selected_dataitems(i),1).Aux2=ephysdata(:,2,dataitem_idx(i)).';
                    else
                        app.Datastore_class(selected_dataitems(i),1).Aux1=ephysdata(:,1,dataitem_idx(i));
                        app.Datastore_class(selected_dataitems(i),1).Aux2=ephysdata(:,2,dataitem_idx(i));
                    end
                    time_start=app.Datastore_class(i,1).TData(1);
                    app.Datastore_class(selected_dataitems(i),1).eXData=linspace(time_start,time_start+ephysmetadata.sweepLengthInPts/10000,length(app.Datastore_class(selected_dataitems(i),1).Aux1));
                end
            else
                errordlg('Selected Data are not equal length');
                return
            end


        end

        % Window key press function: FijiGUIUIFigure
        function keypress(app, event)
            key = event.Key;
            a=0;
            if isempty(event.Modifier)==0
                if isequal(event.Modifier{1,1},'control')
                    %                 brush(app.Prim_Chan_Ax,'on');
                    switch key
                        case 'k'
                            if app.PeakfindShorcutsOffButton.Value==0
                                app.PeakfindShorcutsOffButton.Value=1;

                            elseif app.PeakfindShorcutsOffButton.Value==1
                                app.PeakfindShorcutsOffButton.Value=0;

                            end
                        case 'o'
                            app.LoadMES_as_Objarray;

                    end
                end

            else % no modifier used (e.g. just a key press, 'k','f4', etc.)
                switch  key
                    case 'f4'
                        open(app.DataItemListMenu,[280 800]);
                    case 'e'
                        app.EditDataMenu;
                    case 'leftarrow'
                        app.shiftLeft;
                    case 'rightarrow'

                        app.shift_Right;
                    case 'uparrow'
                        %                         app.ROIsListBox.Value=app.ROIsListBox.Value-1;
                    case 'downarrow'
                        %                         app.ROIsListBox.Value=app.ROIsListBox.Value+1;
                    case 'b'
                        app.Set_Brush;
                    case 'pageup'
                        app.zoominX;
                    case 'pagedown'
                        app.zoomoutX;
                    case 's'
                        %                         app.setcursor
                    case '1'
                        app.Brush_prim;
                    case '2'
                        app.brush_aux;
                end


            end

            if app.PeakfindShorcutsOffButton.Value==1
                %shorts reserved for peak finding
                switch  key
                    case 'f1'
                        app.Callback_to_FINDPEAKS_function;
                    case 'a'
                        app.Callback_to_Add_Peakfind_Data_to_Output;
                    case 'z'
                        app.Callback_to_Remove_Peakfind_Data_from_Output;
                    case 'n'
                        app.MinPromEditField.Value=app.MinPromEditField.Value-0.25;
                    case 'm'
                        app.MinPromEditField.Value=app.MinPromEditField.Value+0.25;
                    case 's'
                        try
                            app.sharedapp.getmapsfrompoint;
                        catch
                        end
                    case 'i'
                        app.Next(0);
                    case 'k'
                        app.Next(1);%select next dataitem
                    case 'w'
                        app.Dataitem_Listbox_Callback;
                end
            end

        end

        % Menu selected function: LoadMESMenu
        function LoadMES_as_Objarray(app, event)
            [file,path] = uigetfile(cat(2,app.defaultdir,'*.mes;*.mesc;*.hdf5;*.oib;*.abf;*.gor;*.tif;*.FGUI;*.mat;*.spc'),'MultiSelect','on');
            filename=cat(2,path,file);
            app.autoloadFGUI(filename);
        end

        % Menu selected function: OutputSelectiontoBaseMenu_2
        function output2base(app, event)
            Dataitem=copyobj2(app.Datastore_class(app.Data_Selection,1));
            assignin("base",'Data',Dataitem);
        end

        % Value changed function: ResponseTypeDropDown
        function event_select(app, event)
            switch app.ResponseTypeDropDown.Value
                case 'iGlu(V) AP'
                    app.BaselineWindowSpinner.Value=10;
                    app.BaselineOffsetSpinner.Value=5;
                    app.PeakWindowSpinner.Value=10;
                    app.MinPromEditField.Value=3;
                    app.MinIntervalsEditField.Value=90;
                    app.MinWidthEditField.Value=3;
                    app.Peak_time_pos_window.Value=20;
                    app.Peak_time_neg_window.Value=1;
                case 'iGlu(S) AP'
                    app.BaselineWindowSpinner.Value=10;
                    app.BaselineOffsetSpinner.Value=5;
                    app.PeakWindowSpinner.Value=20;
                    app.MinPromEditField.Value=3;
                    app.MinIntervalsEditField.Value=90;
                    app.MinWidthEditField.Value=8;
                    app.Peak_time_pos_window.Value=30;
                    app.Peak_time_neg_window.Value=1;
                case 'Calcium AP'

                case 'Calcium NMDA'
                case 'iGABASnFR AP'

                case 'iGABASnFR IE'
                    app.BaselineWindowSpinner.Value=50;
                    app.BaselineOffsetSpinner.Value=5;
                    app.PeakWindowSpinner.Value=100;
                    app.MinPromEditField.Value=5;
                    app.MinIntervalsEditField.Value=1000;
                    app.MinWidthEditField.Value=50;
                    app.Peak_time_pos_window.Value=2000;
                    app.Peak_time_neg_window.Value=30;
            end
        end

        % Value changed function: PeakfindShorcutsOffButton
        function Peakfind_shorcuts(app, event)
            %             if app.PeakfindShorcutsOffButton.Value==0
            %               app.PeakfindShorcutsOffButton.Value=1
            %
            %             else
            %              app.PeakfindShorcutsOffButton.Value=0
            %
            %             end
        end

        % Button pushed function: SendPeaks2Sp2ImgsButton
        function sendsp2img(app, event)


            oneDim_sucs=cell2mat(app.UITable_2.Data(5,:))
            if app.PromButton.Value==1
                oneDim_amp=cell2mat(app.UITable_2.Data(4,:))
            else
                oneDim_amp=cell2mat(app.UITable_2.Data(1,:))
            end
            % if app.EphystimingCheckBox.Value==1
            %  locationsImg=cell2mat(app.UITable_2.Data(2,:))
            %  locations=cell2mat(app.UITable_2.Data(6,:))
            %  app.inputvars=[app.Baseline_Min.Value,app.Baseline_Max.Value,locations(1),locations(2),locations(3),locations(4)];
            % else
            locationsImg=cell2mat(app.UITable_2.Data(2,:))
            locations=cell2mat(app.UITable_2.Data(2,:))
            app.inputvars=[app.Baseline_Min.Value,app.Baseline_Max.Value,locations(1),locations(2),locations(3),locations(4)];
            app.sharedapp.AP1Spinner.Value=locationsImg(1)*1000;
            app.sharedapp.AP2Spinner.Value=locationsImg(2)*1000;
            app.sharedapp.AP3Spinner.Value=locationsImg(3)*1000;
            app.sharedapp.AP4Spinner.Value=locationsImg(4)*1000;
            % try
            locationsImg(isnan(locationsImg))=0
            locationsImg=locationsImg*1000;
            allOneString = sprintf('%.0f,' , locationsImg(5:end) );
            allOneString = cat(2,'[',allOneString(1:end-1),']');% strip final comma
            app.sharedapp.EditField.Value=allOneString;
            % end
            % end
            try
                app.sharedapp.triggerspiral(app.inputvars,oneDim_sucs,oneDim_amp)
            catch ME
                assignin('base','message',ME.message)
            end
            % %
            %       [app.twoDEvent]=Event_Data(app.peaksDATA,app.UITable_2.Data,1,app.sharedapp.sp2img_int_output,app.sharedapp.sp2img_gridx_output,app.sharedapp.sp2img_gridy_output,app.sharedapp.Switch.Value)
            %      [obj]=app.Datastore_class(app.Data_Selection,1).getEvents(app.twoDEvent)


        end

        % Size changed function: FittingTab
        function makelist(app, event)
            position = app.FittingTab.Position;
            app.brushlistener=addlistener(app.Prim_Chan_Ax.Children, 'BrushDatab', 'PostSet', @(src, evnt)app.BrushCall)
        end

        % Menu selected function: AllMenu_2, CombinedMenu, UGMenu, URMenu
        function savetif(app, event)
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end

            data2crop=copyobj2(app.Datastore_class(selected_dataitems,1));
            folder=uigetdir;
            folder=cat(2,folder,'\');
            Channels=["UG","UR","TiR"];
            if event.Source.Text=="All"
                for i=1:size(Channels,2)
                    arrayfun(@(x) x.IJsave2tif(folder,Channels(i),1),data2crop,'UniformOutput',1);
                end
            elseif event.Source.Text=="UG"
                arrayfun(@(x) x.IJsave2tif(folder,event.Source.Text,1),data2crop,'UniformOutput',1);
            elseif event.Source.Text=="UR"
                arrayfun(@(x) x.IJsave2tif(folder,event.Source.Text,1),data2crop,'UniformOutput',1);
            elseif event.Source.Text=="Combined"
                arrayfun(@(x) x.IJsave2tif(folder,event.Source.Text,1),data2crop,'UniformOutput',1);
            end


        end

        % Button pushed function: Calculate
        function Operation(app, event)
            if app.OperationDropDown.Value~="Export Graphics"
                try
                    a=findall(app.Plot_Panel,'Tag','Display');
                    delete(a);
                end
            end

            PrimCh=get(app.Prim_Chan_Ax,'Children');
            imgX=PrimCh.XData;
            imgY=PrimCh.YData;
            app.last_op_imgX= PrimCh.XData;
            app.last_op_imgY= PrimCh.YData;
            try
                SecCh=get(app.Aux_Chan_Ax,'Children');
                ephysx=SecCh.XData;
                ephysy=SecCh.YData;

                app.last_op_ephysx=SecCh.XData;
                app.last_op_ephysy=SecCh.YData;
            end



            if app.Prim_Select.Value==1 & app.Aux_select.Value==1
                switch app.OperationDropDown.Value
                    case "CropX/T"
                        app.Crop_Time_DImension
                        return
                    case "CropX/T-Peak"
                        app.crop_from_EP_tidx
                        return

                    case "Normalise"
                        max_val=1;baseline=0;
                        y_scaled=imgY-min(imgY);
                        y_scaled=y_scaled/max(y_scaled);
                        imgY=y_scaled*(max_val-baseline)+baseline;

                    case "Filter"
                        ephysy=sgolayfilt(ephysy,2,app.filterSpinner.Value);
                        imgY=sgolayfilt(imgY,2,app.filterSpinner.Value);
                        imgX=imgX;
                        ephysx=ephysx;
                    case "Deconv iGlu"
                        %                         quantal_amp = inputdlg('Enter Quantal Amplitude, or whatever');
                        %                         Q=cell2mat(quantal_amp);
                        %                         [imgX,imgY]=decon_iGluTrace(imgX,imgY,Q)
                        default=defaultvars();
                        imgY=deconvexp(imgX,imgY,default.tau);
                    case "Diff 1"
                        imgY=diff(imgY);
                        ephysy=diff(ephysy);
                        imgX=imgX(2:end);
                        ephysx=ephysx(2:end);

                    case "Diff 2"
                        imgY=diff(imgY,2);
                        ephysy=diff(ephysy,2);
                        imgX=imgX(2:end);
                        ephysx=ephysx(2:end);
                    case "aaLS Smooth"
                        signal=imgY;
                        defaults=defaultvars();
                        baseline = asLS_smooth(signal,defaults.aals_smoothness,defaults.aals_min_diff) ;
                        imgY=signal-baseline.';
                        baselineindex=imgX>=app.Baseline_Min.Value & imgX<=app.Baseline_Max.Value;
                        baseline_val=mean(imgY(1,baselineindex));
                        imgY=imgY-baseline_val;
                    case "DF/F"

                    case "DF"
                    case "Undo"
                        imgX=app.last_op_imgX;
                        imgY=app.last_op_imgY;
                        ephysx=app.last_op_ephysx;
                        ephysy=app.last_op_ephysy  ;
                    case "Export Graphics"
                        copygraphics(app.Plot_Panel,'BackgroundColor', 'none','Resolution',300);
                    case "SetTLimits"
                        prompt = {'Min Time (s):','Max Time(s):'};
                        dlgtitle = 'Change Time Dimension';
                        dims = 1;
                        definput = {'0','1'};
                        answer = cellfun(@str2double,inputdlg(prompt,dlgtitle,dims,definput));
                        data=app.Datastore_class(app.Data_Selection,1)
                        for file=1:size(data,1)
                            data(file,1).Change_TData("both",answer(1,1),answer(2,1));
                        end
                        return
                end
            elseif app.Prim_Select.Value==1 & app.Aux_select.Value==0
                switch app.OperationDropDown.Value
                    case "CropX/T"
                        app.Crop_Time_DImension
                        return
                    case "CropX/T-Peak"
                        app.crop_from_EP_tidx
                        return
                    case "Copy2Clip"
                        datax=get(app.Prim_Chan_Ax.Children,'XData');% get xdata
                        datay=get(app.Prim_Chan_Ax.Children,'YData');% get ydata
                        dataname=get(app.Prim_Chan_Ax.Children,'DisplayName');
                        [XYTrace]=app.CopyTraces2Clipboard(datax,datay,dataname)
                        %                         [XYTraces]=app.CopyTraces2Clipboard(imgX,imgY)
                    case "Histogram"
                        prompt = {'Number of Bins:','Normalisation (count,pdf,probability):'};
                        dlgtitle = 'Histogram Options';
                        dims = [1 35];
                        definput = {'30','count'};
                        answer = inputdlg(prompt,dlgtitle,dims,definput)
                        [N,edges,bin] = histcounts(imgY,str2double(answer(1,1)),'Normalization',answer{2,1})
                        centres=diff(edges)+edges(1:end-1);
                        centres=centres(:);
                        imgX=centres;
                        imgY=N
                        cftool(imgX,imgY);
                        a=0
                    case "Normalise"
                        max_val=1;baseline=0;
                        y_scaled=imgY-min(imgY);
                        y_scaled=y_scaled/max(y_scaled);
                        imgY=y_scaled*(max_val-baseline)+baseline;
                    case "Filter"
                        imgY=sgolayfilt(imgY,2,app.filterSpinner.Value);
                        imgX=imgX;
                    case "Deconv iGlu"
                        %                         quantal_amp = inputdlg('Enter Quantal Amplitude, or whatever');
                        %                         Q=cell2mat(quantal_amp);
                        %                         [imgX,imgY]=decon_iGluTrace(imgX,imgY,0.02)
                        default=defaultvars();
                        imgY=deconvexp(imgX,imgY,default.tau);
                    case "Diff 1"
                        imgY=diff(imgY);
                        imgX=imgX(2:end);
                    case "Diff 2"
                        imgY=diff(imgY,2);
                        imgX=imgX(2:end);
                    case "aaLS Smooth"
                        signal=imgY;
                        defaults=defaultvars();
                        baseline = asLS_smooth(signal,defaults.aals_smoothness,defaults.aals_min_diff) ;
                        imgY=signal-baseline.';
                        baselineindex=imgX>=app.Baseline_Min.Value & imgX<=app.Baseline_Max.Value;
                        baseline_val=mean(imgY(1,baselineindex));
                        imgY=imgY-baseline_val;
                    case "50Hz"
                        Fs=1/imgX(2)-imgX(1);
                        imgY = notch50Hz(imgY,Fs,50,10); 
                    case "DF/F"

                    case "-Baseline"
                    case 'Undo'
                        imgX=app.last_op_imgX;
                        imgY=app.last_op_imgY;
                    case "Export Graphics"
                        copygraphics(app.Prim_Chan_Ax,'BackgroundColor', 'none','Resolution',300);
                    case "Maths"
                        spaceList = { '+','-','*','/'};
                        [idx, tf] = listdlg('ListString', spaceList,...
                            'SelectionMode', 'Single', 'PromptString', 'Select Peak AP', 'Initialvalue', 1,'Name', 'Make choice', 'ListSize',[75,75]);
                        value = inputdlg('Enter Value','Value',[1 55]);
                        value=str2double(cell2mat(value));
                        eval(sprintf('imgY=imgY%s%d',spaceList{1,idx},value));
                    case "Traces2Origin"
                        datax=get(app.Prim_Chan_Ax.Children,'XData');% get xdata
                        datay=get(app.Prim_Chan_Ax.Children,'YData');% get ydata
                        dataname=get(app.Prim_Chan_Ax.Children,'DisplayName');
                        [XYTrace]=app.CopyTraces2Clipboard(datax,datay,dataname)
                        MATLABCallOrigin(XYTrace,dataname,'Traces')
                        return
                    case "Mat2Origin"
                        if app.Datastore_class(app.Data_Selection, 1).Subtype=='Raster' & numel(app.Data_Selection)==1
                            if str2double(app.Switch.Value)==1
                                Data=cat(2,app.Datastore_class(app.Data_Selection, 1).XData.',app.Datastore_class(app.Data_Selection, 1).UG.')
                            elseif str2double(app.Switch.Value)==2
                                Data=cat(2,app.Datastore_class(app.Data_Selection, 1).XData.',app.Datastore_class(app.Data_Selection, 1).UR.')
                            end
                            %                          Data=cat(2,XData.',imgDATA.')
                            dataname=get(app.Prim_Chan_Ax.Children,'DisplayName');
                            MATLABCallOrigin(Data,dataname,'Raster')
                        end
                    case "SetTLimits"
                        app.Datastore_class(app.Data_Selection,1).Change_TData("img");
                end
            elseif app.Prim_Select.Value==0 & app.Aux_select.Value==1
                switch app.OperationDropDown.Value
                    case "CropX/T"
                        app.Crop_Time_DImension
                        return
                    case "CropX/T-Peak"
                        app.crop_from_EP_tidx
                        return
                    case "Copy2Clip"
                        datax=get(app.Aux_Chan_Ax.Children,'XData');% get xdata
                        datay=get(app.Aux_Chan_Ax.Children,'YData');% get ydata
                        dataname=get(app.Prim_Chan_Ax.Children,'DisplayName');
                        [XYTrace]=app.CopyTraces2Clipboard(datax,datay,dataname)
                        return
                    case "Normalise"
                        max_val=1;baseline=0;
                        y_scaled=imgY-min(imgY);
                        y_scaled=y_scaled/max(y_scaled);
                        imgY=y_scaled*(max_val-baseline)+baseline;
                    case "Filter"
                        ephysy=sgolayfilt(ephysy,2,app.filterSpinner.Value);
                        ephysx=ephysx;
                    case "Diff 1"
                        ephysy=diff(ephysy);
                        ephysx=ephysx(2:end);
                    case "Diff 2"
                        ephysy=diff(ephysy,2);
                        ephysx=ephysx(2:end);
                    case "50Hz"
                        Fs=1/ephysx(2)-ephysx(1);
                        ephysy = notch50Hz(ephysy,Fs,50,10); 
                    case "aaLS Smooth"
                        signal=ephysy;
                        try
                            defaults=defaultvars();
                            baseline = asLS_smooth(signal,defaults.aals_smoothness,defaults.aals_min_diff) ;
                        catch ME
                            signal=decimate(ephysy,10);
                            ephysx=decimate(ephysx,10);
                            defaults=defaultvars();
                            baseline = asLS_smooth(signal,defaults.aals_smoothness,defaults.aals_min_diff) ;
                        end
                        ephysy=signal-baseline.';
                        baselineindex=ephysx>=app.Baseline_Min.Value & ephysx<=app.Baseline_Max.Value;
                        baseline_val=mean(ephysy(1,baselineindex));
                        ephysy=ephysy-baseline_val;

                    case "DF/F"
                    case "-Baseline"
                        baselineindex=ephysx>=app.Baseline_Min.Value & ephysx<=app.Baseline_Max.Value;
                        baseline_val=mean(ephysy(1,baselineindex));
                        ephysy=ephysy-baseline_val;
                    case "Undo"
                        ephysx=app.last_op_ephysx;
                        ephysy=app.last_op_ephysy ;
                    case "Export Graphics"
                        copygraphics(app.Aux_Chan_Ax,'BackgroundColor', 'none','Resolution',300);
                    case "Maths"
                        spaceList = { '+','-','*','/'};
                        [idx, tf] = listdlg('ListString', spaceList,...
                            'SelectionMode', 'Single', 'PromptString', 'Select Peak AP', 'Initialvalue', 1,'Name', 'Make choice', 'ListSize',[75,75]);
                        value = inputdlg('Enter Value','Value',[1 55]);
                        value=str2double(cell2mat(value));
                        eval(sprintf('ephysy=ephysy%s%d',spaceList{1,idx},value));
                    case "Traces2Origin"

                        datax=get(app.Aux_Chan_Ax.Children,'XData');% get xdata
                        datay=get(app.Aux_Chan_Ax.Children,'YData');% get ydata
                        dataname=get(app.Prim_Chan_Ax.Children,'DisplayName');
                        [XYTrace]=app.CopyTraces2Clipboard(datax,datay,dataname)
                        MATLABCallOrigin(XYTrace,dataname,'Traces')
                        return
                     case "Mat2Origin"
                        if app.Datastore_class(app.Data_Selection, 1).Subtype=='Raster' & numel(app.Data_Selection)==1
                            Data=cat(2,app.Datastore_class(app.Data_Selection, 1).eXData.',app.Datastore_class(app.Data_Selection, 1).Aux1.')
                        end
                            %                          Data=cat(2,XData.',imgDATA.')
                            dataname=get(app.Prim_Chan_Ax.Children,'DisplayName');
                            MATLABCallOrigin(Data,dataname,'Raster')
                        
                    case "SetTLimits"
                        app.Datastore_class(app.Data_Selection,1).Change_TData("ephys");

                end
            elseif app.Prim_Select.Value==0 & app.Aux_select.Value==0;
                switch app.OperationDropDown.Value
                    case "SetTLimits"
                        prompt = {'Min Time (s):','Max Time(s):'};
                        dlgtitle = 'Change Time Dimension';
                        dims = 1;
                        definput = {'0','1'};
                        answer = cellfun(@str2double,inputdlg(prompt,dlgtitle,dims,definput));
                        data=app.Datastore_class(app.Data_Selection,1)
                        for file=1:size(data,1)
                            data(file,1).Change_TData("both",answer(1,1),answer(2,1));
                        end
                        return

                    case "CropX/T"
                        app.Crop_Time_DImension
                        return
                    case "CropX/T-Peak"
                        app.crop_from_EP_tidx
                        return
                    case "hist_Gramm"
                        figure
                        datax=get(app.Prim_Chan_Ax.Children,'XData');% get xdata
                        datay=get(app.Prim_Chan_Ax.Children,'YData');% get ydata
                        dataname=get(app.Prim_Chan_Ax.Children,'DisplayName');datax=get(app.Prim_Chan_Ax.Children,'XData');% get xdata
                        if iscell(datax)==1
                            g=gramm(x=datay,color=dataname)
                        else
                            g=gramm(x=datay)
                        end
                        g.set_names('x','Time(s)','y','au');
                        g.stat_bin
                        g.draw
                        assignin('base','hist_Gramm',g);
                    case "plot_Gramm"
                        figure
                        datax=get(app.Prim_Chan_Ax.Children,'XData');% get xdata
                        datay=get(app.Prim_Chan_Ax.Children,'YData');% get ydata
                        dataname=get(app.Prim_Chan_Ax.Children,'DisplayName');
                        if iscell(datax)==1
                            g=gramm(x=datax,y=datay,color=dataname)
                        else
                            g=gramm(x=datax,y=datay)
                        end
                        g.set_names('x','Time(s)','y','au');
                        g.geom_line
                        g.draw
                        assignin('base','plot_Gramm',g);
                end
            end
            ImgLims=app.Prim_Chan_Ax.XLim;
            plot(app.Prim_Chan_Ax,imgY,'XData',imgX);
            plot(app.Aux_Chan_Ax,ephysy,'XData',ephysx);
            app.Prim_Chan_Ax.XLim=ImgLims;
            app.Aux_Chan_Ax.XLim=ImgLims;
        end

        % Value changed function: Aux_select, Prim_Select
        function SetChan(app, event)
            value = app.Prim_Select.Value;
            app.Selected_Channel=cat(2,app.Prim_Select.Value,app.Aux_select.Value)
        end

        % Button pushed function: NewDataItemfromFitButton, New_Trace_Data
        function Set_new_data(app, event)
            try
                %            display=findall(app.Plot_Panel,'Tag','Display');
                a=findall(app.Plot_Panel,'Type','Display');
                delete(a)
                %            delete(a)
            end

            PrimCh=get(app.Prim_Chan_Ax,'Children');
            imgX=PrimCh.XData;
            imgY=PrimCh.YData;


            try
                SecCh=get(app.Aux_Chan_Ax,'Children');
                ephysx=SecCh.XData;
                ephysy=SecCh.YData;
                if numel(ephysx)==101  & max(ephysx)==1
                    ME = MException('s');
                    throw(ME)
                end
            catch
                ephysx=PrimCh.XData;
                ephysy=PrimCh.YData;
            end


            Dataitem=copyobj2(app.Datastore_class(app.Data_Selection,1));
            %             Dataitem.UG=repmat(imgY,2,1);
            Dataitem.UG=imgY;
            try
                if app.Datastore_class(app.Data_Selection,1).Type=='Line2'
                    Dataitem.UR=nanmean(app.Datastore_class(app.Data_Selection,1).UR,1);
                elseif app.Datastore_class(app.Data_Selection,1).Type=='FF'
                    Dataitem.UR=nanmean(app.Datastore_class(app.Data_Selection,1).UR,[1 2]);
                end
            catch
                Dataitem.UR=Dataitem.UG;
            end
            Dataitem.Aux1=ephysy;
            Dataitem.eXData=ephysx;
            Dataitem.Aux2=ephysy;

            if event.Source.Text=="New DataItem from Fit"

                fitdata=findall(app.Prim_Chan_Ax,'Tag','Fit');
                fitX=fitdata.XData;
                fitY=fitdata.YData;
                ephysx=imgX
                ephysy=imgY-fitY
                Dataitem=copyobj2(app.Datastore_class(app.Data_Selection,1));
                Dataitem.UG=imgY;
                Dataitem.UR=Dataitem.UG;

                Dataitem.Aux1=ephysy;
                Dataitem.eXData=ephysx-ephysx(1);
                Dataitem.Aux2=ephysy;
            else

            end


            Dataitem.ScX=ones(size(Dataitem.UG));
            Dataitem.ScY=ones(size(Dataitem.UG));
            Dataitem.predScX=ones(size(Dataitem.UG));
            Dataitem.predScY=ones(size(Dataitem.UG));
            Dataitem.TiR=ones(size(Dataitem.UG));
            Dataitem.XData=imgX-imgX(1);
            %             Dataitem.Aux1=ephysy;
            %             Dataitem.eXData=ephysx;
            %             Dataitem.Aux2=ephysy;
            Dataitem.TData=imgX-imgX(1);
            Dataitem.YData=[1,1];
            Dataitem.scanline.roi=[1;1];
            if event.Source.Text=="New Trace"
                Dataitem.comment=sprintf('%s | %s',app.OperationDropDown.Value,Dataitem.comment);
            elseif event.Source.Text=="New DataItem from Fit"
                Dataitem.comment=sprintf('%s | %s','Fit',Dataitem.comment);
            else
                Dataitem.comment=sprintf('%s | %s','IJProfile',Dataitem.comment);
            end


            Dataitem.y_pixel_size=1;
            Dataitem.y_pixel_num=1;
            Dataitem.x_pixel_size=Dataitem.XData(2)-Dataitem.XData(1);
            Dataitem.x_pixel_num=size(Dataitem.UG,2);

            %             Dataitem.ScX=[];Dataitem.ScY=[];Dataitem.predScX=[];Dataitem.predScY=[];Dataitem.TiR=[];
            %             Dataitem.TimeDim=2;
            Dataitem.z_pixel_size=[];
            Dataitem.z_pixel_num=[];
            Dataitem.Subtype='Single';
            Dataitem.Index=size(app.Datastore_class,1)+1;
            Dataitem.file='Line1';
            Dataitem.Type='Line1';
            app.Datastore_class=cat(1,app.Datastore_class,Dataitem);
            app.Datastore_class.findComment(app.ListBox_2);
        end

        % Callback function
        function Change_event_type(app, event)
            value = app.EventType.Value;
            if value=="iGlu_AP"
                app.Peak_time_pos_window.Value=20
                app.Peak_time_neg_window.Value=0
                app.MinWidthEditField.Value=5
            elseif value=="iGABA_event"
                app.Peak_time_pos_window.Value=1000
                app.Peak_time_neg_window.Value=100
                app.MinWidthEditField.Value=50
            end

        end

        % Button pushed function: Prim_Brush
        function Brush_prim(app, event)
            if app.Prim_ax_brush.Enable=="on"
                app.Prim_ax_brush.Enable="off"
            elseif app.Prim_ax_brush.Enable=="off"
                app.Prim_ax_brush.Enable="on"
            end
        end

        % Callback function
        function brush_aux(app, event)
            %               if app.Aux_Ax_brush.Enable=="on"
            %                      app.Aux_Ax_brush.Enable="off"
            %                     elseif app.Aux_Ax_brush.Enable=="off"
            %                      app.Aux_Ax_brush.Enable="on"
            %                     end
        end

        % Button pushed function: CopyTrace
        function copyTraces(app, event)
            [XYTraces]=app.CopyAxesData(app.ArrayDataplot)
            new_dataitem=ImData
            new_dataitem.UG=XYTraces(:,2).';
            new_dataitem.UR=XYTraces(:,2).';
            new_dataitem.Aux1=XYTraces(:,2).';
            new_dataitem.Aux2=XYTraces(:,2).';
            new_dataitem.XData=XYTraces(:,1).';
            new_dataitem.TData=XYTraces(:,1).';
            new_dataitem.YData=[1];
            new_dataitem.source='fgui';
            new_dataitem.comment='Peaks | Combined';
            new_dataitem.x_pixel_num=size(new_dataitem.UG,2);
            new_dataitem.x_pixel_size=1;
            new_dataitem.y_pixel_num=1;
            new_dataitem.y_pixel_size=1;
            new_dataitem.eXData=XYTraces(:,1).';
            new_dataitem.file='Line1';
            new_dataitem.Type='Line1';
            new_dataitem.scanline.roi=[1];
            new_dataitem.Subtype='Scatter';
            app.Datastore_class=cat(1,app.Datastore_class,new_dataitem);
            app.Datastore_class.findComment(app.ListBox_2)


        end

        % Button pushed function: DeleteLastButton
        function delete_last_row(app, event)
            if size(app.Arraytable.Data,1)==1
                app.Arraytable.Data=[]
            else
                data=app.Arraytable.Data
                data=data([1:end-1],:);
                app.Arraytable.Data=[]
                app.Arraytable.Data=data
            end

            if size(app.Peakdata_store,1)==1
                app.Peakdata_store=[]
                app.PeakDataStore.Data=[]
            elseif size(app.Peakdata_store,1)>1
                data=app.Peakdata_store
                data=data([1:end-1]);
                app.Peakdata_store=[]
                app.Peakdata_store=data
                app.PeakDataStore.Data=struct2table(data,'AsArray',1)
            end


        end

        % Button pushed function: AddButton
        function Add_traces(app, event)
            num_traces=size(app.Arraytable.Data,1)
            num_data=size(app.Peakdata_store,1)

            if num_traces>=1
                data=app.Arraytable.Data
                data=cat(1,data,app.PeakStats)
                app.Arraytable.Data=[]
                app.Arraytable.Data=data
            elseif num_traces==0
                app.Arraytable.Data=app.PeakStats
            end
            if num_data>=1
                data2=app.Peakdata_store;
                app.Peakdata_store=[];
                data2=cat(1,data2,app.Peakdata)
                app.Peakdata_store=data2

            elseif num_data==0
                app.Peakdata_store=[]
                app.Peakdata_store=app.Peakdata
            end
            app.PeakDataStore.Data=[]
            app.PeakDataStore.Data=struct2table(app.Peakdata_store,'AsArray',1)
        end

        % Menu selected function: lastEPMenu
        function crop_from_EP_tidx(app, event)
            if app.keeptimeidx.Checked == true
                idx='keep'
            elseif app.keeptimeidx.Checked == false
                idx='-'
            end

            dataitem2crop=copyobj2(app.Datastore_class(app.Data_Selection,1))
%             EPtime=app.PeakStats.EP_PeakTime(1)
            back=app.Peak_time_neg_window.Value/1000;
            forward=app.Peak_time_pos_window.Value/1000;
%             dataitem2crop=dataitem2crop.crop_data(dataitem2crop.TimeDim,crop_start,crop_end,'just do')
%             dataitem2crop.comment=sprintf('Crop| +/- %.2f| %s',EPtime-crop_start,dataitem2crop.comment)
            times=app.PeakStats.EP_PeakTime;
            dataitem2crop = crop_known_times(dataitem2crop,times,back,forward,idx)
            app.Datastore_class=cat(1,app.Datastore_class,dataitem2crop)
            app.Datastore_class.findComment(app.ListBox_2)

        end

        % Menu selected function: ReturnConcatenatedtraceMenu,
        % ...and 3 other components
        function Equalise(app, event)
            %Plot_TData_1D(channel,roi,handle,Norm,F0min,F0max,Sec_Channel,Sec_handle,XCrop,Ymin,Ymax)
            %copy Data selected
            Dataitem=copyobj2(app.Datastore_class(app.Data_Selection,1));
            %Loop Through Dataitems selected
            for i=1:size(Dataitem,1);
                %set all time indexes to start at 0
                Dataitem(i,1).TData=Dataitem(i,1).TData-Dataitem(i,1).TData(1);
                Dataitem(i,1).eXData=Dataitem(i,1).eXData-Dataitem(i,1).eXData(1);
                linetime(i,1)=Dataitem(i,1).linetime;    %get scan rate of all recordings
                duration(i,1)=max(Dataitem(i,1).TData);  %get durations
            end
            %determine min and max scan rates and max duration
            minlinetime=min(linetime);
            maxlinetime=max(linetime);
            maxDuration=max(duration);
            %Ask for final scan interval
            Scaninterval = inputdlg(sprintf('Imaging Scan Interval, minimum = %.4f, maximum= %.4f',minlinetime,maxlinetime),'Equalise Scan Rate',[1 55],{num2str(minlinetime)});
            Scaninterval=str2double(Scaninterval{1,1});

            for i=1:size(Dataitem,1)

                %Output mean traces in both channels
                [~,~,Prim_YData,TData,Sec_YData1,EP_TData,~,~] = Dataitem(i,1).Plot_TData_1D(1,1,[],app.Normalisation.Value,app.Baseline_Min.Value,app.Baseline_Max.Value,1,[],[],[],[]);
                [~,~,Prim_YData2,TData2,Sec_YData2,~,~,~] = Dataitem(i,1).Plot_TData_1D(2,1,[],app.Normalisation.Value,0.1,0.7,2,[],[],[],[]);
                UGPlotdata(i,:)=interp1(TData,Prim_YData,0:Scaninterval:maxDuration);
                URPlotdata(i,:)=interp1(TData2,Prim_YData2,0:Scaninterval:maxDuration);

                Aux1_Plotdata(i,:)=interp1(EP_TData,Sec_YData1,0:0.00001:maxDuration);
                AVR_Aux1=nanmean(Aux1_Plotdata,1);
                try
                    Aux2_Plotdata(i,:)=interp1(EP_TData,Sec_YData2,0:0.00001:maxDuration);
                    AVR_Aux2=nanmean(Aux2_Plotdata,1);
                catch

                end
                AVR_UG=nanmean(UGPlotdata,1);
                AVR_UR=nanmean(URPlotdata,1);


            end
            if event.Source.Text=="Separate Line Dataitems"
                for i=1:size(Dataitem,1)
                    Dataitem(i,1).UG=UGPlotdata(i,:);
                    Dataitem(i,1).UR=UGPlotdata(i,:);
                    Dataitem(i,1).Aux1=Aux1_Plotdata(i,:);
                    try
                        Dataitem(i,1).Aux2=Aux2_Plotdata(i,:);
                    end
                    Dataitem(i,1).XData=0:Scaninterval:maxDuration;
                    Dataitem(i,1).TData=0:Scaninterval:maxDuration;
                    Dataitem(i,1).eXData=0:0.00001:maxDuration;
                    Dataitem(i,1).YData=[1,1];
                    Dataitem(i,1).file='Line1';
                    Dataitem(i,1).Type='Line1';
                    Dataitem(i,1).scanline.roi=[1;1];
                    Dataitem(i,1).comment=sprintf('%s | %s','EqSamp',Dataitem(i,1).comment);
                    Dataitem(i,1).y_pixel_size=1;
                    Dataitem(i,1).y_pixel_num=1;
                    Dataitem(i,1).ScX=[];Dataitem(i,1).ScY=[];Dataitem(i,1).predScX=[];Dataitem(i,1).predScY=[];Dataitem(i,1).TiR=[];
                    %                 Dataitem(i,1).TimeDim=2;
                    Dataitem(i,1).z_pixel_size=[];
                    Dataitem(i,1).z_pixel_num=[];
                    Dataitem(i,1).Index=size(app.Datastore_class,1)+i;
                    Dataitem(i,1).linetime=Scaninterval;
                    Dataitem(i,1).Subtype='Single';
                end
            elseif event.Source.Text=="+ Return Line Average" | event.Source.Text=="Mean of Traces"
                Dataitem=ImData;
                Dataitem.UG=AVR_UG;
                Dataitem.UR=AVR_UR;
                Dataitem.Aux1=AVR_Aux1;
                try
                    Dataitem.Aux2=AVR_Aux2;
                catch

                end
                Dataitem.XData=0:Scaninterval:maxDuration;
                Dataitem.TData=0:Scaninterval:maxDuration;
                Dataitem.eXData=0:0.00001:maxDuration;
                Dataitem.YData=[1,1];
                Dataitem.file='Line1';
                Dataitem.Type='Line1';
                Dataitem.scanline.roi=[1;1];
                Dataitem.comment=sprintf('%s | %s','EqSamp_Average',Dataitem.comment);
                Dataitem.y_pixel_size=1;
                Dataitem.y_pixel_num=1;
                Dataitem.ScX=[];Dataitem.ScY=[];Dataitem.predScX=[];Dataitem.predScY=[];Dataitem.TiR=[];
                %                 Dataitem.TimeDim=2;
                Dataitem.z_pixel_size=[];
                Dataitem.z_pixel_num=[];
                Dataitem.Index=size(app.Datastore_class,1)+1;
                Dataitem.linetime=Scaninterval;
                Dataitem.Subtype='Single';

            elseif event.Source.Text=="Return Raster Plot "
                Dataitem=ImData;
                Dataitem.UG=UGPlotdata;
                Dataitem.UR=URPlotdata;
                Dataitem.Aux1=Aux1_Plotdata;
                try
                    Dataitem.Aux2=Aux2_Plotdata;
                catch

                end
                Dataitem.XData=0:Scaninterval:maxDuration;
                Dataitem.TData=0:Scaninterval:maxDuration;
                Dataitem.eXData=0:0.00001:maxDuration;
                Dataitem.YData=1:1:size(UGPlotdata,1);
                Dataitem.file='Line2';
                Dataitem.Type='Line2';
                Dataitem.scanline.roi=repmat(1:1:size(Dataitem.UG,1),2,1);
                Dataitem.comment=sprintf('%s | %s','EqSamp_Raster',Dataitem.comment);
                Dataitem.y_pixel_size=1;
                Dataitem.y_pixel_num=size(UGPlotdata,1);
                Dataitem.ScX=[];Dataitem.ScY=[];Dataitem.predScX=[];Dataitem.predScY=[];Dataitem.TiR=[];
                Dataitem.TimeDim=2;
                Dataitem.z_pixel_size=[];
                Dataitem.z_pixel_num=[];
                Dataitem.Index=size(app.Datastore_class,1)+1;
                Dataitem.linetime=Scaninterval;
                Dataitem.Subtype='Raster';
            elseif event.Source.Text=="Return Concatenated trace"
                Dataitem=ImData;
                Dataitem.UG=reshape(UGPlotdata', [], 1).';
                Dataitem.UR=reshape(URPlotdata', [], 1).';
                for tracenum=1:size(Aux1_Plotdata,1)
                    ephysx=0:0.00001:maxDuration;
                    ephysy=Aux1_Plotdata(tracenum,:);
                    baselineindex=ephysx>=app.Baseline_Min.Value & ephysx<=app.Baseline_Max.Value;
                    baseline_val=mean(ephysy(1,baselineindex));
                    Aux1_Plotdata(tracenum,:)=ephysy-baseline_val;
                end
                Dataitem.Aux1=reshape(Aux1_Plotdata', [], 1).';
                Dataitem.Aux2=reshape(Aux1_Plotdata', [], 1).';
                Dataitem.XData=0:Scaninterval:floor(maxDuration*size(UGPlotdata,1));
                Dataitem.TData=0:Scaninterval:floor(maxDuration*size(UGPlotdata,1));
                Dataitem.eXData=0:0.00001:floor(maxDuration*size(UGPlotdata,1));
                Dataitem.YData=[1,1];
                Dataitem.file='Line1';
                Dataitem.Type='Line1';
                Dataitem.scanline.roi=[1;1];
                Dataitem.comment=sprintf('%s | %s','EqSamp_Concat',Dataitem.comment);
                Dataitem.y_pixel_size=1;
                Dataitem.y_pixel_num=1;
                Dataitem.ScX=[];Dataitem.ScY=[];Dataitem.predScX=[];Dataitem.predScY=[];Dataitem.TiR=[];
                Dataitem.TimeDim=2;
                Dataitem.z_pixel_size=[];
                Dataitem.z_pixel_num=[];
                Dataitem.Index=size(app.Datastore_class,1)+1;
                Dataitem.linetime=Scaninterval;
                Dataitem.Subtype='Single';

            end


            app.Datastore_class=cat(1,app.Datastore_class,Dataitem);
            app.Datastore_class.findComment(app.ListBox_2)
        end

        % Button pushed function: LoadButton
        function opendatafile(app, event)

            [file,folder]=uigetfile;
            filename=cat(2,folder,file);
            data=load(filename,"-mat");
            vars=data.data.Properties.VariableNames;
            app.Arraytable.Data=data.data;
            app.Arraytable.ColumnName=vars;
        end

        % Callback function: SaveButton_2, SaveTableasmatMenu
        function Save_Event_Table(app, event)
            [file,folder]=uiputfile('*.fijiEvt');
            filename=cat(2,folder,file)

        end

        % Callback function
        function sendbkgTiR(app, event)
            if app.Display1ImageCheckBox.Value==1
                MIJ.closeAllWindows;
            end
            MIJ.createImage(app.Datastore_class(app.Data_Selection,1).bkgTiR);
            a="MIJ.run('Properties...', 'unit=micron pixel_width=%d pixel_height=%d')"

            xpix=app.Datastore_class(app.Data_Selection,1).bkgx_pixel_size
            ypix=app.Datastore_class(app.Data_Selection,1).bkgy_pixel_size
            eval(sprintf(a,xpix,ypix))
            app.lastimgtype="BKG"
        end

        % Menu selected function: XaxisMenu
        function Concatenate(app, event)
            Dataitem=copyobj2(app.Datastore_class(app.Data_Selection,1));
            if event.Source.Text=="X axis"
                objout=Dataitem.Concat_Data(2)
            end
            app.Datastore_class=cat(1,app.Datastore_class,objout)
            app.Datastore_class.findComment(app.ListBox_2)
        end

        % Menu selected function: NewDataMenu_11
        function Threshold_Data(app, event)
            %Recording_Data=str2num(cell2mat(inputdlg({'Enter Artefact Threshold'},'Data Input')));

            prompt = {'Threshold:','Greater or Less than (1/0):'};
            dlgtitle = 'Threshold Parameters';
            dims = 1;
            definput = {'11000','1'};
            Recording_Data = cellfun(@str2double,inputdlg(prompt,dlgtitle,dims,definput))


            if event.Source.Text=="New Data"
                Dataitem=copyobj2(app.Datastore_class(app.Data_Selection,1));
                Data_out=arrayfun(@(x) x.Threshold(Recording_Data(2,1),Recording_Data(1,1),nan,app.MinSpinner.Value,app.MaxSpinner.Value),Dataitem,'UniformOutput',true)
                %                [Data_out]=Dataitem.Threshold(Recording_Data(2,1),Recording_Data(1,1),nan,app.MinSpinner.Value,app.MaxSpinner.Value)
                app.Datastore_class=cat(1,app.Datastore_class,Data_out)
                app.Datastore_class.findComment(app.ListBox_2)
            elseif event.Source.Text=="Replace Data"
                Dataitem=copyobj(app.Datastore_class(app.Data_Selection,1));
                [Data_out]=Dataitem.Threshold(Recording_Data(2,1),Recording_Data(1,1),nan,app.MinSpinner.Value,app.MaxSpinner.Value)
                %                app.Datastore_class=cat(1,app.Datastore_class,Data_out)
                %                app.Datastore_class.findComment(app.ListBox_2)
            end
        end

        % Menu selected function: CCImageMenu
        function CCImage(app, event)
            Dataitem=copyobj2(app.Datastore_class(app.Data_Selection,1));
            w2d=inputdlg('Enter Window size (pixels)', 'Window Size',[1 35],{'4'})
            w2d=str2double(cell2mat(w2d))
            [obj]=Dataitem.CrossCorMap(app.Switch.Value,app.MinSpinner.Value,app.MaxSpinner.Value,w2d)
            app.Datastore_class=cat(1,app.Datastore_class,obj)
            app.Datastore_class.findComment(app.ListBox_2)
        end

        % Button pushed function: ClearSessionButton
        function Clear_Session(app, event)
            Data_mid=ImData;
            app.Datastore_class=Data_mid
            app.Datastore_class.findComment(app.ListBox_2)
        end

        % Button pushed function: RunMacroButton_3
        function MacroRun(app, event)
            txt=app.MacrotorunTextArea.Value;
            text=sprintf('%s%s',app.Macrospath,'test.txt');
            writecell(txt, text, 'QuoteStrings',false);
            pause(2);
            app.IJM.runMacroFile(text);
            delete(text);


        end

        % Value changed function: MacrosListBox_2
        function loadmacro2text(app, event)

            a=dir(app.Macrospath);
            files=struct2cell(a);
            app.MacrosListBox_2.Items=files(1,[3:end]).';
            app.MacrosListBox_2.ItemsData =fullfile(files(2,3:end).',files(1,3:end).');
            value = app.MacrosListBox_2.Value;
            app.MacrotorunTextArea.Value=importdata(value);
        end

        % Button pushed function: SaveNewButton
        function Save_new_macro(app, event)
            text=sprintf('%s%s',app.Macrospath,'new.txt')
            [filename, pathname, filterindex] = uiputfile(text);
            filetosave=fullfile(pathname,filename)
            txt=app.MacrotorunTextArea.Value
            writecell(txt, filetosave, 'QuoteStrings',false);
            app.Refresh_List_of_IJ_Macros
        end

        % Button pushed function: Peaks2DataButton
        function Dataitem_from_peaks(app, event)

            new_dataitem=ImData;
            Peaksdata=app.UITable_2.Data;
            new_dataitem.file='Line2';
            new_dataitem.Type='Line2';
            if app.AllButton.Value==0
                new_dataitem.UG=repmat(cell2mat(Peaksdata(1,:)),2,1);
                new_dataitem.UR=repmat(cell2mat(Peaksdata(3,:)),2,1);
                new_dataitem.Aux1=cell2mat(Peaksdata(4,:));
                new_dataitem.XData=cell2mat(Peaksdata(2,:));
                new_dataitem.TData=cell2mat(Peaksdata(2,:));
                new_dataitem.YData=[1,2];
                new_dataitem.Aux2=new_dataitem.XData;
                new_dataitem.source='FGUI';
                new_dataitem.comment=sprintf('Peaks | %s',app.Datastore_class(app.Data_Selection,1).comment);
                new_dataitem.x_pixel_num=size(new_dataitem.UG,2);
                new_dataitem.x_pixel_size=1;
                new_dataitem.y_pixel_num=2;
                new_dataitem.y_pixel_size=1;
                new_dataitem.eXData=cell2mat(Peaksdata(2,:));
            else

                Peaks=cell2mat(app.peakstable);
                locstable=cell2mat(app.locstable);
                trialnums=repmat((1:1:size(app.responsetable,1)).',1,size(app.responsetable,2));
                AllLocs=reshape(locstable,numel(Peaks),1);
                Proms=cell2mat(app.Promstable);
                Resps=cell2mat(app.responsetable);

                AllPeaks=reshape(Peaks,numel(Peaks),1);

                AllProms=reshape(Proms,numel(Peaks),1);
                AllResps=reshape(Resps,numel(Peaks),1);

                for tnum = 1:size(trialnums,2)
                    trnum_2(tnum:size(trialnums,2):numel(trialnums))=trialnums(1:1:numel(trialnums(:,1)))
                end
                AllLocs=AllLocs+trnum_2.';

                SucPeaks=AllPeaks(logical(AllResps));
                SucLocs=AllLocs(logical(AllResps));
                SucProms=AllProms(logical(AllResps));

                new_dataitem.UG=repmat(AllPeaks.',2,1);
                new_dataitem.UR=repmat(AllProms.',2,1);
                new_dataitem.Aux1=AllLocs.';
                new_dataitem.Aux2=AllResps.';
                new_dataitem.XData=AllLocs.';
                new_dataitem.TData=AllLocs.';
                new_dataitem.YData=[1,2];
                new_dataitem.source='FGUI';
                new_dataitem.comment='Peaks | Combined';
                new_dataitem.x_pixel_num=size(new_dataitem.UG,2);
                new_dataitem.x_pixel_size=1;
                new_dataitem.y_pixel_num=2;
                new_dataitem.y_pixel_size=1;
                new_dataitem.eXData=AllLocs.';
                new_dataitem.file='Line2';
                new_dataitem.Type='Line2';
            end
            new_dataitem.scanline.roi=[1;2];
            new_dataitem.Subtype='Scatter';

            app.Datastore_class=cat(1,app.Datastore_class,new_dataitem);
            app.Datastore_class.findComment(app.ListBox_2)
        end

        % Menu selected function: ClearDataMenu
        function Peakfind_Data(app, event)
            app.UITable_2.Data=[]
        end

        % Value changed function: FFButton
        function Peakfind_version(app, event)

            app.BaselineWindowSpinner.Visible=1;
            app.BaselineOffsetSpinner.Visible=1;
            app.PeakWindowSpinner.Visible=1;

        end

        % Value changing function: StackControlSlider
        function setslice(app, event)
            changingValue = event.Value;
            a=findall(app.Prim_Chan_Ax,'Tag','Display');
            pause(0.03)
            delete(a)
            if app.Datastore_class(app.Data_Selection,1).Type=="FF"

                a=app.Datastore_class(app.Data_Selection,1).TData;%dummy data
                b=1:1:numel(a);
                n=changingValue;
                int=a(2)-a(1)
                min=n-int;
                max=n+int;
                index=a>min &a<max
                slicenum=b(index)
            elseif app.Datastore_class(app.Data_Selection,1).Type=="XY"
                a=app.Datastore_class(app.Data_Selection,1).ZData;%dummy data
                b=1:1:numel(a);
                n=changingValue;
                int=a(2)-a(1)
                min=n-int;
                max=n+int;
                index=a>min &a<max
                slicenum=b(index)

            end

            MIJ.setSlice(slicenum(1))
            lineprog=[]
            lineprog=xline(app.Prim_Chan_Ax,changingValue,'Tag','Display');
            clear("lineprog");
            %             a=findall(app.Prim_Chan_Ax,'Tag','Display');
            %             pause(0.03)
            %             delete(a)

            %                  [~,~,~,~,~]=app.Datastore_class(app.Data_Selection,1).FF_Data_2D(slicenum(1),1,app.sharedapp.MainImageAx,0,1,2,viridis);
            %                 FF_Data_2D(app.Datastore_class(app.Data_Selection,1),slicenum(1),1,app.sharedapp.MainImageAx,0,0.2,0.4,[]);


        end

        % Menu selected function: Aux1Menu
        function Aux_Binning(app, event)
            data2crop=copyobj2(app.Datastore_class(app.Data_Selection,1));
            bindata = inputdlg('Bin Width (Pixels)');
            bindata=cell2mat(bindata);
            bindata=str2double(bindata);
            for dataitem=1:size(data2crop,1)

                data2bin=data2crop(dataitem).Aux1;
                try
                    data2bin2=data2crop(dataitem).Aux2;
                end
                index2bin=data2crop(dataitem).eXData;

                %             resampdata(:,1)=resample(data(:,1),1000,10000)
                %                 resampdata(:,2)=resample(data(:,2),1000,10000)
                elements_2_bin=bindata;
                elements=1:1:size(data2bin,2);
                [a,~,~]=histcounts(elements,'NumBins',round(size(elements,2)/elements_2_bin));
                colDist = [repelem(elements_2_bin, floor(size(data2bin,2)/elements_2_bin)) rem(size(data2bin,2),elements_2_bin)];
                % probably need to permute here
                binned_data_as_cell=mat2cell(data2bin,size(data2bin,1),a);
                binned_data2_as_cell=mat2cell(data2bin2,size(data2bin2,1),a);
                binned_index_as_cell=mat2cell(index2bin,size(index2bin,1),a);
                mean_of_binned_cells=cellfun(@nanmean,binned_data_as_cell,repmat({2},1,size(a,2)),'UniformOutput',0);
                mean_of_binned_cells2=cellfun(@nanmean,binned_data_as_cell,repmat({2},1,size(a,2)),'UniformOutput',0);
                mean_of_binned_index_cells=cellfun(@nanmean,binned_index_as_cell,repmat({2},1,size(a,2)),'UniformOutput',0);
                % and then permute again
                binned_data=cell2mat(mean_of_binned_cells);
                binned_data2=cell2mat(mean_of_binned_cells2);
                binned_index=cell2mat(mean_of_binned_index_cells);
                data2crop(dataitem).Aux1=binned_data;
                data2crop(dataitem).Aux2=binned_data2;
                data2crop(dataitem).eXData=binned_index;
            end
            app.Datastore_class=cat(1,app.Datastore_class,data2crop);
            app.Datastore_class.findComment(app.ListBox_2)
        end

        % Menu selected function: NewDataMenu_13, NewDataMenu_14,
        % ...and 2 other components
        function correctbleach(app, event)
            if event.Source.Parent.Text=="Line Scan"
                bindata = inputdlg('Bin Width (Pixels)');
                bindata=cell2mat(bindata);
                bindata=str2double(bindata);
            else
                bindata=1;
            end
            if event.Source.Text=="New Data"
                obj_in=copyobj2(app.Datastore_class(app.Data_Selection,1));
                obj_out=obj_in.bleach_correct(bindata);
                app.Datastore_class=cat(1,app.Datastore_class,obj_out)
                app.Datastore_class.findComment(app.ListBox_2)
            elseif event.Source.Text=="Replace Data"
                obj_in=app.Datastore_class(app.Data_Selection,1);
                obj_out=obj_in.bleach_correct(bindata);
                app.Datastore_class=cat(1,app.Datastore_class,obj_out)
                app.Datastore_class.findComment(app.ListBox_2)

            end
            app.Datastore_class.findComment(app.ListBox_2)
        end

        % Menu selected function: NewDataMenu_15, ReplaceDataMenu_4
        function XYZbinning(app, event)
            %Ask for XYZ binsizes
            prompt = {'X Binsize (pixel units)','Y Binsize (pixel units)'};
            dlgtitle = 'XY Binning';
            dims = [1 35];
            definput = {'2','2'};
            answer = inputdlg(prompt,dlgtitle,dims,definput);
            xBinsize=str2double(answer{1,1});
            yBinsize=str2double(answer{2,1});

            if event.Source.Text=="New Data"
                obj_in=copyobj2(app.Datastore_class(app.Data_Selection,1));
                obj_out=obj_in.bin2D(xBinsize, yBinsize,1);
                app.Datastore_class=cat(1,app.Datastore_class,obj_out);
                app.Datastore_class.findComment(app.ListBox_2);
            elseif event.Source.Text=="Replace Data"
                obj_in=app.Datastore_class(app.Data_Selection,1);
                obj_in.bin2D(xBinsize, yBinsize,1);
                app.Datastore_class.findComment(app.ListBox_2);

            end




        end

        % Menu selected function: SplitbyFemtonicsROIsMenu
        function split_by_Femto_ROIs(app, event)
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end
            %             for filenum=1:size(selected_dataitems,2)
            %             c=1
            Data=copyobj2(app.Datastore_class(selected_dataitems,1));
           
            dataout=arrayfun(@(x) Split_FemtoROI(x),Data,'UniformOutput',false);
            dataout=vertcat(dataout{:});
            app.Datastore_class=cat(1,app.Datastore_class,dataout);
            app.Datastore_class.findComment(app.ListBox_2);
        end

        % Menu selected function: XDimMenu, YDimMenu
        function Callback_to_FF2Line2(app, event)
            obj_in=copyobj2(app.Datastore_class(app.Data_Selection,1));
            if event.Source.Text=="XDim"
                obj_out=obj_in.FF2Line2(2);
            elseif event.Source.Text=="YDim"
                obj_out=obj_in.FF2Line2(1);
            end
            app.Datastore_class=cat(1,app.Datastore_class,obj_out);
            app.Datastore_class.findComment(app.ListBox_2);
        end

        % Menu selected function: DiGluSnFRkineticsMenu, FrameScanMenu_2,
        % ...and 4 other components
        function t_filter2_3D(app, event)
            app.default_vars=defaultvars();
            if event.Source.Text=="Line Scan"
                bindata = inputdlg('Bin Width (Pixels)');
                bindata=cell2mat(bindata);
                bindata=str2double(bindata);
            else
                bindata=1;
            end
            obj_in=copyobj2(app.Datastore_class(app.Data_Selection,1));
            if event.Source.Parent.Text=="t-Filtering"
                obj_out=obj_in.t_Filter(bindata,@(x) sgolayfilt(x,app.default_vars.sgolay_order,app.default_vars.sgolay_num));
            elseif event.Source.Parent.Text=="t-ZScore"
                obj_out=obj_in.t_Filter(bindata,@(x) zscore(x,0,2));
%             elseif event.Source.Parent.Text=="t-ZScore_Base"
%                 obj_out=obj_in.t_Filter(app.filterSpinner.Value,[],bindata,@(x) custom_zscore(x,0,2));
            elseif event.Source.Parent.Text=="Deconvolution"
                obj_out=obj_in.t_Filter(bindata,@(x) deconvexp(obj_in.TData,x,app.default_vars.tau));
            elseif event.Source.Parent.Text=="Custom Function"
                obj_out=obj_in;% here insert code for inputdlg and the function to apply
            end

            app.Datastore_class=cat(1,app.Datastore_class,obj_out);
            app.Datastore_class.findComment(app.ListBox_2);
        end

        % Menu selected function: FileSelectionMenu
        function fileselect_ut(app, event)
            app.File_Browse=SampleDirectoryTree()
        end

        % Cell edit callback: VariablesTable
        function editVariableTable(app, event)
            indices = event.Indices;
            newData = event.NewData;
            app.VariablesTable.Data(event.Indices)=newData
        end

        % Button pushed function: Copy_Data_from_Prim_Ax_2
        function exportmaps(app, event)
            if app.Switch.Value=='1'
                copygraphics(app.UGMapsPanel,'BackgroundColor', 'none','Resolution',600);
            elseif app.Switch.Value=='2'
                copygraphics(app.URMapsPanel,'BackgroundColor', 'none','Resolution',600);
            end
            Data=ImData()


        end

        % Value changed function: BaselineOffsetSpinner,
        % ...and 3 other components
        function testpeaklocs(app, event)
            value = app.BaselineOffsetSpinner.Value;
            app.Callback_to_FINDPEAKS_function;
        end

        % Value changed function: Holdlimits
        function fix_lims(app, event)
            value = app.Holdlimits.Value;
            if app.Holdlimits.Value==0
                app.Xmin=[]
                app.Xmax=[]
            else
                app.Xmin=app.Prim_Chan_Ax.XLim(1)
                app.Xmax=app.Prim_Chan_Ax.XLim(2)
            end
        end

        % Menu selected function: NewDataMenu_16, ReplaceDataMenu_5
        function kalman(app, event)
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end

            dataitems_index=1:1:size(app.ListBox_2.Items,2)  ;

            if event.Source.Text=="New Data"
                data2crop=copyobj2(app.Datastore_class(selected_dataitems,1));
            else
                data2crop=app.Datastore_class(selected_dataitems,1);
            end

            
            objout=arrayfun(@(x) x.Kalman_Stack_Filter(str2double(app.Switch.Value),app.default_vars.Kalman_gain,app.default_vars.Kalman_Percentvar),data2crop,'UniformOutput',true);
            if event.Source.Text=="New Data"
                app.Datastore_class=cat(1,app.Datastore_class,objout);
            end
            app.Datastore_class.findComment(app.ListBox_2);

        end

        % Menu selected function: MeanMenu, SumMenu, ZAxisMenu
        function Mean_Line2(app, event)
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end
            data2crop=copyobj2(app.Datastore_class(selected_dataitems,1));
            if data2crop(1,1).Type=="Line2"
                type=1;
                if event.Source.Text=="Mean"
                    func=@(x) nanmean(x,3);
                elseif event.Source.Text=="Sum"
                    func=@(x) nansum(x,3);
                elseif event.Source.Text=="Z Axis"
                    func=[];
                end
            elseif data2crop(1,1).Type=="FF"
                type=0;
                if event.Source.Text=="Mean"
                    func=@(x) nanmean(x,4);
                elseif event.Source.Text=="Sum"
                    func=@(x) nansum(x,4);
                end
            end
            objout=data2crop.Line2_2_Mean1(func,type);
            app.Datastore_class=cat(1,app.Datastore_class,objout);
            app.Datastore_class.findComment(app.ListBox_2);
        end

        % Cell selection callback: VariablesTable
        function select_data2_var(app, event)
            indices = event.Indices;
            if indices(2)==6
                selectedXIndices = logical(get(app.Prim_Chan_Ax.Children, 'BrushData'));
                XData=app.Prim_Chan_Ax.Children.XData;
                YData=app.Prim_Chan_Ax.Children.YData;
                selectedX=XData(selectedXIndices);
                selectedY=YData(selectedXIndices);
                try
                    Xmin=round(min(selectedX),2);
                    Xmax=round(max(selectedX),2);
                    opts=struct('positive',1)
                    Gaussfit=autoGaussianCurve(selectedX,selectedY,opts)
                    app.VariablesTable.Data.Minimum(indices(1))=Xmin
                    app.VariablesTable.Data.Maximum(indices(1))=Xmax
                    app.VariablesTable.Data.Centre(indices(1))=Gaussfit.x0;
                    app.VariablesTable.Data.Width(indices(1))=2*sqrt(2*log(2))*Gaussfit.sigmax;
                    Ymin=min(movingAverage(selectedY,4));
                    Ymax=max(movingAverage(selectedY,4));
                    app.VariablesTable.Data.Amplitude(indices(1))=Gaussfit.a+Gaussfit.b


                catch ME
                    assignin("base",'error',ME);
                    Xmin=round(min(selectedX),2);
                    Xmax=round(max(selectedX),2);
                    app.VariablesTable.Data.Width(indices(1))=Xmax-Xmin;
                    app.VariablesTable.Data.Centre(indices(1))=median(selectedX);
                    app.VariablesTable.Data.Minimum(indices(1))=app.VariablesTable.Data.Centre(indices(1))-app.VariablesTable.Data.Width(indices(1))/2;
                    app.VariablesTable.Data.Maximum(indices(1))=app.VariablesTable.Data.Centre(indices(1))+app.VariablesTable.Data.Width(indices(1))/2;
                    Ymin=min(movingAverage(selectedY,4));
                    Ymax=max(movingAverage(selectedY,4));
                    app.VariablesTable.Data.Amplitude(indices(1))=Ymax-Ymin;
                end
            else
                return
            end




        end

        % Menu selected function: NewDataMenu_17
        function LS2BKG(app, event)
            prompt = {'Pixel Size(um):','Smoothing (pixels):','Replace NaNs (1/0):'};
            dlgtitle = 'Background Parameters';
            dims = 1;
            definput = {'0.05','2','1'};
            answer = cellfun(@str2double,inputdlg(prompt,dlgtitle,dims,definput))

            obj_in=copyobj2(app.Datastore_class(app.Data_Selection,1));
            %             obj_out=obj_in.bkgfromLS(app.MinSpinner.Value,app.MaxSpinner.Value,0.1,3);
            obj_out=arrayfun(@(x) x.bkgfromLS(app.MinSpinner.Value,app.MaxSpinner.Value,answer(1,1),answer(2,1),logical(answer(3,1))),obj_in,'UniformOutput',true);
            app.Datastore_class=cat(1,app.Datastore_class,obj_out);
            app.Datastore_class.findComment(app.ListBox_2);
        end

        % Button pushed function: LoadfromStatButton
        function load_statistic(app, event)
            stat=app.StatisticDropDown.Value;
            data=app.Datastore_class(app.Data_Selection,1);
            %       app.VariablesTable.Data=struct2table(data.STAT.(stat));
            if stat=="SurfaceFit"
                alldatatable=arrayfun(@(x) x.STAT.(stat),data,'UniformOutput',0);
                Alldata_responses_struct=cell2mat(alldatatable);
                app.VariablesTable.Data=struct2table(Alldata_responses_struct);
                app.VariablesTable.ColumnName=fieldnames(Alldata_responses_struct);
                table2export=struct2table(Alldata_responses_struct);
                a=90

                BKGData=table2export(table2export.APnum=="BKG",:)
                APs=table2export(table2export.APnum~="BKG",:)
                BKGData4XL = BKGData(1,[1:7,9:15,18:19,21:24,32:40,42:46]);
                APData4XL = APs(1,[1:7,9:15,18:19,21:24,32:40,42:46]);
            elseif stat=="Fit"
                app.VariablesTable.Data=data.STAT.(stat);
                app.VariablesTable.ColumnName=fieldnames(data.STAT.(stat));
            elseif stat=="SurfaceDiffusion"
                %          app.VariablesTable.Data=struct2table(data.STAT.(stat));
                %         app.VariablesTable.ColumnName=fieldnames(data.STAT.(stat));
                alldatatable=arrayfun(@(x) x.STAT.(stat),data,'UniformOutput',0);
                alldatatable=cellfun(@transpose,alldatatable,'UniformOutput',false)
                Alldata_responses_struct=cell2mat(alldatatable);
                app.VariablesTable.Data=struct2table(Alldata_responses_struct);
                app.VariablesTable.ColumnName=fieldnames(Alldata_responses_struct);
                table2export=struct2table(Alldata_responses_struct);
            end
        end

        % Button pushed function: Copy_table_4
        function export_statistic(app, event)
            stat=app.StatisticDropDown.Value;
            data=app.Datastore_class(app.Data_Selection,1);
            %       app.VariablesTable.Data=struct2table(data.STAT.(stat));
            if stat=="SurfaceFit"
                table2export=app.VariablesTable.Data;
                Alldata_responses=table2export;
                Alldata_responses_struct=table2struct(Alldata_responses);
                BKGData=table2export(table2export.APnum=="BKG",:);
                APs=table2export(table2export.APnum~="BKG",:);
                allsucstab2=APs(APs.Success==1,:);
                BKGData4XL = BKGData(:,[1:7,9:15,18:19,21:24,32,36:43,42:43,45:49]);
                APData4XL = APs(:,[1:7,9:15,18:19,21:24,32,36:43,42:43,45:49]);
                AllData4XL=table2export(:,[1:7,9:15,18:19,21:24,32,36:43,42:43,45:49]);
                sucs4XL=APData4XL(APData4XL.Success==1,:);
                thresh=std(BKGData.Amp)*4;
                sucs=APData4XL.Amp>thresh;

                APtypes=unique(APs.APnum) %Unique APnums
                for response=1:size(APtypes,1) %get data for response amplitudes etc
                    Resps(:,response)=APs.Success(APs.APnum==convertCharsToStrings(APtypes{response,1}),:)
                    iGluAmp(:,response)=APs.Amp(APs.APnum==convertCharsToStrings(APtypes{response,1}),:)
                    CalAmps(:,response)=APs.CalAmp(APs.APnum==convertCharsToStrings(APtypes{response,1}),:)
                    CalIncs(:,response)=APs.CalInc(APs.APnum==convertCharsToStrings(APtypes{response,1}),:)
                end
                Resps2=num2cell(uint8(iGluAmp>thresh))
                Noise=num2cell(BKGData.Amp);
                suc_fail_cell=num2cell(Resps);
                suc_amp_cell=num2cell(iGluAmp);
                suc_Calamp_cell=num2cell(CalAmps);
                space=repmat({' '},size(Resps,1),1);
                trialnum=num2cell(1:1:size(Resps,1));
                cell4table=cat(2,trialnum.',suc_fail_cell,space,suc_amp_cell,space,suc_Calamp_cell,space,Resps2,Noise);
                aps={'Trial','AP1','AP2','AP3','AP4','|-','iGluAP1','iGluAP2','iGluAP3','iGluAP4','-|','CalAP1','CalAP2','CalAP3','CalAP4','||-','iAP1','iAP2','iAP3','iAP4','Noise'};
                responsestable=cell2table(cell4table);
                responsestable.Properties.VariableNames=aps;
                answer = questdlg('Export to Excel?','Response Data Export','Yes','No','Yes');
                if answer=="Yes"
                    filter = {'*.xlsm'};
                    [file, path] = uiputfile(filter);
                    filename=sprintf('%s%s',path,file);
                    writetable(sucs4XL,filename,"WriteMode","overwritesheet");
                    writetable(responsestable,filename,"Sheet",'All Responses');
                    writetable(APData4XL,filename,"Sheet",'All Localisations');
                    matfilename=sprintf('%s%s',filename(1:end-4),'mat');
                    save(matfilename,'allsucstab2','Alldata_responses','Alldata_responses_struct');
                end

            elseif stat=="SurfaceDiffusion"
                table2export=app.VariablesTable.Data;
                assignin('base','exportdata',table2export);
                APs=table2export(table2export.Type~="bkg",:);
                BKGData=table2export(table2export.Type=="bkg",:);
                Responses=unique(APs.Type)
                for response=1:size(Responses,1)
                    Resps(:,response)=APs.Success(APs.Type==convertCharsToStrings(Responses{response,1}),:)
                    iGluAmps(:,response)=APs.AdjPeak(APs.Type==convertCharsToStrings(Responses{response,1}),:)
                    CalAmps(:,response)=APs.calAmp(APs.Type==convertCharsToStrings(Responses{response,1}),:)
                    CalIncs(:,response)=APs.calinc(APs.Type==convertCharsToStrings(Responses{response,1}),:)
                end
                suc_fail_cell=num2cell(Resps);
                suc_amp_cell=num2cell(iGluAmps);
                suc_Calamp_cell=num2cell(CalAmps);
                space=repmat({' '},size(Resps,1),1);
                trialnum=num2cell(1:1:size(Resps,1));
                Noise=num2cell(BKGData.Peak);
                cell4table=cat(2,trialnum.',suc_fail_cell,space,suc_amp_cell,space,suc_Calamp_cell,space,Noise);
                aps={'Trial','AP1','AP2','AP3','AP4','|-','iGluAP1','iGluAP2','iGluAP3','iGluAP4','-|','CalAP1','CalAP2','CalAP3','CalAP4','-|-','Noise'};
                responsestable=cell2table(cell4table);
                responsestable.Properties.VariableNames=aps;
                for response=1:size(Responses,1)
                    Intprofiles=table2cell(APs(APs.Success==1 & APs.Type==convertCharsToStrings(Responses{response,1}),'Int_Profile'));
                    XData=table2cell(APs(APs.Success==1 & APs.Type==convertCharsToStrings(Responses{response,1}),'XData_4_plot'));
                    names=table2cell(APs(APs.Success==1 & APs.Type==convertCharsToStrings(Responses{response,1}),'Comment'));
                    [XYTrace]=app.CopyTraces2Clipboard(XData,Intprofiles,names);
                    profiles(response).decaytraces=cell2table(num2cell(XYTrace));
                end

                answer = questdlg('Export to Excel?','Response Data Export','Yes','No','Yes');
                if answer=="Yes"
                    filter = {'*.xlsm'};
                    [file, path] = uiputfile(filter);
                    filename=sprintf('%s%s',path,file);
                    writetable(responsestable,filename,"Sheet",'All Responses');
                    for response=1:size(Responses,1)
                        writetable(profiles(response).decaytraces,filename,"Sheet",convertCharsToStrings(Responses{response,1}),'WriteMode','append')
                    end
                end
                Successes=APs.AdjPeak(APs.Success==1,:);
                Failures=APs.AdjPeak(APs.Success==0,:);
                Successes_4SD=Successes(Successes>std(cell2mat(Noise))*4);
                a=0

            end
        end

        % Menu selected function: NewDataMenu_18
        function Get_Maps(app, event)
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end
            data2crop=copyobj2(app.Datastore_class(selected_dataitems,1));
            [amp,locs,widths,proms,suc_fail,DFFUR_Accum,error,Dataout]=arrayfun(@(x) app.Get_Response_Data(app.PeakStats.EP_PeakTime,x,event),data2crop,'UniformOutput',false)
            a=0
            app.Datastore_class=cat(1,app.Datastore_class,Dataout{:});
            app.Datastore_class.findComment(app.ListBox_2);
        end

        % Menu selected function: OriginMenu
        function exportstat(app, event)


            a=0
        end

        % Menu selected function: matMenu
        function exportallStats(app, event)

            a=0
        end

        % Menu selected function: CalculateMenu_2
        function Cal_Mapping(app, event)
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end
            data2crop=copyobj2(app.Datastore_class(selected_dataitems,1));
            UGval= MapFunc(data2crop.UG,app.Cal590Menu.Checked)
            URval= MapFunc(data2crop.UR,app.Cal590Menu.Checked)
            data2crop.UG=UGval;
            data2crop.UR=URval;
            data2crop.Type="Scatter"
            data2crop.comment=sprintf('%s | %s','CalMapped',data2crop.comment);
            app.Datastore_class=cat(1,app.Datastore_class,data2crop);
            app.Datastore_class.findComment(app.ListBox_2);
        end

        % Menu selected function: CombineDecayfromDataitemsMenu
        function CombineDecays(app, event)
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end
            data2crop=copyobj2(app.Datastore_class(selected_dataitems,1));
            answer = questdlg('Get Decay Traces','Method','From Cursors','From Brush Selction','From Brush Selction');
            if answer=="From Cursors"
                data2crop=arrayfun(@(x) x.crop_data(2,app.MinSpinner.Value,app.MaxSpinner.Value,"just do"),data2crop,UniformOutput=true);
            elseif answer=="From Brush Selction"
                a=findall(app.Prim_Chan_Ax,'Type','ConstantLine');
                delete(a);
                ind=[];
                try;
                    brush=get(app.Prim_Chan_Ax.Children, 'BrushData')
                    if iscell(brush)
                        ind = find(brush{1,1});
                    else
                        ind = find(brush);
                    end
                end

                data2crop=arrayfun(@(x) x.Crop_by_tidx(ind),data2crop,'UniformOutput',true)
            end
            DataUG=arrayfun(@(x) nansum(x.UG,2),data2crop,"UniformOutput",false);
            DataUR=arrayfun(@(x) nansum(x.UR,2),data2crop,"UniformOutput",false);
            DataUG=cell2mat(DataUG.');
            DataUR=cell2mat(DataUR.');
            newdata=ImData;
            newdata.XData=1:1:size(DataUG,2);
            newdata.TData=newdata.XData;
            newdata.tauData=data2crop(1,1).tauData;
            newdata.YData=newdata.tauData;
            newdata.UG=DataUG;
            newdata.UR=DataUR;
            newdata.Type="FLIM_tau_T"
            newdata.comment='Selected FLIM Decays';
            app.Datastore_class=cat(1,app.Datastore_class,newdata);
            app.Datastore_class.findComment(app.ListBox_2);
        end

        % Menu selected function: Cal590Menu, OGB1Menu
        function FLIMmenuCB(app, event)
            if event.Source.Text=="Cal590"
                app.Cal590Menu.Checked='on'
                app.OGB1Menu.Checked='off'
            elseif event.Source.Text=="OGB1"
                app.Cal590Menu.Checked='off'
                app.OGB1Menu.Checked='on'
            end
        end

        % Menu selected function: CalculateMenu
        function DoNTC(app, event)
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end
            data2crop=copyobj2(app.Datastore_class(selected_dataitems,1));
            if app.OGB1Menu.Checked==1
            [a,UGNTC]=normtotalcount(data2crop,1,1,1);
            [b,URNTC]=normtotalcount(data2crop,2,1,1);
            else
            [a,UGNTC]=normtotalcount(data2crop,1,1,0);
            [b,URNTC]=normtotalcount(data2crop,2,1,0);
            end
            UGNTC=UGNTC(1,:);
            URNTC=URNTC(1,:);
            data2crop.UG=UGNTC;
            data2crop.UR=URNTC;
            data2crop.Type='Scatter'
            data2crop.comment=sprintf('%s | %s','NTC',data2crop.comment);
            app.Datastore_class=cat(1,app.Datastore_class,data2crop);
            app.Datastore_class.findComment(app.ListBox_2);
        end

        % Menu selected function: OGB1Menu_2
        function CalMapCheck(app, event)
            if event.Source.Text=="Cal590"
                app.Cal590Menu_2.Checked='on'
                app.OGB1Menu_2.Checked='off'
            elseif event.Source.Text=="OGB1"
                app.Cal590Menu_2.Checked='off'
                app.OGB1Menu_2.Checked='on'
            end
        end

        % Menu selected function: FromMulitpleSelectionsMenu, SelectionMenu
        function cropmultiole(app, event)
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end
            data2crop=copyobj2(app.Datastore_class(selected_dataitems,1));

            if event.Source.Text=="From Mulitple Selections"
                a=findall(app.Prim_Chan_Ax,'Type','ConstantLine');
                delete(a);
                ind=[];
                try;
                    brush=get(app.Prim_Chan_Ax.Children, 'BrushData')
                    if iscell(brush)
                        ind = find(brush{1,1});
                    else
                        ind = find(brush);
                    end
                end

                dataout=arrayfun(@(x) x.Crop_by_tidx(ind,0,[],[]),data2crop,'UniformOutput',true)
            elseif event.Source.Text=="~ Selection"
                dataout=arrayfun(@(x) x.Crop_by_tidx([],1,app.MinSpinner.Value,app.MaxSpinner.Value),data2crop,'UniformOutput',true)
            elseif event.Source.Text=="Known Timings"
                dataout=crop_known_times(data2crop);
            end
            app.Datastore_class=cat(1,app.Datastore_class,dataout);
            app.Datastore_class.findComment(app.ListBox_2);
        end

        % Menu selected function: TransfertonewfileMenu
        function transfer(app, event)
            if iscell(app.ListBox_2.Value)==1
                selected_dataitems=cell2mat(app.ListBox_2.Value);
            else
                selected_dataitems=app.ListBox_2.Value;
            end
            data2crop=copyobj2(app.Datastore_class(selected_dataitems,1));
            h=findobj('Tag','FGUItransfer');
            h.RunningAppInstance.Newdata(data2crop);

        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create FijiGUIUIFigure and hide until all components are created
            app.FijiGUIUIFigure = uifigure('Visible', 'off');
            app.FijiGUIUIFigure.Position = [0 0 1148 845];
            app.FijiGUIUIFigure.Name = 'Fiji-GUI';
            app.FijiGUIUIFigure.CloseRequestFcn = createCallbackFcn(app, @Figure_Shutdown_Callback, true);
            app.FijiGUIUIFigure.WindowKeyPressFcn = createCallbackFcn(app, @keypress, true);
            app.FijiGUIUIFigure.Scrollable = 'on';
            app.FijiGUIUIFigure.HandleVisibility = 'on';
            app.FijiGUIUIFigure.Tag = 'Gui1';

            % Create ImportRawDataMenu
            app.ImportRawDataMenu = uimenu(app.FijiGUIUIFigure);
            app.ImportRawDataMenu.Text = 'Import Raw Data       /   ';
            app.ImportRawDataMenu.MenuSelectedFcn = createCallbackFcn(app, @LoadMES_as_Objarray, true);

            % Create EditDataMenu
            app.EditDataMenu = uimenu(app.FijiGUIUIFigure);
            app.EditDataMenu.Text = 'Edit Data/        ';

            % Create AddEmptyDataItemsMenu
            app.AddEmptyDataItemsMenu = uimenu(app.EditDataMenu);
            app.AddEmptyDataItemsMenu.MenuSelectedFcn = createCallbackFcn(app, @add_empty_data_holders, true);
            app.AddEmptyDataItemsMenu.Separator = 'on';
            app.AddEmptyDataItemsMenu.Text = 'Add Empty DataItems';

            % Create EqualiseTimeDimensionMenu
            app.EqualiseTimeDimensionMenu = uimenu(app.EditDataMenu);
            app.EqualiseTimeDimensionMenu.Separator = 'on';
            app.EqualiseTimeDimensionMenu.Text = 'Equalise Time Dimension';

            % Create SeparateLineDataitemsMenu
            app.SeparateLineDataitemsMenu = uimenu(app.EqualiseTimeDimensionMenu);
            app.SeparateLineDataitemsMenu.MenuSelectedFcn = createCallbackFcn(app, @Equalise, true);
            app.SeparateLineDataitemsMenu.Text = 'Separate Line Dataitems';

            % Create ReturnLineAverageMenu
            app.ReturnLineAverageMenu = uimenu(app.EqualiseTimeDimensionMenu);
            app.ReturnLineAverageMenu.MenuSelectedFcn = createCallbackFcn(app, @Equalise, true);
            app.ReturnLineAverageMenu.Separator = 'on';
            app.ReturnLineAverageMenu.Text = '+ Return Line Average';

            % Create ReturnRasterPlotMenu
            app.ReturnRasterPlotMenu = uimenu(app.EqualiseTimeDimensionMenu);
            app.ReturnRasterPlotMenu.MenuSelectedFcn = createCallbackFcn(app, @Equalise, true);
            app.ReturnRasterPlotMenu.Separator = 'on';
            app.ReturnRasterPlotMenu.Text = 'Return Raster Plot ';

            % Create ReturnConcatenatedtraceMenu
            app.ReturnConcatenatedtraceMenu = uimenu(app.EqualiseTimeDimensionMenu);
            app.ReturnConcatenatedtraceMenu.MenuSelectedFcn = createCallbackFcn(app, @Equalise, true);
            app.ReturnConcatenatedtraceMenu.Text = 'Return Concatenated trace';

            % Create AverageLine2DataitemsMenu
            app.AverageLine2DataitemsMenu = uimenu(app.EditDataMenu);
            app.AverageLine2DataitemsMenu.Text = 'Average Line2 Dataitems';

            % Create MeanMenu
            app.MeanMenu = uimenu(app.AverageLine2DataitemsMenu);
            app.MeanMenu.MenuSelectedFcn = createCallbackFcn(app, @Mean_Line2, true);
            app.MeanMenu.Text = 'Mean';

            % Create SumMenu
            app.SumMenu = uimenu(app.AverageLine2DataitemsMenu);
            app.SumMenu.MenuSelectedFcn = createCallbackFcn(app, @Mean_Line2, true);
            app.SumMenu.Text = 'Sum';

            % Create CropX2DtimeaxisMenu
            app.CropX2DtimeaxisMenu = uimenu(app.EditDataMenu);
            app.CropX2DtimeaxisMenu.Separator = 'on';
            app.CropX2DtimeaxisMenu.Text = 'Crop X/2D time axis';

            % Create NewItemMenu
            app.NewItemMenu = uimenu(app.CropX2DtimeaxisMenu);
            app.NewItemMenu.MenuSelectedFcn = createCallbackFcn(app, @Crop_Time_DImension, true);
            app.NewItemMenu.Text = 'New Item';

            % Create OverwriteMenu
            app.OverwriteMenu = uimenu(app.CropX2DtimeaxisMenu);
            app.OverwriteMenu.MenuSelectedFcn = createCallbackFcn(app, @Crop_Time_DImension, true);
            app.OverwriteMenu.Separator = 'on';
            app.OverwriteMenu.Text = 'Overwrite';

            % Create lastEPMenu
            app.lastEPMenu = uimenu(app.CropX2DtimeaxisMenu);
            app.lastEPMenu.MenuSelectedFcn = createCallbackFcn(app, @crop_from_EP_tidx, true);
            app.lastEPMenu.Separator = 'on';
            app.lastEPMenu.Text = '+/- last EP';

            % Create FromMulitpleSelectionsMenu
            app.FromMulitpleSelectionsMenu = uimenu(app.CropX2DtimeaxisMenu);
            app.FromMulitpleSelectionsMenu.MenuSelectedFcn = createCallbackFcn(app, @cropmultiole, true);
            app.FromMulitpleSelectionsMenu.Text = 'From Mulitple Selections';

            % Create SelectionMenu
            app.SelectionMenu = uimenu(app.CropX2DtimeaxisMenu);
            app.SelectionMenu.MenuSelectedFcn = createCallbackFcn(app, @cropmultiole, true);
            app.SelectionMenu.Text = '~ Selection';

            % Create knownSelectionMenu
            app.knownSelectionMenu = uimenu(app.CropX2DtimeaxisMenu);
            app.knownSelectionMenu.MenuSelectedFcn = createCallbackFcn(app, @cropmultiole, true);
            app.knownSelectionMenu.Text = 'Known Timings';

            % Create keeptimeidx
            app.keeptimeidx = uimenu(app.CropX2DtimeaxisMenu);
            app.keeptimeidx.Checked = true;
            app.keeptimeidx.Text = 'Keep Time Index';
            app.keeptimeidx.Separator = 'on';
            app.keeptimeidx.MenuSelectedFcn = createCallbackFcn(app, @setposorpred, true);

            % Create CropYaxisMenu
            app.CropYaxisMenu = uimenu(app.EditDataMenu);
            app.CropYaxisMenu.Text = 'Crop Y axis';

            % Create NewItemMenu_2
            app.NewItemMenu_2 = uimenu(app.CropYaxisMenu);
            app.NewItemMenu_2.MenuSelectedFcn = createCallbackFcn(app, @Crop_X_Dimesions, true);
            app.NewItemMenu_2.Text = 'New Item';

            % Create OverwriteMenu_2
            app.OverwriteMenu_2 = uimenu(app.CropYaxisMenu);
            app.OverwriteMenu_2.MenuSelectedFcn = createCallbackFcn(app, @Crop_X_Dimesions, true);
            app.OverwriteMenu_2.Separator = 'on';
            app.OverwriteMenu_2.Text = 'Overwrite';

            % Create CropfromImageJselectionMenu
            app.CropfromImageJselectionMenu = uimenu(app.EditDataMenu);
            app.CropfromImageJselectionMenu.Text = 'Crop from ImageJ selection';

            % Create NewDataMenu_12
            app.NewDataMenu_12 = uimenu(app.CropfromImageJselectionMenu);
            app.NewDataMenu_12.MenuSelectedFcn = createCallbackFcn(app, @Crop_XY, true);
            app.NewDataMenu_12.Text = 'New Data';

            % Create OverwriteMenu_13
            app.OverwriteMenu_13 = uimenu(app.CropfromImageJselectionMenu);
            app.OverwriteMenu_13.Text = 'Overwrite';

            % Create SplitbyFemtonicsROIsMenu
            app.SplitbyFemtonicsROIsMenu = uimenu(app.EditDataMenu);
            app.SplitbyFemtonicsROIsMenu.MenuSelectedFcn = createCallbackFcn(app, @split_by_Femto_ROIs, true);
            app.SplitbyFemtonicsROIsMenu.Text = 'Split by Femtonics ROIs';

            % Create BinXDimensionMenu_2
            app.BinXDimensionMenu_2 = uimenu(app.EditDataMenu);
            app.BinXDimensionMenu_2.ForegroundColor = [0.149 0.149 0.149];
            app.BinXDimensionMenu_2.Separator = 'on';
            app.BinXDimensionMenu_2.Text = 'Bin X Dimension';

            % Create NewDataMenu_5
            app.NewDataMenu_5 = uimenu(app.BinXDimensionMenu_2);
            app.NewDataMenu_5.MenuSelectedFcn = createCallbackFcn(app, @X_or_Y_axis_binning, true);
            app.NewDataMenu_5.Separator = 'on';
            app.NewDataMenu_5.Text = 'New Data';

            % Create OverwriteMenu_7
            app.OverwriteMenu_7 = uimenu(app.BinXDimensionMenu_2);
            app.OverwriteMenu_7.MenuSelectedFcn = createCallbackFcn(app, @X_or_Y_axis_binning, true);
            app.OverwriteMenu_7.Text = 'Overwrite';

            % Create BinYDimensionMenu_2
            app.BinYDimensionMenu_2 = uimenu(app.EditDataMenu);
            app.BinYDimensionMenu_2.Text = 'Bin Y Dimension';

            % Create NewDataMenu_6
            app.NewDataMenu_6 = uimenu(app.BinYDimensionMenu_2);
            app.NewDataMenu_6.MenuSelectedFcn = createCallbackFcn(app, @X_or_Y_axis_binning, true);
            app.NewDataMenu_6.Separator = 'on';
            app.NewDataMenu_6.Text = 'New Data';

            % Create OverwriteMenu_8
            app.OverwriteMenu_8 = uimenu(app.BinYDimensionMenu_2);
            app.OverwriteMenu_8.MenuSelectedFcn = createCallbackFcn(app, @X_or_Y_axis_binning, true);
            app.OverwriteMenu_8.Text = 'Overwrite';

            % Create BinZDimensionMenu
            app.BinZDimensionMenu = uimenu(app.EditDataMenu);
            app.BinZDimensionMenu.Text = 'Bin Z Dimension';

            % Create NewDataMenu_10
            app.NewDataMenu_10 = uimenu(app.BinZDimensionMenu);
            app.NewDataMenu_10.MenuSelectedFcn = createCallbackFcn(app, @X_or_Y_axis_binning, true);
            app.NewDataMenu_10.Separator = 'on';
            app.NewDataMenu_10.Text = 'New Data';

            % Create OverwriteMenu_12
            app.OverwriteMenu_12 = uimenu(app.BinZDimensionMenu);
            app.OverwriteMenu_12.MenuSelectedFcn = createCallbackFcn(app, @X_or_Y_axis_binning, true);
            app.OverwriteMenu_12.Separator = 'on';
            app.OverwriteMenu_12.Text = 'Overwrite';

            % Create CollapseStackMenu
            app.CollapseStackMenu = uimenu(app.BinZDimensionMenu);
            app.CollapseStackMenu.MenuSelectedFcn = createCallbackFcn(app, @X_or_Y_axis_binning, true);
            app.CollapseStackMenu.Text = 'Collapse Stack';

            % Create BinXYZMenu
            app.BinXYZMenu = uimenu(app.EditDataMenu);
            app.BinXYZMenu.Text = 'Bin XYZ';

            % Create NewDataMenu_15
            app.NewDataMenu_15 = uimenu(app.BinXYZMenu);
            app.NewDataMenu_15.MenuSelectedFcn = createCallbackFcn(app, @XYZbinning, true);
            app.NewDataMenu_15.Text = 'New Data';

            % Create ReplaceDataMenu_4
            app.ReplaceDataMenu_4 = uimenu(app.BinXYZMenu);
            app.ReplaceDataMenu_4.MenuSelectedFcn = createCallbackFcn(app, @XYZbinning, true);
            app.ReplaceDataMenu_4.Text = 'Replace Data';

            % Create ShiftDataAxesMenu
            app.ShiftDataAxesMenu = uimenu(app.EditDataMenu);
            app.ShiftDataAxesMenu.Separator = 'on';
            app.ShiftDataAxesMenu.Text = 'Shift Data Axes ';

            % Create ShiftYAxesMenu
            app.ShiftYAxesMenu = uimenu(app.ShiftDataAxesMenu);
            app.ShiftYAxesMenu.MenuSelectedFcn = createCallbackFcn(app, @Shift_dataitem_Y_axis, true);
            app.ShiftYAxesMenu.Separator = 'on';
            app.ShiftYAxesMenu.Text = 'Shift Y Axes';

            % Create ShiftXorTaxesMenu
            app.ShiftXorTaxesMenu = uimenu(app.ShiftDataAxesMenu);
            app.ShiftXorTaxesMenu.MenuSelectedFcn = createCallbackFcn(app, @Shift_dataitem_Y_axis, true);
            app.ShiftXorTaxesMenu.Text = 'Shift X(or T) axes';

            % Create ShiftZorTaxesMenu
            app.ShiftZorTaxesMenu = uimenu(app.ShiftDataAxesMenu);
            app.ShiftZorTaxesMenu.MenuSelectedFcn = createCallbackFcn(app, @Shift_dataitem_Y_axis, true);
            app.ShiftZorTaxesMenu.Text = 'Shift Z(or T) axes';

            % Create BinAuxillaryChannelsMenu
            app.BinAuxillaryChannelsMenu = uimenu(app.EditDataMenu);
            app.BinAuxillaryChannelsMenu.Separator = 'on';
            app.BinAuxillaryChannelsMenu.Text = 'Bin Auxillary Channels';

            % Create Aux1Menu
            app.Aux1Menu = uimenu(app.BinAuxillaryChannelsMenu);
            app.Aux1Menu.MenuSelectedFcn = createCallbackFcn(app, @Aux_Binning, true);
            app.Aux1Menu.Text = 'Aux1';

            % Create Aux2Menu
            app.Aux2Menu = uimenu(app.BinAuxillaryChannelsMenu);
            app.Aux2Menu.Text = 'Aux2';

            % Create ReplaceAuxillaryChanneldataMenu
            app.ReplaceAuxillaryChanneldataMenu = uimenu(app.EditDataMenu);
            app.ReplaceAuxillaryChanneldataMenu.Text = 'Replace Auxillary Channel data';

            % Create SingleMenu
            app.SingleMenu = uimenu(app.ReplaceAuxillaryChanneldataMenu);
            app.SingleMenu.Separator = 'on';
            app.SingleMenu.Text = 'Single';

            % Create AllMenu
            app.AllMenu = uimenu(app.ReplaceAuxillaryChanneldataMenu);
            app.AllMenu.MenuSelectedFcn = createCallbackFcn(app, @replaceAux, true);
            app.AllMenu.Text = 'All';

            % Create ConcatenateDataMenu
            app.ConcatenateDataMenu = uimenu(app.EditDataMenu);
            app.ConcatenateDataMenu.Separator = 'on';
            app.ConcatenateDataMenu.Text = 'Concatenate Data';

            % Create XaxisMenu
            app.XaxisMenu = uimenu(app.ConcatenateDataMenu);
            app.XaxisMenu.MenuSelectedFcn = createCallbackFcn(app, @Concatenate, true);
            app.XaxisMenu.Text = 'X axis';

            % Create YaxisMenu
            app.YaxisMenu = uimenu(app.ConcatenateDataMenu);
            app.YaxisMenu.Separator = 'on';
            app.YaxisMenu.Text = 'Y axis';

            % Create ZAxisMenu
            app.ZAxisMenu = uimenu(app.ConcatenateDataMenu);
            app.ZAxisMenu.MenuSelectedFcn = createCallbackFcn(app, @Mean_Line2, true);
            app.ZAxisMenu.Separator = 'on';
            app.ZAxisMenu.Text = 'Z Axis';

            % Create ThresholdDataMenu
            app.ThresholdDataMenu = uimenu(app.EditDataMenu);
            app.ThresholdDataMenu.Text = 'Threshold Data';

            % Create NewDataMenu_11
            app.NewDataMenu_11 = uimenu(app.ThresholdDataMenu);
            app.NewDataMenu_11.MenuSelectedFcn = createCallbackFcn(app, @Threshold_Data, true);
            app.NewDataMenu_11.Text = 'New Data';

            % Create ReplaceDataMenu
            app.ReplaceDataMenu = uimenu(app.ThresholdDataMenu);
            app.ReplaceDataMenu.Text = 'Replace Data';

            % Create EditCommentMenu
            app.EditCommentMenu = uimenu(app.EditDataMenu);
            app.EditCommentMenu.MenuSelectedFcn = createCallbackFcn(app, @Edit_Datafile_Comment, true);
            app.EditCommentMenu.ForegroundColor = [0.149 0.149 0.149];
            app.EditCommentMenu.Text = 'Edit Comment';

            % Create FoldedFrame2Line2Menu
            app.FoldedFrame2Line2Menu = uimenu(app.EditDataMenu);
            app.FoldedFrame2Line2Menu.Text = 'Folded Frame 2 Line2';

            % Create XDimMenu
            app.XDimMenu = uimenu(app.FoldedFrame2Line2Menu);
            app.XDimMenu.MenuSelectedFcn = createCallbackFcn(app, @Callback_to_FF2Line2, true);
            app.XDimMenu.Text = 'XDim';

            % Create YDimMenu
            app.YDimMenu = uimenu(app.FoldedFrame2Line2Menu);
            app.YDimMenu.MenuSelectedFcn = createCallbackFcn(app, @Callback_to_FF2Line2, true);
            app.YDimMenu.Text = 'YDim';

            % Create LineScan2BackgroundMenu
            app.LineScan2BackgroundMenu = uimenu(app.EditDataMenu);
            app.LineScan2BackgroundMenu.Text = 'Line Scan 2 Background ';

            % Create NewDataMenu_17
            app.NewDataMenu_17 = uimenu(app.LineScan2BackgroundMenu);
            app.NewDataMenu_17.MenuSelectedFcn = createCallbackFcn(app, @LS2BKG, true);
            app.NewDataMenu_17.Text = 'New Data';

            % Create FunctionsMenu
            app.FunctionsMenu = uimenu(app.FijiGUIUIFigure);
            app.FunctionsMenu.Text = 'Functions/           ';

            % Create CCImageMenu
            app.CCImageMenu = uimenu(app.FunctionsMenu);
            app.CCImageMenu.MenuSelectedFcn = createCallbackFcn(app, @CCImage, true);
            app.CCImageMenu.Separator = 'on';
            app.CCImageMenu.Text = 'CCImage';

            % Create ShowScanPatternsMenu
            app.ShowScanPatternsMenu = uimenu(app.FunctionsMenu);
            app.ShowScanPatternsMenu.MenuSelectedFcn = createCallbackFcn(app, @Trigger_Display_Scan_Patterns_Function, true);
            app.ShowScanPatternsMenu.Separator = 'on';
            app.ShowScanPatternsMenu.Text = 'Show Scan Patterns';

            % Create Spiral2XYTMenu_2
            app.Spiral2XYTMenu_2 = uimenu(app.FunctionsMenu);
            app.Spiral2XYTMenu_2.Separator = 'on';
            app.Spiral2XYTMenu_2.Text = 'Spiral2-XYT';

            % Create NewDataMenu_8
            app.NewDataMenu_8 = uimenu(app.Spiral2XYTMenu_2);
            app.NewDataMenu_8.MenuSelectedFcn = createCallbackFcn(app, @Spiral2XYT_Spiral2Image, true);
            app.NewDataMenu_8.Text = 'New Data';

            % Create OverwriteMenu_10
            app.OverwriteMenu_10 = uimenu(app.Spiral2XYTMenu_2);
            app.OverwriteMenu_10.Separator = 'on';
            app.OverwriteMenu_10.Text = 'Overwrite';

            % Create UseScXYdataMenu_2
            app.UseScXYdataMenu_2 = uimenu(app.Spiral2XYTMenu_2);
            app.UseScXYdataMenu_2.MenuSelectedFcn = createCallbackFcn(app, @setposorpred, true);
            app.UseScXYdataMenu_2.Separator = 'on';
            app.UseScXYdataMenu_2.Checked = 'on';
            app.UseScXYdataMenu_2.Text = 'Use ScX/Y data';

            % Create Pos2ImgMenu
            app.Pos2ImgMenu = uimenu(app.FunctionsMenu);
            app.Pos2ImgMenu.Text = 'Pos2Img';

            % Create NewDataitemMenu
            app.NewDataitemMenu = uimenu(app.Pos2ImgMenu);
            app.NewDataitemMenu.MenuSelectedFcn = createCallbackFcn(app, @Spiral2XYT_Spiral2Image, true);
            app.NewDataitemMenu.Text = 'New Dataitem';

            % Create OverwriteMenu_11
            app.OverwriteMenu_11 = uimenu(app.Pos2ImgMenu);
            app.OverwriteMenu_11.Separator = 'on';
            app.OverwriteMenu_11.Text = 'Overwrite';

            % Create Spiral2DMenu
            app.Spiral2DMenu = uimenu(app.FunctionsMenu);
            app.Spiral2DMenu.Separator = 'on';
            app.Spiral2DMenu.Text = 'Spiral2D';

            % Create ThetaBinningMenu
            app.ThetaBinningMenu = uimenu(app.Spiral2DMenu);
            app.ThetaBinningMenu.MenuSelectedFcn = createCallbackFcn(app, @Spiral2D_linescan_theta_binning, true);
            app.ThetaBinningMenu.Text = 'Theta Binning';

            % Create ThetaSortingMenu
            app.ThetaSortingMenu = uimenu(app.Spiral2DMenu);
            app.ThetaSortingMenu.MenuSelectedFcn = createCallbackFcn(app, @Spiral2D_linescan_theta_binning, true);
            app.ThetaSortingMenu.Text = 'Theta Sorting';

            % Create VectorSortingMenu
            app.VectorSortingMenu = uimenu(app.Spiral2DMenu);
            app.VectorSortingMenu.Text = 'Vector Sorting';
            app.VectorSortingMenu.MenuSelectedFcn = createCallbackFcn(app, @Spiral2D_linescan_theta_binning, true);

            % Create Auto_2D_Peak_locsMenu_2
            app.Auto_2D_Peak_locsMenu_2 = uimenu(app.FunctionsMenu);
            app.Auto_2D_Peak_locsMenu_2.MenuSelectedFcn = createCallbackFcn(app, @Auto_2D_Peak_locations, true);
            app.Auto_2D_Peak_locsMenu_2.Separator = 'on';
            app.Auto_2D_Peak_locsMenu_2.Text = 'Auto_2D_Peak_locs';

            % Create NormalisationMenu_2
            app.NormalisationMenu_2 = uimenu(app.FunctionsMenu);
            app.NormalisationMenu_2.Separator = 'on';
            app.NormalisationMenu_2.Text = 'Normalisation';

            % Create DeltaFFMenu_2
            app.DeltaFFMenu_2 = uimenu(app.NormalisationMenu_2);
            app.DeltaFFMenu_2.MenuSelectedFcn = createCallbackFcn(app, @DFF_for_Linescans, true);
            app.DeltaFFMenu_2.Text = 'Delta F/F';

            % Create DeltaFRMenu_2
            app.DeltaFRMenu_2 = uimenu(app.NormalisationMenu_2);
            app.DeltaFRMenu_2.MenuSelectedFcn = createCallbackFcn(app, @DFF_for_Linescans, true);
            app.DeltaFRMenu_2.Separator = 'on';
            app.DeltaFRMenu_2.Text = 'Delta F/R';

            % Create SubtractBaselineMenu_2
            app.SubtractBaselineMenu_2 = uimenu(app.NormalisationMenu_2);
            app.SubtractBaselineMenu_2.MenuSelectedFcn = createCallbackFcn(app, @DFF_for_Linescans, true);
            app.SubtractBaselineMenu_2.Separator = 'on';
            app.SubtractBaselineMenu_2.Text = 'Subtract Baseline';

            % Create SubtractEPbaselineMenu
            app.SubtractEPbaselineMenu = uimenu(app.NormalisationMenu_2);
            app.SubtractEPbaselineMenu.Separator = 'on';
            app.SubtractEPbaselineMenu.Text = '+Subtract EP baseline';

            % Create DeconvolutionMenu
            app.DeconvolutionMenu = uimenu(app.FunctionsMenu);
            app.DeconvolutionMenu.Text = 'Deconvolution';

            % Create DiGluSnFRkineticsMenu
            app.DiGluSnFRkineticsMenu = uimenu(app.DeconvolutionMenu);
            app.DiGluSnFRkineticsMenu.MenuSelectedFcn = createCallbackFcn(app, @t_filter2_3D, true);
            app.DiGluSnFRkineticsMenu.Text = '1D iGluSnFR kinetics';

            % Create XYTiGluSnFRkineticsMenu
            app.XYTiGluSnFRkineticsMenu = uimenu(app.DeconvolutionMenu);
            app.XYTiGluSnFRkineticsMenu.MenuSelectedFcn = createCallbackFcn(app, @t_filter2_3D, true);
            app.XYTiGluSnFRkineticsMenu.Separator = 'on';
            app.XYTiGluSnFRkineticsMenu.Text = 'XY-T iGluSnFR kinetics';

            % Create BleachCorrectionMenu
            app.BleachCorrectionMenu = uimenu(app.FunctionsMenu);
            app.BleachCorrectionMenu.Text = 'Bleach Correction';

            % Create LineScanMenu
            app.LineScanMenu = uimenu(app.BleachCorrectionMenu);
            app.LineScanMenu.Text = 'Line Scan';

            % Create NewDataMenu_14
            app.NewDataMenu_14 = uimenu(app.LineScanMenu);
            app.NewDataMenu_14.MenuSelectedFcn = createCallbackFcn(app, @correctbleach, true);
            app.NewDataMenu_14.Text = 'New Data';

            % Create ReplaceDataMenu_3
            app.ReplaceDataMenu_3 = uimenu(app.LineScanMenu);
            app.ReplaceDataMenu_3.MenuSelectedFcn = createCallbackFcn(app, @correctbleach, true);
            app.ReplaceDataMenu_3.Text = 'Replace Data';

            % Create FrameScanMenu
            app.FrameScanMenu = uimenu(app.BleachCorrectionMenu);
            app.FrameScanMenu.Text = 'Frame Scan';

            % Create NewDataMenu_13
            app.NewDataMenu_13 = uimenu(app.FrameScanMenu);
            app.NewDataMenu_13.MenuSelectedFcn = createCallbackFcn(app, @correctbleach, true);
            app.NewDataMenu_13.Text = 'New Data';

            % Create ReplaceDataMenu_2
            app.ReplaceDataMenu_2 = uimenu(app.FrameScanMenu);
            app.ReplaceDataMenu_2.MenuSelectedFcn = createCallbackFcn(app, @correctbleach, true);
            app.ReplaceDataMenu_2.Text = 'Replace Data';

            % Create tFilteringMenu
            app.tFilteringMenu = uimenu(app.FunctionsMenu);
            app.tFilteringMenu.Text = 't-Filtering';

            % Create LineScanMenu_2
            app.LineScanMenu_2 = uimenu(app.tFilteringMenu);
            app.LineScanMenu_2.MenuSelectedFcn = createCallbackFcn(app, @t_filter2_3D, true);
            app.LineScanMenu_2.Text = 'Line Scan';

            % Create FrameScanMenu_2
            app.FrameScanMenu_2 = uimenu(app.tFilteringMenu);
            app.FrameScanMenu_2.MenuSelectedFcn = createCallbackFcn(app, @t_filter2_3D, true);
            app.FrameScanMenu_2.Text = 'Frame Scan';

            % Create tZScoreMenu
            app.tZScoreMenu = uimenu(app.FunctionsMenu);
            app.tZScoreMenu.Text = 't-ZScore';

            % Create LineScanMenu_3
            app.LineScanMenu_3 = uimenu(app.tZScoreMenu);
            app.LineScanMenu_3.MenuSelectedFcn = createCallbackFcn(app, @t_filter2_3D, true);
            app.LineScanMenu_3.Text = 'Line Scan';

            % Create FrameScanMenu_3
            app.FrameScanMenu_3 = uimenu(app.tZScoreMenu);
            app.FrameScanMenu_3.MenuSelectedFcn = createCallbackFcn(app, @t_filter2_3D, true);
            app.FrameScanMenu_3.Text = 'Frame Scan';

            % Create KalmanStackFilterMenu
            app.KalmanStackFilterMenu = uimenu(app.FunctionsMenu);
            app.KalmanStackFilterMenu.Text = 'Kalman Stack Filter ';

            % Create NewDataMenu_16
            app.NewDataMenu_16 = uimenu(app.KalmanStackFilterMenu);
            app.NewDataMenu_16.MenuSelectedFcn = createCallbackFcn(app, @kalman, true);
            app.NewDataMenu_16.Text = 'New Data';

            % Create ReplaceDataMenu_5
            app.ReplaceDataMenu_5 = uimenu(app.KalmanStackFilterMenu);
            app.ReplaceDataMenu_5.MenuSelectedFcn = createCallbackFcn(app, @kalman, true);
            app.ReplaceDataMenu_5.Text = 'Replace Data';

            % Create RasterPlotMenu
            app.RasterPlotMenu = uimenu(app.FunctionsMenu);
            app.RasterPlotMenu.Separator = 'on';
            app.RasterPlotMenu.Text = 'Raster Plot';

            % Create GetMapsFromEphysPeaksMenu
            app.GetMapsFromEphysPeaksMenu = uimenu(app.FunctionsMenu);
            app.GetMapsFromEphysPeaksMenu.Text = 'Get Maps From Ephys Peaks';

            % Create NewDataMenu_18
            app.NewDataMenu_18 = uimenu(app.GetMapsFromEphysPeaksMenu);
            app.NewDataMenu_18.MenuSelectedFcn = createCallbackFcn(app, @Get_Maps, true);
            app.NewDataMenu_18.Text = 'New Data';

            % Create FLIMMenu
            app.FLIMMenu = uimenu(app.FijiGUIUIFigure);
            app.FLIMMenu.Text = 'FLIM/         ';
            app.FLIMMenu.ForegroundColor = [0.651 0.651 0.651];

            % Create NTCMenu
            app.NTCMenu = uimenu(app.FLIMMenu);
            app.NTCMenu.Text = 'NTC';

            % Create OGB1Menu
            app.OGB1Menu = uimenu(app.NTCMenu);
            app.OGB1Menu.MenuSelectedFcn = createCallbackFcn(app, @FLIMmenuCB, true);
            app.OGB1Menu.Text = 'OGB1';

            % Create Cal590Menu
            app.Cal590Menu = uimenu(app.NTCMenu);
            app.Cal590Menu.MenuSelectedFcn = createCallbackFcn(app, @FLIMmenuCB, true);
            app.Cal590Menu.Checked = 'on';
            app.Cal590Menu.Text = 'Cal590';

            % Create CalculateMenu
            app.CalculateMenu = uimenu(app.NTCMenu);
            app.CalculateMenu.MenuSelectedFcn = createCallbackFcn(app, @DoNTC, true);
            app.CalculateMenu.Separator = 'on';
            app.CalculateMenu.Text = 'Calculate';

            % Create CalciumMappingMenu
            app.CalciumMappingMenu = uimenu(app.FLIMMenu);
            app.CalciumMappingMenu.Text = 'Calcium Mapping';

            % Create OGB1Menu_2
            app.OGB1Menu_2 = uimenu(app.CalciumMappingMenu);
            app.OGB1Menu_2.MenuSelectedFcn = createCallbackFcn(app, @CalMapCheck, true);
            app.OGB1Menu_2.Text = 'OGB1';

            % Create Cal590Menu_2
            app.Cal590Menu_2 = uimenu(app.CalciumMappingMenu);
            app.Cal590Menu_2.Checked = 'on';
            app.Cal590Menu_2.Text = 'Cal590';

            % Create CalculateMenu_2
            app.CalculateMenu_2 = uimenu(app.CalciumMappingMenu);
            app.CalculateMenu_2.MenuSelectedFcn = createCallbackFcn(app, @Cal_Mapping, true);
            app.CalculateMenu_2.Separator = 'on';
            app.CalculateMenu_2.Text = 'Calculate';

            % Create CombineDecayfromDataitemsMenu
            app.CombineDecayfromDataitemsMenu = uimenu(app.FLIMMenu);
            app.CombineDecayfromDataitemsMenu.MenuSelectedFcn = createCallbackFcn(app, @CombineDecays, true);
            app.CombineDecayfromDataitemsMenu.Text = 'Combine Decay from Dataitems';

            % Create DebugMenu
            app.DebugMenu = uimenu(app.FijiGUIUIFigure);
            app.DebugMenu.MenuSelectedFcn = createCallbackFcn(app, @Callback_to_Insert_Breakpoint, true);
            app.DebugMenu.Text = 'Debug/           ';

            % Create DebugMenu_2
            app.DebugMenu_2 = uimenu(app.DebugMenu);
            app.DebugMenu_2.Text = 'Debug';

            % Create DataOutputMenu
            app.DataOutputMenu = uimenu(app.FijiGUIUIFigure);
            app.DataOutputMenu.Text = 'Data Output/          ';

            % Create SaveSelectedDataasFGUIMenu
            app.SaveSelectedDataasFGUIMenu = uimenu(app.DataOutputMenu);
            app.SaveSelectedDataasFGUIMenu.MenuSelectedFcn = createCallbackFcn(app, @Callback_to_Save_Selected, true);
            app.SaveSelectedDataasFGUIMenu.ForegroundColor = [0.651 0.651 0.651];
            app.SaveSelectedDataasFGUIMenu.Text = 'Save Selected Data as .FGUI';

            % Create ImportmatrixfromworkspaceMenu
            app.ImportmatrixfromworkspaceMenu = uimenu(app.DataOutputMenu);
            app.ImportmatrixfromworkspaceMenu.ForegroundColor = [0.651 0.651 0.651];
            app.ImportmatrixfromworkspaceMenu.Text = 'Import matrix from workspace ';

            % Create SaveTifFileMenu
            app.SaveTifFileMenu = uimenu(app.DataOutputMenu);
            app.SaveTifFileMenu.Text = 'Save Tif File';

            % Create ChannelsMenu
            app.ChannelsMenu = uimenu(app.SaveTifFileMenu);
            app.ChannelsMenu.Text = 'Channels';

            % Create AllMenu_2
            app.AllMenu_2 = uimenu(app.ChannelsMenu);
            app.AllMenu_2.MenuSelectedFcn = createCallbackFcn(app, @savetif, true);
            app.AllMenu_2.Text = 'All';

            % Create CombinedMenu
            app.CombinedMenu = uimenu(app.ChannelsMenu);
            app.CombinedMenu.MenuSelectedFcn = createCallbackFcn(app, @savetif, true);
            app.CombinedMenu.Text = 'Combined';

            % Create UGMenu
            app.UGMenu = uimenu(app.ChannelsMenu);
            app.UGMenu.MenuSelectedFcn = createCallbackFcn(app, @savetif, true);
            app.UGMenu.Text = 'UG';

            % Create URMenu
            app.URMenu = uimenu(app.ChannelsMenu);
            app.URMenu.MenuSelectedFcn = createCallbackFcn(app, @savetif, true);
            app.URMenu.Text = 'UR';

            % Create OutputSelectiontoBaseMenu_2
            app.OutputSelectiontoBaseMenu_2 = uimenu(app.DataOutputMenu);
            app.OutputSelectiontoBaseMenu_2.MenuSelectedFcn = createCallbackFcn(app, @output2base, true);
            app.OutputSelectiontoBaseMenu_2.Text = 'Output Selection to Base';

            % Create ExitMenu
            app.ExitMenu = uimenu(app.FijiGUIUIFigure);
            app.ExitMenu.Text = 'Exit';

            % Create ExitMenu_2
            app.ExitMenu_2 = uimenu(app.ExitMenu);
            app.ExitMenu_2.MenuSelectedFcn = createCallbackFcn(app, @Figure_Shutdown_Callback, true);
            app.ExitMenu_2.Text = 'Exit';

            % Create IJ_Line_Selection
            app.IJ_Line_Selection = uibutton(app.FijiGUIUIFigure, 'push');
            app.IJ_Line_Selection.ButtonPushedFcn = createCallbackFcn(app, @IJ_Make_Line, true);
            app.IJ_Line_Selection.Icon = 'Line.png';
            app.IJ_Line_Selection.Position = [558 819 37 22];
            app.IJ_Line_Selection.Text = '';

            % Create LineWidthSpinnerLabel
            app.LineWidthSpinnerLabel = uilabel(app.FijiGUIUIFigure);
            app.LineWidthSpinnerLabel.HorizontalAlignment = 'right';
            app.LineWidthSpinnerLabel.Position = [703 823 62 22];
            app.LineWidthSpinnerLabel.Text = 'Line Width';

            % Create IJ_Line_Width_Control
            app.IJ_Line_Width_Control = uispinner(app.FijiGUIUIFigure);
            app.IJ_Line_Width_Control.Step = 0.25;
            app.IJ_Line_Width_Control.ValueChangedFcn = createCallbackFcn(app, @IJ_Control_Line_Width, true);
            app.IJ_Line_Width_Control.Tooltip = {'Select line width size (should work in most cases ? image file import'};
            app.IJ_Line_Width_Control.Position = [707 806 55 22];

            % Create IJ_Segmented_Line_Selction
            app.IJ_Segmented_Line_Selction = uibutton(app.FijiGUIUIFigure, 'push');
            app.IJ_Segmented_Line_Selction.ButtonPushedFcn = createCallbackFcn(app, @IJ_set_Segmented_Line, true);
            app.IJ_Segmented_Line_Selction.Icon = 'PolyLine.png';
            app.IJ_Segmented_Line_Selction.Position = [558 792 37 22];
            app.IJ_Segmented_Line_Selction.Text = '';

            % Create IJ_Square_Selection
            app.IJ_Square_Selection = uibutton(app.FijiGUIUIFigure, 'push');
            app.IJ_Square_Selection.ButtonPushedFcn = createCallbackFcn(app, @IJ_set_Rectangle, true);
            app.IJ_Square_Selection.Icon = 'PolyShape.png';
            app.IJ_Square_Selection.Position = [557 763 37 22];
            app.IJ_Square_Selection.Text = '';

            % Create IJ_Vertical_Profile_Y
            app.IJ_Vertical_Profile_Y = uibutton(app.FijiGUIUIFigure, 'push');
            app.IJ_Vertical_Profile_Y.ButtonPushedFcn = createCallbackFcn(app, @IJ_Profile, true);
            app.IJ_Vertical_Profile_Y.Icon = 'prot profile.png';
            app.IJ_Vertical_Profile_Y.FontWeight = 'bold';
            app.IJ_Vertical_Profile_Y.FontAngle = 'italic';
            app.IJ_Vertical_Profile_Y.Position = [600 791 97 22];
            app.IJ_Vertical_Profile_Y.Text = 'Profile Y';

            % Create IJ_Horizontal_Profile_X_T
            app.IJ_Horizontal_Profile_X_T = uibutton(app.FijiGUIUIFigure, 'push');
            app.IJ_Horizontal_Profile_X_T.ButtonPushedFcn = createCallbackFcn(app, @IJ_Profile, true);
            app.IJ_Horizontal_Profile_X_T.Icon = 'plot transverse.png';
            app.IJ_Horizontal_Profile_X_T.FontWeight = 'bold';
            app.IJ_Horizontal_Profile_X_T.FontAngle = 'italic';
            app.IJ_Horizontal_Profile_X_T.Position = [600 818 97 22];
            app.IJ_Horizontal_Profile_X_T.Text = 'Profile X';

            % Create IJ_Stack_Int_Profile_Z_T
            app.IJ_Stack_Int_Profile_Z_T = uibutton(app.FijiGUIUIFigure, 'push');
            app.IJ_Stack_Int_Profile_Z_T.ButtonPushedFcn = createCallbackFcn(app, @IJ_Profile, true);
            app.IJ_Stack_Int_Profile_Z_T.Icon = 'plot stack.png';
            app.IJ_Stack_Int_Profile_Z_T.FontWeight = 'bold';
            app.IJ_Stack_Int_Profile_Z_T.FontAngle = 'italic';
            app.IJ_Stack_Int_Profile_Z_T.Position = [600 762 97 22];
            app.IJ_Stack_Int_Profile_Z_T.Text = 'Profile Z';

            % Create IJ_Centre_Profile
            app.IJ_Centre_Profile = uicheckbox(app.FijiGUIUIFigure);
            app.IJ_Centre_Profile.ValueChangedFcn = createCallbackFcn(app, @Centre_Prim_Ax_Profile, true);
            app.IJ_Centre_Profile.Tooltip = {'sets x=0 as the middle point of the X axis (works for line and transverse (now))'};
            app.IJ_Centre_Profile.Text = 'Centre X';
            app.IJ_Centre_Profile.Position = [710 782 69 22];

            % Create Panel_for_baseline_Selection
            app.Panel_for_baseline_Selection = uipanel(app.FijiGUIUIFigure);
            app.Panel_for_baseline_Selection.Tooltip = {'Time or distance cursors for baseline calcution or start end to fitting min-max'};
            app.Panel_for_baseline_Selection.Position = [795 762 100 82];

            % Create Baseline_Min_Label
            app.Baseline_Min_Label = uilabel(app.Panel_for_baseline_Selection);
            app.Baseline_Min_Label.HorizontalAlignment = 'right';
            app.Baseline_Min_Label.Position = [-2 36 33 22];
            app.Baseline_Min_Label.Text = 'MinX';

            % Create Baseline_Min
            app.Baseline_Min = uispinner(app.Panel_for_baseline_Selection);
            app.Baseline_Min.Step = 0.05;
            app.Baseline_Min.ValueChangedFcn = createCallbackFcn(app, @setminyline, true);
            app.Baseline_Min.Position = [39 36 59 20];
            app.Baseline_Min.Value = 0.1;

            % Create Baseline_Max_Label
            app.Baseline_Max_Label = uilabel(app.Panel_for_baseline_Selection);
            app.Baseline_Max_Label.HorizontalAlignment = 'right';
            app.Baseline_Max_Label.Position = [-3 8 36 22];
            app.Baseline_Max_Label.Text = 'MaxX';

            % Create Baseline_Max
            app.Baseline_Max = uispinner(app.Panel_for_baseline_Selection);
            app.Baseline_Max.Step = 0.05;
            app.Baseline_Max.Position = [39 8 59 20];
            app.Baseline_Max.Value = 0.2;

            % Create Baseline_Label
            app.Baseline_Label = uilabel(app.Panel_for_baseline_Selection);
            app.Baseline_Label.FontSize = 13;
            app.Baseline_Label.FontWeight = 'bold';
            app.Baseline_Label.Position = [19 59 59 22];
            app.Baseline_Label.Text = 'Baseline';

            % Create Copy_Data_from_Prim_Ax
            app.Copy_Data_from_Prim_Ax = uibutton(app.FijiGUIUIFigure, 'push');
            app.Copy_Data_from_Prim_Ax.ButtonPushedFcn = createCallbackFcn(app, @Copy_Primary_Axes_Traces, true);
            app.Copy_Data_from_Prim_Ax.Icon = 'Copy Trace.png';
            app.Copy_Data_from_Prim_Ax.Tooltip = {'Copy data to clipboard'};
            app.Copy_Data_from_Prim_Ax.Position = [1076 603 51 30];
            app.Copy_Data_from_Prim_Ax.Text = '';

            % Create TabGroup2
            app.TabGroup2 = uitabgroup(app.FijiGUIUIFigure);
            app.TabGroup2.Position = [546 6 590 397];

            % Create IJMacrosTab_2
            app.IJMacrosTab_2 = uitab(app.TabGroup2);
            app.IJMacrosTab_2.Title = 'IJ Macros';
            app.IJMacrosTab_2.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create MacrotorunTextAreaLabel
            app.MacrotorunTextAreaLabel = uilabel(app.IJMacrosTab_2);
            app.MacrotorunTextAreaLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.MacrotorunTextAreaLabel.HorizontalAlignment = 'right';
            app.MacrotorunTextAreaLabel.FontSize = 15;
            app.MacrotorunTextAreaLabel.Position = [9 344 90 22];
            app.MacrotorunTextAreaLabel.Text = 'Macro to run';

            % Create MacrotorunTextArea
            app.MacrotorunTextArea = uitextarea(app.IJMacrosTab_2);
            app.MacrotorunTextArea.BackgroundColor = [0.9412 0.9412 0.9412];
            app.MacrotorunTextArea.Position = [12 9 352 331];

            % Create RunMacroButton_3
            app.RunMacroButton_3 = uibutton(app.IJMacrosTab_2, 'push');
            app.RunMacroButton_3.ButtonPushedFcn = createCallbackFcn(app, @MacroRun, true);
            app.RunMacroButton_3.FontSize = 16;
            app.RunMacroButton_3.FontWeight = 'bold';
            app.RunMacroButton_3.Position = [369 12 116 32];
            app.RunMacroButton_3.Text = 'Run Macro';

            % Create MacrosListBox_2Label
            app.MacrosListBox_2Label = uilabel(app.IJMacrosTab_2);
            app.MacrosListBox_2Label.BackgroundColor = [0.9412 0.9412 0.9412];
            app.MacrosListBox_2Label.HorizontalAlignment = 'right';
            app.MacrosListBox_2Label.Position = [378 341 45 22];
            app.MacrosListBox_2Label.Text = 'Macros';

            % Create MacrosListBox_2
            app.MacrosListBox_2 = uilistbox(app.IJMacrosTab_2);
            app.MacrosListBox_2.ValueChangedFcn = createCallbackFcn(app, @loadmacro2text, true);
            app.MacrosListBox_2.BackgroundColor = [0.9412 0.9412 0.9412];
            app.MacrosListBox_2.Position = [445 178 136 184];

            % Create RefreshButton_2
            app.RefreshButton_2 = uibutton(app.IJMacrosTab_2, 'push');
            app.RefreshButton_2.ButtonPushedFcn = createCallbackFcn(app, @Refresh_List_of_IJ_Macros, true);
            app.RefreshButton_2.Position = [366 316 77 22];
            app.RefreshButton_2.Text = 'Refresh';

            % Create SaveNewButton
            app.SaveNewButton = uibutton(app.IJMacrosTab_2, 'push');
            app.SaveNewButton.ButtonPushedFcn = createCallbackFcn(app, @Save_new_macro, true);
            app.SaveNewButton.Position = [366 287 76 22];
            app.SaveNewButton.Text = 'Save New';

            % Create MacroEditorButton
            app.MacroEditorButton = uibutton(app.IJMacrosTab_2, 'push');
            app.MacroEditorButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.MacroEditorButton.Position = [366 258 77 22];
            app.MacroEditorButton.Text = 'Macro Editor';

            % Create RecordButton
            app.RecordButton = uibutton(app.IJMacrosTab_2, 'push');
            app.RecordButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.RecordButton.Position = [366 229 77 22];
            app.RecordButton.Text = 'Record';

            % Create PeaksTab
            app.PeaksTab = uitab(app.TabGroup2);
            app.PeaksTab.Title = 'Peaks';
            app.PeaksTab.BackgroundColor = [0.902 0.902 0.902];

            % Create NoPeaksCheckBox
            app.NoPeaksCheckBox = uicheckbox(app.PeaksTab);
            app.NoPeaksCheckBox.Text = 'No.Peaks';
            app.NoPeaksCheckBox.Position = [11 287 74 22];
            app.NoPeaksCheckBox.Value = true;

            % Create ROIminEditFieldLabel
            app.ROIminEditFieldLabel = uilabel(app.PeaksTab);
            app.ROIminEditFieldLabel.HorizontalAlignment = 'right';
            app.ROIminEditFieldLabel.Position = [2 342 46 22];
            app.ROIminEditFieldLabel.Text = 'ROImin';

            % Create ROIminEditField
            app.ROIminEditField = uieditfield(app.PeaksTab, 'numeric');
            app.ROIminEditField.Limits = [0 Inf];
            app.ROIminEditField.Position = [55 342 36 22];
            app.ROIminEditField.Value = 0.2;

            % Create ROImaxEditFieldLabel
            app.ROImaxEditFieldLabel = uilabel(app.PeaksTab);
            app.ROImaxEditFieldLabel.HorizontalAlignment = 'right';
            app.ROImaxEditFieldLabel.Tooltip = {'Enter time window to search for peaks'};
            app.ROImaxEditFieldLabel.Position = [0 314 50 22];
            app.ROImaxEditFieldLabel.Text = 'ROImax';

            % Create ROImaxEditField
            app.ROImaxEditField = uieditfield(app.PeaksTab, 'numeric');
            app.ROImaxEditField.Limits = [0 Inf];
            app.ROImaxEditField.Position = [55 314 36 22];
            app.ROImaxEditField.Value = 0.4;

            % Create peaknodrop
            app.peaknodrop = uidropdown(app.PeaksTab);
            app.peaknodrop.Items = {'1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30'};
            app.peaknodrop.ItemsData = {'1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30'};
            app.peaknodrop.BackgroundColor = [0.902 0.902 0.902];
            app.peaknodrop.Position = [84 287 39 22];
            app.peaknodrop.Value = '4';

            % Create MinPromEditField
            app.MinPromEditField = uieditfield(app.PeaksTab, 'numeric');
            app.MinPromEditField.Position = [132 195 68 22];
            app.MinPromEditField.Value = 3;

            % Create UITable_2
            app.UITable_2 = uitable(app.PeaksTab);
            app.UITable_2.BackgroundColor = [1 1 1;1 1 1;1 1 1];
            app.UITable_2.ColumnName = {'P1'; 'P2'; 'P3'; 'P4'; 'P5'; 'P6'; 'P7'; 'P8'};
            app.UITable_2.ColumnWidth = {50, 50, 50, 50, 50, 50, 50, 'auto'};
            app.UITable_2.RowName = {'Peaks'; 'locs'; 'width'; 'prom'};
            app.UITable_2.ColumnEditable = true;
            app.UITable_2.CellEditCallback = createCallbackFcn(app, @transfer_sucs, true);
            app.UITable_2.ForegroundColor = [0 0 0];
            app.UITable_2.FontName = 'Arial';
            app.UITable_2.FontSize = 11;
            app.UITable_2.Position = [247 190 327 175];

            % Create MinIntervalsEditField
            app.MinIntervalsEditField = uieditfield(app.PeaksTab, 'numeric');
            app.MinIntervalsEditField.Position = [132 226 69 22];
            app.MinIntervalsEditField.Value = 90;

            % Create FilterCheckBox
            app.FilterCheckBox = uicheckbox(app.PeaksTab);
            app.FilterCheckBox.Text = 'Filter';
            app.FilterCheckBox.Position = [107 340 49 22];
            app.FilterCheckBox.Value = true;

            % Create MinWidthEditFieldLabel
            app.MinWidthEditFieldLabel = uilabel(app.PeaksTab);
            app.MinWidthEditFieldLabel.HorizontalAlignment = 'right';
            app.MinWidthEditFieldLabel.Position = [7 164 115 22];
            app.MinWidthEditFieldLabel.Text = 'Minimum Width (ms)';

            % Create MinWidthEditField
            app.MinWidthEditField = uieditfield(app.PeaksTab, 'numeric');
            app.MinWidthEditField.Position = [132 164 68 22];
            app.MinWidthEditField.Value = 5;

            % Create Interval_constr
            app.Interval_constr = uicheckbox(app.PeaksTab);
            app.Interval_constr.Text = '';
            app.Interval_constr.Position = [206 226 25 22];
            app.Interval_constr.Value = true;

            % Create prom_constr
            app.prom_constr = uicheckbox(app.PeaksTab);
            app.prom_constr.Text = '';
            app.prom_constr.Position = [206 195 25 22];
            app.prom_constr.Value = true;

            % Create width_constr
            app.width_constr = uicheckbox(app.PeaksTab);
            app.width_constr.Text = '';
            app.width_constr.Position = [206 164 25 22];
            app.width_constr.Value = true;

            % Create filterSpinner
            app.filterSpinner = uispinner(app.PeaksTab);
            app.filterSpinner.Step = 2;
            app.filterSpinner.Limits = [3 Inf];
            app.filterSpinner.Position = [155 340 61 22];
            app.filterSpinner.Value = 3;

            % Create peaksaButton
            app.peaksaButton = uibutton(app.PeaksTab, 'push');
            app.peaksaButton.ButtonPushedFcn = createCallbackFcn(app, @Callback_to_Add_Peakfind_Data_to_Output, true);
            app.peaksaButton.BackgroundColor = [0.9412 0.9412 0.9412];
            app.peaksaButton.Tooltip = {'Adds detected peaks to temporary datafile displayed in table. '; 'Keyboard Shortcut Key = A'};
            app.peaksaButton.Position = [7 103 98 22];
            app.peaksaButton.Text = '+ peaks (a) ';

            % Create lastpeakszButton
            app.lastpeakszButton = uibutton(app.PeaksTab, 'push');
            app.lastpeakszButton.ButtonPushedFcn = createCallbackFcn(app, @Callback_to_Remove_Peakfind_Data_from_Output, true);
            app.lastpeakszButton.BackgroundColor = [0.9412 0.9412 0.9412];
            app.lastpeakszButton.Tooltip = {'Removes the last added peak data trace. Keyboard shortcut= Z'};
            app.lastpeakszButton.Position = [7 75 98 22];
            app.lastpeakszButton.Text = '- last peaks (z) ';

            % Create SetCurrentDataButton
            app.SetCurrentDataButton = uibutton(app.PeaksTab, 'push');
            app.SetCurrentDataButton.ButtonPushedFcn = createCallbackFcn(app, @Callback_to_send_response_data_to_display, true);
            app.SetCurrentDataButton.BackgroundColor = [0.9412 0.9412 0.9412];
            app.SetCurrentDataButton.Tooltip = {'Once table is complete sends data to OUTPUT variable with bouton number and iGluSnFR prefix'; 'Traces are sent to Data window (in progress)'};
            app.SetCurrentDataButton.Position = [7 26 110 32];
            app.SetCurrentDataButton.Text = 'Set Current Data';

            % Create PositivepeakCheckBox
            app.PositivepeakCheckBox = uicheckbox(app.PeaksTab);
            app.PositivepeakCheckBox.Text = 'Positive peak';
            app.PositivepeakCheckBox.Position = [107 315 93 22];
            app.PositivepeakCheckBox.Value = true;

            % Create EphystimingCheckBox
            app.EphystimingCheckBox = uicheckbox(app.PeaksTab);
            app.EphystimingCheckBox.ValueChangedFcn = createCallbackFcn(app, @Callback_to_Change_Labels_on_Ephys_timing, true);
            app.EphystimingCheckBox.Tooltip = {'Are the Imaging peaks dependent on the ephys peaks?'};
            app.EphystimingCheckBox.Text = 'Ephys timing';
            app.EphystimingCheckBox.FontWeight = 'bold';
            app.EphystimingCheckBox.Position = [136 132 97 22];
            app.EphystimingCheckBox.Value = true;

            % Create ButtonGroup_2
            app.ButtonGroup_2 = uibuttongroup(app.PeaksTab);
            app.ButtonGroup_2.BorderType = 'none';
            app.ButtonGroup_2.BackgroundColor = [0.902 0.902 0.902];
            app.ButtonGroup_2.Position = [4 191 109 30];

            % Create PeakButton
            app.PeakButton = uitogglebutton(app.ButtonGroup_2);
            app.PeakButton.Tooltip = {'If peak decays close to baseline prior to the next'};
            app.PeakButton.Text = 'Peak';
            app.PeakButton.Position = [9 4 45 22];
            app.PeakButton.Value = true;

            % Create PromButton
            app.PromButton = uitogglebutton(app.ButtonGroup_2);
            app.PromButton.Tooltip = {'If peak decay is incomplete prior to next event'};
            app.PromButton.Text = 'Prom';
            app.PromButton.Position = [57 4 48 22];

            % Create Button_15
            app.Button_15 = uibutton(app.PeaksTab, 'push');
            app.Button_15.ButtonPushedFcn = createCallbackFcn(app, @Callback_to_set_Next_Dataitem, true);
            app.Button_15.Icon = 'Down.png';
            app.Button_15.BackgroundColor = [0.9412 0.9412 0.9412];
            app.Button_15.Position = [129 107 46 22];
            app.Button_15.Text = '';

            % Create Button_16
            app.Button_16 = uibutton(app.PeaksTab, 'push');
            app.Button_16.ButtonPushedFcn = createCallbackFcn(app, @Callback_to_set_Previous_Dataitem, true);
            app.Button_16.Icon = 'normoff_icon.png';
            app.Button_16.BackgroundColor = [0.9412 0.9412 0.9412];
            app.Button_16.Position = [181 107 45 22];
            app.Button_16.Text = '';

            % Create FindPeaksqButton_2
            app.FindPeaksqButton_2 = uibutton(app.PeaksTab, 'push');
            app.FindPeaksqButton_2.ButtonPushedFcn = createCallbackFcn(app, @Callback_to_FINDPEAKS_function, true);
            app.FindPeaksqButton_2.BackgroundColor = [0.9412 0.9412 0.9412];
            app.FindPeaksqButton_2.Tooltip = {'Runs Peak finder with selcted options (shortcut key= q)'};
            app.FindPeaksqButton_2.Position = [7 132 97 22];
            app.FindPeaksqButton_2.Text = 'Find Peaks (q)';

            % Create DatafileListBox_2
            app.DatafileListBox_2 = uilistbox(app.PeaksTab);
            app.DatafileListBox_2.FontName = 'Arial';
            app.DatafileListBox_2.FontSize = 11;
            app.DatafileListBox_2.Position = [247 44 327 135];

            % Create APanalysisCheckBox
            app.APanalysisCheckBox = uicheckbox(app.PeaksTab);
            app.APanalysisCheckBox.Text = 'AP analysis';
            app.APanalysisCheckBox.Position = [11 258 85 22];

            % Create epmode
            app.epmode = uiswitch(app.PeaksTab, 'slider');
            app.epmode.Items = {'VC', 'CC'};
            app.epmode.ItemsData = [1 2];
            app.epmode.Position = [173 263 35 15];
            app.epmode.Value = 2;

            % Create MinWidthEditFieldLabel_2
            app.MinWidthEditFieldLabel_2 = uilabel(app.PeaksTab);
            app.MinWidthEditFieldLabel_2.HorizontalAlignment = 'right';
            app.MinWidthEditFieldLabel_2.Position = [4 229 124 22];
            app.MinWidthEditFieldLabel_2.Text = 'Minimum Interval (ms)';

            % Create MinWidthEditFieldLabel_3
            app.MinWidthEditFieldLabel_3 = uilabel(app.PeaksTab);
            app.MinWidthEditFieldLabel_3.HorizontalAlignment = 'right';
            app.MinWidthEditFieldLabel_3.FontWeight = 'bold';
            app.MinWidthEditFieldLabel_3.Position = [105 259 37 22];
            app.MinWidthEditFieldLabel_3.Text = 'Mode';

            % Create SendPeaks2Sp2ImgsButton
            app.SendPeaks2Sp2ImgsButton = uibutton(app.PeaksTab, 'push');
            app.SendPeaks2Sp2ImgsButton.ButtonPushedFcn = createCallbackFcn(app, @sendsp2img, true);
            app.SendPeaks2Sp2ImgsButton.WordWrap = 'on';
            app.SendPeaks2Sp2ImgsButton.BackgroundColor = [0.9412 0.9412 0.9412];
            app.SendPeaks2Sp2ImgsButton.FontWeight = 'bold';
            app.SendPeaks2Sp2ImgsButton.Tooltip = {'Removes the last added peak data trace. Keyboard shortcut= Z'};
            app.SendPeaks2Sp2ImgsButton.Position = [131 64 92 36];
            app.SendPeaks2Sp2ImgsButton.Text = 'Send Peaks 2 Sp2Img (s)';

            % Create Peak_time_pos_window
            app.Peak_time_pos_window = uieditfield(app.PeaksTab, 'numeric');
            app.Peak_time_pos_window.Position = [195 301 48 18];
            app.Peak_time_pos_window.Value = 30;

            % Create MinWidthEditFieldLabel_4
            app.MinWidthEditFieldLabel_4 = uilabel(app.PeaksTab);
            app.MinWidthEditFieldLabel_4.HorizontalAlignment = 'right';
            app.MinWidthEditFieldLabel_4.Position = [129 289 32 22];
            app.MinWidthEditFieldLabel_4.Text = 'dtAP';

            % Create Peak_time_neg_window
            app.Peak_time_neg_window = uieditfield(app.PeaksTab, 'numeric');
            app.Peak_time_neg_window.Position = [195 282 48 18];
            app.Peak_time_neg_window.Value = 10;

            % Create MinWidthEditFieldLabel_5
            app.MinWidthEditFieldLabel_5 = uilabel(app.PeaksTab);
            app.MinWidthEditFieldLabel_5.HorizontalAlignment = 'right';
            app.MinWidthEditFieldLabel_5.Position = [163 299 29 22];
            app.MinWidthEditFieldLabel_5.Text = '+ms';

            % Create MinWidthEditFieldLabel_6
            app.MinWidthEditFieldLabel_6 = uilabel(app.PeaksTab);
            app.MinWidthEditFieldLabel_6.HorizontalAlignment = 'right';
            app.MinWidthEditFieldLabel_6.Position = [167 281 25 22];
            app.MinWidthEditFieldLabel_6.Text = '-ms';

            % Create FFButton
            app.FFButton = uibutton(app.PeaksTab, 'state');
            app.FFButton.ValueChangedFcn = createCallbackFcn(app, @Peakfind_version, true);
            app.FFButton.Text = 'FF';
            app.FFButton.Position = [106 132 24 22];
            app.FFButton.Value = false;

            % Create PeakWindowSpinnerLabel
            app.PeakWindowSpinnerLabel = uilabel(app.PeaksTab);
            app.PeakWindowSpinnerLabel.HorizontalAlignment = 'right';
            app.PeakWindowSpinnerLabel.Position = [246 24 79 22];
            app.PeakWindowSpinnerLabel.Text = 'Peak Window';

            % Create PeakWindowSpinner
            app.PeakWindowSpinner = uispinner(app.PeaksTab);
            app.PeakWindowSpinner.Limits = [5 2000];
            app.PeakWindowSpinner.ValueChangedFcn = createCallbackFcn(app, @testpeaklocs, true);
            app.PeakWindowSpinner.Tag = 'test';
            app.PeakWindowSpinner.Position = [261 3 55 22];
            app.PeakWindowSpinner.Value = 10;

            % Create BaselineOffsetSpinnerLabel
            app.BaselineOffsetSpinnerLabel = uilabel(app.PeaksTab);
            app.BaselineOffsetSpinnerLabel.HorizontalAlignment = 'right';
            app.BaselineOffsetSpinnerLabel.Position = [498 24 87 22];
            app.BaselineOffsetSpinnerLabel.Text = 'Baseline Offset';

            % Create BaselineOffsetSpinner
            app.BaselineOffsetSpinner = uispinner(app.PeaksTab);
            app.BaselineOffsetSpinner.Limits = [0 1000];
            app.BaselineOffsetSpinner.ValueChangedFcn = createCallbackFcn(app, @testpeaklocs, true);
            app.BaselineOffsetSpinner.Tag = 'test';
            app.BaselineOffsetSpinner.Position = [512 4 54 22];
            app.BaselineOffsetSpinner.Value = 3;

            % Create BaselineWindowSpinnerLabel
            app.BaselineWindowSpinnerLabel = uilabel(app.PeaksTab);
            app.BaselineWindowSpinnerLabel.HorizontalAlignment = 'right';
            app.BaselineWindowSpinnerLabel.Position = [398 24 98 22];
            app.BaselineWindowSpinnerLabel.Text = 'Baseline Window';

            % Create BaselineWindowSpinner
            app.BaselineWindowSpinner = uispinner(app.PeaksTab);
            app.BaselineWindowSpinner.Limits = [0 1000];
            app.BaselineWindowSpinner.ValueChangedFcn = createCallbackFcn(app, @testpeaklocs, true);
            app.BaselineWindowSpinner.Tag = 'test';
            app.BaselineWindowSpinner.Position = [416 4 69 22];
            app.BaselineWindowSpinner.Value = 10;

            % Create ResponseTypeDropDownLabel
            app.ResponseTypeDropDownLabel = uilabel(app.PeaksTab);
            app.ResponseTypeDropDownLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ResponseTypeDropDownLabel.HorizontalAlignment = 'right';
            app.ResponseTypeDropDownLabel.Position = [20 2 94 22];
            app.ResponseTypeDropDownLabel.Text = 'Response Type';

            % Create ResponseTypeDropDown
            app.ResponseTypeDropDown = uidropdown(app.PeaksTab);
            app.ResponseTypeDropDown.Items = {'iGlu(V) AP', 'iGlu(S) AP', 'Calcium AP', 'Calcium NMDA', 'iGABASnFR AP', 'iGABASnFR IE'};
            app.ResponseTypeDropDown.ValueChangedFcn = createCallbackFcn(app, @event_select, true);
            app.ResponseTypeDropDown.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ResponseTypeDropDown.Position = [132 2 108 22];
            app.ResponseTypeDropDown.Value = 'iGlu(V) AP';

            % Create Peaks2DataButton
            app.Peaks2DataButton = uibutton(app.PeaksTab, 'push');
            app.Peaks2DataButton.ButtonPushedFcn = createCallbackFcn(app, @Dataitem_from_peaks, true);
            app.Peaks2DataButton.BackgroundColor = [0.9412 0.9412 0.9412];
            app.Peaks2DataButton.Position = [129 30 94 28];
            app.Peaks2DataButton.Text = 'Peaks 2 Data';

            % Create aButton
            app.aButton = uibutton(app.PeaksTab, 'push');
            app.aButton.ButtonPushedFcn = createCallbackFcn(app, @CPbaseline, true);
            app.aButton.VerticalAlignment = 'top';
            app.aButton.BackgroundColor = [0.8 0.8 0.8];
            app.aButton.FontColor = [0.8 0.8 0.8];
            app.aButton.Position = [95 314 8 49];
            app.aButton.Text = 'a';

            % Create AllButton
            app.AllButton = uibutton(app.PeaksTab, 'state');
            app.AllButton.HorizontalAlignment = 'left';
            app.AllButton.Text = 'All';
            app.AllButton.BackgroundColor = [0.9412 0.9412 0.9412];
            app.AllButton.Position = [225 30 21 28];

            % Create PeakOffsetSpinnerLabel
            app.PeakOffsetSpinnerLabel = uilabel(app.PeaksTab);
            app.PeakOffsetSpinnerLabel.HorizontalAlignment = 'right';
            app.PeakOffsetSpinnerLabel.Position = [327 24 68 22];
            app.PeakOffsetSpinnerLabel.Text = 'Peak Offset';

            % Create PeakOffsetSpinner
            app.PeakOffsetSpinner = uispinner(app.PeaksTab);
            app.PeakOffsetSpinner.Limits = [-1000 2000];
            app.PeakOffsetSpinner.ValueChangedFcn = createCallbackFcn(app, @testpeaklocs, true);
            app.PeakOffsetSpinner.Tag = 'test';
            app.PeakOffsetSpinner.Position = [334 3 55 22];
            app.PeakOffsetSpinner.Value = 3;

            % Create FittingTab
            app.FittingTab = uitab(app.TabGroup2);
            app.FittingTab.Tooltip = {''};
            %app.FittingTab.SizeChangedFcn = createCallbackFcn(app, @makelist, true);
            app.FittingTab.Title = 'Fitting';

            % Create NumberDropDown
            app.NumberDropDown = uidropdown(app.FittingTab);
            app.NumberDropDown.Items = {'1', '2', '3', '4', '5', '6', '7'};
            app.NumberDropDown.ItemsData = {'1', '2', '3', '4', '5', '6'};
            app.NumberDropDown.ValueChangedFcn = createCallbackFcn(app, @Callback_to_Select_Number_of_fit_terms, true);
            app.NumberDropDown.Tooltip = {'Number of terms for fit'};
            app.NumberDropDown.Position = [132 338 46 22];
            app.NumberDropDown.Value = '1';

            % Create FWHMButton
            app.FWHMButton = uibutton(app.FittingTab, 'push');
            app.FWHMButton.ButtonPushedFcn = createCallbackFcn(app, @Display_FWHM_of_Gaussian, true);
            app.FWHMButton.Position = [239 313 47 22];
            app.FWHMButton.Text = 'FWHM';

            % Create FWHMEditField
            app.FWHMEditField = uieditfield(app.FittingTab, 'numeric');
            app.FWHMEditField.Tooltip = {'Displays FWHM of gaussian fit'};
            app.FWHMEditField.Position = [294 311 63 22];

            % Create ButtonGroup
            app.ButtonGroup = uibuttongroup(app.FittingTab);
            app.ButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @Callback_to_Select_Fit_Type, true);
            app.ButtonGroup.Tooltip = {'Choose function (needs Curve Fitting toolbox)'};
            app.ButtonGroup.Position = [9 311 123 54];

            % Create GaussButton
            app.GaussButton = uitogglebutton(app.ButtonGroup);
            app.GaussButton.Text = 'Gauss';
            app.GaussButton.Position = [11 28 51 22];
            app.GaussButton.Value = true;

            % Create ExpButton
            app.ExpButton = uitogglebutton(app.ButtonGroup);
            app.ExpButton.Text = 'Exp';
            app.ExpButton.Position = [11 5 51 22];

            % Create LinearButton
            app.LinearButton = uitogglebutton(app.ButtonGroup);
            app.LinearButton.Text = 'Linear';
            app.LinearButton.Position = [66 28 51 22];

            % Create PolyButton
            app.PolyButton = uitogglebutton(app.ButtonGroup);
            app.PolyButton.Text = 'Poly';
            app.PolyButton.Position = [66 5 51 22];

            % Create FitButton
            app.FitButton = uibutton(app.FittingTab, 'push');
            app.FitButton.ButtonPushedFcn = createCallbackFcn(app, @Callback_to_Fit_selected_data, true);
            app.FitButton.FontSize = 18;
            app.FitButton.FontWeight = 'bold';
            app.FitButton.Tooltip = {'start fit'};
            app.FitButton.Position = [373 334 75 29];
            app.FitButton.Text = 'Fit';

            % Create EditField
            app.EditField = uieditfield(app.FittingTab, 'text');
            app.EditField.Position = [184 340 100 22];

            % Create ScaleinputButton
            app.ScaleinputButton = uibutton(app.FittingTab, 'push');
            app.ScaleinputButton.ButtonPushedFcn = createCallbackFcn(app, @Scale_Prim_Ax_Data, true);
            app.ScaleinputButton.Position = [292 340 70 22];
            app.ScaleinputButton.Text = 'Scale input';

            % Create NewDataItemfromFitButton
            app.NewDataItemfromFitButton = uibutton(app.FittingTab, 'push');
            app.NewDataItemfromFitButton.ButtonPushedFcn = createCallbackFcn(app, @Set_new_data, true);
            app.NewDataItemfromFitButton.WordWrap = 'on';
            app.NewDataItemfromFitButton.FontWeight = 'bold';
            app.NewDataItemfromFitButton.Tooltip = {'Clipboard export of Fit profile'};
            app.NewDataItemfromFitButton.Position = [373 278 78 50];
            app.NewDataItemfromFitButton.Text = 'New DataItem from Fit';

            % Create FitParams
            app.FitParams = uitable(app.FittingTab);
            app.FitParams.ColumnName = {'Amp'; 'Cent'; 'Width'};
            app.FitParams.RowName = {};
            app.FitParams.ColumnEditable = true;
            app.FitParams.Position = [14 115 226 185];

            % Create FitBounds
            app.FitBounds = uitable(app.FittingTab);
            app.FitBounds.ColumnName = {'Lower'; 'Upper'};
            app.FitBounds.RowName = {};
            app.FitBounds.ColumnEditable = true;
            app.FitBounds.Position = [15 15 224 96];

            % Create EditParamsButton
            app.EditParamsButton = uibutton(app.FittingTab, 'state');
            app.EditParamsButton.Text = 'Edit Params?';
            app.EditParamsButton.Position = [136 313 100 22];

            % Create CBCoefsButton
            app.CBCoefsButton = uibutton(app.FittingTab, 'push');
            app.CBCoefsButton.Tooltip = {'Clipboard export of Fit profile'};
            app.CBCoefsButton.Position = [458 277 74 23];
            app.CBCoefsButton.Text = 'CB Coefs';

            % Create ReplotButton
            app.ReplotButton = uibutton(app.FittingTab, 'push');
            app.ReplotButton.ButtonPushedFcn = createCallbackFcn(app, @replot, true);
            app.ReplotButton.Position = [373 248 78 25];
            app.ReplotButton.Text = 'Re-plot';

            % Create SelectedDataonlyCheckBox
            app.SelectedDataonlyCheckBox = uicheckbox(app.FittingTab);
            app.SelectedDataonlyCheckBox.Text = 'Selected Data only';
            app.SelectedDataonlyCheckBox.Position = [453 339 123 22];
            app.SelectedDataonlyCheckBox.Value = true;

            % Create PeaksDataTab
            app.PeaksDataTab = uitab(app.TabGroup2);
            app.PeaksDataTab.Title = 'Peaks Data';
            app.PeaksDataTab.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create send2histo
            app.send2histo = uibutton(app.PeaksDataTab, 'push');
            app.send2histo.Position = [7 347 100 22];
            app.send2histo.Text = 'Histograms';

            % Create PlotHistogramsButton
            app.PlotHistogramsButton = uibutton(app.PeaksDataTab, 'push');
            app.PlotHistogramsButton.Position = [9 320 100 22];
            app.PlotHistogramsButton.Text = 'Plot Histograms';

            % Create GetQ_analysisButton
            app.GetQ_analysisButton = uibutton(app.PeaksDataTab, 'push');
            app.GetQ_analysisButton.Position = [7 254 100 22];
            app.GetQ_analysisButton.Text = 'Get Q_analysis';

            % Create Spinner
            app.Spinner = uispinner(app.PeaksDataTab);
            app.Spinner.Step = 0.005;
            app.Spinner.Position = [112 320 63 22];
            app.Spinner.Value = 0.02;

            % Create BinWidthLabel
            app.BinWidthLabel = uilabel(app.PeaksDataTab);
            app.BinWidthLabel.Position = [113 347 57 22];
            app.BinWidthLabel.Text = 'Bin Width';

            % Create OnlySucessesCheckBox
            app.OnlySucessesCheckBox = uicheckbox(app.PeaksDataTab);
            app.OnlySucessesCheckBox.Text = 'Only Sucesses';
            app.OnlySucessesCheckBox.Position = [12 278 102 22];

            % Create CombinedAPsCheckBox
            app.CombinedAPsCheckBox = uicheckbox(app.PeaksDataTab);
            app.CombinedAPsCheckBox.Text = 'Combined APs';
            app.CombinedAPsCheckBox.Position = [12 294 102 22];
            app.CombinedAPsCheckBox.Value = true;

            % Create ResponseDatafileListBoxLabel
            app.ResponseDatafileListBoxLabel = uilabel(app.PeaksDataTab);
            app.ResponseDatafileListBoxLabel.HorizontalAlignment = 'right';
            app.ResponseDatafileListBoxLabel.Position = [42 232 104 22];
            app.ResponseDatafileListBoxLabel.Text = 'Response Datafile';

            % Create ResponseDatafileListBox
            app.ResponseDatafileListBox = uilistbox(app.PeaksDataTab);
            app.ResponseDatafileListBox.ValueChangedFcn = createCallbackFcn(app, @UNUSED_Callback_to_get_Spiral_Mapping_Data, true);
            app.ResponseDatafileListBox.FontName = 'Arial';
            app.ResponseDatafileListBox.FontSize = 11;
            app.ResponseDatafileListBox.Position = [11 23 167 212];

            % Create Copy_table
            app.Copy_table = uibutton(app.PeaksDataTab, 'push');
            app.Copy_table.ButtonPushedFcn = createCallbackFcn(app, @Export_Response_Data_to_Excel_File, true);
            app.Copy_table.Icon = 'excel.png';
            app.Copy_table.Tooltip = {'Exports table to Excel'};
            app.Copy_table.Position = [48 -1 38 24];
            app.Copy_table.Text = '';

            % Create Copy_table_2
            app.Copy_table_2 = uibutton(app.PeaksDataTab, 'push');
            app.Copy_table_2.ButtonPushedFcn = createCallbackFcn(app, @export2text, true);
            app.Copy_table_2.Icon = 'Txt.png';
            app.Copy_table_2.Tooltip = {'Exports table to Excel'};
            app.Copy_table_2.Position = [7 -1 38 24];
            app.Copy_table_2.Text = '';

            % Create SavedataButton
            app.SavedataButton = uibutton(app.PeaksDataTab, 'push');
            app.SavedataButton.ButtonPushedFcn = createCallbackFcn(app, @Callback_to_Save_PeaksData_to_MATfile, true);
            app.SavedataButton.Tooltip = {'Saves current data to .MAT file as variable OUTPUT'; ' First set directory then filename'};
            app.SavedataButton.Position = [117 290 71 22];
            app.SavedataButton.Text = 'Save data';

            % Create LoadDataButton
            app.LoadDataButton = uibutton(app.PeaksDataTab, 'push');
            app.LoadDataButton.ButtonPushedFcn = createCallbackFcn(app, @Callback_to_load_Old_PeakDatafile, true);
            app.LoadDataButton.Tooltip = {'Opens previously recorded data and sends traces to Data window (in working)'};
            app.LoadDataButton.Position = [117 262 67 22];
            app.LoadDataButton.Text = 'Load Data';

            % Create DFFButton
            app.DFFButton = uibutton(app.PeaksDataTab, 'state');
            app.DFFButton.ValueChangedFcn = createCallbackFcn(app, @Callback_to_Toggle_DFF_Display, true);
            app.DFFButton.Tooltip = {'sets displayed trace to Delta F/F (Baseline = T1-T2 cursors TR)'};
            app.DFFButton.Text = 'DF/F';
            app.DFFButton.Position = [480 342 100 22];

            % Create EPthreshEditFieldLabel
            app.EPthreshEditFieldLabel = uilabel(app.FijiGUIUIFigure);
            app.EPthreshEditFieldLabel.HorizontalAlignment = 'right';
            app.EPthreshEditFieldLabel.Position = [1064 481 46 22];
            app.EPthreshEditFieldLabel.Text = 'Thresh.';

            % Create EPthreshEditField
            app.EPthreshEditField = uieditfield(app.FijiGUIUIFigure, 'numeric');
            app.EPthreshEditField.ValueChangedFcn = createCallbackFcn(app, @epeakparams, true);
            app.EPthreshEditField.Tooltip = {'Adjust if Ephys peaks are not detected (xSD) or are incorrectly detected'};
            app.EPthreshEditField.Position = [1111 483 29 22];
            app.EPthreshEditField.Value = 20;

            % Create CurrentDataFilesPanel
            app.CurrentDataFilesPanel = uipanel(app.FijiGUIUIFigure);
            app.CurrentDataFilesPanel.Title = 'Current Data Files';
            app.CurrentDataFilesPanel.Position = [9 326 418 514];

            % Create ListBox_2
            app.ListBox_2 = uilistbox(app.CurrentDataFilesPanel);
            app.ListBox_2.Items = {};
            app.ListBox_2.ValueChangedFcn = createCallbackFcn(app, @Dataitem_Listbox_Callback, true);
            app.ListBox_2.FontName = 'Arial';
            app.ListBox_2.FontSize = 11;
            app.ListBox_2.DoubleClickedFcn = createCallbackFcn(app, @Dataitem_Listbox_Callback, true);
            app.ListBox_2.Position = [6 38 401 452];
            app.ListBox_2.Value = {};
            app.ListBox_2.Tooltip = {'List of dataitems shows here'};
            app.ListBox_2.Multiselect = "on";

            % Create Commentedit
            app.Commentedit = uieditfield(app.CurrentDataFilesPanel, 'text');
            app.Commentedit.ValueChangedFcn = createCallbackFcn(app, @Edit_Datafile_Comment, true);
            app.Commentedit.FontSize = 11;
            app.Commentedit.Position = [6 10 400 22];
            app.Commentedit.Tooltip = {'Type here to edit individual dataitem comments'};

            % Create MultiselectCheckBox
            app.MultiselectCheckBox = uicheckbox(app.FijiGUIUIFigure);
            app.MultiselectCheckBox.ValueChangedFcn = createCallbackFcn(app, @Set_Multiselect_on_UIListbox, true);
            app.MultiselectCheckBox.Tooltip = {'Allows selection of more than one file'};
            app.MultiselectCheckBox.Text = 'Multiselect';
            app.MultiselectCheckBox.Position = [440 741 79 22];
            app.MultiselectCheckBox.Value = true;

            % Create Display1ImageCheckBox
            app.Display1ImageCheckBox = uicheckbox(app.FijiGUIUIFigure);
            app.Display1ImageCheckBox.Tooltip = {'Closes the current image file when the next is opened'};
            app.Display1ImageCheckBox.Text = 'Display 1 Image';
            app.Display1ImageCheckBox.Position = [439 761 108 22];
            app.Display1ImageCheckBox.Value = true;

            % Create FijiROImanagerButton
            app.FijiROImanagerButton = uibutton(app.FijiGUIUIFigure, 'push');
            app.FijiROImanagerButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.FijiROImanagerButton.Position = [436 646 106 22];
            app.FijiROImanagerButton.Text = 'Fiji ROI manager';
            app.FijiROImanagerButton.Tooltip = {'Opens the Fiji ROI manager'};

            % Create Panel_3
            app.Panel_3 = uipanel(app.FijiGUIUIFigure);
            app.Panel_3.Position = [432 789 124 52];

            % Create ImViewButton
            app.ImViewButton = uibutton(app.Panel_3, 'push');
            app.ImViewButton.ButtonPushedFcn = createCallbackFcn(app, @ImView, true);
            app.ImViewButton.Position = [2 25 50 22];
            app.ImViewButton.Text = 'ImView';

            % Create SaveButton
            app.SaveButton = uibutton(app.Panel_3, 'push');
            app.SaveButton.ButtonPushedFcn = createCallbackFcn(app, @Operations_on_Dataitem_list, true);
            app.SaveButton.Position = [2 1 37 22];
            app.SaveButton.Text = 'Save';

            % Create SaveSelButton
            app.SaveSelButton = uibutton(app.Panel_3, 'push');
            app.SaveSelButton.ButtonPushedFcn = createCallbackFcn(app, @Operations_on_Dataitem_list, true);
            app.SaveSelButton.Position = [41 1 57 22];
            app.SaveSelButton.Text = 'Save Sel';

            % Create DelButton
            app.DelButton = uibutton(app.Panel_3, 'push');
            app.DelButton.ButtonPushedFcn = createCallbackFcn(app, @Operations_on_Dataitem_list, true);
            app.DelButton.Position = [53 25 32 22];
            app.DelButton.Text = 'Del';

            % Create CpButton
            app.CpButton = uibutton(app.Panel_3, 'push');
            app.CpButton.ButtonPushedFcn = createCallbackFcn(app, @Operations_on_Dataitem_list, true);
            app.CpButton.Position = [88 25 31 22];
            app.CpButton.Text = 'Cp';

            % Create RButton
            app.RButton = uibutton(app.Panel_3, 'push');
            app.RButton.ButtonPushedFcn = createCallbackFcn(app, @Edit_Datafile_Comment, true);
            app.RButton.Position = [100 1 21 22];
            app.RButton.Text = 'R';

            % Create ArraynumberButtonGroup
            app.ArraynumberButtonGroup = uibuttongroup(app.FijiGUIUIFigure);
            app.ArraynumberButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @selectedcursor, true);
            app.ArraynumberButtonGroup.Title = 'Array number';
            app.ArraynumberButtonGroup.Position = [959 803 86 40];

            % Create ArrayButton3
            app.ArrayButton3 = uitogglebutton(app.ArraynumberButtonGroup);
            app.ArrayButton3.IconAlignment = 'center';
            app.ArrayButton3.Text = '3';
            app.ArrayButton3.FontSize = 10;
            app.ArrayButton3.Position = [34 3 17 17];

            % Create ArrayButton2
            app.ArrayButton2 = uitogglebutton(app.ArraynumberButtonGroup);
            app.ArrayButton2.IconAlignment = 'center';
            app.ArrayButton2.Text = '2';
            app.ArrayButton2.FontSize = 10;
            app.ArrayButton2.Position = [17 3 17 17];

            % Create ArrayButton1
            app.ArrayButton1 = uitogglebutton(app.ArraynumberButtonGroup);
            app.ArrayButton1.IconAlignment = 'center';
            app.ArrayButton1.Text = '1';
            app.ArrayButton1.FontSize = 10;
            app.ArrayButton1.Position = [0 3 17 17];
            app.ArrayButton1.Value = true;

            % Create ArrayButton4
            app.ArrayButton4 = uitogglebutton(app.ArraynumberButtonGroup);
            app.ArrayButton4.IconAlignment = 'center';
            app.ArrayButton4.Text = '4';
            app.ArrayButton4.FontSize = 10;
            app.ArrayButton4.Position = [51 3 17 17];

            % Create ArrayButton5
            app.ArrayButton5 = uitogglebutton(app.ArraynumberButtonGroup);
            app.ArrayButton5.IconAlignment = 'center';
            app.ArrayButton5.Text = '5';
            app.ArrayButton5.FontSize = 10;
            app.ArrayButton5.Position = [68 3 17 17];

            % Create MinSpinnerLabel
            app.MinSpinnerLabel = uilabel(app.FijiGUIUIFigure);
            app.MinSpinnerLabel.HorizontalAlignment = 'right';
            app.MinSpinnerLabel.Position = [954 781 25 22];
            app.MinSpinnerLabel.Text = 'Min';

            % Create MinSpinner
            app.MinSpinner = uispinner(app.FijiGUIUIFigure);
            app.MinSpinner.Step = 0.05;
            app.MinSpinner.ValueChangedFcn = createCallbackFcn(app, @setcursor, true);
            app.MinSpinner.Position = [987 782 60 20];
            app.MinSpinner.Value = 0.1;

            % Create MaxSpinnerLabel
            app.MaxSpinnerLabel = uilabel(app.FijiGUIUIFigure);
            app.MaxSpinnerLabel.HorizontalAlignment = 'right';
            app.MaxSpinnerLabel.Position = [955 759 28 22];
            app.MaxSpinnerLabel.Text = 'Max';

            % Create MaxSpinner
            app.MaxSpinner = uispinner(app.FijiGUIUIFigure);
            app.MaxSpinner.Step = 0.05;
            app.MaxSpinner.ValueChangedFcn = createCallbackFcn(app, @setcursor, true);
            app.MaxSpinner.Position = [986 759 60 20];
            app.MaxSpinner.Value = 0.2;

            % Create SetCursorButton
            app.SetCursorButton = uibutton(app.FijiGUIUIFigure, 'push');
            app.SetCursorButton.ButtonPushedFcn = createCallbackFcn(app, @setcursor, true);
            app.SetCursorButton.FontSize = 11;
            app.SetCursorButton.Position = [1050 817 78 26];
            app.SetCursorButton.Text = 'Set Cursor';

            % Create add_next_Array_entry
            app.add_next_Array_entry = uibutton(app.FijiGUIUIFigure, 'push');
            app.add_next_Array_entry.ButtonPushedFcn = createCallbackFcn(app, @addarray, true);
            app.add_next_Array_entry.Position = [1051 763 45 20];
            app.add_next_Array_entry.Text = '+Array';

            % Create clcButton
            app.clcButton = uibutton(app.FijiGUIUIFigure, 'push');
            app.clcButton.ButtonPushedFcn = createCallbackFcn(app, @cleararray, true);
            app.clcButton.Position = [1099 763 28 19];
            app.clcButton.Text = 'clc';

            % Create EPWidthEditField
            app.EPWidthEditField = uieditfield(app.FijiGUIUIFigure, 'numeric');
            app.EPWidthEditField.Limits = [0 Inf];
            app.EPWidthEditField.Tooltip = {'Adjust if Ephys peaks are not detected (value in ms) or are incorrectly detected'};
            app.EPWidthEditField.Position = [1111 460 29 22];
            app.EPWidthEditField.Value = 5;

            % Create EPIntEditFieldLabel
            app.EPIntEditFieldLabel = uilabel(app.FijiGUIUIFigure);
            app.EPIntEditFieldLabel.HorizontalAlignment = 'right';
            app.EPIntEditFieldLabel.Position = [1084 438 25 22];
            app.EPIntEditFieldLabel.Text = 'Int.';

            % Create EPWidthEditFieldLabel
            app.EPWidthEditFieldLabel = uilabel(app.FijiGUIUIFigure);
            app.EPWidthEditFieldLabel.HorizontalAlignment = 'right';
            app.EPWidthEditFieldLabel.Position = [1068 460 36 22];
            app.EPWidthEditFieldLabel.Text = 'Width';

            % Create TestButton
            app.TestButton = uibutton(app.FijiGUIUIFigure, 'push');
            app.TestButton.ButtonPushedFcn = createCallbackFcn(app, @Callback_to_FINDPEAKS_function, true);
            app.TestButton.Position = [1086 412 55 22];
            app.TestButton.Text = 'Test';

            % Create EPIntEditField
            app.EPIntEditField = uieditfield(app.FijiGUIUIFigure, 'numeric');
            app.EPIntEditField.Tooltip = {'Adjust if Ephys peaks are not detected (xSD) or are incorrectly detected'};
            app.EPIntEditField.Position = [1111 438 29 22];
            app.EPIntEditField.Value = 40;

            % Create DATAFILEVIEWButton
            app.DATAFILEVIEWButton = uibutton(app.FijiGUIUIFigure, 'push');
            app.DATAFILEVIEWButton.ButtonPushedFcn = createCallbackFcn(app, @opendata, true);
            app.DATAFILEVIEWButton.FontName = 'Arial';
            app.DATAFILEVIEWButton.FontWeight = 'bold';
            app.DATAFILEVIEWButton.Position = [435 553 107 32];
            app.DATAFILEVIEWButton.Text = 'DATAFILE VIEW';

            % Create ZoomInX
            app.ZoomInX = uibutton(app.FijiGUIUIFigure, 'push');
            app.ZoomInX.ButtonPushedFcn = createCallbackFcn(app, @zoominX, true);
            app.ZoomInX.FontName = 'Arial';
            app.ZoomInX.Position = [1081 514 20 20];
            app.ZoomInX.Text = '+';

            % Create ZoomOutX
            app.ZoomOutX = uibutton(app.FijiGUIUIFigure, 'push');
            app.ZoomOutX.ButtonPushedFcn = createCallbackFcn(app, @zoomoutX, true);
            app.ZoomOutX.FontName = 'Arial';
            app.ZoomOutX.Position = [1103 514 20 20];
            app.ZoomOutX.Text = '-';

            % Create Selction_Edit_Field
            app.Selction_Edit_Field = uieditfield(app.FijiGUIUIFigure, 'text');
            app.Selction_Edit_Field.ValueChangedFcn = createCallbackFcn(app, @select_dataitems, true);
            app.Selction_Edit_Field.Position = [439 676 64 22];

            % Create NumButton
            app.NumButton = uibutton(app.FijiGUIUIFigure, 'state');
            app.NumButton.Text = 'Num';
            app.NumButton.Position = [506 676 35 22];

            % Create ShowCursorsButton
            app.ShowCursorsButton = uibutton(app.FijiGUIUIFigure, 'state');
            app.ShowCursorsButton.ValueChangedFcn = createCallbackFcn(app, @show_cursors, true);
            app.ShowCursorsButton.Text = 'Show Cursors';
            app.ShowCursorsButton.FontSize = 11;
            app.ShowCursorsButton.Position = [1051 789 77 22];

            % Create LeftX
            app.LeftX = uibutton(app.FijiGUIUIFigure, 'push');
            app.LeftX.ButtonPushedFcn = createCallbackFcn(app, @shiftLeft, true);
            app.LeftX.Icon = 'Left.png';
            app.LeftX.IconAlignment = 'center';
            app.LeftX.FontName = 'Arial';
            app.LeftX.Position = [1081 533 20 20];
            app.LeftX.Text = '';

            % Create RightY
            app.RightY = uibutton(app.FijiGUIUIFigure, 'push');
            app.RightY.ButtonPushedFcn = createCallbackFcn(app, @shift_Right, true);
            app.RightY.Icon = 'right.png';
            app.RightY.IconAlignment = 'center';
            app.RightY.FontName = 'Arial';
            app.RightY.Position = [1103 534 20 20];
            app.RightY.Text = '';

            % Create ZoomInY
            app.ZoomInY = uibutton(app.FijiGUIUIFigure, 'push');
            app.ZoomInY.ButtonPushedFcn = createCallbackFcn(app, @zoominY, true);
            app.ZoomInY.FontName = 'Arial';
            app.ZoomInY.Position = [1080 578 20 20];
            app.ZoomInY.Text = '+';

            % Create ZoomOutY
            app.ZoomOutY = uibutton(app.FijiGUIUIFigure, 'push');
            app.ZoomOutY.ButtonPushedFcn = createCallbackFcn(app, @zoomoutY, true);
            app.ZoomOutY.FontName = 'Arial';
            app.ZoomOutY.Position = [1080 559 20 20];
            app.ZoomOutY.Text = '-';

            % Create UpY
            app.UpY = uibutton(app.FijiGUIUIFigure, 'push');
            app.UpY.ButtonPushedFcn = createCallbackFcn(app, @shiftax_up, true);
            app.UpY.Icon = 'normoff_icon.png';
            app.UpY.IconAlignment = 'center';
            app.UpY.FontName = 'Arial';
            app.UpY.Position = [1103 578 20 20];
            app.UpY.Text = {''; ''};

            % Create DownY
            app.DownY = uibutton(app.FijiGUIUIFigure, 'push');
            app.DownY.ButtonPushedFcn = createCallbackFcn(app, @Shift_ax_down, true);
            app.DownY.Icon = 'Down.png';
            app.DownY.IconAlignment = 'center';
            app.DownY.FontName = 'Arial';
            app.DownY.Position = [1103 559 20 20];
            app.DownY.Text = '';

            % Create PlotSelectedCheckBox
            app.PlotSelectedCheckBox = uicheckbox(app.FijiGUIUIFigure);
            app.PlotSelectedCheckBox.Text = 'Plot Selected ';
            app.PlotSelectedCheckBox.Position = [440 721 96 22];
            app.PlotSelectedCheckBox.Value = 1;

            % Create Plot_Panel
            app.Plot_Panel = uipanel(app.FijiGUIUIFigure);
            app.Plot_Panel.Position = [546 412 520 333];

            % Create PrimAx_info_label
            app.PrimAx_info_label = uilabel(app.FijiGUIUIFigure);
            app.PrimAx_info_label.FontName = 'Arial';
            app.PrimAx_info_label.FontSize = 10;
            app.PrimAx_info_label.Position = [541 744 332 22];
            app.PrimAx_info_label.Text = 'Label2';

            % Create SecAx_info_label
            app.SecAx_info_label = uilabel(app.FijiGUIUIFigure);
            app.SecAx_info_label.FontName = 'Arial';
            app.SecAx_info_label.FontSize = 10;
            app.SecAx_info_label.Position = [934 742 133 22];
            app.SecAx_info_label.Text = 'Label2';

            % Create TabGroup3
            app.TabGroup3 = uitabgroup(app.FijiGUIUIFigure);
            app.TabGroup3.Position = [8 5 532 319];

            % Create ImageJShortcutsTab
            app.ImageJShortcutsTab = uitab(app.TabGroup3);
            app.ImageJShortcutsTab.Title = 'ImageJ Shortcuts';

            % Create Button_Smooth
            app.Button_Smooth = uibutton(app.ImageJShortcutsTab, 'push');
            app.Button_Smooth.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.Button_Smooth.FontWeight = 'bold';
            app.Button_Smooth.Position = [12 217 79 20];
            app.Button_Smooth.Text = 'Smooth';

            % Create SharpenButton
            app.SharpenButton = uibutton(app.ImageJShortcutsTab, 'push');
            app.SharpenButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.SharpenButton.FontWeight = 'bold';
            app.SharpenButton.Position = [98 217 79 20];
            app.SharpenButton.Text = 'Sharpen';

            % Create GreenButton
            app.GreenButton = uibutton(app.ImageJShortcutsTab, 'push');
            app.GreenButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.GreenButton.Icon = 'green.png';
            app.GreenButton.HorizontalAlignment = 'left';
            app.GreenButton.Position = [13 164 100 22];
            app.GreenButton.Text = 'Green';

            % Create RedHotButton
            app.RedHotButton = uibutton(app.ImageJShortcutsTab, 'push');
            app.RedHotButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.RedHotButton.Icon = 'red.png';
            app.RedHotButton.HorizontalAlignment = 'left';
            app.RedHotButton.Position = [114 139 100 22];
            app.RedHotButton.Text = 'Red Hot';

            % Create ViridisButton
            app.ViridisButton = uibutton(app.ImageJShortcutsTab, 'push');
            app.ViridisButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.ViridisButton.Icon = 'mpl-viridis.png';
            app.ViridisButton.HorizontalAlignment = 'left';
            app.ViridisButton.Position = [114 116 100 22];
            app.ViridisButton.Text = 'Viridis';

            % Create MagentaHotButton
            app.MagentaHotButton = uibutton(app.ImageJShortcutsTab, 'push');
            app.MagentaHotButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.MagentaHotButton.Icon = 'Magenta Hot.png';
            app.MagentaHotButton.Position = [12 116 100 22];
            app.MagentaHotButton.Text = 'Magenta Hot';

            % Create LUToptionsLabel
            app.LUToptionsLabel = uilabel(app.ImageJShortcutsTab);
            app.LUToptionsLabel.VerticalAlignment = 'top';
            app.LUToptionsLabel.FontSize = 14;
            app.LUToptionsLabel.FontAngle = 'italic';
            app.LUToptionsLabel.Position = [65 188 88 19];
            app.LUToptionsLabel.Text = 'LUT options';

            % Create InfernoButton
            app.InfernoButton = uibutton(app.ImageJShortcutsTab, 'push');
            app.InfernoButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.InfernoButton.Icon = 'mpl-inferno.png';
            app.InfernoButton.HorizontalAlignment = 'left';
            app.InfernoButton.Position = [12 139 100 22];
            app.InfernoButton.Text = 'Inferno';

            % Create RedButton
            app.RedButton = uibutton(app.ImageJShortcutsTab, 'push');
            app.RedButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.RedButton.Icon = 'redred.png';
            app.RedButton.HorizontalAlignment = 'left';
            app.RedButton.Position = [114 163 100 22];
            app.RedButton.Text = 'Red';

            % Create AutocontrastButton
            app.AutocontrastButton = uibutton(app.ImageJShortcutsTab, 'push');
            app.AutocontrastButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.AutocontrastButton.FontWeight = 'bold';
            app.AutocontrastButton.Position = [190 217 87 20];
            app.AutocontrastButton.Text = 'Auto contrast';

            % Create Button
            app.Button = uibutton(app.ImageJShortcutsTab, 'push');
            app.Button.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.Button.Icon = 'clock.png';
            app.Button.Position = [302 133 26 23];
            app.Button.Text = '';

            % Create Button_2
            app.Button_2 = uibutton(app.ImageJShortcutsTab, 'push');
            app.Button_2.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.Button_2.Icon = 'cclock.png';
            app.Button_2.Position = [363 133 26 23];
            app.Button_2.Text = '';

            % Create Button_3
            app.Button_3 = uibutton(app.ImageJShortcutsTab, 'push');
            app.Button_3.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.Button_3.Icon = 'out.png';
            app.Button_3.Position = [223 129 33 22];
            app.Button_3.Text = '';

            % Create Button_4
            app.Button_4 = uibutton(app.ImageJShortcutsTab, 'push');
            app.Button_4.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.Button_4.Icon = 'in.png';
            app.Button_4.Position = [221 155 35 26];
            app.Button_4.Text = '';

            % Create Button_6
            app.Button_6 = uibutton(app.ImageJShortcutsTab, 'push');
            app.Button_6.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.Button_6.Icon = 'flipvert.png';
            app.Button_6.Position = [302 189 26 23];
            app.Button_6.Text = '';

            % Create Button_7
            app.Button_7 = uibutton(app.ImageJShortcutsTab, 'push');
            app.Button_7.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.Button_7.Icon = 'rotate.png';
            app.Button_7.Position = [259 129 26 23];
            app.Button_7.Text = '';

            % Create Button_5
            app.Button_5 = uibutton(app.ImageJShortcutsTab, 'push');
            app.Button_5.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.Button_5.Icon = 'fliphor.png';
            app.Button_5.Position = [363 189 26 23];
            app.Button_5.Text = '';

            % Create CropButton
            app.CropButton = uibutton(app.ImageJShortcutsTab, 'push');
            app.CropButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.CropButton.Position = [294 231 77 19];
            app.CropButton.Text = 'Crop';

            % Create CopyButton
            app.CopyButton = uibutton(app.ImageJShortcutsTab, 'push');
            app.CopyButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.CopyButton.Position = [77 255 64 24];
            app.CopyButton.Text = 'Copy';

            % Create CopysystemButton
            app.CopysystemButton = uibutton(app.ImageJShortcutsTab, 'push');
            app.CopysystemButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.CopysystemButton.Position = [142 255 90 24];
            app.CopysystemButton.Text = 'Copy (system)';

            % Create PasteButton
            app.PasteButton = uibutton(app.ImageJShortcutsTab, 'push');
            app.PasteButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.PasteButton.Position = [235 255 58 24];
            app.PasteButton.Text = 'Paste';

            % Create DuplicateButton
            app.DuplicateButton = uibutton(app.ImageJShortcutsTab, 'push');
            app.DuplicateButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.DuplicateButton.Position = [294 255 76 24];
            app.DuplicateButton.Text = 'Duplicate';

            % Create SelectallButton
            app.SelectallButton = uibutton(app.ImageJShortcutsTab, 'push');
            app.SelectallButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.SelectallButton.Position = [7 256 68 22];
            app.SelectallButton.Text = 'Select all';

            % Create AverageStackButton
            app.AverageStackButton = uibutton(app.ImageJShortcutsTab, 'push');
            app.AverageStackButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.AverageStackButton.Position = [122 44 100 22];
            app.AverageStackButton.Text = 'Average Stack';

            % Create Stack2ImagesButton
            app.Stack2ImagesButton = uibutton(app.ImageJShortcutsTab, 'push');
            app.Stack2ImagesButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.Stack2ImagesButton.Position = [14 44 100 22];
            app.Stack2ImagesButton.Text = 'Stack2Images';

            % Create Images2StackButton
            app.Images2StackButton = uibutton(app.ImageJShortcutsTab, 'push');
            app.Images2StackButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.Images2StackButton.Position = [14 15 100 22];
            app.Images2StackButton.Text = 'Images2Stack';

            % Create DProjectButton
            app.DProjectButton = uibutton(app.ImageJShortcutsTab, 'push');
            app.DProjectButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.DProjectButton.Position = [122 15 100 22];
            app.DProjectButton.Text = '3D-Project';

            % Create ResliceStackButton
            app.ResliceStackButton = uibutton(app.ImageJShortcutsTab, 'push');
            app.ResliceStackButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.ResliceStackButton.Position = [14 73 100 22];
            app.ResliceStackButton.Text = 'Reslice Stack';

            % Create Switch
            app.Switch = uiswitch(app.ImageJShortcutsTab, 'slider');
            app.Switch.Items = {'Green', 'Red'};
            app.Switch.ItemsData = {'1', '2'};
            app.Switch.ValueChangedFcn = createCallbackFcn(app, @Callback_to_toggle_Channel_Displayed, true);
            app.Switch.Tooltip = {'sets plotted data to green channel or red'};
            app.Switch.Position = [445 7 45 20];
            app.Switch.Value = '1';

            % Create OpenFilesinFijiPanel
            app.OpenFilesinFijiPanel = uipanel(app.ImageJShortcutsTab);
            app.OpenFilesinFijiPanel.Title = 'Open Files in Fiji';
            app.OpenFilesinFijiPanel.Position = [415 62 110 228];

            % Create BKGGButton
            app.BKGGButton = uibutton(app.OpenFilesinFijiPanel, 'push');
            app.BKGGButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Open_Background_Green, true);
            app.BKGGButton.Tooltip = {'Open Femtonics Green Background Channel'};
            app.BKGGButton.Position = [8 53 63 22];
            app.BKGGButton.Text = 'BKG-G';

            % Create BKGRButton
            app.BKGRButton = uibutton(app.OpenFilesinFijiPanel, 'push');
            app.BKGRButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Open_Background_Red, true);
            app.BKGRButton.Tooltip = {'Open Femtonics Red Background channel'};
            app.BKGRButton.Position = [8 27 63 22];
            app.BKGRButton.Text = 'BKG-R';

            % Create ChanGButton
            app.ChanGButton = uibutton(app.OpenFilesinFijiPanel, 'push');
            app.ChanGButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_open_Green_or_Red_Channel, true);
            app.ChanGButton.Tooltip = {'Open Green Channel'};
            app.ChanGButton.Position = [8 184 63 22];
            app.ChanGButton.Text = 'Chan G';

            % Create ChanRButton
            app.ChanRButton = uibutton(app.OpenFilesinFijiPanel, 'push');
            app.ChanRButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_open_Green_or_Red_Channel, true);
            app.ChanRButton.Tooltip = {'Open Red Channel'};
            app.ChanRButton.Position = [8 159 63 22];
            app.ChanRButton.Text = 'Chan R';

            % Create TiRButton
            app.TiRButton = uibutton(app.OpenFilesinFijiPanel, 'push');
            app.TiRButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_open_TiR_channel, true);
            app.TiRButton.Tooltip = {'Open transmitted light channel'};
            app.TiRButton.Position = [8 80 63 22];
            app.TiRButton.Text = 'TiR';

            % Create Greencheck
            app.Greencheck = uicheckbox(app.OpenFilesinFijiPanel);
            app.Greencheck.Text = '';
            app.Greencheck.Position = [79 184 25 22];

            % Create Redcheck
            app.Redcheck = uicheckbox(app.OpenFilesinFijiPanel);
            app.Redcheck.Text = '';
            app.Redcheck.Position = [79 159 25 22];

            % Create TiRcheck
            app.TiRcheck = uicheckbox(app.OpenFilesinFijiPanel);
            app.TiRcheck.Text = '';
            app.TiRcheck.Position = [79 80 25 22];

            % Create BKGcheck
            app.BKGcheck = uicheckbox(app.OpenFilesinFijiPanel);
            app.BKGcheck.Text = '';
            app.BKGcheck.Position = [79 54 25 22];

            % Create BKGRceck
            app.BKGRceck = uicheckbox(app.OpenFilesinFijiPanel);
            app.BKGRceck.Text = '';
            app.BKGRceck.Position = [79 28 25 22];

            % Create ScXButton
            app.ScXButton = uibutton(app.OpenFilesinFijiPanel, 'push');
            app.ScXButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_open_Green_or_Red_Channel, true);
            app.ScXButton.Tooltip = {'Open transmitted light channel'};
            app.ScXButton.Position = [9 133 63 22];
            app.ScXButton.Text = 'ScX';

            % Create TiRcheck_2
            app.TiRcheck_2 = uicheckbox(app.OpenFilesinFijiPanel);
            app.TiRcheck_2.Text = '';
            app.TiRcheck_2.Position = [79 133 25 22];

            % Create ScYButton
            app.ScYButton = uibutton(app.OpenFilesinFijiPanel, 'push');
            app.ScYButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_open_Green_or_Red_Channel, true);
            app.ScYButton.Tooltip = {'Open transmitted light channel'};
            app.ScYButton.Position = [9 107 63 22];
            app.ScYButton.Text = 'ScY';

            % Create TiRcheck_3
            app.TiRcheck_3 = uicheckbox(app.OpenFilesinFijiPanel);
            app.TiRcheck_3.Text = '';
            app.TiRcheck_3.Position = [79 107 25 22];

            % Create AllMsButton
            app.AllMsButton = uibutton(app.OpenFilesinFijiPanel, 'push');
            app.AllMsButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_open_Green_or_Red_Channel, true);
            app.AllMsButton.Tooltip = {'Open Green Channel'};
            app.AllMsButton.Position = [9 2 63 22];
            app.AllMsButton.Text = 'All M''s';

            % Create BKGRceck_2
            app.BKGRceck_2 = uicheckbox(app.OpenFilesinFijiPanel);
            app.BKGRceck_2.Text = '';
            app.BKGRceck_2.Position = [79 4 25 22];

            % Create UPimg
            app.UPimg = uibutton(app.ImageJShortcutsTab, 'push');
            app.UPimg.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.UPimg.Icon = 'normoff_icon.png';
            app.UPimg.Position = [332 195 28 26];
            app.UPimg.Text = '';

            % Create RightImg
            app.RightImg = uibutton(app.ImageJShortcutsTab, 'push');
            app.RightImg.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.RightImg.Icon = 'right.png';
            app.RightImg.Position = [372 158 26 28];
            app.RightImg.Text = '';

            % Create LeftImg
            app.LeftImg = uibutton(app.ImageJShortcutsTab, 'push');
            app.LeftImg.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.LeftImg.Icon = 'Left.png';
            app.LeftImg.Position = [294 158 26 28];
            app.LeftImg.Text = '';

            % Create DownImg
            app.DownImg = uibutton(app.ImageJShortcutsTab, 'push');
            app.DownImg.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.DownImg.Icon = 'Down.png';
            app.DownImg.Position = [331 124 28 26];
            app.DownImg.Text = '';

            % Create DistanceSet
            app.DistanceSet = uieditfield(app.ImageJShortcutsTab, 'numeric');
            app.DistanceSet.HorizontalAlignment = 'center';
            app.DistanceSet.Position = [329 161 32 22];
            app.DistanceSet.Value = 1;

            % Create StackControlLabel
            app.StackControlLabel = uilabel(app.ImageJShortcutsTab);
            app.StackControlLabel.HorizontalAlignment = 'right';
            app.StackControlLabel.Position = [231 52 78 22];
            app.StackControlLabel.Text = 'Stack Control';

            % Create StackControlSlider
            app.StackControlSlider = uislider(app.ImageJShortcutsTab);
            app.StackControlSlider.ValueChangingFcn = createCallbackFcn(app, @setslice, true);
            app.StackControlSlider.Position = [239 46 150 3];

            % Create AdjustBCButton
            app.AdjustBCButton = uibutton(app.ImageJShortcutsTab, 'push');
            app.AdjustBCButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.AdjustBCButton.FontWeight = 'bold';
            app.AdjustBCButton.Position = [190 190 87 22];
            app.AdjustBCButton.Text = 'Adjust B/C';

            % Create Normalisation
            app.Normalisation = uidropdown(app.ImageJShortcutsTab);
            app.Normalisation.Items = {'DF/F0', 'DF0', 'A.U', 'DF/R', 'F/R'};
            app.Normalisation.ItemsData = {'1', '2', '0', '3', '4'};
            app.Normalisation.ValueChangedFcn = createCallbackFcn(app, @Callback_to_Toggle_DFF_Display, true);
            app.Normalisation.FontWeight = 'bold';
            app.Normalisation.Position = [447 36 77 22];
            app.Normalisation.Value = '0';

            % Create PrimAx_info_label_2
            app.PrimAx_info_label_2 = uilabel(app.ImageJShortcutsTab);
            app.PrimAx_info_label_2.FontName = 'Arial';
            app.PrimAx_info_label_2.FontSize = 14;
            app.PrimAx_info_label_2.FontWeight = 'bold';
            app.PrimAx_info_label_2.Position = [407 36 47 22];
            app.PrimAx_info_label_2.Text = 'Units';

            % Create PlottingTab
            app.PlottingTab = uitab(app.TabGroup3);
            app.PlottingTab.Title = 'Plotting';

            % Create YDropDown
            app.YDropDown = uidropdown(app.PlottingTab);
            app.YDropDown.Items = {'Mean', 'Min', 'Max', 'Std', 'Sum'};
            app.YDropDown.ItemsData = {'1', '2', '3', '4', '5'};
            app.YDropDown.ValueChangedFcn = createCallbackFcn(app, @plotarray, true);
            app.YDropDown.FontColor = [0.149 0.149 0.149];
            app.YDropDown.Position = [376 168 63 22];
            app.YDropDown.Value = '1';

            % Create XDropDown
            app.XDropDown = uidropdown(app.PlottingTab);
            app.XDropDown.Items = {'Trial', 'Mean', 'Sum', 'Min', 'Max', 'Std'};
            app.XDropDown.ItemsData = {'1', '2', '3', '4', '5', '6', ''};
            app.XDropDown.FontColor = [0.149 0.149 0.149];
            app.XDropDown.Position = [259 169 63 22];
            app.XDropDown.Value = '1';

            % Create Arraytable
            app.Arraytable = uitable(app.PlottingTab);
            app.Arraytable.ColumnName = {'Mean'; 'Min'; 'Max'; 'Std'; 'Sum'};
            app.Arraytable.ColumnWidth = {50, 50, 50, 50, 50};
            app.Arraytable.RowName = {'1'; '2'; '3'; '4'; '5'};
            app.Arraytable.Position = [261 31 262 135];

            % Create CopyDataButton
            app.CopyDataButton = uibutton(app.PlottingTab, 'push');
            app.CopyDataButton.ButtonPushedFcn = createCallbackFcn(app, @Export_Response_Data_to_Excel_File, true);
            app.CopyDataButton.Icon = 'content_copy_black_96x96.png';
            app.CopyDataButton.Position = [493 168 31 22];
            app.CopyDataButton.Text = '';

            % Create NumberDropDown_2
            app.NumberDropDown_2 = uidropdown(app.PlottingTab);
            app.NumberDropDown_2.Items = {'1', '2', '3', '4', '5'};
            app.NumberDropDown_2.ItemsData = {'1', '2', '3', '4', '5'};
            app.NumberDropDown_2.ValueChangedFcn = createCallbackFcn(app, @change_array_plotted, true);
            app.NumberDropDown_2.Tooltip = {'Number of terms for fit'};
            app.NumberDropDown_2.Position = [325 169 46 22];
            app.NumberDropDown_2.Value = '1';

            % Create Array_Number_DropDown
            app.Array_Number_DropDown = uidropdown(app.PlottingTab);
            app.Array_Number_DropDown.Items = {'1', '2', '3', '4', '5'};
            app.Array_Number_DropDown.ItemsData = {'1', '2', '3', '4', '5'};
            app.Array_Number_DropDown.ValueChangedFcn = createCallbackFcn(app, @plotarray, true);
            app.Array_Number_DropDown.Tooltip = {'Number of terms for fit'};
            app.Array_Number_DropDown.Position = [443 169 46 22];
            app.Array_Number_DropDown.Value = '1';

            % Create VariableLabel
            app.VariableLabel = uilabel(app.PlottingTab);
            app.VariableLabel.Position = [266 189 49 22];
            app.VariableLabel.Text = 'Variable';

            % Create VariableLabel_2
            app.VariableLabel_2 = uilabel(app.PlottingTab);
            app.VariableLabel_2.Position = [384 185 49 22];
            app.VariableLabel_2.Text = 'Variable';

            % Create ArrayLabel_2
            app.ArrayLabel_2 = uilabel(app.PlottingTab);
            app.ArrayLabel_2.Position = [332 189 34 22];
            app.ArrayLabel_2.Text = 'Array';

            % Create ArrayLabel
            app.ArrayLabel = uilabel(app.PlottingTab);
            app.ArrayLabel.Position = [451 186 34 22];
            app.ArrayLabel.Text = 'Array';

            % Create Panel_2
            app.Panel_2 = uipanel(app.PlottingTab);
            app.Panel_2.Position = [5 7 251 280];

            % Create DeleteLastButton
            app.DeleteLastButton = uibutton(app.PlottingTab, 'push');
            app.DeleteLastButton.ButtonPushedFcn = createCallbackFcn(app, @delete_last_row, true);
            app.DeleteLastButton.Position = [365 5 76 22];
            app.DeleteLastButton.Text = 'Delete Last';

            % Create CopyTrace
            app.CopyTrace = uibutton(app.PlottingTab, 'push');
            app.CopyTrace.ButtonPushedFcn = createCallbackFcn(app, @copyTraces, true);
            app.CopyTrace.Icon = 'Copy Trace.png';
            app.CopyTrace.Position = [266 5 49 22];
            app.CopyTrace.Text = '';

            % Create AddButton
            app.AddButton = uibutton(app.PlottingTab, 'push');
            app.AddButton.ButtonPushedFcn = createCallbackFcn(app, @Add_traces, true);
            app.AddButton.Position = [319 5 41 22];
            app.AddButton.Text = 'Add';

            % Create LoadButton
            app.LoadButton = uibutton(app.PlottingTab, 'push');
            app.LoadButton.ButtonPushedFcn = createCallbackFcn(app, @opendatafile, true);
            app.LoadButton.Position = [488 5 41 22];
            app.LoadButton.Text = 'Load';

            % Create Copy_table_3
            app.Copy_table_3 = uibutton(app.PlottingTab, 'push');
            app.Copy_table_3.ButtonPushedFcn = createCallbackFcn(app, @Export_Response_Data_to_Excel_File, true);
            app.Copy_table_3.Icon = 'excel.png';
            app.Copy_table_3.Tooltip = {'Exports table to Excel'};
            app.Copy_table_3.Position = [493 194 31 24];
            app.Copy_table_3.Text = '';

            % Create AutoAddCheckBox
            app.AutoAddCheckBox = uicheckbox(app.PlottingTab);
            app.AutoAddCheckBox.Text = 'Auto Add';
            app.AutoAddCheckBox.Position = [262 209 71 22];

            % Create PeakDataStore
            app.PeakDataStore = uitable(app.PlottingTab);
            app.PeakDataStore.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.PeakDataStore.RowName = {};
            app.PeakDataStore.Position = [266 234 261 54];

            % Create SaveButton_2
            app.SaveButton_2 = uibutton(app.PlottingTab, 'push');
            app.SaveButton_2.ButtonPushedFcn = createCallbackFcn(app, @Save_Event_Table, true);
            app.SaveButton_2.Position = [446 5 43 22];
            app.SaveButton_2.Text = 'Save';

            % Create PeakMapsTab
            app.PeakMapsTab = uitab(app.TabGroup3);
            app.PeakMapsTab.Title = 'Peak Maps';

            % Create UGMapsPanel
            app.UGMapsPanel = uipanel(app.PeakMapsTab);
            app.UGMapsPanel.Title = 'UG Maps';
            app.UGMapsPanel.Position = [6 36 234 251];

            % Create URMapsPanel
            app.URMapsPanel = uipanel(app.PeakMapsTab);
            app.URMapsPanel.Title = 'UR Maps';
            app.URMapsPanel.Position = [245 35 234 251];

            % Create DropDown
            app.DropDown = uidropdown(app.PeakMapsTab);
            app.DropDown.Items = {'DF/F0', 'DF0', 'F', 'F/Fbase', 'DF/R', 'F/R'};
            app.DropDown.Position = [105 11 70 18];
            app.DropDown.Value = 'DF/F0';

            % Create NormalisationLabel
            app.NormalisationLabel = uilabel(app.PeakMapsTab);
            app.NormalisationLabel.FontSize = 14;
            app.NormalisationLabel.Position = [12 9 91 22];
            app.NormalisationLabel.Text = 'Normalisation';

            % Create LocalisationCheckBox
            app.LocalisationCheckBox = uicheckbox(app.PeakMapsTab);
            app.LocalisationCheckBox.Text = 'Localisation';
            app.LocalisationCheckBox.WordWrap = 'on';
            app.LocalisationCheckBox.Position = [186 7 81 22];

            % Create Copy_Data_from_Prim_Ax_2
            app.Copy_Data_from_Prim_Ax_2 = uibutton(app.PeakMapsTab, 'push');
            app.Copy_Data_from_Prim_Ax_2.ButtonPushedFcn = createCallbackFcn(app, @exportmaps, true);
            app.Copy_Data_from_Prim_Ax_2.Icon = 'Copy Trace.png';
            app.Copy_Data_from_Prim_Ax_2.Tooltip = {'Copy data to clipboard'};
            app.Copy_Data_from_Prim_Ax_2.Position = [283 3 49 29];
            app.Copy_Data_from_Prim_Ax_2.Text = '';

            % Create StatisticsTab
            app.StatisticsTab = uitab(app.TabGroup3);
            app.StatisticsTab.Title = 'Statistics';

            % Create VariablesTable
            app.VariablesTable = uitable(app.StatisticsTab);
            app.VariablesTable.ColumnName = {'Amplitude'; 'Width'; 'Centre'; 'Min'; 'Max'; 'Set'};
            app.VariablesTable.ColumnWidth = {80, 80, 80, 80, 80, 80};
            app.VariablesTable.RowName = {'1;2;3;4;5;6'};
            app.VariablesTable.ColumnEditable = [true true true true true false];
            app.VariablesTable.CellEditCallback = createCallbackFcn(app, @editVariableTable, true);
            app.VariablesTable.CellSelectionCallback = createCallbackFcn(app, @select_data2_var, true);
            app.VariablesTable.Tag = 'VarTable';
            app.VariablesTable.FontName = 'Arial';
            app.VariablesTable.Position = [19 35 481 248];

            % Create LoadfromStatButton
            app.LoadfromStatButton = uibutton(app.StatisticsTab, 'push');
            app.LoadfromStatButton.ButtonPushedFcn = createCallbackFcn(app, @load_statistic, true);
            app.LoadfromStatButton.Position = [24 7 100 22];
            app.LoadfromStatButton.Text = 'Load from Stat';

            % Create StatisticDropDownLabel
            app.StatisticDropDownLabel = uilabel(app.StatisticsTab);
            app.StatisticDropDownLabel.HorizontalAlignment = 'right';
            app.StatisticDropDownLabel.Position = [130 8 48 22];
            app.StatisticDropDownLabel.Text = 'Statistic';

            % Create StatisticDropDown
            app.StatisticDropDown = uidropdown(app.StatisticsTab);
            app.StatisticDropDown.Position = [193 8 100 22];

            % Create Copy_table_4
            app.Copy_table_4 = uibutton(app.StatisticsTab, 'push');
            app.Copy_table_4.ButtonPushedFcn = createCallbackFcn(app, @export_statistic, true);
            app.Copy_table_4.Tooltip = {'Exports table to Excel'};
            app.Copy_table_4.Position = [296 9 50 21];
            app.Copy_table_4.Text = 'Export';

            % Create Prim_Select
            app.Prim_Select = uibutton(app.FijiGUIUIFigure, 'state');
            app.Prim_Select.ValueChangedFcn = createCallbackFcn(app, @SetChan, true);
            app.Prim_Select.Text = '1';
            app.Prim_Select.Position = [1067 682 27 22];

            % Create Aux_select
            app.Aux_select = uibutton(app.FijiGUIUIFigure, 'state');
            app.Aux_select.ValueChangedFcn = createCallbackFcn(app, @SetChan, true);
            app.Aux_select.Text = '2';
            app.Aux_select.Position = [1094 682 27 22];

            % Create OperationDropDownLabel
            app.OperationDropDownLabel = uilabel(app.FijiGUIUIFigure);
            app.OperationDropDownLabel.HorizontalAlignment = 'right';
            app.OperationDropDownLabel.Position = [1069 729 58 22];
            app.OperationDropDownLabel.Text = 'Operation';

            % Create OperationDropDown
            app.OperationDropDown = uidropdown(app.FijiGUIUIFigure);
            app.OperationDropDown.Items = {'Filter', 'Copy2Clip', 'Normalise', 'SetTLimits', 'CropX/T', 'CropX/T-Peak', 'Histogram', 'Deconv iGlu', 'Diff 1', 'Diff 2', 'aaLS Smooth', 'DF/F', 'DF', '-Baseline', 'Maths', 'Undo', 'Export Graphics', 'Concatenate', 'Traces2Origin', 'Mat2Origin', '50Hz'};
            app.OperationDropDown.Position = [1068 708 76 22];
            app.OperationDropDown.Value = 'Filter';

            % Create Calculate
            app.Calculate = uibutton(app.FijiGUIUIFigure, 'push');
            app.Calculate.ButtonPushedFcn = createCallbackFcn(app, @Operation, true);
            app.Calculate.Icon = 'calculator_icon.png';
            app.Calculate.IconAlignment = 'center';
            app.Calculate.Position = [1124 682 22 22];
            app.Calculate.Text = '';

            % Create New_Trace_Data
            app.New_Trace_Data = uibutton(app.FijiGUIUIFigure, 'push');
            app.New_Trace_Data.ButtonPushedFcn = createCallbackFcn(app, @Set_new_data, true);
            app.New_Trace_Data.IconAlignment = 'center';
            app.New_Trace_Data.FontName = 'Arial';
            app.New_Trace_Data.Position = [1069 656 75 22];
            app.New_Trace_Data.Text = 'New Trace';

            % Create PrimListen
            app.PrimListen = uibutton(app.FijiGUIUIFigure, 'state');
            app.PrimListen.Text = 'L';
            app.PrimListen.Position = [1124 579 20 20];

            % Create AuxListener
            app.AuxListener = uibutton(app.FijiGUIUIFigure, 'state');
            app.AuxListener.Text = 'L';
            app.AuxListener.Position = [1124 534 20 20];

            % Create ROIsListBoxLabel
            app.ROIsListBoxLabel = uilabel(app.FijiGUIUIFigure);
            app.ROIsListBoxLabel.HorizontalAlignment = 'right';
            app.ROIsListBoxLabel.FontWeight = 'bold';
            app.ROIsListBoxLabel.Position = [441 487 84 22];
            app.ROIsListBoxLabel.Text = 'ROI Selection';

            % Create ROIsListBox
            app.ROIsListBox = uilistbox(app.FijiGUIUIFigure);
            %Change this ValueChangedFcN to the same as Listbox_2?
            app.ROIsListBox.ValueChangedFcn = createCallbackFcn(app, @Callback_to_select_Femtonics_ROI_to_Display, true);
            app.ROIsListBox.Tooltip = {'Choose femtonics line scan ROI'; ' will not work in all cases if multiple line patterns are present'};
            app.ROIsListBox.Position = [436 333 106 149];

            % Create PeakfindShorcutsOffButton
            app.PeakfindShorcutsOffButton = uibutton(app.FijiGUIUIFigure, 'state');
            app.PeakfindShorcutsOffButton.ValueChangedFcn = createCallbackFcn(app, @Peakfind_shorcuts, true);
            app.PeakfindShorcutsOffButton.Text = 'Peakfind Keyboard Shorcuts :ON';
            app.PeakfindShorcutsOffButton.WordWrap = 'on';
            app.PeakfindShorcutsOffButton.Position = [438 589 104 51];

            % Create FindDataitemsLabel
            app.FindDataitemsLabel = uilabel(app.FijiGUIUIFigure);
            app.FindDataitemsLabel.FontWeight = 'bold';
            app.FindDataitemsLabel.Position = [438 695 92 22];
            app.FindDataitemsLabel.Text = 'Find Dataitems';

            % Create Button_27
            app.Button_27 = uibutton(app.FijiGUIUIFigure, 'push');
            app.Button_27.ButtonPushedFcn = createCallbackFcn(app, @CPbaseline, true);
            app.Button_27.Icon = 'Set Baseline2.png';
            app.Button_27.IconAlignment = 'center';
            app.Button_27.FontSize = 11;
            app.Button_27.FontColor = [0.8 0.8 0.8];
            app.Button_27.Tooltip = {'Set baseline (F0 period) from Brush Data'};
            app.Button_27.Position = [901 806 42 36];
            app.Button_27.Text = '';

            % Create Prim_Brush
            app.Prim_Brush = uibutton(app.FijiGUIUIFigure, 'push');
            app.Prim_Brush.ButtonPushedFcn = createCallbackFcn(app, @Brush_prim, true);
            app.Prim_Brush.Icon = 'Databrush.png';
            app.Prim_Brush.VerticalAlignment = 'top';
            app.Prim_Brush.FontName = 'Arial';
            app.Prim_Brush.FontSize = 11;
            app.Prim_Brush.Tooltip = {'Start Databrush '};
            app.Prim_Brush.Position = [903 764 42 36];
            app.Prim_Brush.Text = '';

            % Create ClearSessionButton
            app.ClearSessionButton = uibutton(app.FijiGUIUIFigure, 'push');
            app.ClearSessionButton.ButtonPushedFcn = createCallbackFcn(app, @Clear_Session, true);
            app.ClearSessionButton.FontName = 'Arial';
            app.ClearSessionButton.Position = [434 514 107 32];
            app.ClearSessionButton.Text = 'Clear Session';

            % Create FijiProfileButton
            app.FijiProfileButton = uibutton(app.FijiGUIUIFigure, 'push');
            app.FijiProfileButton.ButtonPushedFcn = createCallbackFcn(app, @IJ_Shortcuts, true);
            app.FijiProfileButton.Icon = 'plot stack.png';
            app.FijiProfileButton.FontWeight = 'bold';
            app.FijiProfileButton.FontAngle = 'italic';
            app.FijiProfileButton.Position = [700 762 89 22];
            app.FijiProfileButton.Text = 'Fiji Profile';

            % Create RefreshButton_3
            app.RefreshButton_3 = uibutton(app.FijiGUIUIFigure, 'push');
            app.RefreshButton_3.ButtonPushedFcn = createCallbackFcn(app, @Dataitem_Listbox_Callback, true);
            app.RefreshButton_3.IconAlignment = 'center';
            app.RefreshButton_3.VerticalAlignment = 'top';
            app.RefreshButton_3.FontSize = 10;
            app.RefreshButton_3.Position = [1069 636 75 18];
            app.RefreshButton_3.Text = 'Refresh';

            % Create Holdlimits
            app.Holdlimits = uibutton(app.FijiGUIUIFigure, 'state');
            app.Holdlimits.ValueChangedFcn = createCallbackFcn(app, @fix_lims, true);
            app.Holdlimits.Text = 'H';
            app.Holdlimits.Position = [1124 558 20 20];

             % Create NButton
            app.NButton = uibutton(app.FijiGUIUIFigure, 'state');
            app.NButton.Tooltip = {'If Selected any Profile will generate new ImData item'};
            app.NButton.IconAlignment = 'top';
            app.NButton.Text = 'N';
            app.NButton.Position = [764 805 27 23];
            app.NButton.Value = true;

            % Create DataItemListMenu
            app.DataItemListMenu = uicontextmenu(app.FijiGUIUIFigure);

            % Create TransfertonewfileMenu
            app.TransfertonewfileMenu = uimenu(app.DataItemListMenu);
            app.TransfertonewfileMenu.MenuSelectedFcn = createCallbackFcn(app, @transfer, true);
            app.TransfertonewfileMenu.Text = 'Transfer to new file';

            % Create LoadFGUIfileMenu
%             app.LoadFGUIfileMenu = uimenu(app.DataItemListMenu);
%             app.LoadFGUIfileMenu.MenuSelectedFcn = createCallbackFcn(app, @loadFGUI, true);
%             app.LoadFGUIfileMenu.Text = 'Load .FGUI file';

            % Create LoadMESMenu
            app.LoadMESMenu = uimenu(app.DataItemListMenu);
            app.LoadMESMenu.MenuSelectedFcn = createCallbackFcn(app, @LoadMES_as_Objarray, true);
            app.LoadMESMenu.Text = 'Import Data Files';

            % Create LoadImageFilesMenu
%             app.LoadImageFilesMenu = uimenu(app.DataItemListMenu);
%             app.LoadImageFilesMenu.Text = 'Load Image Files ';
%             app.LoadImageFilesMenu.MenuSelectedFcn = createCallbackFcn(app, @LoadMES_as_Objarray, true);

            % Create DatafilesfromClipboardMenu
            app.DatafilesfromClipboardMenu = uimenu(app.DataItemListMenu);
            app.DatafilesfromClipboardMenu.Text = 'Datafiles from Clipboard';

            % Create New_Data_From_Clipboard
            app.New_Data_From_Clipboard = uimenu(app.DatafilesfromClipboardMenu);
            app.New_Data_From_Clipboard.MenuSelectedFcn = createCallbackFcn(app, @clipboard_XT_import, true);
            app.New_Data_From_Clipboard.Text = 'New';

            % Create SaveAllMenu
            app.SaveAllMenu = uimenu(app.DataItemListMenu);
            app.SaveAllMenu.MenuSelectedFcn = createCallbackFcn(app, @Operations_on_Dataitem_list, true);
            app.SaveAllMenu.Separator = 'on';
            app.SaveAllMenu.Text = 'Save All';

            % Create SaveSelectedMenu
            app.SaveSelectedMenu = uimenu(app.DataItemListMenu);
            app.SaveSelectedMenu.MenuSelectedFcn = createCallbackFcn(app, @Operations_on_Dataitem_list, true);
            app.SaveSelectedMenu.Text = 'Save Selected';

            % Create DeleteSelectedMenu
            app.DeleteSelectedMenu = uimenu(app.DataItemListMenu);
            app.DeleteSelectedMenu.MenuSelectedFcn = createCallbackFcn(app, @Operations_on_Dataitem_list, true);
            app.DeleteSelectedMenu.Separator = 'on';
            app.DeleteSelectedMenu.Text = 'Delete Selected';

            % Create CopySelectedMenu
            app.CopySelectedMenu = uimenu(app.DataItemListMenu);
            app.CopySelectedMenu.MenuSelectedFcn = createCallbackFcn(app, @Operations_on_Dataitem_list, true);
            app.CopySelectedMenu.Text = 'Copy Selected';

            % Create EditCommentsMenu
            app.EditCommentsMenu = uimenu(app.DataItemListMenu);
            app.EditCommentsMenu.MenuSelectedFcn = createCallbackFcn(app, @Edit_Datafile_Comment, true);
            app.EditCommentsMenu.Separator = 'on';
            app.EditCommentsMenu.Text = 'Edit Comments';

            % Create AppendFGUIMenu
            app.AppendFGUIMenu = uimenu(app.DataItemListMenu);
            app.AppendFGUIMenu.MenuSelectedFcn = createCallbackFcn(app, @Append_FGUI_file, true);
            app.AppendFGUIMenu.Text = 'Append .FGUI';

            % Create AdddataMenu
            app.AdddataMenu = uimenu(app.DataItemListMenu);
            app.AdddataMenu.Text = 'Add data';

            % Create ScanXYMenu
            app.ScanXYMenu = uimenu(app.AdddataMenu);
            app.ScanXYMenu.Text = 'ScanX/Y';

            % Create EPhysMenu
            app.EPhysMenu = uimenu(app.AdddataMenu);
            app.EPhysMenu.Text = 'EPhys';

            % Assign app.DataItemListMenu
            app.ListBox_2.ContextMenu = app.DataItemListMenu;

            % Create ContextMenu2
            app.ContextMenu2 = uicontextmenu(app.FijiGUIUIFigure);

            % Create AutoReplotMenu
            app.AutoReplotMenu = uimenu(app.ContextMenu2);
            app.AutoReplotMenu.Text = 'Auto-Replot';

            % Assign app.ContextMenu2
            app.Button_27.ContextMenu = app.ContextMenu2;

            % Create ContextMenu3
            app.ContextMenu3 = uicontextmenu(app.FijiGUIUIFigure);

            % Create ExporttoExcelMenu
            app.ExporttoExcelMenu = uimenu(app.ContextMenu3);
            app.ExporttoExcelMenu.Text = 'Export to Excel';

            % Create ExporttoClipboardMenu
            app.ExporttoClipboardMenu = uimenu(app.ContextMenu3);
            app.ExporttoClipboardMenu.Text = 'Export to Clipboard';

            % Create SaveTableasmatMenu
            app.SaveTableasmatMenu = uimenu(app.ContextMenu3);
            app.SaveTableasmatMenu.MenuSelectedFcn = createCallbackFcn(app, @Save_Event_Table, true);
            app.SaveTableasmatMenu.Text = 'Save Table as .mat';

            % Create SaveHignlightedasPointDataMenu
            app.SaveHignlightedasPointDataMenu = uimenu(app.ContextMenu3);
            app.SaveHignlightedasPointDataMenu.Text = 'Save Hignlighted as Point Data';

            % Create NewMenu
            app.NewMenu = uimenu(app.SaveHignlightedasPointDataMenu);
            app.NewMenu.Text = 'New';
            app.NewMenu.MenuSelectedFcn = createCallbackFcn(app, @new_points, true);

            % Assign app.ContextMenu3
            app.Arraytable.ContextMenu = app.ContextMenu3;
            app.CopyDataButton.ContextMenu = app.ContextMenu3;
           
            % Create ContextMenu4
            app.ContextMenu4 = uicontextmenu(app.FijiGUIUIFigure);

            % Create ClearDataMenu
            app.ClearDataMenu = uimenu(app.ContextMenu4);
            app.ClearDataMenu.MenuSelectedFcn = createCallbackFcn(app, @Peakfind_Data, true);
            app.ClearDataMenu.Text = 'Clear Data';

            % Create CopyDataMenu
            app.CopyDataMenu = uimenu(app.ContextMenu4);
            app.CopyDataMenu.Text = 'Copy Data';

            % Assign app.ContextMenu4
            app.UITable_2.ContextMenu = app.ContextMenu4;

            % Create ContextMenu5
            app.ContextMenu5 = uicontextmenu(app.FijiGUIUIFigure);

            % Create ExportColumnMenu
            app.ExportColumnMenu = uimenu(app.ContextMenu5);
            app.ExportColumnMenu.Text = 'Export Column';

            % Create ExcelMenu
            app.ExcelMenu = uimenu(app.ExportColumnMenu);
            app.ExcelMenu.Text = 'Excel';

            % Create OriginMenu
            app.OriginMenu = uimenu(app.ExportColumnMenu);
            app.OriginMenu.MenuSelectedFcn = createCallbackFcn(app, @exportstat, true);
            app.OriginMenu.Text = 'Origin';

            % Create ExportTableMenu
            app.ExportTableMenu = uimenu(app.ContextMenu5);
            app.ExportTableMenu.Text = 'Export Table';

            % Create matMenu
            app.matMenu = uimenu(app.ExportTableMenu);
            app.matMenu.MenuSelectedFcn = createCallbackFcn(app, @exportallStats, true);
            app.matMenu.Text = '.mat';

            % Create OriginMenu_2
            app.OriginMenu_2 = uimenu(app.ExportTableMenu);
            app.OriginMenu_2.Text = 'Origin';

            % Create WorkspaceMenu
            app.WorkspaceMenu = uimenu(app.ExportTableMenu);
            app.WorkspaceMenu.Text = 'Workspace';

            % Show the figure after all components are created
            app.FijiGUIUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Fiji_GUI_2Px_2022b_m

            runningApp = getRunningApp(app);

            % Check for running singleton app
            if isempty(runningApp)

                % Create UIFigure and components
                createComponents(app)

                % Register the app with App Designer
                registerApp(app, app.FijiGUIUIFigure)

                % Execute the startup function
                runStartupFcn(app, @startupFcn)
            else

                % Focus the running singleton app
                figure(runningApp.FijiGUIUIFigure)

                app = runningApp;
            end

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.FijiGUIUIFigure)
        end
    end
end