function ff = fixfocus(msg)
%FIXFOCUS Properly open a selection dialog box in presence of a 'uifigure'.
%   FIXFOCUS provides a workaround to an annoying, long-running MATLAB bug
%   that opens a selection dialog box (such as a file selection dialog box
%   called with 'uigetfile') *behind* an app or 'uifigure' window and does
%   *not* return the focus back to it once the user closes the dialog box.
%
%   To apply the fix, call FIXFOCUS before opening the selection dialog box
%   and delete it right after:
%
%       ff = fixfocus;
%       [file,location] = uigetfile;
%       delete(ff);
%
%   FIXFOCUS can also be called with a text argument. This text displays in
%   the title bar during the short time the FIXFOCUS figure is visible.
%
%   FIXFOCUS works with the following selection dialog boxes:
%       uigetfile
%       uiputfile
%       uigetdir
%       uiopen
%       uisave
%
%See also uigetfile, uigetdir, uiputfile, uiopen, uisave

% Created 2024-05-13 by Jorg C. Woehl
% 2024-05-14 (JCW): Added 'uimenu' support.
% 2024-05-15 (JCW): Works now with last uifigure that had focus (even w/o callback)
%
% Inspired by https://www.mathworks.com/matlabcentral/answers/296305-appdesigner-window-ends-up-in-background-after-uigetfile#answer_427026

% Find the handle of the 'uifigure' whose callback is currently executing
appWindow = gcbf;
if isempty(appWindow)
    % If no callback is executing, find instead the last figure that had focus
    h = findall(groot, 'Type','figure');
    if isempty(h)
        error('uifix:UIFigureNotFound', 'App/uifigure window not found.');
    else
        % The first entry in an array of handles is the one on top (= had focus)
        appWindow = h(1);
    end
end

% Check if 'appWindow' has a menu bar
menuHeight = 0;
h = get(appWindow, 'Children');
if any(strcmp(get(h,'Type'), 'uimenu'))
    menuHeight = 22;
end

% Default text to display is that of 'appWindow's title bar
if (nargin < 1)
    msg = appWindow.Name;
end

% Create dummy figure (requires 'figure', not 'uifigure')
ff = figure('Position',appWindow.Position, 'MenuBar','none',...
    'Name',msg, 'Resize','off',...
    'NumberTitle','off', 'Visible','off',...
    'CloseRequestFcn','', 'DeleteFcn', @(src,event) figure(appWindow));

% Superimpose it on the title bar of 'appWindow'
ff.Position(2) = ff.Position(2) + ff.Position(4) + menuHeight;
ff.Position(4) = 0;

% Move it into focus, then make it invisible
ff.Visible = 'on';
drawnow;
ff.Visible = 'off';

end