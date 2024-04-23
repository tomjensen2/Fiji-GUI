function defaultvar=defaultvars()
%% Function to initialise the default parameters for various functions
        %Defaults for Kalman filter
        defaultvar.Kalman_gain=0.7;
        defaultvar.Kalman_Percentvar=0.5;

        % defaults for Asymmetric least square (asLS) baseline removal
        defaultvar.aals_smoothness=1e3;
        defaultvar.aals_min_diff=1e-6;

        % defaults for Spiral Imterpolation
        defaultvar.pixel_size=0.11;
        defaultvar.smooth=2;
        defaultvar.ScX=1;

        % defaults for KZ Spiral Imterpolation
        defaultvar.psffwhm=0.35;
        defaultvar.gain=0.2;
        defaultvar.background=200;

        % defaults deconvulution of Exponential decay
        defaultvar.tau=20;

        % defaults Moving average
        defaultvar.smoothing_window=2;

        defaultvar.PCpath2add1="javaaddpath 'C:\Program Files\MATLAB\R2022b\java\mij.jar'";
        defaultvar.PCpath2add2="javaaddpath 'C:\Program Files\MATLAB\R2022b\java\ij-1.53t.jar'";
        
        defaultvar.macpath2add1="javaaddpath '/Applications/MATLAB_R2022b.app/java/MIJ.jar'";
        defaultvar.macpath2add2="javaaddpath '/Applications/MATLAB_R2022b.app/java/ij-1.53t.jar'";

        defaultvar.FGUIpath='C:/Users/Thomas Jensen/Documents/Github/Fiji-GUI/';
        defaultvar.MLpath='C:/Users/Thomas Jensen/Documents/MATLAB/';
        defaultvar.Macrospath='C:/Users/Thomas Jensen/Documents/Github/Fiji-GUI/Scripts/IJ Macros/';
        defaultvar.Documentspath='C:/Users/Thomas Jensen/Documents/';
        defaultvar.IJPath='C:/Users/Thomas Jensen/Documents/Fiji.app/';

%
end