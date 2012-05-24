function varargout = afq1(varargin)
% AFQ1 M-file for afq1.fig
%      AFQ1, by itself, creates a new AFQ1 or raises the existing
%      singleton*.
%
%      H = AFQ1 returns the handle to a new AFQ1 or the handle to
%      the existing singleton*.
%
%      AFQ1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AFQ1.M with the given input arguments.
%
%      AFQ1('Property','Value',...) creates a new AFQ1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before afq1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to afq1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help afq1

% Last Modified by GUIDE v2.5 22-Feb-2012 15:27:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @afq1_OpeningFcn, ...
                   'gui_OutputFcn',  @afq1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before afq1 is made visible.
function afq1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to afq1 (see VARARGIN)

% Choose default command line output for afq1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes afq1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% Clear the labels from the axes1.
set(handles.axes1,'xtickLabel',[])
set(handles.axes1,'ytickLabel',[])


return;


% --- Outputs from this function are returned to the command line.
function varargout = afq1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function menuFile_Callback(hObject, eventdata, handles)
% hObject    handle to menuFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menuEdit_Callback(hObject, eventdata, handles)
% hObject    handle to menuEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menuPlot_Callback(hObject, eventdata, handles)
% hObject    handle to menuPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menuPlotDemo_Callback(hObject, eventdata, handles)
% hObject    handle to menuPlotDemo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

disp('Plot Demo')

img = rand(128,128);
imagesc(img);

return
