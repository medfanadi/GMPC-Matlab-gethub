function varargout = ResultatsFig(varargin)
% RESULTATSFIG M-file for ResultatsFig.fig
%      RESULTATSFIG, by itself, creates a new RESULTATSFIG or raises the existing
%      singleton*.
%
%      H = RESULTATSFIG returns the handle to a new RESULTATSFIG or the handle to
%      the existing singleton*.
%
%      RESULTATSFIG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTATSFIG.M with the given input arguments.
%
%      RESULTATSFIG('Property','Value',...) creates a new RESULTATSFIG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ResultatsFig_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ResultatsFig_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help ResultatsFig

% Last Modified by GUIDE v2.5 04-Mar-2009 09:19:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 0;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ResultatsFig_OpeningFcn, ...
                   'gui_OutputFcn',  @ResultatsFig_OutputFcn, ...
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


% --- Executes just before ResultatsFig is made visible.
function ResultatsFig_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ResultatsFig (see VARARGIN)

% Choose default command line output for ResultatsFig
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ResultatsFig wait for user response (see UIRESUME)
% uiwait(handles.FigResultat);


% --- Outputs from this function are returned to the command line.
function varargout = ResultatsFig_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function FigResultat_CreateFcn(hObject, eventdata, handles)
% --- Executes on button press in ElatBouton.

function ElatBouton_Callback(hObject, eventdata, handles)
Donnees=evalin('base','Resultat');
figure(1)
hold on
grid on
plot(Donnees(:,8),Donnees(:,1),'k')
plot(Donnees(:,8),Donnees(:,22),'r')



% --- Executes on button press in EcapBouton.
function EcapBouton_Callback(hObject, eventdata, handles)
Donnees=evalin('base','Resultat');
figure(2)
hold on
grid on
plot(Donnees(:,8),Donnees(:,2)*180/pi,'k')
plot(Donnees(:,8),Donnees(:,23)*180/pi,'r')

% --- Executes on button press in StAngleBouton.
function StAngleBouton_Callback(hObject, eventdata, handles)
Donnees=evalin('base','Resultat');
figure(3)
hold on
grid on
plot(Donnees(:,8),Donnees(:,27)*180/pi,'k')




% --- Executes on button press in DeriveBouton.
function DeriveBouton_Callback(hObject, eventdata, handles)
Donnees=evalin('base','Resultat');
figure(4)
hold on
grid on

plot(Donnees(:,8),Donnees(:,9)*180/pi,'k')
plot(Donnees(:,8),Donnees(:,10)*180/pi,'k')
plot(Donnees(:,8),Donnees(:,11)*180/pi,'r')
plot(Donnees(:,8),Donnees(:,12)*180/pi,'b')




% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
Donnees=evalin('base','Resultat');
figure(7)
hold on
grid on
plot(Donnees(:,8),Donnees(:,5)*180/pi,'k')
plot(Donnees(:,8),Donnees(:,13)*180/pi,'b')
plot(Donnees(:,8),Donnees(:,19)*180/pi,'r')



% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
Donnees=evalin('base','Resultat');
figure(5)
hold on
grid on
plot(Donnees(:,8),Donnees(:,15),'b')
plot(Donnees(:,8),Donnees(:,16),'r')
plot(Donnees(:,8),Donnees(:,17),'.b')
plot(Donnees(:,8),Donnees(:,18),'.r')

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
Donnees=evalin('base','Resultat');
Traj=evalin('base','Traj');
figure(6)
hold on
grid on
%plot(Donnees(:,8),Traj(:,6)*180/pi,'k')
%plot(Donnees(:,8),Donnees(:,21)*180/pi,'k')
plot(Donnees(:,8),Donnees(:,14)*180/pi,'b')
plot(Donnees(:,8),Donnees(:,20)*180/pi,'r')


% --- Executes on button press in VitBouton.
function VitBouton_Callback(hObject, eventdata, handles)
% hObject    handle to VitBouton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Donnees=evalin('base','Resultat');
figure(7)
hold on
grid on
plot(Donnees(:,8),Donnees(:,6),'k')



% --- Executes during object creation, after setting all properties.
function pushbutton6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called





