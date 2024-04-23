classdef ImData < dynamicprops
    properties (Access = public)
        Version
        ROIobj
        comment
        Time
        Index
        ParentIdx
        source
        UG
        UR
        TiR
        Ch3Data
        Ch4Data
        Units
        LineFreq
        STAT
        Ca_FLIM
        FRET_FLIM
        EventData
        RawDataFile
        x_pixel_size
        y_pixel_size
        x_pixel_num
        y_pixel_num
        Displayed_Frame
        linetime
        Channel
        posinfo
        protocol
        points
        FoldedFrameInfo
        FF4Dinfo
        scanline
        samples
        XData
        bkgTiR
        file
        bkgx_pixel_size
        bkgy_pixel_size
        bkgtIRraw
        ephysplot
        Z_frame_step
        z_pixel_size
        z_pixel_num
        is4D
        bkgUG
        ScX
        ScY
        Aux1XData
        TimeDim
        YData
        ZData
        TData
        measureXOrigin
        measureYOrigin
        DepthDim
        XDim
        YDim
        tauDim
        bkgy_origin
        bkgx_origin
        bkgy_size
        bkgx_size
        bkgXData
        bkgYData
        tauData
        Aux2XData
        Aux3XData
        Aux4XData
        Aux3
        Aux4
        eXData
        bkgUR
        Height
        Aux1
        Aux2
        tIRraw
        predScX
        predScY
        TypeList
        SubtypeList
        Parent
    end

    properties (SetObservable)
        Type % testing listener on properties
        Subtype
    end
    %% Construct the complex fields in ImData
    methods (Static)
        function obj = ImData
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%     ImData object definition. %%construct from MES.  NOT WORKING JUST
            %%%     COPIED, one day I might make it work
            %%%
            %%%     Container for Combined Imaging and Electrophysiology experimental data in FIJI-GUI...
            %%%     ,contains various methods used in the GUI and properties retaining to each experimental measurement.
            %%%
            %%%     Best suited for line scan 2P imaging data containing multiple data types
            %%%
            %%%     Use example multiplexed iGluSnFR/Calcium imaging method of Jensen et.al. 2019:
            %%%     i.e. Image measurements from spiral X-T linescans
            %%%     Main Data Properties:
            %%%                         UG:Generally used for 'Primary' Green Channel Data
            %%%                         UR:Generally used for 'Secondary' Red Channel Data
            %%%                         TiR:Generally used for Transmitted Light Channel Data
            %%%                         Ch3Data: Not really used yet but cound be for
            %%%                         associated FLIM
            %%%                         Ch4Data: Not really used yet but cound be for
            %%%                         associated FLIM
            %%%                         ScX : Galvo Scanner feedback co-ordinates X
            %%%                         dimension (Microns)
            %%%                         ScY : Galvo Scanner feedback co-ordinates Y
            %%%                         dimension (Microns)
            %%%                         predScX : Galvo Scanner input (predicted) co-ordinates X
            %%%                         dimension (Microns)
            %%%                         predScY : Galvo Scanner input (predicted) co-ordinates Y
            %%%                         dimension (Microns)
            %%%                         scanline : carried over from Femtonics but
            %%%                         edited, contains data on prediced scanlines and
            %%%                         Femtonics ROIs
            %%%                         XData(Microns),TData (Seconds),YData,ZData,tauData:  All represent
            %%%                         dimension values associated with image data
            %%%                         x_pixel_num,y_pixel_num,x_pixel_size,y_pixel_size,linetime:
            %%%                         carried over from Femtonics data represent deltaX,deltaY,deltaT...
            %%%                         Aux1,Aux2...: Electrophysiology data from Microscope(Femtonics)
            %%%                         Can be replaced with Axon data by operations in
            %%%                         GUI (to be integrated one day)
            %%%                         eXData:  Electrophysiology Time Data
            %%%                         XDim,YDim,TDim...: The data dimension
            %%%                         associated with X-Y, time, lifetime, depth
            %%%                         bkgUG,bkgUR,bkgTiR:  2D images representing the
            %%%                         background data (single frame scan immediately prior
            %%%                         to linescan or Frame scan time series)
            %%%                         bkgXData,bkgYData: as XData,YData... but of the
            %%%                         background image
            %%%
            %%%      Main Data Units: Seconds, Microns, Intensity a.u
            %%%
            %%%      Measurement Metadata:
            %%%                         IMPORTANT-
            %%%                         comment: comment associated with measurement
            %%%                         (Lab notes) can be edited in GUI individually
            %%%                         or in series automatically
            %%%
            %%%                         CRITICAL-
            %%%                         Type,file: References to the data type:  Line Scan='Line2',
            %%%                         Frame Scan ='FF', ZStack= 'XY', others need to check
            %%%
            %%%                         CRITICAL-
            %%%                         SubType, Important for how data is processes,
            %%%                         needs defining and documenting better
            %%%                         source: 'MES' only really in use,
            %%%                         'TIFF','FIMAS'?
            %%%
            %%%                         Date, Time: Datetime variables for dates
            %%%
            %%%                         Index,ParentIdx: Index of measurement number
            %%%                         Units : Table Variable containing description
            %%%                         of dimension units
            %%%                         STAT: Unused, but could contain info on
            %%%                         features of the Data, event times, amplitudes,
            %%%                         widths, etc. of gaussians in data
            %%%                         Ca_FLIM: Ideally is this could contain the Ca2+
            %%%                         FLIM data associated with the measurement,
            %%%                         probably
            %%%                         FRET_FLIM: Ideally is this could contain FRET-FLIM
            %%%                         data for future experiments constucts, as per
            %%%                         Ca_FLIM
            %%%                         EventData: Could be used to contain information on
            %%%                         events in the raw data of the file
            %%%                         ROI: proper handling of ROIs beyond
            %%%                         Linescans....
            %%%
            %%%     Input Arguements: None Needed (constructors in GUI, should be
            %%%     transferred...:
            %%%
            %%%     Output Variable
            %%%     1 by 1 ImData object
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            obj.Units=table("","","","","","","");
            obj.Units.Properties.VariableNames={'Tau','X','Y','Z','C','T','au'};
            obj.STAT=struct('Responses',[],'SurfaceFit',[],'iGluDif',[]);
            obj.Ca_FLIM=struct('Ca_Trace_XData',[],'Ca_Trace_YData',[],'Baseline',[],'Transient',[],'Sensor',"",'BaseFLIM_map',[],'TransFLIM_map',[],'t_T_Image',[]);
            obj.FRET_FLIM=struct('FRET_Trace_XData',[],'FRET_Trace_YData',[],'Baseline',[],'Transient',[],'Sensor',"");
            obj.EventData=struct('iGlu_AP_Trace',[],'iGlu_Trace',[],'Ca2_AP_Trace',[],'Ca2_Trace',[],'CaFLIM_trace',[],'FRET_FLIM_Trace',[],'iGlu_AP_Sp2Img',[],'iGlu_AP_Pos2Img',[],'iGlu_Sp2Img',[],'iGlu_Pos2Img',[]);
            obj.Version="1.03|_29-09-2021";
            obj.comment='template';
            obj.Type='Line2';
            obj.file='Line2';
            obj.Subtype='Single';
            obj.TData=0:0.01:1;
            obj.UG=repmat(zeros(size(obj.TData)),2,1);
            obj.UR=obj.UG;
            obj.predScX=obj.UG;
            obj.predScY=obj.UG;
            obj.ScX=obj.UG;
            obj.ScY=obj.UG;
            obj.Aux1=0:0.01:1;
            obj.Aux2=0:0.01:1;
            obj.eXData=0:0.01:1;
            obj.TData=0:0.01:1;
            obj.XData=0:0.01:1;
            obj.YData=[1,2];
            obj.scanline.roi=[1;2];
            obj.scanline.ODDarray=[];
            obj.TimeDim=2;
            obj.linetime=0.01;
            obj.source= 'MES';
            obj.x_pixel_size=0.01; obj.y_pixel_size=1; obj.x_pixel_num=size(obj.UG,2); obj.y_pixel_num=2;
            obj.TypeList=addlistener(obj, 'Type', 'PostSet', @(src, evnt)obj.handlePropEvents);
            %             obj.SubtypeList=addlistener(obj, 'Subtype', 'PostSet', @(src, evnt)obj.handlePropEvents);
        end
         
        function Data = ZeroScX_Y(Data)
            CentreX=median(Data.ScX,"all");
            CentreY=median(Data.ScY,"all");
            Data.ScY=Data.ScY-CentreY;
            Data.ScX=Data.ScX-CentreX;
            Data.predScY=Data.predScY-CentreY;
            Data.predScX=Data.predScX-CentreX;
            Data.bkgXData=Data.bkgXData-CentreX;
            Data.bkgYData=Data.bkgYData-CentreY;
            Data.XData=Data.XData-CentreX;
            Data.YData=Data.YData-CentreY;

        end

        function obj = ImData_MES(filename)
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%     ImData object definition. %%construct from MES.  NOT WORKING JUST
            %%%     COPIED, one day I might make it work
            %%%
            %%%     Container for Combined Imaging and Electrophysiology experimental data in FIJI-GUI...
            %%%     ,contains various methods used in the GUI and properties retaining to each experimental measurement.
            %%%
            %%%     Best suited for line scan 2P imaging data containing multiple data types
            %%%
            %%%     Use example multiplexed iGluSnFR/Calcium imaging method of Jensen et.al. 2019:
            %%%     i.e. Image measurements from spiral X-T linescans
            %%%     Main Data Properties:
            %%%                         UG:Generally used for 'Primary' Green Channel Data
            %%%                         UR:Generally used for 'Secondary' Red Channel Data
            %%%                         TiR:Generally used for Transmitted Light Channel Data
            %%%                         Ch3Data: Not really used yet but cound be for
            %%%                         associated FLIM
            %%%                         Ch4Data: Not really used yet but cound be for
            %%%                         associated FLIM
            %%%                         ScX : Galvo Scanner feedback co-ordinates X
            %%%                         dimension (Microns)
            %%%                         ScY : Galvo Scanner feedback co-ordinates Y
            %%%                         dimension (Microns)
            %%%                         predScX : Galvo Scanner input (predicted) co-ordinates X
            %%%                         dimension (Microns)
            %%%                         predScY : Galvo Scanner input (predicted) co-ordinates Y
            %%%                         dimension (Microns)
            %%%                         scanline : carried over from Femtonics but
            %%%                         edited, contains data on prediced scanlines and
            %%%                         Femtonics ROIs
            %%%                         XData(Microns),TData (Seconds),YData,ZData,tauData:  All represent
            %%%                         dimension values associated with image data
            %%%                         x_pixel_num,y_pixel_num,x_pixel_size,y_pixel_size,linetime:
            %%%                         carried over from Femtonics data represent deltaX,deltaY,deltaT...
            %%%                         Aux1,Aux2...: Electrophysiology data from Microscope(Femtonics)
            %%%                         Can be replaced with Axon data by operations in
            %%%                         GUI (to be integrated one day)
            %%%                         eXData:  Electrophysiology Time Data
            %%%                         XDim,YDim,TDim...: The data dimension
            %%%                         associated with X-Y, time, lifetime, depth
            %%%                         bkgUG,bkgUR,bkgTiR:  2D images representing the
            %%%                         background data (single frame scan immediately prior
            %%%                         to linescan or Frame scan time series)
            %%%                         bkgXData,bkgYData: as XData,YData... but of the
            %%%                         background image
            %%%
            %%%      Main Data Units: Seconds, Microns, Intensity a.u
            %%%
            %%%      Measurement Metadata:
            %%%                         IMPORTANT-
            %%%                         comment: comment associated with measurement
            %%%                         (Lab notes) can be edited in GUI individually
            %%%                         or in series automatically
            %%%
            %%%                         CRITICAL-
            %%%                         Type,file: References to the data type:  Line Scan='Line2',
            %%%                         Frame Scan ='FF', ZStack= 'XY', others need to check
            %%%
            %%%                         CRITICAL-
            %%%                         SubType, Important for how data is processes,
            %%%                         needs defining and documenting better
            %%%                         source: 'MES' only really in use,
            %%%                         'TIFF','FIMAS'?
            %%%
            %%%                         Date, Time: Datetime variables for dates
            %%%
            %%%                         Index,ParentIdx: Index of measurement number
            %%%                         Units : Table Variable containing description
            %%%                         of dimension units
            %%%                         STAT: Unused, but could contain info on
            %%%                         features of the Data, event times, amplitudes,
            %%%                         widths, etc. of gaussians in data
            %%%                         Ca_FLIM: Ideally is this could contain the Ca2+
            %%%                         FLIM data associated with the measurement,
            %%%                         probably
            %%%                         FRET_FLIM: Ideally is this could contain FRET-FLIM
            %%%                         data for future experiments constucts, as per
            %%%                         Ca_FLIM
            %%%                         EventData: Could be used to contain information on
            %%%                         events in the raw data of the file
            %%%                         ROI: proper handling of ROIs beyond
            %%%                         Linescans....
            %%%
            %%%     Input Arguements: None Needed (constructors in GUI, should be
            %%%     transferred...:
            %%%
            %%%     Output Variable
            %%%     1 by 1 ImData object
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            obj.Units=table("","","","","","","");
            obj.Units.Properties.VariableNames={'Tau','X','Y','Z','C','T','au'};
            obj.Ca_FLIM=struct('Ca_Trace_XData',[],'Ca_Trace_YData',[],'Baseline',[],'Transient',[],'Sensor',"",'BaseFLIM_map',[],'TransFLIM_map',[],'t_T_Image',[]);
            obj.FRET_FLIM=struct('FRET_Trace_XData',[],'FRET_Trace_YData',[],'Baseline',[],'Transient',[],'Sensor',"");
            obj.EventData=struct('iGlu_AP_Trace',[],'iGlu_Trace',[],'Ca2_AP_Trace',[],'Ca2_Trace',[],'CaFLIM_trace',[],'FRET_FLIM_Trace',[],'iGlu_AP_Sp2Img',[],'iGlu_AP_Pos2Img',[],'iGlu_Sp2Img',[],'iGlu_Pos2Img',[]);
            obj.Version="1.02|_01-04-2021";
            obj.comment='template';
            obj.Type='template';
            obj.file='template';
        end
        %%

    end
    methods (Access=private)
        %% Listener on Data Type
        function handlePropEvents(src,evnt)
            switch src.Type
                case "Line1"
                    src.XDim=2;src.YDim=0;src.TimeDim=2;src.tauDim=0;src.DepthDim=0;
                case "Line2"
                    src.XDim=2;src.YDim=1;src.TimeDim=2;src.tauDim=0;src.DepthDim=0;
                case "FF"
                    src.XDim=2;src.YDim=1;src.TimeDim=3;src.tauDim=0;src.DepthDim=0;
                case "XY"
                    src.XDim=2;src.YDim=1;src.TimeDim=0;src.tauDim=0;src.DepthDim=3;
                case "FLIM_tau_T"
                    src.XDim=0;src.YDim=0;src.TimeDim=2;src.tauDim=1;src.DepthDim=0;
            end
        end
        %%  asymmetric least squares smmothing
        function baseline = asLS_smooth(signal, smoothness_param, asym_param)

            %  Estimate baseline with asymmetric least squares
            MIN_DIFF = 1e-6;
            MAX_ITER = 100;
            ORDER = 2;

            signal_length = length(signal);
            signal = signal(:);

            %assert(rem(nargin-1,2) == 0,'Number of parameter pairs is in error');

            if nargin == 1
                smoothness_param = 1e3;
                asym_param = 1e-4;
            end

            penalty_vector = ones(signal_length, 1);

            difference_matrix = diff(speye(signal_length), ORDER);


            if length(smoothness_param) == 1
                smoothness_param = smoothness_param*ones(signal_length,1);
            else

            end
            smoothness_matrix = smoothness_param*ones(1,size(difference_matrix,1));

            differ = zeros(MAX_ITER);

            for count = 1:MAX_ITER
                Weights = spdiags(penalty_vector, 0, signal_length, signal_length);

                C = chol(Weights + (smoothness_matrix .* difference_matrix') * difference_matrix);

                if count > 1
                    baseline_last = baseline;
                end

                baseline = C \ (C' \ (penalty_vector .* signal));

                % Test for convergence
                if count > 1
                    differ(count) = sum(abs(baseline_last-baseline));
                    if (sum(abs(baseline_last-baseline)) < MIN_DIFF)
                        break;  % Change is negligible
                    else

                    end
                end
                %     count
                penalty_vector = (asym_param) .* (signal > baseline) + (1-asym_param) .* (signal < baseline);

            end
        end
    end
    %%
    methods (Access=public)
        %% Plots means 2D line scan data as vector, F, DF or DF/F
        function [Prim_plot,Sec_plot,Prim_YData,TData,Sec_YData,Sec_XData,Gdatarev,Rdatarev] = Plot_TData_1D(obj,channel,roi,handle,Norm,F0min,F0max,Sec_Channel,Sec_handle,XCrop,Ymin,Ymax)
            %          function [Prim_plot,Sec_plot,Prim_YData,TData,Sec_YData,Sec_XData,Gdatarev,Rdatarev] = Plot_TData_1D(obj,varargin)
            %            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%     ImData Method  Plot_TData_1D
            %%%
            %%%     Input Arguements:
            %%%                 channel: Channel number to Plot, default 1=UG, 2=UR
            %%%                 roi: Reference to the column in obj.scanline.roi
            %%%                 referencing the Y axis Bound of the data to be plotted
            %%%                 handle: An Axes or UIAxes target to plot the imaging data
            %%%                 Norm: Normalisation method is any 0=none, 1=DeltaF/F0,
            %%%                 2=DeltaF
            %%%                 F0min: minimum time(s) for F0 calculation
            %%%                 F0max: maximum time(s) for F0 calculation
            %%%                 Sec_Channel: Auxillary Channel number to Plot
            %%%                 1=Aux1,2=Aux2
            %%%                 Sec_handle: An Axes or UIAxes target to plot the ephys(or other) data
            %%%                 XCrop: Historical,used to crop the data on the X/T axis
            %%%                 Ymin: Sets the Y axis minumum display limit
            %%%                 Ymax: Sets the Y axis maximum display limit
            %%%
            %%%     Output Variable
            %%%                 Prim_plot: Handle to the displayed imaging axes
            %%%                 Sec_plot: Handle to the displayed Ephys/Aux channel axes
            %%%                 Prim_YData: YData displayed on Imaging channel axis
            %%%                 TData: Time/XData displayed on Imaging channel axis
            %%%                 Sec_YData: YData displayed on Ephys/Aux channel axis
            %%%                 Sec_XData: Time/XData displayed on Ephys/Aux channel axis
            %%%                 Gdatarev: second dimension average of UG Channel
            %%%                 Rdatarev: second dimension average of UR Channel
            %%%                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%% SORT OUT DATATYPES FIRST
            if ~isnumeric(Norm)
                Norm=str2double(Norm);
            end
                if obj.Type=="Scatter"
                    [Prim_plot,Prim_YData,TData,GData]=obj.PointDataPlot(handle,channel);
                    return
                elseif obj.Type=="Line1"
                     TData=obj.TData;
                     input1=obj.UG;
                     Gdatarev=[];
                     Rdatarev=[];
                 try
                     input2=obj.UR;
                catch
                     input2=zeros(size(input1));
                 end
                elseif obj.Type=="Line2"
                    roimin=obj.scanline.roi(1,roi);
                    roimax=obj.scanline.roi(2,roi);
                    TData=obj.TData;
                     input1=obj.UG([roimin:roimax],:,:);
                 try
                     input2=obj.UR([roimin:roimax],:,:);
                catch
                     input2=zeros(size(input1));
                 end
                elseif obj.Type=="FF"
                    roimin=1;
                    roimax=size(obj.UG,1);
                    TData=obj.TData;
                    try
                        input1=obj.UG([roimin:roimax],:,:,roi);
                    end
                    try
                        input2=obj.UR([roimin:roimax],:,:,roi);
                    catch
                        input2=zeros(size(input1));
                    end
        

               elseif obj.Type=="FLIM_LS"
                    roimin=1;
                    roimax=size(obj.UG,2);
                    input1=obj.UG(:,[roimin:roimax],:);
                    TData=obj.TData;
                    try
                        input2=obj.UR(:,[roimin:roimax],:);
                    end

                elseif obj.Type=="FLIM_tau_T"
                    TData=obj.TData;
                    input1=obj.UG([roimin:roimax],:);
                    try
                        input2=obj.UR([roimin:roimax],:);
                    end
                end
            
                if size(input1,1)>1
                    datadims=1:1:ndims(input1);
                    dims2mean=~ismember(datadims,obj.TimeDim);
                    dims2revmean=ismember(datadims,obj.TimeDim);
                    [~,col]=find(dims2mean);
                    [~,rcol]=find(dims2revmean);
                    Gdata=squeeze(nanmean(input1,col));Rdata=squeeze(nanmean(input2,col));
                    try
                        F0indices= TData>= F0min & TData <=F0max;
                        ind=1:1:numel(F0indices);
                        f0end=max(ind(F0indices));
                        Gdatarev=squeeze(nanmean(input1(:,[f0end:size(input1,2)]),rcol));Rdatarev=squeeze(nanmean(input2(:,[f0end:size(input1,2)]),rcol));
                    catch
                        Gdatarev=[];
                        Rdatarev=[];
                    end
                else
                    try  
                       Gdata=input1;
                       Rdata=input2; 
                    end
                end
                               
                if ~isrow(Gdata);Gdata=Gdata.';end
                if ~isrow(Rdata);Rdata=Rdata.';end
                TData=obj.TData;

                if Norm==1 % Delta F/F
                    F0indices=TData>=F0min & TData<=F0max;
                    ind=1:1:numel(F0indices);
                    f0end=max(ind(F0indices));
                    f_0_G_raw = nanmean(Gdata(:,F0indices),2);
                    f_0_R_raw = nanmean(Rdata(:,F0indices),2);
                    scandataG_DF=bsxfun(@minus,double(Gdata(:,:)),f_0_G_raw);
                    scandataR_DF=bsxfun(@minus,double(Rdata(:,:)),f_0_R_raw);
                    GData=bsxfun(@rdivide,double(scandataG_DF(:,:)),f_0_G_raw);
                    RData=bsxfun(@rdivide,double(scandataR_DF(:,:)),f_0_R_raw);


                elseif Norm==2 % DeltaF
                    F0indices=TData>=F0min & TData<=F0max;
                    f_0_G_raw = nanmean(Gdata(:,F0indices),2);
                    f_0_R_raw = nanmean(Rdata(:,F0indices),2);
                    scandataG_DF=bsxfun(@minus,double(Gdata(:,:)),f_0_G_raw);
                    scandataR_DF=bsxfun(@minus,double(Rdata(:,:)),f_0_R_raw);
                    GData=scandataG_DF;
                    RData=scandataR_DF;
                elseif Norm==0 % No Normalisation
                    GData=Gdata;
                    RData=Rdata;

                elseif Norm==3 %dG/R
                    F0indices=TData>=F0min & TData<=F0max;
                    f_0_G_raw = nanmean(Gdata(:,F0indices),2);
                    f_0_R_raw = nanmean(Rdata(:,F0indices),2);
                    scandataG_DF=bsxfun(@minus,double(Gdata(:,:)),f_0_G_raw);
                    scandataG_DFR=double(scandataG_DF)./double(Rdata);
                    scandataR_DF=bsxfun(@minus,double(Rdata(:,:)),f_0_R_raw);
                    GData=scandataG_DFR;
                    RData=scandataR_DF;
                elseif Norm==4 %G/R
                    GData=Gdata./Rdata;
                    RData=Rdata;
                elseif Norm==5 %R/R0
                    F0indices=TData>=F0min & TData<=F0max;
                    f_0_G_raw = nanmean(Gdata(:,F0indices),2);
                    f_0_R_raw = nanmean(Rdata(:,F0indices),2);
                    scandataG_DF=bsxfun(@minus,double(Gdata(:,:)),f_0_G_raw);
                    scandataG_DFR=double(scandataG_DF)./double(Rdata);
                    scandataR_DF=bsxfun(@minus,double(Rdata(:,:)),f_0_R_raw);
                    GData=scandataG_DFR;
                    RData=scandataR_DF;
                    
                end



                if Sec_Channel==1; Sec_YData=obj.Aux1; Sec_XData= obj.eXData;
                elseif Sec_Channel==2; Sec_YData=obj.Aux2; Sec_XData= obj.eXData;
                elseif Sec_Channel==3; Sec_YData=GData; Sec_XData= TData;
                elseif Sec_Channel==4; Sec_YData=RData; Sec_XData= TData;
                elseif Sec_Channel==5; Sec_YData=obj.Aux1; Sec_XData= obj.eXData;
                elseif Sec_Channel==6; Sec_YData=obj.Aux2; Sec_XData= obj.eXData ;
                end

                if channel==1; Prim_YData=GData;
                elseif channel==2; Prim_YData=RData;
                elseif channel==3;  Prim_YData=obj.Ca_FLIM.Ca_Trace_YData; TData= obj.Ca_FLIM.Ca_Trace_XData   ;
                elseif channel==4;  Prim_YData=obj.Aux1; TData= obj.eXData;
                elseif channel==5;  Prim_YData=obj.Aux2; TData= obj.eXData;

                end

            
            %             if filter==1
            %             Prim_YData=sgolayfilt(Prim_YData,2,window)
            %             end
            try
                if obj.Subtype=="Single" | obj.Subtype=="FF4D"
                    Prim_plot=plot(handle,TData,Prim_YData,"Tag",'Data','DisplayName',sprintf('%s | %s',obj.Type,obj.comment));
                
                
                elseif obj.Subtype=="Scatter"
                    Prim_plot=scatter(handle,TData,Prim_YData,"Tag",'Data','DisplayName',sprintf('%s | %s',obj.Type,obj.comment),'MarkerFaceColor','b','MarkerFaceAlpha',0.4,'MarkerEdgeAlpha',0);
                elseif  obj.Subtype=="Raster"
                    Prim_plot=plot(handle,TData,Prim_YData,"Tag",'Data','DisplayName',sprintf('%s | %s',obj.Type,obj.comment));
                end

                if 0 > max(TData,[],'all')+0.05
                    handle.XLim=[0 max(TData,[],'all')-0.05];
                else
                    handle.XLim=[0 max(TData,[],'all')];
                end
                if exists(ymin)==1
                    %                     handle.YLim=[Ymin Ymax];
                end
            catch ME
                assignin('base','message',ME);
                Prim_plot=[];
            end
            try
              
                if obj.Subtype=="Single" | obj.Subtype=="FF4D"
                    Sec_plot=plot(Sec_handle,Sec_XData,Sec_YData,"Tag",'Data','DisplayName',sprintf('%s | %s',obj.Type,obj.comment));
                elseif obj.Subtype=="Scatter"
                    Sec_plot=scatter(Sec_handle,Sec_XData,Sec_YData,"Tag",'Data','DisplayName',sprintf('%s | %s',obj.Type,obj.comment),'MarkerFaceColor','b','MarkerFaceAlpha',0.4,'MarkerEdgeAlpha',0);
                elseif obj.Subtype=="Raster"
                    Sec_plot=plot(Sec_handle,Sec_XData,Sec_YData(roi,:),"Tag",'Data','DisplayName',sprintf('%s | %s',obj.Type,obj.comment));
                end

                if 0 > max(TData,[],'all')+0.05
                    Sec_handle.XLim=[0 max(TData,[],'all')-0.05];
                else
                    Sec_handle.XLim=[0 max(TData,[],'all')];
                end
                
                %                 end
            catch
                Sec_plot=[];
            end

        end
        
        %% Plots Linescan data as 2D Image F, DF or DF/F
        function [handle_out,data,TData,YData,YProf]= Image_LSData_2D(DATA,channel,handle,Norm,F0min,F0max,cmap,SmoothX,SmoothY,ShiftY);
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%     ImData Method  Image_LSData_2D
            %%%
            %%%     Input Arguements:
            %%%                 channel: Channel number to Plot, default 1=UG, 2=UR
            %%%                 handle: An Axes or UIAxes target to plot the imaging data
            %%%                 Norm: Normalisation method is any 0=none, 1=DeltaF/F0,
            %%%                 2=DeltaF
            %%%                 F0min: minimum time(s) for F0 calculation
            %%%                 F0max: maximum time(s) for F0 calculation
            %%%                 cmap: colourmap for axis (unused in GUI)
            %%%                 SmoothX: Applys gaussian smoothing by n pixels in X
            %%%                 (smooth2a.m)
            %%%                 SmoothY:  Applys gaussian smoothing by n pixels in Y
            %%%                 (smooth2a.m)
            %%%                 ShiftY: circshifts the data in Y by n pixels
            %%%
            %%%     Output Variable
            %%%                 Prim_plot: Handle to the displayed imaging axes
            %%%                 Sec_plot: Handle to the displayed Ephys/Aux channel axes
            %%%                 Prim_YData: YData displayed on Imaging channel axis
            %%%                 TData: Time/XData displayed on Imaging channel axis
            %%%                 Sec_YData: YData displayed on Ephys/Aux channel axis
            %%%                 Sec_XData: Time/XData displayed on Ephys/Aux channel axis
            %%%                 Gdatarev: second dimension average of UG Channel
            %%%                 Rdatarev: second dimension average of UR Channel
            %%%                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            p = inputParser;
            if ~isnumeric(Norm)
                Norm=str2double(Norm)
            end
            TData=DATA.TData;
            YData=DATA.YData;
            if channel==1; input=DATA.UG; elseif channel==2 input=DATA.UR; end
            data=input;
            F0indices=TData>=F0min & TData<=F0max;
            f_0_G_raw = nanmean(data(:,F0indices),2);
            scandataG_DF=bsxfun(@minus,double(data(:,:)),f_0_G_raw);
            if Norm==1 %DF/F
                data=bsxfun(@rdivide,double(scandataG_DF(:,:)),f_0_G_raw);
            elseif Norm==2 %DF
                data=scandataG_DF;
            elseif Norm==0 %a.u
                data=data;
            elseif Norm==3 %dG/R
                data=scandataG_DF./double(DATA.UR);
            elseif Norm==4 %G/R
                data=double(data)./double(DATA.UR);
            end
            if isempty(handle)==0
                %             handle_out=[];
                data=circshift(data,ShiftY,1);
                data=smooth2a(double(data),double(SmoothY),double(SmoothX));
                handle_out=imagesc(handle,data,'XData',TData,'YData',YData','Tag','Data');
                cmax=max(smooth2a(double(data),double(10),double(10)),[],"all")*3;
                handle.CLim(2)=cmax;
            else
                handle_out=0;
            end
            try
                %             colormap(handle,cmap);
            end
            YProf=nanmean(data,2);
        end
        %% Plots Framescan data as Image F, DF or DF/F
        function [handle_out,data,TData,YData,XData]= FF_Data_2D(DATA,Framenum,channel,handle,Norm,F0min,F0max,cmap,Xh,Yh);
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%     ImData Method  Image_LSData_2D
            %%%
            %%%     Input Arguements:
            %%%                 Framenum:
            %%%                 channel:
            %%%                 handle: An Axes or UIAxes target to plot the imaging data
            %%%                 Norm:
            %%%                 F0min: minimum time(s) for F0 calculation
            %%%                 F0max: maximum time(s) for F0 calculation
            %%%                 cmap: colourmap for axis (unused in GUI)
            %%%                 Xh: An Axes or UIAxes target to plot the XAxis
            %%%                 Yh: An Axes or UIAxes target to plot the YAxis
            %%%                %%%
            %%%     Output Variable
            %%%                 handle_out: Handle to the displayed imaging axes
            %%%                 data: ImData object
            %%%                 YData: Y value displayed on Imaging channel axis
            %%%                 TData: Time references (x axis data)
            %%%                 XData: X value displayed on Imaging channel axis
            %%%                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

            TData=DATA.TData;
            YData=DATA.YData;
            XData=DATA.XData;
            if channel==1; input=DATA.UG; elseif channel==2 input=DATA.UR; end
            data=input;

            if Norm==1
                f_0_G_raw = nanmean(data(:,:,[uint16(F0min/(TData(2)-TData(1))):uint16(F0max/(TData(2)-TData(1)))]),3);
                scandataG_DF=bsxfun(@minus,double(data(:,:,:)),f_0_G_raw);
                data=bsxfun(@rdivide,double(scandataG_DF(:,:,:)),f_0_G_raw);
            elseif Norm==2
                f_0_G_raw = nanmean(data(:,:,[uint16(F0min/(TData(2)-TData(1))):uint16(F0max/(TData(2)-TData(1)))]),3);
                scandataG_DF=bsxfun(@minus,double(data(:,:,:)),f_0_G_raw);
                data=scandataG_DF;
            elseif Norm==0
                data=data;
            end
            if isempty(handle)==0
                %             handle_out=[];
                handle_out=imagesc(handle,data(:,:,Framenum),'XData',XData,'YData',YData,"Tag",'Data');
            else
                handle_out=0;
            end
            try
                colormap(handle,cmap);
            end
            try
                if DATA.Subtype=="Maps"
              plot(Xh,mean(data(:,:,Framenum),2),'XData',DATA.XData)
              plot(Yh,mean(data(:,:,Framenum),2),'XData',DATA.YData)
                end
            end
        end
        %% Plots Scatter Plot Data
        function [handle_out,Ydata,XData,ZData]= PointDataPlot(DATA,handle,channel);
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%     ImData Method  PointDataPlot
            %%%         Function to output data in Scatter Subtype
            %%%     Input Arguments:
            %%%         DATA: An Imdata object
            %%%         handle: A UIAxes/Axes object
            %%%         channel: The Imdata channel to plot
            %%%     Output Variable
            %%%         handle_out: A UIAxes/Axes object returned after
            %%%         plotting
            %%%         Ydata: Yaxis variable
            %%%         XData: Xaxis variable
            %%%         ZData: Z axis variable
            %%%                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if channel==1
                channel="UG";
            elseif channel==2
                channel="UR";
            elseif channel==3
                try
                    channel="TiR"
                end
            end
            scatter(handle,DATA.XData,DATA.(channel),"Tag",'Data','DisplayName',sprintf('%s | %s',DATA.Type,DATA.comment),'MarkerFaceColor','b','MarkerFaceAlpha',0.4,'MarkerEdgeAlpha',0)
              
            scatter(handle.Parent.Children(1,1),DATA.XData,DATA.(channel),"Tag",'Data','DisplayName',sprintf('%s | %s',DATA.Type,DATA.comment),'MarkerFaceColor','b','MarkerFaceAlpha',0.4,'MarkerEdgeAlpha',0)
            handle_out=handle;
            Ydata=DATA.YData;
            XData=DATA.XData;
            ZData=0;
        end
        %% Outputs an index of data matching the data type 'Line2','FF' or 'XY' or with 2 args any propertie
        function [Logical_Index,Numerical_Index] = findType(objarr,prop2find,matches)
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%     ImData Method   findType
            %%%     Provides an index of the objects matching the selected propertie.
            %%%     Use case: find all Line2 data files obj.findType('Type','Line2')
            %%%     A method I wrote while learning, may be easily done in using findall() need to check
            %%%
            %%%     Input Arguements:
            %%%                 prop2find: the indicated propertie of object array
            %%%                 matches: the propertie value to find in the input object
            %%%                 array
            %%%                %%%
            %%%     Output Variable
            %%%                 Logical_Index, binary index of objects matching
            %%%                 Numerical index: row numbers of matching objects
            %%%                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if exist('matches')==0
                Logical_Index = cell2mat(arrayfun(@(o) o.Type == prop2find, objarr, 'UniformOutput', false));
                Numerical_Index=find(ind);
                return
            end
            if ischar(matches)==1
                query=sprintf('ind2 = cell2mat(arrayfun(@(o) o.%s == "%s", objarr, ''UniformOutput'', false));',prop2find,matches);
            else
                query=sprintf('ind2 = cell2mat(arrayfun(@(o) %s == %d, objarr, ''UniformOutput'', false));',prop2find,matches);
            end
            Logical_Index=eval(query);
            Numerical_Index=find(ind);
        end
        %% Gets the comments from Imdata files and sends the list to Listbox handle
        function [Items,types,Index] = findComment(objarr,handle)
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%     ImData Method   findType
            %%%     Gets object array indexes,types and comments, concatenantes them
            %%%     and outputs to Listbox.  Use case: populate index of ImData objects
            %%%     after a function is ran
            %%%
            %%%     Input Arguements:
            %%%                 handle: handle to Listbox,UIListbo
            %%%                 array
            %%%                %%%
            %%%     Output Variable
            %%%                 Logical_Index, binary index of objects matching
            %%%                 Numerical index: row numbers of matching objects
            %%%                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            comments = convertCharsToStrings(arrayfun(@(o) cell2mat(convertCharsToStrings(o.comment)), objarr, 'UniformOutput', false));
            types = convertCharsToStrings(arrayfun(@(o) cell2mat(convertCharsToStrings(o.Type)), objarr, 'UniformOutput', false));
            Index=1:1:size(objarr,1).';
            Indexstr=convertCharsToStrings(arrayfun(@num2str,Index.',"UniformOutput",false));
            spacer=repmat("_   ",size(comments,1),1);
            for checkcom=1:size(comments,1)
                if isempty(comments{checkcom,1})==1
                    comments{checkcom,1}='|';
                end
            end
            Items=join(cat(2,Indexstr,spacer,types,spacer,comments));
            handle.Items=Items;
            handle.ItemsData=Index;

        end
        %% Bins data by pixel number in 1-3 dimensions
        function obj=BinData(obj,x_y_z,num)
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%     ImData Method   BinData
            %%%     Gets Imdata object array, and bins the data in channels by the pixel number and bin dimension 
            %%%
            %%%     Input Arguements:
            %%%                 obj: Imdata object array
            %%%                 x_y_z: dimension to bin data, integer 1-3
            %%%                 num=Integer number of pixels to bin by
            %%%                %%%
            %%%     Output Variable
            %%%                 obj: Binned Imdata object array
            %%%                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

            bin_dimension=x_y_z; %bin dimension
            for i=1:size(obj,1)  %make array of variable names and loop through to bin
                datanames=["obj(i).UG","obj(i).UR","obj(i).ScX","obj(i).ScY","obj(i).predScX","obj(i).predScY","obj(i).TiR"];
                for i1=1:7
                    %bin data by mean in X dimension
                    eval(sprintf('tempimg=double(%s);',datanames(i1)));
                    try
                        if x_y_z==2
                            data2bin=tempimg;
                            bin_dimension=2;
                            elements_2_bin=num;
                            elements=1:1:size(data2bin,bin_dimension);
                            [a,~,~]=histcounts(elements,'NumBins',round(size(elements,2)/elements_2_bin));
                            colDist = [repelem(elements_2_bin, floor(size(data2bin,bin_dimension)/elements_2_bin)) rem(size(data2bin,bin_dimension),elements_2_bin)];
                            % probably need to permute here
                            binned_data_as_cell=mat2cell(data2bin,size(data2bin,1),a);
                            mean_of_binned_cells=cellfun(@nanmean,binned_data_as_cell,repmat({bin_dimension},1,size(a,bin_dimension)),'UniformOutput',0);
                            % and then permute again
                            binned_data=cell2mat(mean_of_binned_cells);
                            eval(sprintf('%s=binned_data;',datanames(1,i1)));
                        elseif x_y_z==1
                            %bin data by mean in Y dimension
                            data2bin=tempimg;
                            bin_dimension=1;
                            elements_2_bin=num;
                            elements=1:1:size(data2bin,bin_dimension);
                            [a,~,~]=histcounts(elements,'NumBins',round(size(elements,2)/elements_2_bin));
                            colDist = [repelem(elements_2_bin, floor(size(data2bin,bin_dimension)/elements_2_bin)) rem(size(data2bin,bin_dimension),elements_2_bin)];
                            % probably need to permute here
                            binned_data_as_cell=mat2cell(data2bin,a,size(data2bin,2));
                            mean_of_binned_cells=cellfun(@nanmean,binned_data_as_cell,repmat({bin_dimension},numel(a),1),'UniformOutput',0);
                            binned_data=cell2mat(mean_of_binned_cells);
                            eval(sprintf('%s=binned_data;',datanames(1,i1)));
                        elseif  x_y_z==3
                            data2bin=tempimg;
                            if ndims(tempimg)==4
                            eval(sprintf('%s=nanmean(data2bin,4);',datanames(1,i1)));
                            else
                            
                            bin_dimension=3;
                            elements_2_bin=num;
                            if elements_2_bin>size(data2bin,bin_dimension);
                                elements_2_bin=size(data2bin,bin_dimension);
                            end
                            elements=1:1:size(data2bin,bin_dimension);
                            [a,~,~]=histcounts(elements,'NumBins',round(size(elements,2)/elements_2_bin));
                            colDist = [repelem(elements_2_bin, floor(size(data2bin,bin_dimension)/elements_2_bin)) rem(size(data2bin,bin_dimension),elements_2_bin)];

                            % % probably need to permute here
                            binned_data_as_cell=mat2cell(data2bin,size(data2bin,1),size(data2bin,2),a);
                            binned_data_as_cell=permute(binned_data_as_cell,[1,3,2]);
                            mean_of_binned_cells=cellfun(@nanmean,binned_data_as_cell,repmat({bin_dimension},1,numel(a)),'UniformOutput',0);
                            mean_of_binned_cells=permute(mean_of_binned_cells,[1,3,2]);
                            testdata=cell2mat(mean_of_binned_cells);
                            eval(sprintf('%s=testdata;',datanames(1,i1)));
                            end
                            end
                        a=[];
                        b=[];
                        c=[];
                        tempimg=[];
                        testdata=[];
                        xvals=[];
                        binned_data=[]
                        elements=[]
                    end
                end
                switch x_y_z
                    case 1
                        obj(i).y_pixel_size=obj(i).y_pixel_size*elements_2_bin;
                        obj(i).y_pixel_num=size(obj(i).UG,bin_dimension);
                        obj(i).YData=linspace(0*obj(i).y_pixel_size,obj(i).y_pixel_size*obj(i).y_pixel_size,obj(i).y_pixel_num);
                        obj(i).comment=sprintf('Bin| Y | %d | %s |',num,obj(i).comment);
                        if obj(i).TimeDim==2 %case of line-scan data
                            obj(i).scanline.roi=[];
                            obj(i).scanline.roi(1,1)=1;
                            obj(i).scanline.roi(2,1)=obj(i).y_pixel_num;

                        end

                    case 2
                        obj(i).x_pixel_size=obj(i).x_pixel_size*elements_2_bin;
                        obj(i).x_pixel_num=size(obj(i).UG,bin_dimension);
                        obj(i).XData=linspace(0*obj(i).x_pixel_size,obj(i).x_pixel_size*obj(i).x_pixel_size,obj(i).x_pixel_num);

                        if obj(i).TimeDim==2 %case of line-scan data
                            obj(i).linetime=obj(i).linetime*elements_2_bin;
                            obj(i).TData=linspace(0,max(obj(i).TData),size(obj(i).UG,bin_dimension));
                            obj(i).XData=obj(i).TData;
                            obj(i).comment=sprintf('Bin_T_%d_%s__',num,obj(i).comment);
                        end
                        if isempty(obj(i).TimeDim)==1;obj(i).comment=sprintf('Bin| X | %d | %s |',elements_2_bin,obj(i).comment);end
                    case 3
                        if obj(i).Type=='XY' %case of Z-Stack
                            obj(i).z_pixel_size=obj(i).z_pixel_size*elements_2_bin;
                            obj(i).z_pixel_num=size(obj(i).UG,bin_dimension);
                            obj(i).ZData=linspace(0*obj(i).z_pixel_size,obj(i).z_pixel_size*obj(i).z_pixel_size,obj(i).z_pixel_num);
                            obj(i).comment=sprintf('Bin_Z_%d_%s__',num,obj(i).comment);
                        elseif obj(i).Type=="FF" %case of Frame Scan
                            if obj(i).Subtype=="FF4D"
                                obj(i).Subtype='Single'
                                obj(i).TData=linspace(0,max(obj(i).TData,[],'all'),size(obj(i).UG,3));
                                obj(i).comment=sprintf('Bin_C_%d_%s__',obj(i).linetime*num,obj(i).comment);
                                obj(i).z_pixel_num=size(obj(i).UG,bin_dimension);

                            a=0
                            else
                            obj(i).linetime=obj(i).linetime*num;
%                             obj(i).XData=linspace(0*obj(i).linetime,size(obj(i).UG,bin_dimension)*obj(i).linetime,size(obj(i).UG,bin_dimension));
                            obj(i).TData=obj(i).XData;
                            obj(i).comment=sprintf('Bin_T_%d_%s__',obj(i).linetime*num,obj(i).comment);
                            obj(i).z_pixel_num=size(obj(i).UG,bin_dimension);
                            end
                        end

                end
            end
        end
        %% Sends all properties to handle (UITable)
        function Properties2Table(obj,handle)
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%     ImData Method   Properties2Table
            %%%     Show ImData object properties on the specified UITable
            %%%     object
            %%%
            %%%     Input Arguements:
            %%%                 obj: Imdata object array
            %%%                 handle=handle to the UITable object
            %%%                %%%
            %%%     Output Variable
            %%%                 none
            %%%                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            data=struct(obj);
            currentdata=struct2cell(data);
            handle.RowName=fieldnames(data);
            handle.Data=[];
            handle.Data=cell2table(currentdata);
            a=0
            s = uistyle('HorizontalAlignment','left');
            addStyle(handle,s,'table','');
        end
        %% Displays background image on Axes
        function [scatterXdataonBKG]=DisplayBKG(obj,channel,handle)
             %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%     ImData Method   DisplayBKG
            %%%     Displays the ImData background image on a UIAxes or
            %%%     Axes object using imagesc()
            %%%     object
            %%%
            %%%     Input Arguements:
            %%%                 obj: Imdata object array
            %%%                 handle=handle to the Axes object
            %%%                 channel= the ImData background image
            %%%                 channel to show 1=UG,2=UR,3=TiR (if
            %%%                 present)
            %%%                %%%
            %%%     Output Variable
            %%%                 none
            %%%                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if channel==1
                BKG=obj.bkgUG; %green channel
            elseif channel==2
                BKG=obj.bkgUR; %Red channel
            elseif channel==3
                try
                    BKG=obj.bkgtIRraw; %transmitted channel
                catch
                    %add if needed
                end
            end
            if obj.Type=="Line2"
                scatterXdataonBKG=imagesc(handle,BKG,'XData',obj.bkgXData,'YData',obj.bkgYData);
            elseif obj.Type=="FF"
                scatterXdataonBKG=imagesc(handle,BKG,'XData',obj.bkgYData,'YData',obj.bkgXData);
            end

        end
        %% scatters scanpoint locations on axes
        function [points2scatter]=Scatter_Scanline_on_Image(obj,handle,XMin,XMax,timepoint,ScanPos)
             %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%     ImData Method   Scatter_Scanline_on_Image
            %%%     Displays the scanpoints of the current line or frame on ImData background image axes 
            %%%     object
            %%%
            %%%     Input Arguements:
            %%%                 obj: Imdata object array
            %%%                 handle= handle to the Axes object
            %%%                 XMin: for line scans, the start of the 
            %%%                 linescan X values to display
            %%%                 XMax: for line scans, the end of the 
            %%%                 linescan X values to display
            %%%                 ScanPos= 0 or 1, show predicted or feedback
            %%%                 galvo positions
            %%%                %%%
            %%%     Output Variable
            %%%                 points2scatter: the scatter object
            %%%                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            hold(handle,'on')
            if obj.Type=="Line2"
                if ScanPos==1
                    points2scatter=scatter(handle,obj.ScX([XMin:XMax],timepoint),obj.ScY([XMin:XMax],timepoint),5,"yellow",'Tag','Display');
                else
                    points2scatter=scatter(handle,obj.predScX([XMin:XMax],timepoint),obj.predScY([XMin:XMax],timepoint),5,"yellow",'Tag','Display');
                end
                hold(handle,'off')
            elseif obj.Type=="FF"
                if ScanPos==1
                    points2scatter=scatter(handle,reshape(obj.ScX(:,:,timepoint),1,numel(obj.ScX(:,:,timepoint))),reshape(obj.ScY(:,:,timepoint),1,numel(obj.ScY(:,:,timepoint))),3,"yellow",'Tag','Display');
                else
                    points2scatter=scatter(handle,reshape(obj.predScX(:,:,timepoint),1,numel(obj.predScX(:,:,timepoint))),reshape(obj.ScY(:,:,timepoint),1,numel(obj.ScY(:,:,timepoint))),3,"yellow",'Tag','Display');
                end
            end
        end
        %% Local 2D cross correlation to identify 'active regions of interest'
        function [obj]=CrossCorMap(obj,channel,time_start,time_end,w2d)
             %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%     ImData Method   CrossCorMap
            %%%     Outputs the local cross correlation map of a framescan as used in Boddum et.al. 2016 
            %%%     (adapted from code by Spenser Smith, https://labrigger.com/blog/2013/06/13/local-cross-corr-images/)
            %%%     Smith)
            %%%
            %%%     Input Arguements:
            %%%                 obj: Imdata object array
            %%%                 channel: ImData channel to operate on
            %%%                 1=UG,2=UR
            %%%                 time_start: time in seconds to begin the
            %%%                 map
            %%%                 time_end: time in seconds to end the map
            %%%                 w2d: The neighbourhood size to calculate
            %%%                 the local xcorr
            %%%                %%%
            %%%     Output Variable
            %%%                 obj: Output Imdata object array
            %%%                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %convert data type to float if needed
            if ischar(channel)==1
                channel=str2double(channel)
            end
            for i=1:size(obj,1)
                tc=[]
                SignalIdx=obj(i).TData >= time_start & obj(i).TData <= time_end;
                if channel==1; tc=obj(i).UG; elseif channel==2; tc=obj(i).UR; end
                type=isfloat(tc);
                if type==0 ;tc=double(tc);
                end
                w=w2d; % window size

                % Initialize and set up parameters
                ymax=size(tc,1);
                xmax=size(tc,2);
                numFrames=size(tc,3);
                ccimage=zeros(ymax,xmax);
                kurtimage=zeros(ymax,xmax);
                tic
                for y=1+w:ymax-w
                    for x=1+w:xmax-w
                        % Center pixel
                        thing1 = reshape(tc(y,x,:)-nanmean(tc(y,x,:),3),[1 1 numFrames]); % Extract center pixel's time course and subtract its mean
                        ad_a   = nansum(thing1.*thing1,3);    % Auto corr, for normalization later

                        % Neighborhood
                        a = tc(y-w:y+w,x-w:x+w,:);         % Extract the neighborhood
                        b = nanmean(tc(y-w:y+w,x-w:x+w,:),3); % Get its mean
                        thing2 = bsxfun(@minus,a,b);       % Subtract its mean
                        ad_b = nansum(thing2.*thing2,3);      % Auto corr, for normalization later

                        % Cross corr
                        ccs = nansum(bsxfun(@times,thing1,thing2),3)./sqrt(bsxfun(@times,ad_a,ad_b)); % Cross corr with normalization
                        ccs((numel(ccs)+1)/2) = [];        % Delete the middle point
                        ccimage(y,x) = nanmean(ccs(:));       % Get the mean cross corr of the local neighborhood
                        kurtimage(y,x)=nanmean(kurtosis(a,1,3),[1 2]);
                    end
                end
                toc
                if channel==1; obj(i).UG=ccimage; obj(i).UR=kurtimage; elseif channel==2; obj(i).UR=ccimage; obj(i).UG=zeros(size(ccimage)); end
                obj(i).ScX=obj(i).ScX(:,:,1); obj(i).ScY=obj(i).ScY(:,:,1);obj(i).predScX=obj(i).predScX(:,:,1); obj(i).predScY=obj(i).predScY(:,:,1);
                obj(i).TData=1
                obj(i).linetime=1
                obj(i).comment=sprintf('CCMap_ %s',obj(i).comment)
            end
        end
        %% Edits comment data in ImData and outputs full list to uieditfield
        function [obj]=Editcomment(obj,newcomment,handle)
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%     ImData Method   Editcomment
            %%%     Changes the ImData comment property and displays the
            %%%     edited comment in a UIEditfield object
            %%%     Input Arguements:
            %%%                 obj: Imdata object array
            %%%                 newcomment: The new comment string variable 
            %%%                 handle:the UIEditfield object handle
            %%%                %%%
            %%%     Output Variable
            %%%                 obj: Output Imdata object array
            %%%                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            obj.comment=newcomment;
            handle.Value=newcomment;
        end

        %% 2D-Intensity Profiles,%IntData=Matrix, Res=Pixel Size, Binwidth=binwidth(microns)
        function [obj,theta,rho,Int_Profile,XData_4_plot,Cal_Row,Cal_Col,UGvT]=twoD_intensity_Profile(obj,IntData,XData,YData,Res,Binwidth)
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%     ImData Method   twoD_intensity_Profile
            %%%     Calculates the decay of image intensity from a point
            %%%     source in 2 dimensions using coordinate transform and
            %%%     binning
            %%%     Input Arguements:
            %%%                 obj: Imdata object array
            %%%                 IntData: 2D double matrix
            %%%                 XData: The cartesian X axis cordinates on IntData 
            %%%                 YData: The cartesian Y axis cordinates on IntData 
            %%%                 res: The pixel size of the image (depreciated) 
            %%%                 Binwidth: The distance to determine the bin
            %%%                 edges for calculation of quantile
            %%%                %%%
            %%%     Output Variable
            %%%                 obj: Output Imdata object array
            %%%                 theta: 2D matrix of Theta (Angle values) relative to peak pixel
            %%%                 peak pixel location
            %%%                 rho: 2D matrix of Rho (distance values) in
            %%%                 microns from peak pixel location
            %%%                 Int_Profile: The mean of pixels binned by
            %%%                 bin start in XData_4_plot
            %%%                 XData_4_plot: Distance values match bin
            %%%                 centre in Int_Profile
            %%%                 Cal_Row: Calibrated Y axes location of peak pixel
            %%%                 (microns)
            %%%                 Cal_Col: Calibrated X axes location of peak pixel
            %%%                 (microns)
            %%%                 UGvT: 2D matrix of UG intensity values
            %%%                 Y axis=Distance from peak, X axis = time
            %%%                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %             Intdata1=smooth2a(Intdata,3,3);
            [Row_Index, Column_Index] = find(ismember(IntData, max(IntData(:))));
            %           %Simple Maximum pixel intensity as peak
            %           %Get Distance vs Intensity profile from point source
            %1) Generate X and Y co-ordinate grids matching Data source size (Intdata)
            Cal_Col=XData(Column_Index(1));
            Cal_Row=YData(Row_Index(1))
            XGrid=repmat(XData,size(IntData,1),1)
            YGrid=repmat(YData.',1,size(IntData,2))
            XGrid=XGrid-XGrid(1,Column_Index(1))
            YGrid=YGrid-YGrid(Row_Index(1),1)
            gridx0=zeros(size(IntData));
            gridy0=zeros(size(IntData));
            XData=[mat2cell(XGrid,size(XGrid,1),size(XGrid,2)),mat2cell(gridx0,size(gridx0,1),size(gridx0,2))];
            YData=[mat2cell(YGrid,size(YGrid,1),size(YGrid,2)),mat2cell(gridy0,size(gridy0,1),size(gridy0,2))];
            [theta,rho]=cellfun(@cart2pol,XData,YData,"UniformOutput",false);
            [a,b,c]=histcounts(rho{1,1},"BinWidth",Binwidth);
            rho=rho{1,1};
            theta=theta{1,1};
            %Reshape grids to work with accumarray
            Index=reshape(c,numel(c),1);
            Intensity_vals=reshape(IntData,numel(IntData),1);
            %Get the mean (excluding NaNs) of Map data, indexed to histogram bins representing distance, transpose
            Int_Profile=accumarray(Index,Intensity_vals,[],@nanmean).';
            %Generate XData for plot
            XData_4_plot=linspace(0,size(Int_Profile,2)*Binwidth,size(Int_Profile,2));
            UGdata=mat2cell2(obj.UG,'f');
            UGlin=cellfun(@(x) reshape(x,numel(x),1),UGdata,'UniformOutput',false);
            UGvT=cellfun(@(x) accumarray(Index,x,[],@nanmean),UGlin,'UniformOutput',false);
            UGvT=cell2mat(permute(UGvT,[1,3,2]));            
        end
        %% Output images2tiff
        function [filenameUG] = Outputtiff(obj,folder,channel,BF)
             %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%     ImData Method   Outputtiff
            %%%     Outputs Imdata images as .tif files using bioformats or
            %%%     MATLAB export (superseded by ImageJ export)
            %%%     Input Arguments:
            %%%                 obj: Imdata object array
            %%%                 folder: folder to save files to
            %%%                 channel: Channel to save
            %%%                 BF:Using Bioformats package 1:yes,0:no
            %%%                %%%
            %%%     Output Variable
            %%%                 filenameUG: Output Filename (UG channel)
            %%%                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if BF==1
                bfCheckJavaPath %initiate biormats path variable
                pixelSizeY = ome.units.quantity.Length(java.lang.Double(obj.y_pixel_size), ome.units.UNITS.MICROMETER);
                if obj.Type=="Line2"
                    pixelSizeX = ome.units.quantity.Length(java.lang.Double(obj.x_pixel_size*1000), ome.units.UNITS.MICROMETER);
                else
                    pixelSizeX = ome.units.quantity.Length(java.lang.Double(obj.x_pixel_size), ome.units.UNITS.MICROMETER);
                end
                if channel==1
                    metadataUG = createMinimalOMEXMLMetadata(obj.UG);% make bf metadata variable
                    filenameUG=sprintf('%s/%s_UG.tif',folder,matlab.lang.makeValidName(obj.comment));
                    metadataUG.setPixelsPhysicalSizeX(pixelSizeX,0); %set x dimension pixel size
                    metadataUG.setPixelsPhysicalSizeY(pixelSizeY,0)
                elseif channel==2
                    metadataUR = createMinimalOMEXMLMetadata(obj.UR);% make bf metadata variable
                    filenameUR=sprintf('%s/%s_UR.tif',folder,matlab.lang.makeValidName(obj.comment));
                    metadataUR.setPixelsPhysicalSizeX(pixelSizeX,0); %set x dimension pixel size
                    metadataUR.setPixelsPhysicalSizeY(pixelSizeY,0);
                elseif channel==3
                    filenameUG=sprintf('%s/%s_UG.tif',folder,matlab.lang.makeValidName(obj.comment));
                    filenameUR=sprintf('%s/%s_UR.tif',folder,matlab.lang.makeValidName(obj.comment));
                    metadataUG = createMinimalOMEXMLMetadata(obj.UG);% make bf metadata variable
                    metadataUR = createMinimalOMEXMLMetadata(obj.UG);% make bf metadata variable
                    metadataUG.setPixelsPhysicalSizeX(pixelSizeX,0); %set x dimension pixel size
                    metadataUG.setPixelsPhysicalSizeY(pixelSizeY,0);
                    metadataUR.setPixelsPhysicalSizeX(pixelSizeX,0); %set x dimension pixel size
                    metadataUR.setPixelsPhysicalSizeY(pixelSizeY,0);

                end


                if channel==1
                    bfsave(obj.UG,filenameUG,'metadata',metadataUG); %save images to tiff
                elseif channel==2
                    bfsave(obj.UR,filenameUR,'metadata',metadataUR); %save images to tiff
                elseif channel==3
                    bfsave(obj.UG,filenameUG,'metadata',metadataUG); %save images to tiff
                    bfsave(obj.UR,filenameUR,'metadata',metadataUR); %save images to tiff
                end
            else
                % native matlab tif export doesn't work but not difficult to fix

                %         namestring='Green'; namestring(2,:)='Red'
                % 		filestring(1,:)='Green'; filestring(2,:)='Red';
                Green=obj.UG;
                Red=obj.UG;;
                yresolution=obj.y_pixel_size;
                xresolution=obj.x_pixel_size;
                Width=obj.x_pixel_size*obj.x_pixel_num;
                Length=obj.y_pixel_size*obj.y_pixel_num;
                filenameUG=sprintf('%s/%s_UG.tif',folder,matlab.lang.makeValidName(obj.comment));
                filenameUR=sprintf('%s/%s_UR.tif',folder,matlab.lang.makeValidName(obj.comment));
                if channel==1 || channel==3
                    %Green Channel
                    tifobj = Tiff(filenameUG,'w');
                    setTag(tifobj,'ImageLength',Length);
                    setTag(tifobj,'ImageWidth',Width);
                    setTag(tifobj,'Photometric',Tiff.Photometric.MinIsBlack);%value=1)
                    setTag(tifobj,'Compression',Tiff.Compression.None);
                    setTag(tifobj,'BitsPerSample',64);
                    setTag(tifobj,'SamplesPerPixel',1);
                    setTag(tifobj,'PlanarConfiguration',Tiff.PlanarConfiguration.Chunky);
                    setTag(tifobj,'Software','MATLAB');
                    setTag(tifobj,'ResolutionUnit',Tiff.ResolutionUnit.Centimeter);
                    setTag(tifobj,'XResolution',xresolution);
                    setTag(tifobj,'YResolution',yresolution);
                    write(tifobj,Green);
                    close(tifobj);
                end
                if channel==2 || channel==3
                    %Red Channel
                    tifobj = Tiff(filenameUR,'w');
                    setTag(tifobj,'ImageLength',Length);
                    setTag(tifobj,'ImageWidth',Width);
                    setTag(tifobj,'Photometric',Tiff.Photometric.MinIsBlack);%value=1)
                    setTag(tifobj,'Compression',Tiff.Compression.None);
                    setTag(tifobj,'BitsPerSample',64);
                    setTag(tifobj,'SamplesPerPixel',1);
                    setTag(tifobj,'PlanarConfiguration',Tiff.PlanarConfiguration.Chunky);
                    setTag(tifobj,'Software','MATLAB');
                    setTag(tifobj,'ResolutionUnit',Tiff.ResolutionUnit.Centimeter);
                    setTag(tifobj,'XResolution',xresolution);
                    setTag(tifobj,'YResolution',yresolution);
                    write(tifobj,Red);
                    close(tifobj);
                end
            end
        end

        %%
        function [obj]= crop_data(obj,dimension,start,stop,do_or_not,idx)
            %% Crop Dataitem size by dimension/indexed locations
            %% Crops the input data by line number in X or Y dimensions
            %%  Inputs:
            %
            %       obj = The input ImData Object
            %       start= The index of the start pixel
            %       end=The index of the end pixel
            %       do_or_not= Special case where cropping one channel i.e. iGluSnFR hotspot, isn't relevant for the other channels
            %       'just_do'= automatically crops both channels, if empty it will
            %       request if both, or either channel be cropped
            %%  Outputs:
            %       dataout  =    The returned ImData Object
            %%  Example:
            %
            %      [objout]=obj.crop_data(1,1,50,'just do') Crops Y axis from 1:50
            %      without input
            %%
            if do_or_not=="just do"
                answer='Both';
            else
                answer = questdlg('Crop Which Channels?','Data Cropping','UG','UR','Both','UG');
            end
            i=1
           %for i=1:size(obj,1) 
                if dimension==1
                    if obj(i).TimeDim==dimension
                        index=(obj(i).TData>=start&obj.TData<=stop);
                        ep_index=(obj(i).eXData>=start&obj(i).eXData<=stop);
                    else
                        index= obj(i).YData>=start & obj(i).YData<=stop;
                    end
                    switch answer
                        case "UG"
                            obj(i).UG=obj(i).UG(index,:,:); obj(i).UR=imresize(obj(i).UR,size(obj(i).UG));
                        case "UR"
                            obj(i).UR=obj(i).UR(index,:,:); obj(i).UG=imresize(obj(i).UG,size(obj(i).UR));
                        case "Both"
                            obj(i).UG=obj(i).UG(index,:,:); 
                            try
                            obj(i).UR=obj(i).UR(index,:,:);
                            catch
                            end
                    end
                    obj(i).ScX=obj(i).ScX(index,:,:);
                    obj(i).ScY=obj(i).ScY(index,:,:);obj(i).predScX=obj(i).predScX(index,:,:);obj(i).predScY=obj(i).predScY(index,:,:);
                    obj(i).YData=obj(i).YData(index);
                    if obj(i).TimeDim==1;
                        obj(i).TData=obj(i).TData(index);
                    end
                    obj(i).YData=obj(i).YData-obj(i).YData(2);
                    obj(i).y_pixel_num=numel(obj(i).YData);
                    try;obj(i).TiR=obj(i).TiR(index,:,:);end
                    obj(i).scanline.roi=[1;size(obj(i).UG,1)];



                elseif dimension==2
                    if obj(i).TimeDim==dimension
                        index=(obj(i).TData>=start  &  obj.TData<=stop);
                        ep_index=(obj(i).eXData>=start  &  obj(i).eXData<=stop);
                    else
                        index=(obj(i).XData>=start  &  obj.XData<=stop);
                    end

                    switch answer
                        case "UG"
                            obj(i).UG=obj(i).UG(:,index,:); obj(i).UR=imresize(obj(i).UR,size(obj(i).UG));
                        case "UR"
                            obj(i).UR=obj(i).UR(:,index,:); obj(i).UG=imresize(obj(i).UG,size(obj(i).UR));
                        case "Both"
                            obj(i).UG=obj(i).UG(:,index,:);
                            try
                            obj(i).UR=obj(i).UR(:,index,:);
                            catch
                            end
                    end

                    obj(i).ScX=obj(i).ScX(:,index,:);
                    obj(i).ScY=obj(i).ScY(:,index,:);
                    obj(i).Aux1=obj(i).Aux1(ep_index);
                    try
                        obj(i).Aux2=obj(i).Aux2(ep_index);
                    end
                    obj(i).predScX=obj(i).predScX(:,index,:);
                    obj(i).predScY=obj(i).predScY(:,index,:);
                    obj(i).eXData=obj(i).eXData(ep_index);
                    if idx~="keep"
                        obj(i).eXData=obj(i).eXData-obj(i).eXData(1);
                    end
                    obj(i).XData=obj(i).XData(index);
                    if obj(i).TimeDim==2;
                        obj(i).TData=obj(i).TData(index);
                    end
                    try
                        obj(i).TiR=obj(i).TiR(:,index,:);
                    end
                    if obj(i).TimeDim==2;
                        if idx~="keep"
                        obj(i).TData=obj(i).TData-obj(i).TData(1);
                        end
                    end


                elseif dimension==3
                    if obj(i).TimeDim==dimension
                        index=(obj(i).TData>=start&obj(i).TData<=stop);
                        ep_index=(obj(i).eXData>=start&obj(i).eXData<=stop);
                    else
                        index=(obj(i).XData>=start&obj(i).XData<=stop);
                    end

                    switch answer
                        case "UG"
                            obj(i).UG=obj(i).UG(:,:,index); obj(i).UR=imresize(obj(i).UR,size(obj(i).UG));
                        case "UR"
                            obj(i).UR=obj(i).UR(:,:,index); obj(i).UG=imresize(obj(i).UG,size(obj(i).UR));
                        case "Both"
                            obj(i).UG=obj(i).UG(:,:,index,:); obj(i).UR=obj(i).UR(:,:,index,:);
                    end

                    obj(i).ScX=obj(i).ScX(:,:,index,:);obj(i).Aux1=obj(i).Aux1(ep_index);try;obj(i).Aux2=obj(i).Aux2(ep_index);end;
                    obj(i).ScY=obj(i).ScY(:,:,index,:);obj(i).predScX=obj(i).predScX(:,:,index,:);obj(i).predScY=obj(i).predScY(:,:,index,:);obj(i).eXData=obj(i).eXData(ep_index);obj(i).eXData=obj(i).eXData-obj(i).eXData(1);
%                     obj(i).ZData=[];
                    if obj(i).TimeDim==3;
                        obj(i).TData=obj(i).TData(index);
                        obj(i).TData=obj(i).TData-obj(i).TData(1);
                        %                obj(i).eXData=obj(i).eXData-obj(i).eXData(1);
                    end
                    try;obj(i).TiR=obj(i).TiR(:,:,index,:);end
                end
                obj(i).comment=sprintf('Crop| %.2fs- %.2fs| %s',round(start,2),round(stop,2),obj(i).comment);
            %end
        end
        %% asLS smooth
        function [obj] = asLS(obj,channel, smoothness_param, asym_param)
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%
            %%%     asLS - Asymmetric least square (asLS) baseline removal.
            %%%
            %%%     Compute the baseline_current of signal_input using an asymmetric
            %%%     least square methods (asLS, AsLS, ALS, etc) algorithm
            %%%     designed by P.H. Eilers and H.F.M. Boelens.
            %%%
            %%%
            %%%     baseline = asLS_baseline_v1(signal, smoothness_param, min_diff)
            %%%
            %%%     Inputs:
            %%%         signal - signal to find baseline
            %%%         smoothness_param - smoothness parameter (default, 1e3)
            %%%         min_diff - break iterations if difference is less than min_diff
            %%%                     (default, 1e-6)
            %%%     Outputs:
            %%%         baseline - asLS baseline
            %%%
            %%%     CITATION:
            %%%         P. H. C. Eilers, "A perfect smoother," Anal. Chem. 75,
            %%%         3631-3636 (2003).
            %%%
            %%%         P. H. C. Eilers and H. F. M. Boelens, "Baseline correction with
            %%%         asymmetric least squares smoothing," Unpublished.
            %%%         October 21, 2005. It may be available on the internet.
            %%%
            %%%     NOTE:
            %%%         This code is just an implementation directly from the work of
            %%%         P. H. C. Eilers and H. F. M. Boelens (see CITATION). Please cite their work if
            %%%         you use this asLS code. If you use this code for use in phase
            %%%         retrieval and/or error correction for coherent Raman
            %%%         spectroscopy/microscopy, please cite our work (see APPLICATION
            %%%         REFERENCE).
            %%%
            %%%     APPLICATION REFERENCE:
            %%%         C. H. Camp Jr., Y. J. Lee, and M. T. Cicerone, "Quantitative,
            %%%         Comparable Coherent Anti-Stokes Raman Scattering (CARS)
            %%%         Spectroscopy: Correcting Errors in Phase Retrieval,"
            %%%         Journal of Raman Spectroscopy (2015). arXiv:1507.06543.
            %%%
            %%%     Charles H. Camp Jr (charles.camp@nist.gov, ccampjr@gmail.com)
            %%%         v0: 8/1/2014
            %%%         v1: 4/23/2015
            %%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

            for i=1:size(obj,1)
                if channel==1
                    signal=mean(obj(i).UG,1)
                elseif channel==2
                    signal=mean(obj(i).UR,1)
                end

                %  Estimate baseline with asymmetric least squares
                MIN_DIFF = 1e-6;
                MAX_ITER = 100;
                ORDER = 2;

                signal_length = length(signal);
                signal = signal(:);

                %assert(rem(nargin-1,2) == 0,'Number of parameter pairs is in error');

                if nargin == 2
                    smoothness_param = 1e3;
                    asym_param = 1e-4;
                end

                penalty_vector = ones(signal_length, 1);

                difference_matrix = diff(speye(signal_length), ORDER);


                if length(smoothness_param) == 1
                    smoothness_param = smoothness_param*ones(signal_length,1);
                else
                    ;
                end
                smoothness_matrix = smoothness_param*ones(1,size(difference_matrix,1));

                differ = zeros(MAX_ITER);

                for count = 1:MAX_ITER
                    Weights = spdiags(penalty_vector, 0, signal_length, signal_length);

                    C = chol(Weights + (smoothness_matrix .* difference_matrix') * difference_matrix);

                    if count > 1
                        baseline_last = baseline;
                    end

                    baseline = C \ (C' \ (penalty_vector .* signal));

                    % Test for convergence
                    if count > 1
                        differ(count) = sum(abs(baseline_last-baseline));
                        if (sum(abs(baseline_last-baseline)) < MIN_DIFF)
                            break;  % Change is negligible
                        else
                            ;
                        end
                    end
                    %     count
                    penalty_vector = (asym_param) .* (signal > baseline) + (1-asym_param) .* (signal < baseline);

                end
                if channel==1
                    obj(i).UG=obj(i).UG-baseline;
                elseif channel==2
                    obj(i).UR=obj(i).UR-baseline;
                end
            end
        end
        
        %% Equalise Time Dimension
        function [objout,Img_Raster,TData,EPhys_Raster,EP_TData,Mean_Img,Mean_EP]=Eq_Samples(obj,Img_rate,EP_rate,norm)

            for i=1:size(obj,1)
                [~,~,Prim_YData,TData,Sec_YData,EP_TData,~,~] = Data(i,1).Plot_TData_1D(1,1,[],1,norm,0.1,0.7,2,[],[],[],[])
                Img_Interval=1/Img_rate;
                EP_Interval=1/EP_rate;
                Plotdata(i,:)=interp1(TData,Prim_YData,0:Img_Interval:3);
                EP_Plotdata(i,:)=interp1(EP_TData,Sec_YData,EP_Interval:3);
            end
        end
        %% Concatenate Dataitems
        function [NewData]=Concat_Data(Data,Dimension)
            for i=1:size(Data,1)

                if i==1
                    Auxi=Data(i,1).Aux1;
                    Aux_2i=Auxi;

                    Auxii=Data(i,1).Aux2;
                    Aux_2ii=Auxii;

                    eTData=Data(i,1).eXData;
                    eTData_2=eTData;

                    UG=Data(i,1).UG;
                    UG2=UG;

                    UR=Data(i,1).UR;
                    UR2=UR;

                    TData=Data(i,1).TData;
                    TData_2=TData;

                else
                    Auxi=Data(i,1).Aux1;
                    Aux_2i=cat(Dimension,Aux_2i,Auxi);

                    Auxii=Data(i,1).Aux2;
                    Aux_2ii=cat(Dimension,Aux_2ii,Auxii);

                    UG=Data(i,1).UG;
                    UG2=cat(2,UG2,UG);

                    UR=Data(i,1).UR;
                    UR2=cat(Dimension,UR2,UR);

                    eTData=Data(i,1).eXData+max(eTData_2,[],'all')+1;
                    eTData_2=cat(Dimension,eTData_2,eTData);

                    TData=Data(i,1).TData+max(TData_2,[],'all')+1;
                    TData_2=cat(Dimension,TData_2,TData);

                end
            end
            NewData=copyobj2(Data(1,1));
            NewData.UG=UG2;
            NewData.UR=UR2;
            NewData.Aux2=Aux_2ii;
            NewData.Aux1=Aux_2i;
            NewData.eXData=eTData_2;
            NewData.TData=TData_2;
            NewData.XData=TData_2;
            NewData.comment=sprintf('ConCat | %s',NewData.comment);
            NewData.x_pixel_num=size(NewData.TData,2);
        end
        %% Threhold Dataitems for Removing Uncaging Artefacts
        function [NewData]=Threshold(Data,operator,Threshold_Val,Output,minTime,maxTime)
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%     ImData Method   Threshold
            %%%     Thresholds Image data by specified value and sign and replaces
            %%%     values with NaNs: Used the remove uncaging artefacts in
            %%%     line scan glutamate uncaging experiments or show only
            %%%     artefacts
            %%%     Input Arguements:
            %%%                 Data: Imdata object array
            %%%                 operator: Output only values > threshold
            %%%                 (1), Output only values < threhold
            %%%                 Threshold_Val: Double, The value to threhold 
            %%%                %%%
            %%%     Output Variable
            %%%                 obj: Output Imdata object array
            %%%                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
                if Data.Type=="Line2"
                Data.UG=double(Data.UG);
                Data.UR=double(Data.UR);
                TimeIdx=Data.TData >= minTime & Data.TData <= maxTime;
                UG = Data.UG;
                UR = Data.UR;
                comment=cat(2,'Threshold_   ',Data.comment);
                switch operator
                    case 1
                        UG(UG>Threshold_Val)=Output;
                        %                      UG(UG>Threshold_Val)=Output
                        UR(UR>Threshold_Val)=Output;
                    case 0
                        UG(UG<Threshold_Val)=Output;
                        UR(UR<Threshold_Val)=Output;
                end
                NewData=Data
                NewData.UG=UG;
                NewData.UR=UR;
                NewData.comment=comment
                elseif Data.Type=="FF"
                UG=double(Data.UG);
                UR=double(Data.UR); 
                comment=cat(2,'Threshold_   ',Data.comment);   
                switch operator
                    case 1
                        UG(UG>Threshold_Val)=NaN;
                        %                      UG(UG>Threshold_Val)=Output
                        UR(UR>Threshold_Val)=NaN;
                    case 0
                        UG(UG<Threshold_Val)=NaN;
                        UR(UR<Threshold_Val)=NaN;
                 end  
                NewData=Data
                NewData.UG=UG;
                NewData.UR=UR;
                NewData.comment=comment
            end
            
            end
        %% Pos2Img  Kais position 2 image + Spiral 2 Image movies or snapshots (Scattered Intepolant)
        function [dataout,xdata,ydata,GridX3d,GridY3d]=s2img(obj,Channel,I_scaling,bglev,psfwd,Start,End,movie,xbound,ybound,BKGoffset,mode,ScanPos,res)
            %% Pos2Img for Kai's localisation method
            %        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%     ImData Method  Pos2Img: Combines both the weighted intensity method
            %%%     and scattered Interpolant for spiral scan reconstruction.  Outputs
            %%%     heat maps based on the number of input cell arrays
            %%%
            %%%     Input Arguements:
            %%%                 channel: Channel number to Plot, default 1=UG, 2=UR
            %%%                 I_scaling: Indicates the weighting for pixel intensity
            %%%                 bglev: Pixel intensity to subtract from baseline
            %%%                 psfwd: XY Resolution of the PSF, probably shouldn't
            %%%                 change
            %%%                 Start:start point of the
            %%%                 %%%
            %%%     Output Variable
            %%%
            %%%                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %   %%

            if size(obj,1)==1 & size(I_scaling,1)>1
                obj=repmat(obj,size(I_scaling,1),1);
            end
            if size(obj,1)~=size(Start,1);
                Start=repmat(Start,size(obj,1),1);
                End=repmat(End,size(obj,1),1);
            end
            for i=1:size(obj,1)
                try
                    index(i,:)=obj(i,1).TData >=Start(i,1) & obj(i,1).TData <= End(i,1);
                catch
                    index(i,:)=ones(size(obj(i,1).ScX,2));
                end
                if isempty(BKGoffset)==0
                    offsetvals=uint16(BKGoffset/obj(i,1).linetime);
                    offsetelements=-double(offsetvals)-sum(index(i,:),'all');
                    index(i,:)=circshift(index(i,:),offsetelements,2);
                end
                %              baselineindexes=circshift(APindexes,-double(offsetvals),2)
                % calculate psf sigma and dx and dy from psfwd
                psfsig = [psfwd(1,1),psfwd(1,1)]/2.3548;  % sigma=FWHM/(2*sqrt(2*log(2)))
                dx=psfsig(1)/3;dy=psfsig(2)/3;  % x,y grid resolution
                scaled=1;

                if movie==1
                    xposdata=double(obj(i,1).ScX(:,index(i,:)));
                    yposdata=double(obj(i,1).ScY(:,index(i,:)));
                    if Channel==1
                        signal=obj(i,1).UG(:,index(i,:));
                    else
                        try
                        signal=obj(i,1).UR(:,index(i,:));
                        end
                    end
                else
                    xposdata=double(reshape(obj(i,1).ScX(:,index(i,:)),numel(obj(i,1).ScX(:,index(i,:))),1));
                    yposdata=double(reshape(obj(i,1).ScY(:,index(i,:)),numel(obj(i,1).ScY(:,index(i,:))),1));

                    if Channel==1
                        signal=reshape(obj(i,1).UG(:,index(i,:)),numel(obj(i,1).UG(:,index(i,:))),1);
                    else
                        signal=reshape(obj(i,1).UR(:,index(i,:)),numel(obj(i,1).UG(:,index(i,:))),1);
                    end
                end
                % calculate psf sigma and dx and dy from psfwd
                if isempty(xbound)==1
                    xbound=[min(xposdata(:)),max(xposdata(:))];
                end
                xedges=xbound(1)-dx:dx:xbound(2)+dx;
                imgx=diff(xedges)+xedges(1:end-1);imgx=imgx(:);
                % calculate y boundary and bin edges
                if isempty(ybound)==1
                    ybound=[min(yposdata(:)),max(yposdata(:))];
                end
                yedges=ybound(1)-dy:dy:ybound(2)+dy;
                yedges=double(yedges);
                imgy=diff(yedges)+yedges(1:end-1);imgy=imgy(:);
                xedges=double(xedges);
                % initialise data holder to x,y,T
                imgx=double(imgx);
                imgy=double(imgy);
                recondata=zeros(numel(imgx),numel(imgy),size(yposdata,2));
                % reconstruct image through each time frame
                % create waitbar if it doesn't exist
                gridx=repmat(imgx.',numel(imgy),1);
                gridy=repmat(imgy,1,numel(imgx));


                N_steps2=size(yposdata,2);
                if mode==1
                    for tidx=1:N_steps2;
                        % get signal data slice
                        sigdata=signal(:,tidx);
                        % get x from scx

                        xpos=xposdata(:,tidx);
                        % get y from scy
                        ypos=yposdata(:,tidx);
                        % empty position data storage
                        data=cell(numel(xpos),1);
                        % generate psf

                        for ptdataidx=1:numel(xpos);
                            % get mean position of psf
                            psfmu = [xpos(ptdataidx),ypos(ptdataidx)];

                            % make psf guasssian pdf
                            psfgm = gmdistribution(psfmu,psfsig);
                            % generate randome points
                            genpts=random(psfgm,round(max(1,I_scaling(i,1)*(sigdata(ptdataidx)-bglev(i,1)))));
                            %                     append points to list
                            data{ptdataidx}=genpts;

                        end

                        % make intensity distribution from point list data
                        data=cell2mat(data);
                        [Nphoton,~,~] = histcounts2(data(:,1),data(:,2),xedges,yedges);

                        [Ndwell,Xedges,Yedges] = histcounts2(xposdata,yposdata,xedges,yedges);
                        temp=Nphoton./Ndwell;
                        temp(isnan(temp)|isinf(temp))=NaN;

                        % assign to filterdata storage
                        recondata(:,:,tidx)=Nphoton;

                        % Report current estimate in the waMitbar's message field
                        %                 done=tidx/N_steps2;

                        if size(obj,1)>1
                            dataout(i,1)={recondata};
                            xdata(i,1)={imgx};
                            ydata(i,1)={imgy};
                        else
                            dataout=recondata;
                            xdata=imgx;
                            ydata=imgy;
                        end

                    end
                    GridX3d=repmat(gridx,1,1,size(dataout,3));
                    GridY3d=repmat(gridy,1,1,size(dataout,3));
                elseif mode==2
                    if isempty(res)==1
                        yedges=ybound(1)-0.1:0.1:ybound(2)+0.1;
                        xedges=xbound(1)-0.1:0.1:xbound(2)+0.1;
                    elseif isempty(res)==1 & ScanPos==1
                        yedges=ybound(1)-dy:dy:ybound(2)+dy;
                        xedges=xbound(1)-dx:dx:xbound(2)+dx;
                    else
                        yedges=ybound(1)-res:res:ybound(2)+res;
                        xedges=xbound(1)-res:res:xbound(2)+res;
                    end
                    imgy=diff(yedges)+yedges(1:end-1);
                    imgy=imgy(:);
                    imgx=diff(xedges)+xedges(1:end-1);
                    imgx=imgx(:);
                    gridx=double(repmat(imgx.',numel(imgy),1));
                    gridy=double(repmat(imgy,1,numel(imgx)));
                    %                     psfsig = [psfwd(1,1),psfwd(1,1)]/2.3548;  % sigma=FWHM/(2*sqrt(2*log(2)))
                    %                     dx=psfsig(1)/3;dy=psfsig(2)/3; %

                    sp2imginput=mat2cell2(double(signal),'c');
                    if ScanPos==2
                        %                                              xposdata=double(reshape(obj(i,1).predScX(:,index(i,:)),numel(obj(i,1).predScX(:,index(i,:))),1));
                        %                                              yposdata=double(reshape(obj(i,1).predScY(:,index(i,:)),numel(obj(i,1).predScY(:,index(i,:))),1));
                        xposdata=double(obj(i,1).predScX);
                        yposdata=double(obj(i,1).predScY);
                    end
                    xdata=mat2cell2(xposdata,'c');
                    ydata=mat2cell2(yposdata,'c');
                    intFall1=cellfun(@(x,y,z) scatteredInterpolant(x,y,z,'natural','none'),xdata,ydata,sp2imginput,"UniformOutput",false);
                    sp2imgcell=cellfun(@(x) x(gridx(:,:),gridy(:,:)),intFall1,"UniformOutput",false);
                    GridX3d=repmat(gridx,1,1,numel(sp2imgcell));
                    GridY3d=repmat(gridy,1,1,numel(sp2imgcell));
                    
                    if ScanPos==2
                        resolution=gridx(1,2)-gridx(1,1);
                        times=round(0.35/resolution);
                        smoothsp2imgcell=cellfun(@(x) smooth2a(x,2,2),sp2imgcell,"UniformOutput",false);
                    elseif ScanPos==1
                        resolution=gridx(1,2)-gridx(1,1);
                        times=round(0.35/resolution);
                        smoothsp2imgcell=cellfun(@(x) smooth2a(x,2,2),sp2imgcell,"UniformOutput",false);
                    end
                    
                    framescancell=permute(smoothsp2imgcell,[1,3,2]);
%                    will change the NaNs to the closesed value
%                     framescancell=cellfun(@(x) SubsNaNs(x),framescancell,"UniformOutput",false);
                    
                    if size(obj,1)>1
                        dataout(i,1)=framescancell;
                        xdata(i,1)={imgx};
                        ydata(i,1)={imgy};
                    else
                        dataout=cell2mat(framescancell);
                        dataout=dataout;
                        xdata=imgx;
                        ydata=imgy;
                    end

        
                    xdata=imgx;
                    ydata=imgy;

                end
            end
        end
        %% Sort spiral scan data
        function [objout,tUGcell,tURcell,tScXcell,tScYcell,YData,TData]=sort_spiral(obj,method,sorting_vector,theta_bin,new_data)
            if new_data==1
                objout=copyobj2(obj)
            else
                objout=obj
            end
            for i=1:size(objout,1)

                scandataG=objout(i,1).UG.';
                scandataR=objout(i,1).UR.';
                scandataX=double(objout(i,1).ScX.');
                scandataY=double(objout(i,1).ScY.');
                pscandataX=double(objout(i,1).predScX.');
                pscandataY=double(objout(i,1).predScY.');

                if method=="theta_bin"
                    tUG=zeros(size(scandataG(:,:),1),360/theta_bin);
                    tUR=zeros(size(scandataR(:,:),1),360/theta_bin);
                    tScX=zeros(size(scandataG(:,:),1),360/theta_bin);
                    tScY=zeros(size(scandataR(:,:),1),360/theta_bin);
                    ptScX=zeros(size(scandataG(:,:),1),360/theta_bin);
                    ptScY=zeros(size(scandataR(:,:),1),360/theta_bin);

                elseif method=="theta_sort" | method=="vector_sort"
                    tUG=zeros(size(scandataG));
                    tUR=zeros(size(scandataR));
                    tScX=zeros(size(scandataG));
                    tScY=zeros(size(scandataR));
                    ptScX=zeros(size(scandataG));
                    ptScY=zeros(size(scandataR));
                end




                for i1=1:size(scandataG,1)
                    scanpoints1(1,:)=pscandataX(i1,:);
                    scanpoints1(2,:)=pscandataY(i1,:);
                    minmaxy(1,:)=max(scanpoints1(2,:),[],2);
                    minmaxy(2,:)=min(scanpoints1(2,:),[],2);
                    minmaxx(2,:)=max(scanpoints1(1,:),[],2);
                    minmaxx(1,:)=min(scanpoints1(1,:),[],2);
                    xmed=median(minmaxx,1);
                    ymed=median(minmaxy,1);
                    normscanpoints(1,:)=scanpoints1(1,:)-xmed;
                    normscanpoints(2,:)=scanpoints1(2,:)-ymed;

                    pointsdegrees=transpose(cart2compass(normscanpoints(1,:),normscanpoints(2,:)));
                    [B,I]=sort(pointsdegrees);
                    if method=="theta_bin"
                        edges = (0:theta_bin:360);
                        [~,~,loc]=histcounts(pointsdegrees,edges);
                        Gmeany = accumarray(loc(:),scandataG(i1,:))./accumarray(loc(:),1);%location,all values summed,divide by
                        Rmeany = accumarray(loc(:),scandataR(i1,:))./accumarray(loc(:),1);
                        Xmeany = accumarray(loc(:),scandataX(i1,:))./accumarray(loc(:),1);
                        Ymeany = accumarray(loc(:),scandataY(i1,:))./accumarray(loc(:),1);
                        pXmeany = accumarray(loc(:),pscandataX(i1,:))./accumarray(loc(:),1);
                        pYmeany = accumarray(loc(:),pscandataY(i1,:))./accumarray(loc(:),1);
                        xmid = 0.5*(edges(1:end-1)+edges(2:end));
                        tUG(i1,[1:size(Gmeany,1)])=transpose(Gmeany);
                        tUR(i1,[1:size(Rmeany,1)])=transpose(Rmeany);
                        tScX(i1,[1:size(Rmeany,1)])=transpose(Xmeany);
                        tScY(i1,[1:size(Rmeany,1)])=transpose(Ymeany);
                        ptScX(i1,[1:size(Rmeany,1)])=transpose(pXmeany);
                        ptScY(i1,[1:size(Rmeany,1)])=transpose(pYmeany);
                        clear -regexp loc pointsdegrees normscanpoints
                    elseif method=="theta_sort"

                        tUG(i1,:)=scandataG(i1,I);
                        tUR(i1,:)=scandataR(i1,I);
                        tScX(i1,:)=scandataX(i1,I);
                        tScY(i1,:)=scandataY(i1,I);
                        ptScX(i1,:)=pscandataX(i1,I);
                        ptScY(i1,:)=pscandataY(i1,I);

                        clear -regexp loc pointsdegrees normscanpoints
                    elseif method=="vector_sort"
                        tUG(i1,:)=scandataG(i1,sorting_vector);
                        tUR(i1,:)=scandataR(i1,sorting_vector);
                        tScX(i1,:)=scandataX(i1,sorting_vector);
                        tScY(i1,:)=scandataY(i1,sorting_vector);
                        ptScX(i1,:)=pscandataX(i1,sorting_vector);
                        ptScY(i1,:)=pscandataY(i1,sorting_vector);
                    end
                end

                %transpose for correct orientation
                tempUG=tUG.';
                tempUR=tUR.';
                tempScX=tScX.';
                tempScY=tScY.';
                ptempScX=ptScX.';
                ptempScY=ptScY.';
                %Prepare ImData object to output
                objout(i,1).UG=tempUG; objout(i,1).UR=tempUR; objout(i,1).ScY=tempScY ; objout(i,1).ScX=tempScX;
                objout(i,1).predScX=ptempScX; objout(i,1).predScY=ptempScY;
                if method=="theta_bin"
                    objout(i,1).YData=xmid;
                    YData(i,1)={xmid};
                    objout(i,1).y_pixel_size=theta_bin
                    objout(i,1).comment=sprintf('%s_%s','Spiral2D_Bin |',objout(i,1).comment);
                    objout(i,1).scanline.roi=[1;size(objout(i,1).UG,1)];
                    objout(i,1).Units(1,'Y')=array2table("Theta(Degrees)")
                elseif method=="theta_sort" | method=="vector_sort"
                    objout(i,1).YData=1:1:size(tempUG,1);
                    YData(i,1)={1:1:size(tempUG,1)};
                    objout(i,1).y_pixel_size=1;
                    objout(i,1).comment=sprintf('%s_%s','Spiral2D_Sort |',objout(i,1).comment);
                    objout(i,1).scanline.roi=[1;size(objout(i,1).UG,1)];
                    objout(i,1).Units(1,'Y')=array2table("Pixel num")
                end
                objout(i,1).y_pixel_num=size(objout(i,1).UG,1);
                %Prepare Raw Data to output
                TData(i,1)={objout(i,1).TData};
                tUGcell(i,1)={tempUG};
                tURcell(i,1)={tempUR};
                tScXcell(i,1)={tempScX};
                tScYcell(i,1)={tempScY};
                ptScXcell(i,1)={ptempScX};
                ptScYcell(i,1)={ptempScY};
            end


        end
        %% Shift Linescan data by X or Y pixels
        function [obj]= Shift_data(obj,dimension,shift,newdata)
            if newdata==1
                obj=copyobj2(obj)
            end

            for i=1:size(obj,1)

                if obj(i,1).TimeDim==dimension
                    imglinetime=obj(i,1).TData(2)-obj(i,1).TData(1)
                    elinetime=obj(i,1).eXData(2)-obj(i,1).eXData(1)
                    imgshift=floor(shift/imglinetime)
                    eshift=floor(shift/elinetime)
                else
                    imgshift=shift
                    eshift=0
                end
                obj(i,1).UG=circshift(obj(i,1).UG,imgshift,dimension);
                obj(i,1).UR=circshift(obj(i,1).UR,imgshift,dimension);
                obj(i,1).ScX=circshift(obj(i,1).ScX,imgshift,dimension);
                obj(i,1).ScY=circshift(obj(i,1).ScY,imgshift,dimension);
                obj(i,1).predScX=circshift(obj(i,1).predScX,imgshift,dimension);
                obj(i,1).predScY=circshift(obj(i,1).predScY,imgshift,dimension);
                obj(i,1).comment=sprintf('Shift| %s',obj(i,1).comment);
                if obj(i,1).TimeDim==dimension
                    obj(i,1).comment=sprintf('TShift| %s',obj(i,1).comment);
                end
                if obj(i,1).TimeDim==dimension
                    obj(i,1).Aux1=circshift(obj(i,1).Aux1,eshift,dimension);
                    obj(i,1).Aux2=circshift(obj(i,1).Aux1,eshift,dimension);
                end
            end
        end
        %% Add Child ROI to ImData object  %%added but not enough time to do it
        function [obj]= ROIops(obj,operation,Data,location,handle)
            %Add Child ROI to ImData object
            %Arguements in:
            %operation: 'add','deletelast','addnum','deletenum'
            %
            %Data: ImData object representing
            %
            %
            if operation=="add"
                if isempty(obj.ROIobj)==1;
                    obj.ROIobj=Data
                else
                    obj.ROIobj(end+1)=Data
                end
            elseif operation=="deletelast"
                ROIsize=size(obj.ROIobj,1);
                minusROIsize=ROIsize-1;
                if  ROIsize>1
                    obj.ROIobj=obj.ROIobj(1:minusROIsize);
                else
                    obj.ROIobj=[]
                end
            elseif operation=="deletenum"
                %             dataitems_index=1:1:numel(obj(i).ROIobj);
                %               flag = ~ismember(dataitems_index,location);
                %                 index = find(flag);
                %                 obj(i).ROIobj=obj(i).ROIobj(index);
                %
            end

        end
        %% Get Response Amplitudes+
        function [pks,locs,widths,proms,suc_fail,DFFUR_Accum] = Get_Response_Data(obj,APstarts,window,offset,Threshold)
            %Get Response Amplitudes+ function to calculate response DF's and
            %get data given peak times,window length and offset time
            %
            %
            APstarts=sort(APstarts,'ascend');
            APstarts=APstarts/1000
            APends=APstarts+window/1000
            for i=1:size(obj,1)
                for i=1:size(BKGstarts,2)
                    APindexes(i,:)=obj(i).TData>=APstarts(i)&obj(i).TData<=APends(i);
                    traceindexes(i,:)=obj(i).TData>=BKGends(i)&obj(i).TData<=APends(i)+0.02;
                end
                offsetvals=uint16(offset/obj(i).linetime);
                offsetelements(1,1)=-double(offsetvals)-sum(APindexes(1,:),'all')
                baselineindexes=circshift(APindexes,offsetelements,2)
                for i=1:size(baselineindexes,1)
                    %get raw Green AP and BKG data irrespective of Displayed Data
                    UG_rawBKGData(i,1)=mat2cell(obj(i).UG(:,baselineindexes(i,:)),size(obj(i).UG(:,baselineindexes(i,:)),1))
                    UG_rawAPData(i,1)=mat2cell(obj(i).UG(:,APindexes(i,:)),size(obj(i).UG(:,APindexes(i,:)),1))
                    %get raw Green AP and BKG data irrespective of Displayed Data
                    UR_rawBKGData(i,1)=mat2cell(obj(i).UR(:,baselineindexes(i,:)),size(obj(i).UR(:,baselineindexes(i,:)),1))
                    UR_rawAPData(i,1)=mat2cell(obj(i).UR(:,APindexes(i,:)),size(obj(i).UR(:,APindexes(i,:)),1))
                    %Get X Coordinates
                    ScX_rawAPData(i,1)=mat2cell(double(obj(i).ScX(:,APindexes(i,:))),size(obj(i).ScX(:,APindexes(i,:)),1))
                    predScX_rawAPData(i,1)=mat2cell(obj(i).predScX(:,APindexes(i,:)),size(obj(i).predScX(:,APindexes(i,:)),1))
                    %Get Y Coordinates
                    ScY_rawAPData(i,1)=mat2cell(double(obj(i).ScY(:,APindexes(i,:))),size(obj(i).ScY(:,APindexes(i,:)),1))
                    predScY_rawAPData(i,1)=mat2cell(obj(i).predScY(:,APindexes(i,:)),size(obj(i).predScY(:,APindexes(i,:)),1))
                end

                APamps=cell2mat(cellfun(@(x)nanmean(x,'all'),APdata,'UniformOutput',false))
                BKGamps=cell2mat(cellfun(@(x)nanmean(x,'all'),bkgdata,'UniformOutput',false))
                AP_XProfiles=cellfun(@(x)nanmean(x),APdata,'UniformOutput',false)
                BKG_XProfiles=cellfun(@(x)nanmean(x),bkgdata,'UniformOutput',false)

                currentYProfiles=cellfun(@(x)nanmean(x,2),APdata,'UniformOutput',false)
                currentYProfiles=cellfun(@(x)nanmean(x,2),APdata,'UniformOutput',false)
                currentBKGYProfiles=cellfun(@(x)nanmean(x,2),bkgdata,'UniformOutput',false)

                AP_UG_Profiles=cellfun(@(x)nanmean(x,2),UG_rawAPData,'UniformOutput',false)
                BKG_UG_Profiles=cellfun(@(x)nanmean(x,2),UG_rawBKGData,'UniformOutput',false)
                dUG_inc=cellfun(@(x,y) x-y,AP_UG_Profiles,BKG_UG_Profiles, 'UniformOutput',false)
                dFFUG_inc=cellfun(@(x,y,z) (x-y)./z,AP_UG_Profiles,BKG_UG_Profiles,BKG_UG_Profiles, 'UniformOutput',false)




                URbaselineIndex=obj(i).TData>=app.MinXSpinner.Value & obj(i).TData<=app.MinXSpinner.Value;
                URbaseline=mean(obj(i).UR(:,URbaselineIndex),"all")
                AP_UR_Profiles=cellfun(@(x)nanmean(x,2),UR_rawAPData,'UniformOutput',false)
                BKG_UR_Profiles=cellfun(@(x)nanmean(x,2),UR_rawBKGData,'UniformOutput',false)
                AP_UR=cell2mat(cellfun(@(x)nanmean(x,"all"),UR_rawAPData,'UniformOutput',false))
                BKG_UR=cell2mat(cellfun(@(x)nanmean(x,"all"),UR_rawBKGData,'UniformOutput',false))
                dAP_UR=bsxfun(@minus,AP_UR,BKG_UR);
                DFFUR_inc=bsxfun(@rdivide,dAP_UR,BKG_UR)
                DFFUR_Accum=cumsum(DFFUR_inc,1).'


                dUR_inc=cellfun(@(x,y) x-y,AP_UR_Profiles,BKG_UR_Profiles, 'UniformOutput',false)
                dFFUR_inc=cellfun(@(x,y,z) (x-y)./z,AP_UR_Profiles,BKG_UR_Profiles,BKG_UR_Profiles, 'UniformOutput',false)
                DFFCalamps=dFFUR_inc


                BKGstd=cell2mat(cellfun(@(x)std(x),BKG_XProfiles,'UniformOutput',false))
                APincrement=APamps-BKGamps
                APsucs=APincrement>Threshold*nanmean(BKGstd)

                pks=APincrement.';locs=APstarts,widths=app.MinWidthEditField.Value/1000,proms=APincrement.';suc_fail=APsucs


                allScX=cat(1,ScX_rawAPData{1,1},ScX_rawAPData{2,1},ScX_rawAPData{3,1},ScX_rawAPData{4,1});
                allScY=cat(1,ScY_rawAPData{1,1},ScY_rawAPData{2,1},ScY_rawAPData{3,1},ScY_rawAPData{4,1});

                %                     allScX=cat(1,AP0ScX,AP1ScX,AP2ScX,AP3ScX,AP4ScX)
                %                     allScY=cat(1,AP0ScY,AP1ScY,AP2ScY,AP3ScY,AP4ScY)
                minxco=min(allScX(:,:),[],'all')
                maxxco=max(allScX(:,:),[],'all')
                minyco=min(allScY(:,:),[],'all')
                maxyco=max(allScY(:,:),[],'all')
                gridx=double(meshgrid(minxco:app.res:maxxco,minxco:app.res:maxxco));
                gridy=double(meshgrid(minyco:app.res:maxyco,minyco:app.res:maxyco));

            end
        end
        %% Correct photobleaching
        function objout = bleach_correct(obj,line2_binsize)
            %
            for i=1:size(obj,1)
                if obj(i,1).Type=="FF"
                    Data_as_2D=double(permute(reshape(obj(i,1).UG,1,numel(obj(i,1).UG(:,:,1)),size(obj(i,1).UG,3)),[2,3,1]));
                    m=size(Data_as_2D,1);
                    progressbar
                    for linenum=1:size(Data_as_2D,1)
                        if ~isnan(Data_as_2D(linenum,1))
                            baseline=asLS_smooth(Data_as_2D(linenum,:));
                            Data_as_2D(linenum,:)=Data_as_2D(linenum,:)-baseline.';
                            baseline=[]
                        end
                        progressbar(linenum/m)
                    end
                    Data_as_2D1=permute(Data_as_2D,[1,3,2]);
                    Data_as_3D=reshape(Data_as_2D1,size(obj(i,1).UG,1),size(obj(i,1).UG,2),size(Data_as_2D1,3));

                    objout(i,1)=obj(i,1);
                    objout(i,1).UG=Data_as_3D;
                    objout(i,1).comment=sprintf('Bleach_Correct| %s',obj(i,1).comment);
                elseif obj(i,1).Type=="Line2"
                    data2bin=double(obj(i,1).UG);
                    bin_dimension=1;
                    elements_2_bin=line2_binsize;
                    elements=1:1:size(data2bin,bin_dimension);
                    [a,~,~]=histcounts(elements,'NumBins',round(size(elements,2)/elements_2_bin));
                    colDist = [repelem(elements_2_bin, floor(size(data2bin,bin_dimension)/elements_2_bin)) rem(size(data2bin,bin_dimension),elements_2_bin)];
                    % probably need to permute here
                    binned_data_as_cell=mat2cell(data2bin,a,size(data2bin,2));
                    mean_of_binned_cells=cellfun(@nanmean,binned_data_as_cell,repmat({bin_dimension},numel(a),1),'UniformOutput',0);
                    baselines=cellfun(@(x) asLS_smooth(x),mean_of_binned_cells,"UniformOutput",false)
                    basetrans=cellfun(@(x) transpose(x),baselines,"UniformOutput",false);
                    for line=1:size(baselines,1)
                        subbase(line,:)=mean_of_binned_cells{line,1}-basetrans{line,1};
                    end
                    obj(i,1).UG=subbase;
                    obj(i,1).UR=imresize(obj(i,1).UR,size(obj(i,1).UG))
                    obj(i,1).ScX=imresize(obj(i,1).ScX,size(obj(i,1).UG))
                    obj(i,1).ScY=imresize(obj(i,1).ScY,size(obj(i,1).UG))
                    obj(i,1).predScX=imresize(obj(i,1).predScX,size(obj(i,1).UG))
                    obj(i,1).predScY=imresize(obj(i,1).predScY,size(obj(i,1).UG))
                    obj(i,1).y_pixel_num=size(subbase,1);
                    obj(i,1).y_pixel_size=obj(i,1).y_pixel_size*line2_binsize;
                    obj(i,1).scanline.roi=[1;obj(i,1).y_pixel_num];
                    obj(i,1).comment=sprintf('Bleach_Correct| %s',obj(i,1).comment);
                    objout=obj;
                end
            end
        end
        %% Bin in 2Dimensions
        function objout = bin2D(obj,Xbin,Ybin,Zbin)
            for i=1:size(obj,1)
                obj(i,1).UG=twoD_binning(obj(i,1).UG,Xbin,Ybin,Zbin);
                obj(i,1).UR=twoD_binning(obj(i,1).UR,Xbin,Ybin,Zbin);
                obj(i,1).ScX=twoD_binning(obj(i,1).ScX,Xbin,Ybin,Zbin);
                obj(i,1).ScY=twoD_binning(obj(i,1).ScY,Xbin,Ybin,Zbin);
                obj(i,1).predScX=twoD_binning(obj(i,1).predScX,Xbin,Ybin,Zbin);
                obj(i,1).predScY=twoD_binning(obj(i,1).predScY,Xbin,Ybin,Zbin);
                obj(i,1).y_pixel_num=size(obj(i,1).UG,1);
                obj(i,1).y_pixel_size=obj(i,1).y_pixel_size*Ybin;
                obj(i,1).scanline.roi=[1;obj(i,1).y_pixel_num];
                obj(i,1).comment=sprintf('BinX_%d|BinY_%d| %s',Xbin,Ybin,obj(i,1).comment);
                obj(i,1).x_pixel_num=size(obj(i,1).UG,2);
                obj(i,1).x_pixel_size=obj(i,1).x_pixel_size*Xbin;
                obj(i,1).XData=imresize(obj(i,1).XData,[1,size(obj(i,1).UG,2)]);
                obj(i,1).YData=imresize(obj(i,1).YData,[1,size(obj(i,1).UG,1)]);
            end
            objout=obj
        end
        %% Converts Folded Frame ImData to Line2 by collapsing the X dimension
        function objout = FF2Line2(obj,dim)
            for i=1:size(obj,1)
                if dim==2
                obj(i,1).UG=squeeze(nanmean(obj(i,1).UG,2));
                obj(i,1).UR=squeeze(nanmean(obj(i,1).UR,2));
                obj(i,1).ScX=squeeze(nanmean(obj(i,1).ScX,2));
                obj(i,1).ScY=squeeze(nanmean(obj(i,1).ScY,2));
                obj(i,1).predScY=squeeze(nanmean(obj(i,1).predScY,2));
                obj(i,1).predScX=squeeze(nanmean(obj(i,1).predScX,2));
                obj(i,1).y_pixel_num=size(obj(i,1).UG,1);
                obj(i,1).y_pixel_size=obj(i,1).y_pixel_size;
                obj(i,1).scanline.roi=[1;obj(i,1).y_pixel_num];
                obj(i,1).Type='Line2';
                obj(i,1).comment=sprintf('FF2L2| %s',obj(i,1).comment);
                obj(i,1).x_pixel_num=size(obj(i,1).UG,2);
                obj(i,1).x_pixel_size=obj(i,1).linetime;
                obj(i,1).XData=obj(i,1).TData;
                obj(i,1).TimeDim=2;
                elseif dim==1
                obj(i,1).UG=squeeze(nanmean(obj(i,1).UG,1));
                obj(i,1).UR=squeeze(nanmean(obj(i,1).UR,1));
                obj(i,1).ScX=squeeze(nanmean(obj(i,1).ScX,1));
                obj(i,1).ScY=squeeze(nanmean(obj(i,1).ScY,1));
                obj(i,1).predScY=squeeze(nanmean(obj(i,1).predScY,1));
                obj(i,1).predScX=squeeze(nanmean(obj(i,1).predScX,1));
                obj(i,1).y_pixel_num=size(obj(i,1).UG,1);
                obj(i,1).y_pixel_size=obj(i,1).y_pixel_size;
                obj(i,1).scanline.roi=[1;obj(i,1).y_pixel_num];
                obj(i,1).Type='Line2';
                obj(i,1).comment=sprintf('FF2L2| %s',obj(i,1).comment);
                obj(i,1).x_pixel_num=size(obj(i,1).UG,2);
                obj(i,1).x_pixel_size=obj(i,1).linetime;
                obj(i,1).XData=obj(i,1).TData;
                obj(i,1).TimeDim=2;
                end
            end
            objout=obj
        end
        %% Correct photobleaching
        function objout = t_Filter(obj,window,type,line2_binsize,func)
            %
            for i=1:size(obj,1)
                if obj(i,1).Type=="FF"
                    Data_as_2D=double(permute(reshape(obj(i,1).UG,1,numel(obj(i,1).UG(:,:,1)),size(obj(i,1).UG,3)),[2,3,1]));
                    try
                        URData_as_2D=double(permute(reshape(obj(i,1).UR,1,numel(obj(i,1).UR(:,:,1)),size(obj(i,1).UR,3)),[2,3,1]));
                    end
                    m=size(Data_as_2D,1);
                    progressbar
                    for linenum=1:size(Data_as_2D,1)
                        if ~isnan(Data_as_2D(linenum,1))
                            Data_as_2D(linenum,:)=func(Data_as_2D(linenum,:));
                            try
                                URData_as_2D(linenum,:)=func(URData_as_2D(linenum,:));
                            end
                        end
                        progressbar(linenum/m)
                    end
                    Data_as_2D1=permute(Data_as_2D,[1,3,2]);
                    Data_as_3D=reshape(Data_as_2D1,size(obj(i,1).UG,1),size(obj(i,1).UG,2),size(Data_as_2D1,3));
                    try
                        URData_as_2D1=permute(URData_as_2D,[1,3,2]);
                        URData_as_3D=reshape(URData_as_2D1,size(obj(i,1).UR,1),size(obj(i,1).UR,2),size(URData_as_2D1,3));
                    end
                    objout(i,1)=obj(i,1);
                    objout(i,1).UG=Data_as_3D;
                    try
                        objout(i,1).UR=URData_as_3D;
                    end
                    objout(i,1).comment=sprintf('%s| %s',func2str(func),obj(i,1).comment);
                elseif obj(i,1).Type=="Line2"
                    data2bin=double(obj(i,1).UG);
                    try
                        URdata2bin=double(obj(i,1).UR);
                    end
                    bin_dimension=1;
                    elements_2_bin=line2_binsize;
                    elements=1:1:size(data2bin,bin_dimension);
                    [a,~,~]=histcounts(elements,'NumBins',round(size(elements,2)/elements_2_bin));
                    colDist = [repelem(elements_2_bin, floor(size(data2bin,bin_dimension)/elements_2_bin)) rem(size(data2bin,bin_dimension),elements_2_bin)];

                    binned_data_as_cell=mat2cell(data2bin,a,size(data2bin,2));
                    mean_of_binned_cells=cellfun(@nanmean,binned_data_as_cell,repmat({bin_dimension},numel(a),1),'UniformOutput',0);
                    baselines=cellfun(@(x) func(x),mean_of_binned_cells,"UniformOutput",false)
                    try
                        URbinned_data_as_cell=mat2cell(URdata2bin,a,size(URdata2bin,2));
                        URmean_of_binned_cells=cellfun(@nanmean,URbinned_data_as_cell,repmat({bin_dimension},numel(a),1),'UniformOutput',0);
                        URbaselines=cellfun(@(x) func(x),URmean_of_binned_cells,"UniformOutput",false)
                    end
                    obj(i,1).UG=cell2mat(baselines);
                    obj(i,1).UR=cell2mat(URbaselines);
                    obj(i,1).ScX=imresize(obj(i,1).ScX,size(obj(i,1).UG))
                    obj(i,1).ScY=imresize(obj(i,1).ScY,size(obj(i,1).UG))
                    obj(i,1).predScX=imresize(obj(i,1).predScX,size(obj(i,1).UG))
                    obj(i,1).predScY=imresize(obj(i,1).predScY,size(obj(i,1).UG))
                    obj(i,1).y_pixel_num=size(baselines,1);
                    obj(i,1).y_pixel_size=obj(i,1).y_pixel_size*line2_binsize;
                    obj(i,1).scanline.roi=[1;obj(i,1).y_pixel_num];
                    obj(i,1).comment=sprintf('%s| %s',func2str(func),obj(i,1).comment);
                    obj(i,1).YData=1:1:size(obj(i,1).UG,1);
                    objout=obj;
                end
            end
        end
        function obj = fill_fields(obj,varargin)
            %%%
            %%%
            %%%
            %
            p=inputParser
            addParameter(p, 'YData', [], @(x) isvector(x) || isempty(x));
            addParameter(p, 'XData', [], @(x) isvector(x) || isempty(x));
            addParameter(p, 'ZData', [], @(x) isvector(x) || isempty(x));
            addParameter(p, 'TData', [], @(x) isvector(x) || isempty(x));
            addParameter(p, 'x_pixel_num', [],@isscalar) ;
            addParameter(p, 'y_pixel_num', [],@isscalar);
            addParameter(p, 'x_pixel_size', [],@isscalar) ;
            addParameter(p, 'y_pixel_size', [],@isscalar);
            addParameter(p, 'comment',[],@ischar) ;
            addParameter(p, 'Type', [],@ischar) ;
            addParameter(p, 'file', [],@ischar) ;
            addParameter(p, 'Subtype', [],@ischar) ;
            addParameter(p, 'TimeDim', [],@isscalar);
            addParameter(p, 'XDim', [],@isscalar) ;
            addParameter(p, 'YDim', [],@isscalar) ;
            addParameter(p, 'tauDim', [],@isscalar);
            addParameter(p, 'DepthDim', [],@isscalar) ;
            addParameter(p, 'scanline', [],@isstruct) ;
            parse(p, varargin{:});
            a=0

            %         obj(i,1).UG=cell2mat(baselines);
            %                     obj(i,1).UR=imresize(obj(i,1).UR,size(obj(i,1).UG))
            %                     obj(i,1).ScX=imresize(obj(i,1).ScX,size(obj(i,1).UG))
            %                     obj(i,1).ScY=imresize(obj(i,1).ScY,size(obj(i,1).UG))
            %                     obj(i,1).predScX=imresize(obj(i,1).predScX,size(obj(i,1).UG))
            %                     obj(i,1).predScY=imresize(obj(i,1).predScY,size(obj(i,1).UG))
            %                     obj(i,1).y_pixel_num=size(baselines,1);
            %                     obj(i,1).y_pixel_size=obj(i,1).y_pixel_size*line2_binsize;
            %                     obj(i,1).scanline.roi=[1;obj(i,1).y_pixel_num];
            %                     obj(i,1).comment=sprintf('t_filter| %s',obj(i,1).comment);
            %                     obj(i,1).YData=1:1:size(obj(i,1).UG,1);
            %                     objout=obj;
        end
        function objout = bkgfromLS(obj,tmin,tmax,res,smooth,notnums)
            %%%ImData Method bkgfromLS
            %%%
            %%%     Input Arguements:
            %%%                 tmin: minimum time(s) for background FF
            %%%                 tmax: maximum time(s) for backgroundf FF
            %%%                 res: Resolution to interpolate
            %%%                 smooth: pixels to smooth using smooth2a
            %%%                 notnums=replaces NaNs with nearest real
            %%%                 numbers
            %%%     Output Variable
            %%%                 objout : returns ImData object
            %%%                 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %Get Time indexs for Frame scan
            Data=obj
            Tidx=Data.TData > tmin & Data.TData <tmax

            %linearise selected data
            GVals=double(reshape(Data.UG(:,Tidx),numel(Data.UG(:,Tidx)),1));
            RVals=double(reshape(Data.UR(:,Tidx),numel(Data.UR(:,Tidx)),1));
            XVals=double(reshape(Data.ScX(:,Tidx),numel(Data.ScX(:,Tidx)),1));
            YVals=double(reshape(Data.ScY(:,Tidx),numel(Data.ScY(:,Tidx)),1));
            %minimum and maximum co-ordinates
            minX=min(XVals);
            minY=min(YVals);
            maxY=max(YVals);
            maxX=max(XVals);
            %generate grid
            [gridx,gridy]=meshgrid(minX:res:maxX,minY:res:maxY);
            %generate interpolant
            intFallG=scatteredInterpolant(XVals,YVals,GVals,'natural','none');
            intFallR=scatteredInterpolant(XVals,YVals,RVals,'natural','none');
            %interpolate data
            UG_BKG=intFallG(gridx(:,:),gridy(:,:));
            UR_BKG=intFallR(gridx(:,:),gridy(:,:));
            %get X and Y scale
            XData=gridx(1,:);
            YData=gridy(:,1).';
            %Smoothing
            UG_BKG=smooth2a(UG_BKG,smooth,smooth);
            UR_BKG=smooth2a(UR_BKG,smooth,smooth);
            %Set Background data
            if notnums==1
                Data.bkgUG=SubsNaNs(UG_BKG);
                Data.bkgUR=SubsNaNs(UR_BKG);
            else
                Data.bkgUG=UG_BKG;
                Data.bkgUR=UR_BKG;
            end
            Data.bkgXData=XData
            Data.bkgYData=YData
            objout=Data
        end

        function objout = Line2_2_Mean(objarray,func,linescan)
            if linescan==1
                UGCell=arrayfun(@(o) o.UG, objarray, 'UniformOutput', false);
                URCell=arrayfun(@(o) o.UR, objarray, 'UniformOutput', false);
                ScXCell=arrayfun(@(o) o.ScX, objarray, 'UniformOutput', false);
                ScYCell=arrayfun(@(o) o.ScY, objarray, 'UniformOutput', false);
                predScXCell=arrayfun(@(o) o.predScX, objarray, 'UniformOutput', false);
                predScYCell=arrayfun(@(o) o.predScY, objarray, 'UniformOutput', false);
                TDataCell=arrayfun(@(o) o.TData, objarray, 'UniformOutput', false);
                Aux1Cell=arrayfun(@(o) o.Aux1, objarray, 'UniformOutput', false);
                Aux2Cell=arrayfun(@(o) o.Aux2, objarray, 'UniformOutput', false);
                try
                    UGarray=cell2mat(permute(UGCell,[3,2,1]));
                    URarray=cell2mat(permute(URCell,[3,2,1]));
                    ScXarray=cell2mat(permute(ScXCell,[3,2,1]));
                    ScYarray=cell2mat(permute(ScYCell,[3,2,1]));
                    predScXarray=cell2mat(permute(predScXCell,[3,2,1]));
                    predScYarray=cell2mat(permute(predScYCell,[3,2,1])); 
                catch ME
                    %check error
                    if ME.identifier=="MATLAB:catenate:dimensionMismatch" %dimension mismatch
                        sizes=cell2mat(cellfun(@(x) size(x),UGCell,'UniformOutput',false));
                        durations=cell2mat(cellfun(@(x) max(x,[],'all'),TDataCell,'UniformOutput',false));
                        UGCell=cellfun(@(x) imresize(x,[max(sizes(:,1)) max(sizes(:,2))]),UGCell,'UniformOutput',0);
                        URCell=cellfun(@(x) imresize(x,[max(sizes(:,1)) max(sizes(:,2))]),URCell,'UniformOutput',0);
                        ScXCell=cellfun(@(x) imresize(x,[max(sizes(:,1)) max(sizes(:,2))]),ScXCell,'UniformOutput',0);
                        ScYCell=cellfun(@(x) imresize(x,[max(sizes(:,1)) max(sizes(:,2))]),ScYCell,'UniformOutput',0);
                        predScYCell=cellfun(@(x) imresize(x,[max(sizes(:,1)) max(sizes(:,2))]),predScYCell,'UniformOutput',0);
                        predScXCell=cellfun(@(x) imresize(x,[max(sizes(:,1)) max(sizes(:,2))]),predScXCell,'UniformOutput',0);
                        TData=linspace(0,max(durations,[],'all'),max(sizes(:,2),[],'all'));
                    end
                    
                    UGarray=cell2mat(permute(UGCell,[3,2,1]));
                    URarray=cell2mat(permute(URCell,[3,2,1]));
                    ScXarray=cell2mat(permute(ScXCell,[3,2,1]));
                    ScYarray=cell2mat(permute(ScYCell,[3,2,1]));
                    predScXarray=cell2mat(permute(predScXCell,[3,2,1]));
                    predScYarray=cell2mat(permute(predScYCell,[3,2,1]));
                
                end

              
            elseif linescan==0
                UGCell=arrayfun(@(o) o.UG, objarray, 'UniformOutput', false);
                URCell=arrayfun(@(o) o.UR, objarray, 'UniformOutput', false);
                ScXCell=arrayfun(@(o) o.ScX, objarray, 'UniformOutput', false);
                ScYCell=arrayfun(@(o) o.ScY, objarray, 'UniformOutput', false);
                predScXCell=arrayfun(@(o) o.predScX, objarray, 'UniformOutput', false);
                predScYCell=arrayfun(@(o) o.predScY, objarray, 'UniformOutput', false);
                try
                    UGarray=cell2mat(permute(UGCell,[4,3,2,1]));
                    URarray=cell2mat(permute(URCell,[4,3,2,1]));
                    ScXarray=cell2mat(permute(ScXCell,[4,3,2,1]));
                    ScYarray=cell2mat(permute(ScYCell,[4,3,2,1]));
                    predScXarray=cell2mat(permute(predScXCell,[4,3,2,1]));
                    predScYarray=cell2mat(permute(predScYCell,[4,3,2,1]));
                catch
                    sizes=cell2mat(cellfun(@(x) size(x),UGCell,'UniformOutput',false));
                    UGCell=cellfun(@(x) imresize3(x,[max(sizes(:,1)) max(sizes(:,2)) max(sizes(:,3))]),UGCell,'UniformOutput',0);
                    URCell=cellfun(@(x) imresize3(x,[max(sizes(:,1)) max(sizes(:,2)) max(sizes(:,3))]),URCell,'UniformOutput',0);
                    ScXCell=cellfun(@(x) imresize3(x,[max(sizes(:,1)) max(sizes(:,2)) max(sizes(:,3))]),ScXCell,'UniformOutput',0);
                    ScYCell=cellfun(@(x) imresize3(x,[max(sizes(:,1)) max(sizes(:,2)) max(sizes(:,3))]),ScYCell,'UniformOutput',0);
                    predScYCell=cellfun(@(x) imresize3(x,[max(sizes(:,1)) max(sizes(:,2)) max(sizes(:,3))]),predScYCell,'UniformOutput',0);
                    predScXCell=cellfun(@(x) imresize3(x,[max(sizes(:,1)) max(sizes(:,2)) max(sizes(:,3))]),predScXCell,'UniformOutput',0);

                    UGarray=cell2mat(permute(UGCell,[4,3,2,1]));
                    URarray=cell2mat(permute(URCell,[4,3,2,1]));
                    ScXarray=cell2mat(permute(ScXCell,[4,3,2,1]));
                    ScYarray=cell2mat(permute(ScYCell,[4,3,2,1]));
                    predScXarray=cell2mat(permute(predScXCell,[4,3,2,1]));
                    predScYarray=cell2mat(permute(predScYCell,[4,3,2,1]));
                end
                end
            objout=copyobj2(objarray(1,1))
            if isempty(func)
                objout.UG=UGarray;
                objout.UR=URarray;
                objout.ScX=ScXarray;
                objout.ScY=ScYarray;
                objout.predScX=predScXarray;
                objout.predScY=predScYarray;
                objout.Type='FF';
                objout.file='FF';
                objout.XData=objout.TData;
                objout.TData=1:1:size(objout.UG,3);
                
            else
                ME.identifier='w';
                objout.UG=func(UGarray);
                objout.UR=func(URarray);
                objout.ScX=func(ScXarray);
                objout.ScY=func(ScYarray);
                objout.predScX=func(predScXarray);
                objout.predScY=func(predScYarray);
                objout.comment=sprintf('%s_%s',func2str(func),objout.comment);
                if ME.identifier=="MATLAB:catenate:dimensionMismatch" %dimension mismatch
                objout.TData=TData;
                objout.XData=TData;
                end
            end
        end

        function obj=Kalman_Stack_Filter(obj,channel,gain,percentvar)
            % function imageStack=Kalman_Stack_Filter(imageStack,percentvar,gain)
            %
            % Purpose
            % Implements a predictive Kalman-like filter in the time domain of the image
            % stack. Algorithm taken from Java code by C.P. Mauer.
            % http://rsb.info.nih.gov/ij/plugins/kalman.html
            %
            % Inputs
            % imageStack - a 3d matrix comprising of a noisy image sequence. Time is
            %              the 3rd dimension.
            % gain - the strength of the filter [0 to 1]. Larger gain values means more
            %        aggressive filtering in time so a smoother function with a lower
            %        peak. Gain values above 0.5 will weight the predicted value of the
            %        pixel higher than the observed value.
            % percentvar - the initial estimate for the noise [0 to 1]. Doesn't have
            %              much of an effect on the algorithm.
            %
            % Output
            % imageStack - the filtered image stack
            %
            % Note:
            % The time series will look noisy at first then become smoother as the
            % filter accumulates evidence.
            %
            % Rob Campbell, August 2009

            if channel==1
                imageStack=double(obj.UG);
            elseif channel==2
                imageStack=double(obj.UR);
            end
            % Process input arguments
            if nargin<2, gain=0.5;          end
            if nargin<3, percentvar = 0.05; end


            if gain>1.0||gain<0.0
                gain = 0.8;
            end

            if percentvar>1.0 || percentvar<0.0
                percentvar = 0.05;
            end


            %Copy the last frame onto the end so that we filter the whole way
            %through
            imageStack(:,:,end+1)=imageStack(:,:,end);


            %Set up variables
            width = size(imageStack,1);
            height = size(imageStack,2);
            stacksize = size(imageStack,3);

            tmp=ones(width,height);


            %Set up priors
            predicted = imageStack(:,:,1);
            predictedvar = tmp*percentvar;
            noisevar=predictedvar;


            %Now conduct the Kalman-like filtering on the image stack
            for i=2:stacksize-1
                stackslice = imageStack(:,:,i+1);
                observed = stackslice;

                Kalman = predictedvar ./ (predictedvar+noisevar);
                corrected = gain*predicted + (1.0-gain)*observed + Kalman.*(observed-predicted);
                correctedvar = predictedvar.*(tmp - Kalman);

                predictedvar = correctedvar;
                predicted = corrected;
                imageStack(:,:,i)=corrected;
            end


            imageStack(:,:,end)=[];

            if channel==1
                obj.UG=imageStack;
            elseif channel==2
                obj.UR=imageStack;
            end

        end

        function img=IJsave2tif(Data,path,Channel,save,normalise,Baseline_Min,Baseline_Max)
            % function ImDataobject.IJsave2tif(path,Channel)
            %
            % Purpose
            %
            %
            %
            %
            % Inputs
            % imageStack - Data (ImData Object)
            % gain - path
            % Channel - Channel 2 Export
            %
            % Output
            % imageStack - the filtered image stack
            %
            % Note:
            %
            % Tom Jensen 2022
            if Data.Type=="XY"
                if Channel=="Combined"
                    img2save=cat(4,Data.UG,Data.UR);
                else
                    img2save=Data.(Channel);
                end                
                img=copytoImagePlus(img2save,'XYZCT');
                cal=img.getCalibration();
                cal.pixelWidth=Data.x_pixel_size;
                cal.pixelHeight=Data.y_pixel_size;
                if size(Data.ZData)==1
                    cal.pixelDepth=Data.ZData(1);
                else
                    cal.pixelDepth=Data.ZData(2)-Data.ZData(1);
                end
                img.setCalibration(cal);
                img.setTitle(sprintf('%s_%s',Data.comment,Channel));
                img.show();
                 if save==1
                pause(1);
                eval(sprintf("MIJ.run('Tiff...','path=%s%s_%s.tif');",strrep(path, '\', '/'),matlab.lang.makeValidName(Data.comment),Channel));
                img.close();
                 end

            elseif Data.Type=="Line2"
                if Channel=="Combined"
                    img2save=cat(3,Data.UG,Data.UR);
                else
                    img2save=Data.(Channel);
                end  
                if normalise~=0
                    if Channel=="UG"
                        Channel_1=1;
                    elseif Channel=="UR"
                        Channel_1=2;
                    end
                    [~,img2save,~,~,~]=Data.Image_LSData_2D(Channel_1,[],normalise,Baseline_Min,Baseline_Max);
                end
%                 img2save=Data.(Channel);
                img=copytoImagePlus(img2save,'YXZCT');
                cal=img.getCalibration();
                cal.pixelWidth=Data.TData(2)-Data.TData(1);
                cal.pixelHeight=Data.YData(2)-Data.YData(1);
                cal.pixelDepth=1;
                img.setCalibration(cal);
                img.setTitle(sprintf('%s_%s',Data.comment,Channel));
                img.show();
                 if save==1
                pause(1);
                eval(sprintf("MIJ.run('Tiff...','path=%s%s_%s.tif');",path,matlab.lang.makeValidName(Data.comment),Channel));
                img.close();
                end
            elseif Data.Type=="FF"
                if Data.Subtype=="Single"
                    if Channel=="Combined"
                        img2save=cat(4,Data.UG,Data.UR);
                    else
                        img2save=Data.(Channel);
                    end   

                    
                    img=copytoImagePlus(img2save,'YXTZC');
                    cal=img.getCalibration();
                    cal.pixelWidth=Data.XData(2)-Data.XData(1);
                    cal.pixelHeight=Data.YData(2)-Data.YData(1);
                    cal.pixelDepth=1;
                    cal.frameInterval=Data.linetime;
                    img.setCalibration(cal);
                    img.setTitle(sprintf('%s_%s',Data.comment,Channel));
                    img.show();
                elseif Data.Subtype=="FF4D"
                    if Channel=="Combined"
                        img2save=cat(5,Data.UG,Data.UR);
                    else
                        img2save=Data.(Channel);
                    end   
                    img=copytoImagePlus(img2save,'YXTZC');
                    cal=img.getCalibration();
                    cal.pixelWidth=Data.XData(2)-Data.XData(1);
                    cal.pixelHeight=Data.YData(2)-Data.YData(1);
                    cal.pixelDepth=Data.ZData(2)-Data.ZData(1);
                    cal.frameInterval=Data.linetime;
                    img.setCalibration(cal);
                    img.setTitle(sprintf('%s_%s',Data.comment,Channel));
                    img.show();

                end    
                if save==1
                pause(1);
                eval(sprintf("MIJ.run('Tiff...','path=%s%s_%s.tif');",strrep(path, '\', '/'),matlab.lang.makeValidName(Data.comment),Channel));
                img.close();
                end
                
            end

        end
        %%Crop Data for multiple selections a fudge for now as doesn't work
        %%with ephys
          function Data = Crop_by_tidx(Data,idx,notequal,start,stop)
            if notequal==0
                Data.UG=Data.UG(:,idx);
                Data.UR=Data.UR(:,idx);
                Data.ScX=Data.ScX(:,idx);
                Data.ScY=Data.ScY(:,idx);
                Data.predScX=Data.predScX(:,idx);
                Data.predScY=Data.predScY(:,idx);
                dur=Data.TData(2)*size(Data.TData,Data.TimeDim);
                Data.TData=Data.TData(idx);
                %Data.TData=linspace(Data.TData(1),dur,size(Data.UG,Data.TimeDim))
                Data.TData=Data.TData-Data.TData(1);
                Data.XData=Data.TData;
                Data.x_pixel_num=size(Data.UG,2);
                Data.y_pixel_num=size(Data.UG,1);
                Data.comment=sprintf('CropMultiple | %s',Data.comment)
                try
                Data.Aux1=Data.Aux1(idx);
                Data.Aux2=Data.Aux2(idx);
                Data.eXData=Data.eXData(idx);
                %Data.eXData=linspace(Data.eXData(1),dur,size(Data.Aux1,2))
                Data.eXData=Data.eXData-Data.eXData(1)
                catch
    
                end
            elseif notequal==1
                idx=Data.TData>=start & Data.TData<=stop;
                Data.UG=Data.UG(:,~idx);
                Data.UR=Data.UR(:,~idx);
                Data.ScX=Data.ScX(:,~idx);
                Data.ScY=Data.ScY(:,~idx);
                Data.predScX=Data.predScX(:,~idx);
                Data.predScY=Data.predScY(:,~idx);
                Data.TData=Data.TData(~idx);
                dur=Data.TData(2)*size(Data.TData,Data.TimeDim);
                
                Data.TData=linspace(Data.TData(1),dur,size(Data.UG,Data.TimeDim))
                Data.TData=Data.TData-Data.TData(1);
                Data.XData=Data.TData;
                Data.x_pixel_num=size(Data.UG,2);
                Data.y_pixel_num=size(Data.UG,1);
                Data.comment=sprintf('Cropidx|%s',Data.comment)
                try
                eidx=Data.eXData>=start & Data.eXData<=stop;
                Data.Aux1=Data.Aux1(~eidx);
                Data.Aux2=Data.Aux2(~eidx);
                Data.eXData=Data.eXData(~eidx);
                Data.eXData=linspace(Data.eXData(1),dur,size(Data.Aux1,2))
                Data.eXData=Data.eXData-Data.eXData(1)  
                catch
                end
            end
        end
        %%
        function dataout= Change_TData(Data,channel,starttime,endtime)
        switch channel
            case "ephys"
                Data.eXData=linspace(starttime,endtime,size(Data.eXData,2));
            case "img"
                Data.TData=linspace(starttime,endtime,size(Data.TData,2));
                Data.linetime=Data.TData(2)-Data.TData(1);
            case "both"
                Data.eXData=linspace(starttime,endtime,size(Data.eXData,2));
                Data.TData=linspace(starttime,endtime,size(Data.TData,2));
                Data.linetime=Data.TData(2)-Data.TData(1);
        end        
        dataout=Data;
        end
        %%
        function dataout= Change_FieldVal(Data,field,value)
        Data.(field)=value;  
        dataout=Data;
        end
       
    end
end