function varargout = ParPneu(varargin)
% PARPNEU M-file for ParPneu.fig
%      PARPNEU, by itself, creates a new PARPNEU or raises the existing
%      singleton*.
%
%      H = PARPNEU returns the handle to a new PARPNEU or the handle to
%      the existing singleton*.
%
%      PARPNEU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PARPNEU.M with the given input arguments.
%
%      PARPNEU('Property','Value',...) creates a new PARPNEU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ParPneu_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ParPneu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help ParPneu

% Last Modified by GUIDE v2.5 30-Oct-2007 13:20:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ParPneu_OpeningFcn, ...
                   'gui_OutputFcn',  @ParPneu_OutputFcn, ...
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


% --- Executes just before ParPneu is made visible.
function ParPneu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ParPneu (see VARARGIN)

% Choose default command line output for ParPneu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ParPneu wait for user response (see UIRESUME)
% uiwait(handles.figure1);

load ParDyn.mat;
set(handles.Eda1,'string',ParDyn(1));
set(handles.Eda2,'string',ParDyn(2));
set(handles.Eda3,'string',ParDyn(3));
set(handles.Eda4,'string',ParDyn(4));
set(handles.Eda5,'string',ParDyn(5));
set(handles.Eda6,'string',ParDyn(6));
set(handles.Eda7,'string',ParDyn(7));
set(handles.Eda8,'string',ParDyn(8));
set(handles.EditC,'string',ParDyn(9));



% --- Outputs from this function are returned to the command line.
function varargout = ParPneu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in BoutonOK.
function BoutonOK_Callback(hObject, eventdata, handles)
% hObject    handle to BoutonOK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ParDyn(1)=str2num(get(handles.Eda1,'string'));
ParDyn(2)=str2num(get(handles.Eda2,'string'));
ParDyn(3)=str2num(get(handles.Eda3,'string'));
ParDyn(4)=str2num(get(handles.Eda4,'string'));
ParDyn(5)=str2num(get(handles.Eda5,'string'));
ParDyn(6)=str2num(get(handles.Eda6,'string'));
ParDyn(7)=str2num(get(handles.Eda7,'string'));
ParDyn(8)=str2num(get(handles.Eda8,'string'));
ParDyn(9)=str2num(get(handles.EditC,'string'));
% NMasse=findobj('Tag','EditMasse');
% NL1=findobj('Tag','EditEmp1');
% NL2=findobj('Tag','EditEmp2');
% NInertie=findobj('Tag','EditInertie');


ParDyn(10)=0.5;
ParDyn(11)=0.8;
ParDyn(12)=310;
ParDyn(13)=370;
save('ParDyn.mat','ParDyn');
CloseReq;




% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
CloseReq;


function Eda1_Callback(hObject, eventdata, handles)
% hObject    handle to Eda1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Eda1 as text
%        str2double(get(hObject,'String')) returns contents of Eda1 as a double


% --- Executes during object creation, after setting all properties.
function Eda1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Eda1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Eda2_Callback(hObject, eventdata, handles)
% hObject    handle to Eda2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Eda2 as text
%        str2double(get(hObject,'String')) returns contents of Eda2 as a double


% --- Executes during object creation, after setting all properties.
function Eda2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Eda2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Eda3_Callback(hObject, eventdata, handles)
% hObject    handle to Eda3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Eda3 as text
%        str2double(get(hObject,'String')) returns contents of Eda3 as a double


% --- Executes during object creation, after setting all properties.
function Eda3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Eda3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Eda4_Callback(hObject, eventdata, handles)
% hObject    handle to Eda4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Eda4 as text
%        str2double(get(hObject,'String')) returns contents of Eda4 as a double


% --- Executes during object creation, after setting all properties.
function Eda4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Eda4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Eda5_Callback(hObject, eventdata, handles)
% hObject    handle to Eda5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Eda5 as text
%        str2double(get(hObject,'String')) returns contents of Eda5 as a double


% --- Executes during object creation, after setting all properties.
function Eda5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Eda5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Eda6_Callback(hObject, eventdata, handles)
% hObject    handle to Eda6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Eda6 as text
%        str2double(get(hObject,'String')) returns contents of Eda6 as a double


% --- Executes during object creation, after setting all properties.
function Eda6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Eda6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Eda7_Callback(hObject, eventdata, handles)
% hObject    handle to Eda7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Eda7 as text
%        str2double(get(hObject,'String')) returns contents of Eda7 as a double


% --- Executes during object creation, after setting all properties.
function Eda7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Eda7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Eda8_Callback(hObject, eventdata, handles)
% hObject    handle to Eda8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Eda8 as text
%        str2double(get(hObject,'String')) returns contents of Eda8 as a double


% --- Executes during object creation, after setting all properties.
function Eda8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Eda8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on button press in BoutonTest.
function BoutonTest_Callback(hObject, eventdata, handles)
% hObject    handle to BoutonTest (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a1=str2num(get(handles.Eda1,'string'));
a2=str2num(get(handles.Eda2,'string'));
a3=str2num(get(handles.Eda3,'string'));
a4=str2num(get(handles.Eda4,'string'));
a5=str2num(get(handles.Eda5,'string'));
a6=str2num(get(handles.Eda6,'string'));
a7=str2num(get(handles.Eda7,'string'));
a8=str2num(get(handles.Eda8,'string'));
C=str2num(get(handles.EditC,'string'));

Masse=370;
Fz=(Masse/2)*9.81*0.01;

D=a1*Fz^2+a2*Fz;
E=a6*Fz^2+a7*Fz+a8;
B=(a3*sin(a4*atan(a5*Fz)))/(C*D);
j=1;
for alpha=-30:.1:30
    F(j)=D*sin(C*atan(B*((1-E)*alpha+(E/B)*atan(B*alpha))));
    X(j)=alpha;
    j=j+1;
end
cla
axes(handles.Trace)
plot(X,F)
hold on
alpha=-30:.1:30;
plot(alpha,10000*pi/180*alpha,'r')


function EditC_Callback(hObject, eventdata, handles)
% hObject    handle to EditC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditC as text
%        str2double(get(hObject,'String')) returns contents of EditC as a double


% --- Executes during object creation, after setting all properties.
function EditC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end




% --- Executes on button press in BoutonDefaut.
function BoutonDefaut_Callback(hObject, eventdata, handles)
% hObject    handle to BoutonDefaut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a1=-22.1;
a2=1011;
a3=1078;
a4=1.82;
a5=0.208;
a6=0;
a7=-0.354;
a8=0.707;
a8=5;
C=1.3;

set(handles.Eda1,'string',a1);
set(handles.Eda2,'string',a2);
set(handles.Eda3,'string',a3);
set(handles.Eda4,'string',a4);
set(handles.Eda5,'string',a5);
set(handles.Eda6,'string',a6);
set(handles.Eda7,'string',a7);
set(handles.Eda8,'string',a8);
set(handles.EditC,'string',C);


