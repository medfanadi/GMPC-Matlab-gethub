function varargout = Replay(varargin)
% REPLAY M-file for Replay.fig
%      REPLAY, by itself, creates a new REPLAY or raises the existing
%      singleton*.
%
%      H = REPLAY returns the handle to a new REPLAY or the handle to
%      the existing singleton*.
%
%      REPLAY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in REPLAY.M with the given input arguments.
%
%      REPLAY('Property','Value',...) creates a new REPLAY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Replay_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Replay_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Replay

% Last Modified by GUIDE v2.5 12-Mar-2009 16:03:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Replay_OpeningFcn, ...
                   'gui_OutputFcn',  @Replay_OutputFcn, ...
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


% --- Executes just before Replay is made visible.
function Replay_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Replay (see VARARGIN)

% Choose default command line output for Replay
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Replay wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Replay_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
Pos=evalin('base','Traj');
Etat=evalin('base','Resultat');
global TrajMere
Longueur=1.3;
Largeur=1.2;
diam_roue=.4;
couleur_tracteur    =   [ 0 , 0.5 , 0.5 ];

        x_trac(1)=0;                 y_trac(1)=0;
        x_trac(2)=0;                 y_trac(2)=Longueur;
        x_trac(3)=-Largeur/2;        y_trac(3)=-diam_roue/2;
        x_trac(4)=-Largeur/2;        y_trac(4)=0;
        x_trac(5)=-Largeur/2;        y_trac(5)=diam_roue/2;
        x_trac(6)=Largeur/2;         y_trac(6)=-diam_roue/2;
        x_trac(7)=Largeur/2;         y_trac(7)=0;
        x_trac(8)=Largeur/2;         y_trac(8)=diam_roue/2;

axes(handles.axes1)
cla

plot(TrajMere(:,3),TrajMere(:,2),'k')
hold on
Theta=-Pos(1,3)-pi/2;
X=Pos(1,1);
Y=Pos(1,2);
delta=-Pos(1,4);


    % Dessin du tricicle
    x_trac(9)=diam_roue/2*sin(delta);
    y_trac(9)=Longueur-diam_roue/2*cos(delta);
    x_trac(10)=-diam_roue/2*sin(delta);
    y_trac(10)=1.3+diam_roue/2*cos(delta);

    % changement de repere
    X_trac = x_trac*cos(Theta) - y_trac*sin(Theta) + X;
    Y_trac = y_trac*cos(Theta) + x_trac*sin(Theta) + Y;




    % dessin sur le graphique

    A=line([X_trac(1) X_trac(2)],[Y_trac(1) Y_trac(2)],'LineWidth',2,'Color',couleur_tracteur);
    B=line([X_trac(3) X_trac(5)],[Y_trac(3) Y_trac(5)],'LineWidth',2,'Color',couleur_tracteur);
    C=line([X_trac(6) X_trac(8)],[Y_trac(6) Y_trac(8)],'LineWidth',2,'Color',couleur_tracteur);
    D=line([X_trac(4) X_trac(7)],[Y_trac(4) Y_trac(7)],'LineWidth',2,'Color',couleur_tracteur);
    E=line([X_trac(9) X_trac(10)],[Y_trac(9) Y_trac(10)],'LineWidth',2,'Color',couleur_tracteur);

i=1;
while i<length(Pos(:,1)) && str2num(get(handles.Flag,'string'))==0
    xlim([Pos(i,1)-4, Pos(i,1)+4]);
    ylim([Pos(i,2)-4, Pos(i,2)+4]);
    Theta=-Pos(i,3)-pi/2;
    X=Pos(i,1);
    Y=Pos(i,2);
    delta=-Pos(i,4);

    % Dessin du tricicle
    x_trac(9)=diam_roue/2*sin(delta);
    y_trac(9)=Longueur-diam_roue/2*cos(delta);
    x_trac(10)=-diam_roue/2*sin(delta);
    y_trac(10)=1.3+diam_roue/2*cos(delta);
    
    % changement de repere
    X_trac = x_trac*cos(Theta) - y_trac*sin(Theta) + X;
    Y_trac = y_trac*cos(Theta) + x_trac*sin(Theta) + Y;
    
    set(A,'XData',[X_trac(1) X_trac(2)],'Ydata',[Y_trac(1) Y_trac(2)]);
    set(B,'XData',[X_trac(3) X_trac(5)],'Ydata',[Y_trac(3) Y_trac(5)]);
    set(C,'XData',[X_trac(6) X_trac(8)],'Ydata',[Y_trac(6) Y_trac(8)]);
    set(D,'XData',[X_trac(4) X_trac(7)],'Ydata',[Y_trac(4) Y_trac(7)]);
    set(E,'XData',[X_trac(9) X_trac(10)],'Ydata',[Y_trac(9) Y_trac(10)]);
%     dessine_tracteur(-Pos(i,3)-pi/2,Pos(i,1),Pos(i,2),-Pos(i,4),1.3,0.4,x_trac,y_trac,couleur_tracteur);
    pause(.01)
%     dessine_tracteur(-Pos(i,3)-pi/2,Pos(i,1),Pos(i,2),-Pos(i,4),1.3,0.4,x_trac,y_trac,couleur_tracteur);
    i=i+2;
end


set(handles.Flag,'String','0')



% --- Executes on button press in Stop.
function Stop_Callback(hObject, eventdata, handles)
set(handles.Flag,'String','1')


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
N=findobj('tag','FigResultat');
close(N)
ResultatsFig;
Donnees=evalin('base','Resultat');
Traj=evalin('base','Traj');

%affiche Elat
N=findobj('tag','Elat')
axes(N)
plot(Donnees(:,1),'k')
grid on
hold on
plot(Donnees(:,22),'r')

% affiche ECap
N=findobj('tag','Ecap');
axes(N)
plot(Donnees(:,2)*180/pi,'k')
grid on
hold on
plot(Donnees(:,23)*180/pi,'k')

% affiche angle braquage
N=findobj('tag','StAngle');
axes(N)
plot(Donnees(:,27)*180/pi,'k')
hold on
%plot(Donnees(:,31)*180/pi,'b')
grid on
hold off

% affiche d�rives
N=findobj('tag','Beta');
axes(N)
hold on
plot(Donnees(:,9)*180/pi,'k')
plot(Donnees(:,10)*180/pi,'k')
plot(Donnees(:,11)*180/pi,'.r')
plot(Donnees(:,12)*180/pi,'.b')
grid on
hold off

% affiche Vitesse lacet
N=findobj('tag','VitCap');
axes(N)
hold on
plot(Donnees(:,5)*180/pi,'k')
plot(Donnees(:,13)*180/pi,'b')
plot(Donnees(:,19)*180/pi,'r')
grid on
hold off

% affiche Rigidite de d�rive
N=findobj('tag','Rigidite');
axes(N)
hold on
plot(Donnees(:,15),'b')
plot(Donnees(:,16),'r')
plot(Donnees(:,17),'.b')
plot(Donnees(:,18),'.r')
grid on
hold off

% affiche d�rives Globales
N=findobj('tag','DerGlob');
axes(N)
hold on
%plot(Traj(:,6)*180/pi,'k')
plot(Donnees(:,21)*180/pi,'k')
plot(Donnees(:,14)*180/pi,'b')
plot(Donnees(:,20)*180/pi,'r')
grid on
hold off

% affiche vitesse
N=findobj('tag','Vitesse');
axes(N)
hold on
plot(Donnees(:,8),Donnees(:,6),'k')
grid on
hold off


