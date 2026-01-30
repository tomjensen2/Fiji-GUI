function defaultvar=setup_run_first()
%% Function to initialise the default parameters and output defaults as .json file
%% In Progress, should save editing the defaultvars.m file        
        %defaults for Rho binning
        defaultvar.Rho_binsize=0.075;

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

        %defaults for crop by time index
        defaultvar.keeptimeidx='keep'  %must be char for inputdlg
        defaultvar.times='[0.2,0.3,0.4,0.5,0.6]'; %must be char for inputdlg
        defaultvar.back='0.05';  %must be char for inputdlg
        defaultvar.forward='0.02';  %must be char for inputdlg
        
        %Add variables for custom functions that can be added
        defaultvar.Custom_Functions(1,1)="@(x) diff(x)";
        defaultvar.Custom_Functions(1,2)="test";
        
        %% get paths and copy MIJ-Fiji/ImageJ
        % Create a figure
        hFig = figure('Name', 'Temporary Message', 'NumberTitle', 'off', ...
              'MenuBar', 'none', 'ToolBar', 'none', 'Position', [500, 500, 300, 100]);

        % Create a text box
        uicontrol('Style', 'text', ...
          'String', 'Please select your FIJI-GUI directory.', ...
          'FontSize', 15, ...
          'HorizontalAlignment', 'center', ...
          'Position', [20, 40, 260, 30]);

        % Pause for 5 seconds
        pause(5);

        % Close the figure
        close(hFig);
        %select path of Fiji-GUI
        defaultvar.FGUIpath=uigetdir('Please select your FIJI-GUI directory');
        %select path of Documents/MATLAB
        defaultvar.MLpath=userpath;
        defaultvar.Macrospath=sprintf('%s%s',defaultvar.FGUIpath,'/Scripts/IJ Macros/');
        defaultvar.Documentspath=fileparts(defaultvar.MLpath);
        if ispc==1
            defaultvar.IJPath=uigetdir(fileparts(defaultvar.MLpath),'Please select your ImageJ Directory');
        elseif ismac==1
            [file,location]=uigetfile('*.*','Please select your ImageJ package',fileparts(defaultvar.MLpath));
            defaultvar.IJPath=fullfile(location,file)
        end
        
% Specify the source file (known location)
mij_file = sprintf('%s%s',defaultvar.FGUIpath,'/Utility/For PC/mij.jar'); % Update with your file path
searchDir=sprintf('%s%s',defaultvar.IJPath,'/jars/')
% Define the search pattern
searchPattern = 'ij-1*.jar';

% Search for matching files
matchingFiles = dir(fullfile(searchDir, searchPattern));
ij_file = fullfile(searchDir, matchingFiles(1).name);
[d,f,e]=fileparts(ij_file);

% Get the MATLAB installation java directory
matlabRoot = matlabroot;
targetDir = fullfile(matlabroot, 'java');
targetFile = fullfile(targetDir, [f, e]);
[d1,f1,e1]=fileparts(mij_file);
targetFile2 = fullfile(targetDir, [f1, e1]);

% Copy the file
try
    copyfile(ij_file, targetFile,'f');
    fprintf('IJ File successfully copied to: %s\n', targetFile);
    copyfile(mij_file, targetFile2,'f');
    fprintf('MIJ File successfully copied to: %s\n', targetFile);
catch ME
    error('Failed to copy the file: %s', ME.message);
end

        %default path for PC MATLAB java files
        defaultvar.PCpath2add1=targetFile;
        defaultvar.PCpath2add2=targetFile2;
        
filePath = fullfile(defaultvar.FGUIpath, 'defaults.json');
writestruct(defaultvar,sprintf('%s%s',defaultvar.FGUIpath,'/defaults.json'))        

end