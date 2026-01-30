function defaultvar=defaultvars()
%% Function to initialise the default parameters 
        
        %defaults for Rho binning
        defaultvar.Rho_binsize=0.075

        %Defaults for Kalman filter
        defaultvar.Kalman_gain=0.7;
        defaultvar.Kalman_Percentvar=0.5;

        % defaults for Asymmetric least square (asLS) baseline removal
        defaultvar.aals_smoothness=1e4;
        defaultvar.aals_min_diff=1e-4;

        % defaults for Spiral Imterpolation
        defaultvar.pixel_size=0.11;
        defaultvar.smooth=2;
        defaultvar.ScX=1;

        % defaults for KZ Spiral Imterpolation
        defaultvar.psffwhm=0.35;
        defaultvar.gain=0.2;
        defaultvar.background=200;

        % defaults deconvulution of Exponential decay
        defaultvar.tau=0.02;

        % defaults Moving average
        defaultvar.smoothing_window=2;

        % defaults sgolayfilt
        defaultvar.sgolay_order=1;
        defaultvar.sgolay_num=3;

        %default path for PC MATLAB java files
        defaultvar.PCpath2add1="javaaddpath 'C:\Program Files\MATLAB\R2022b\java\mij.jar'";
        defaultvar.PCpath2add2="javaaddpath 'C:\Program Files\MATLAB\R2022b\java\ij-1.53t.jar'";
        
        %default PC paths on install
        defaultvar.FGUIpath='C:/Users/Thomas Jensen/Documents/Github/Fiji-GUI/';
        defaultvar.MLpath='C:/Users/Thomas Jensen/Documents/MATLAB/';
        defaultvar.Macrospath='C:/Users/Thomas Jensen/Documents/Github/Fiji-GUI/Scripts/IJ Macros/';
        defaultvar.Documentspath='C:/Users/Thomas Jensen/Documents/';
        defaultvar.IJPath='C:/Users/Thomas Jensen/Documents/Fiji.app/';

        %default path for mac MATLAB java files
        defaultvar.macpath2add1="javaaddpath '/Applications/MATLAB_R2024a.app/java/MIJ.jar'";
        defaultvar.macpath2add2="javaaddpath '/Applications/MATLAB_R2024a.app/java/ij-1.53f.jar'";
       
        %default Mac paths on install
        defaultvar.macFGUIpath='/Users/thomasjensen/Documents/Github/Fiji-GUI/';
        defaultvar.macMLpath='/Users/thomasjensen/Documents/MATLAB/';
        defaultvar.macMacrospath='/Users/thomasjensen/Documents/Github/Fiji-GUI/Scripts/IJ Macros/';
        defaultvar.macDocumentspath='/Users/thomasjensen/Documents/';
        defaultvar.macIJPath='/Users/thomasjensen/Documents/Fiji.app/';
        
        %defaults for crop by time index
        defaultvar.keeptimeidx='keep'  %must be char for inputdlg
        defaultvar.times='[0.2,0.3,0.4,0.5,0.6]'; %must be char for inputdlg
        defaultvar.back='0.05';  %must be char for inputdlg
        defaultvar.forward='0.02';  %must be char for inputdlg
%
        defaultvar.Custom_Functions(1,1)="@(x) diff(x)";
        defaultvar.Custom_Functions(1,2)="test";

        %Add variables for custom functions that can be added

end