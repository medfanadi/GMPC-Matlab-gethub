%_________________________________PARTIE GUI___________

function varargout = solfrac(varargin)
% solfrac M-file for solfrac.fig
%      solfrac, by itself, creates a new solfrac or raises the existing
%      singleton*.
%
%      H = solfrac returns the handle to a new solfrac or the handle to
%      the existing singleton*.
%
%      solfrac('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in solfrac.M with the given input arguments.
%
%      solfrac('Property','Value',...) creates a new solfrac or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before solfrac_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to solfrac_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help solfrac

% Last Modified by GUIDE v2.5 26-Aug-2003 10:14:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @solfrac_OpeningFcn, ...
                   'gui_OutputFcn',  @solfrac_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before solfrac is made visible.
function solfrac_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to solfrac (see VARARGIN)

% Choose default command line output for solfrac
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes solfrac wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = solfrac_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function A_Callback(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A as text
%        str2double(get(hObject,'String')) returns contents of A as a double


% --- Executes during object creation, after setting all properties.
function D_CreateFcn(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function D_Callback(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of D as text
%        str2double(get(hObject,'String')) returns contents of D as a double


% --- Executes during object creation, after setting all properties.
function B_CreateFcn(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function B_Callback(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of B as text
%        str2double(get(hObject,'String')) returns contents of B as a double


% --- Executes during object creation, after setting all properties.
function C_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function C_Callback(hObject, eventdata, handles)
% hObject    handle to C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C as text
%        str2double(get(hObject,'String')) returns contents of C as a double


% --- Executes during object creation, after setting all properties.
function E_CreateFcn(hObject, eventdata, handles)
% hObject    handle to E (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function E_Callback(hObject, eventdata, handles)
% hObject    handle to E (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of E as text
%        str2double(get(hObject,'String')) returns contents of E as a double


% --- Executes during object creation, after setting all properties.
function F_CreateFcn(hObject, eventdata, handles)
% hObject    handle to F (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function F_Callback(hObject, eventdata, handles)
% hObject    handle to F (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of F as text
%        str2double(get(hObject,'String')) returns contents of F as a double


% --- Executes during object creation, after setting all properties.
function G_CreateFcn(hObject, eventdata, handles)
% hObject    handle to G (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function G_Callback(hObject, eventdata, handles)
% hObject    handle to G (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of G as text
%        str2double(get(hObject,'String')) returns contents of G as a double


% --- Executes during object creation, after setting all properties.
function H_CreateFcn(hObject, eventdata, handles)
% hObject    handle to H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function H_Callback(hObject, eventdata, handles)
% hObject    handle to H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of H as text
%        str2double(get(hObject,'String')) returns contents of H as a double


% --- Executes during object creation, after setting all properties.
function NOM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NOM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function NOM_Callback(hObject, eventdata, handles)
% hObject    handle to NOM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NOM as text
%        str2double(get(hObject,'String')) returns contents of NOM as a double

% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1



% --- Executes on button press in pushbutton1a.
function pushbutton1a_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%___________________FIN GUI__________________



%recuperation des donnees
a=str2double(get(handles.E,'String'));
N=(2^a); %nombre de segments et non nombre de points
			%nombre de points(sans points extremes) = nombre de segments-1
h=N/2;
n=1;
m=1;
r=str2double(get(handles.F,'String'));%RECUPERATION RANDOM
b=get(handles.NOM,'String');%RECUPERATION NOM FICHIER
Z=zeros(N+1,N+1);
Z(1,1)=str2double(get(handles.A,'String'));% RECUPERATION HAUTEURS DES EXTREMITES
Z(1,N+1)=str2double(get(handles.B,'String'));
Z(N+1,1)=str2double(get(handles.C,'String'));
Z(N+1,N+1)=str2double(get(handles.D,'String'));



%PROGRAMME    
for j=1:a,
   q=h;
   for i=1:n,
       p=h;
       for K=1:m,
      Z(1+p-h,q+1)=((Z(1+p-h,1+q-h)+Z(1+p-h,1+q+h))/2)+r*h*(1-2*rand(1));
      Z(1+p+h,q+1)=((Z(1+p+h,1+q-h)+Z(1+p+h,1+q+h))/2)+r*h*(1-2*rand(1));
      
      Z(p+1,1+q-h)=((Z(1+p-h,1+q-h)+Z(1+p+h,1+q-h))/2)+r*h*(1-2*rand(1));
      Z(p+1,1+q+h)=((Z(1+p-h,1+q+h)+Z(1+p+h,1+q+h))/2)+r*h*(1-2*rand(1)); 
      
      Z(p+1,q+1)=(Z(1+p-h,q+1)+Z(1+p+h,q+1)+Z(p+1,1+q-h)+Z(p+1,1+q+h))/4+r*h*(1-2*rand(1));
      
      p=p+2*h;        
       end; 
      q=q+2*h;
   end;
   m=m*2;
   h=h/2;
   n=n*2;
end;
%FIN PROGRAMME

A=min(min(Z));%donne l element minimum de la matrice z
if A<0,
    for i=1:N+1,
        for j=1:N+1,
            Z(i,j)=Z(i,j)-A+0.1;
        end;
    end;
    A=0.1;
end;

%recuperation de donnee
s=str2double(get(handles.G,'String'));
d=s*max(max(Z));%lacs

if s==0
else

    for i=1:N+1,
        for j=1:N+1,
            if Z(i,j)<d,
                Z(i,j)=d;
            end;
        end;
    end;
end;



tmp=(0:255)'/(255);
cmap=[tmp,tmp,tmp];
R=N+1;
B=max(max(Z));
axes(handles.axes1);
surf(Z);%visualisation 3D
grid off;
if B<=R %permet de redimensionner l echelle si Z trop grand
else R=B;
end;
axis([0 R 0 R 0 R]);




axes(handles.axes2);
contour(Z);
grid off

%______________________generation stl____________________


V=get(handles.checkbox1,'Value');
if V==1,
dimen=str2double(get(handles.H,'String'));    
coef=dimen/N;

fid = fopen(b,'w');

fprintf(fid,'%s\n',b);
for j=1:N,
   
	for i=1:N,
    
   v1=coef*[j,i,Z(i,j)];
   v2=coef*[j,i+1,Z(i+1,j)];
   v3=coef*[j+1,i+1,Z(i+1,j+1)];
    
    normal=cross(v1-v2,v1-v3);
    normal=normal/norm(normal);
        
    fprintf(fid,'\tfacet normal %e %e %e\n',normal);
    fprintf(fid,'\t\touter loop\n');
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v1);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v2);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v3);
    fprintf(fid,'\t\tendloop\n');
    fprintf(fid,'\tendfacet\n',normal);
    
   v1=coef*[j,i,Z(i,j)];
   v2=coef*[j+1,i+1,Z(i+1,j+1)];
   v3=coef*[j+1,i,Z(i,j+1)];
    
    normal=cross(v1-v2,v1-v3);
    normal=normal/norm(normal);
        
    fprintf(fid,'\tfacet normal %e %e %e\n',normal);
    fprintf(fid,'\t\touter loop\n');
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v1);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v2);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v3);
    fprintf(fid,'\t\tendloop\n');
    fprintf(fid,'\tendfacet\n',normal);    
    
 end;
 
end;


	for i=1:N,
    
   v1=coef*[1,i,Z(i,1)];
   v2=coef*[1,i,A];
   v3=coef*[1,i+1,A];
    
    normal=cross(v1-v2,v1-v3);
    normal=normal/norm(normal);
        
    fprintf(fid,'\tfacet normal %e %e %e\n',normal);
    fprintf(fid,'\t\touter loop\n');
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v1);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v2);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v3);
    fprintf(fid,'\t\tendloop\n');
    fprintf(fid,'\tendfacet\n',normal);
    
   v1=coef*[1,i,Z(i,1)];
   v2=coef*[1,i+1,A];
   v3=coef*[1,i+1,Z(i+1,1)];
    
    normal=cross(v1-v2,v1-v3);
    normal=normal/norm(normal);
        
    fprintf(fid,'\tfacet normal %e %e %e\n',normal);
    fprintf(fid,'\t\touter loop\n');
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v1);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v2);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v3);
    fprintf(fid,'\t\tendloop\n');
    fprintf(fid,'\tendfacet\n',normal);    
    
 end;
 	for i=1:N,
    
   v1=coef*[N+1,i,Z(i,N+1)];
   v2=coef*[N+1,i+1,A];
   v3=coef*[N+1,i,A];
    
    normal=cross(v1-v2,v1-v3);
    normal=normal/norm(normal);
        
    fprintf(fid,'\tfacet normal %e %e %e\n',normal);
    fprintf(fid,'\t\touter loop\n');
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v1);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v2);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v3);
    fprintf(fid,'\t\tendloop\n');
    fprintf(fid,'\tendfacet\n',normal);
    
   v1=coef*[N+1,i,Z(i,N+1)];
   v2=coef*[N+1,i+1,Z(i+1,N+1)];
   v3=coef*[N+1,i+1,A];
    
    normal=cross(v1-v2,v1-v3);
    normal=normal/norm(normal);
        
    fprintf(fid,'\tfacet normal %e %e %e\n',normal);
    fprintf(fid,'\t\touter loop\n');
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v1);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v2);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v3);
    fprintf(fid,'\t\tendloop\n');
    fprintf(fid,'\tendfacet\n',normal);    
    
 end;
 	for j=1:N,
    
   v1=coef*[j,1,Z(1,j)];
   v2=coef*[j+1,1,A];
   v3=coef*[j,1,A];
    
    normal=cross(v1-v2,v1-v3);
    normal=normal/norm(normal);
        
    fprintf(fid,'\tfacet normal %e %e %e\n',normal);
    fprintf(fid,'\t\touter loop\n');
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v1);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v2);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v3);
    fprintf(fid,'\t\tendloop\n');
    fprintf(fid,'\tendfacet\n',normal);
    
   v1=coef*[j,1,Z(1,j)];
   v2=coef*[j+1,1,Z(1,j+1)];
   v3=coef*[j+1,1,A];
    
    normal=cross(v1-v2,v1-v3);
    normal=normal/norm(normal);
        
    fprintf(fid,'\tfacet normal %e %e %e\n',normal);
    fprintf(fid,'\t\touter loop\n');
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v1);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v2);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v3);
    fprintf(fid,'\t\tendloop\n');
    fprintf(fid,'\tendfacet\n',normal);    
    
 end;
 	for j=1:N,
    
   v1=coef*[j,N+1,Z(N+1,j)];
   v2=coef*[j,N+1,A];
   v3=coef*[j+1,N+1,A];
    
    normal=cross(v1-v2,v1-v3);
    normal=normal/norm(normal);
        
    fprintf(fid,'\tfacet normal %e %e %e\n',normal);
    fprintf(fid,'\t\touter loop\n');
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v1);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v2);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v3);
    fprintf(fid,'\t\tendloop\n');
    fprintf(fid,'\tendfacet\n',normal);
    
   v1=coef*[j,N+1,Z(N+1,j)];
   v2=coef*[j+1,N+1,A];
   v3=coef*[j+1,N+1,Z(N+1,j+1)];
    
    normal=cross(v1-v2,v1-v3);
    normal=normal/norm(normal);
        
    fprintf(fid,'\tfacet normal %e %e %e\n',normal);
    fprintf(fid,'\t\touter loop\n');
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v1);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v2);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v3);
    fprintf(fid,'\t\tendloop\n');
    fprintf(fid,'\tendfacet\n',normal);    
    
 end;
 
 for i=1:N,
    
   v1=coef*[1,i,A];
   v2=coef*[(N+2)/2,(N+2)/2,A];
   v3=coef*[1,i+1,A];
    
    normal=cross(v1-v2,v1-v3);
    normal=normal/norm(normal);
        
    fprintf(fid,'\tfacet normal %e %e %e\n',normal);
    fprintf(fid,'\t\touter loop\n');
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v1);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v2);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v3);
    fprintf(fid,'\t\tendloop\n');
    fprintf(fid,'\tendfacet\n',normal);
    
   v1=coef*[(N+2)/2,(N+2)/2,A];
   v2=coef*[N+1,i,A];
   v3=coef*[N+1,i+1,A];
    
    normal=cross(v1-v2,v1-v3);
    normal=normal/norm(normal);
        
    fprintf(fid,'\tfacet normal %e %e %e\n',normal);
    fprintf(fid,'\t\touter loop\n');
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v1);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v2);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v3);
    fprintf(fid,'\t\tendloop\n');
    fprintf(fid,'\tendfacet\n',normal);    
    
 end;
 	for j=1:N,
    
   v1=coef*[j,1,A];
   v2=coef*[j+1,1,A];
   v3=coef*[(N+2)/2,(N+2)/2,A];
    
    normal=cross(v1-v2,v1-v3);
    normal=normal/norm(normal);
        
    fprintf(fid,'\tfacet normal %e %e %e\n',normal);
    fprintf(fid,'\t\touter loop\n');
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v1);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v2);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v3);
    fprintf(fid,'\t\tendloop\n');
    fprintf(fid,'\tendfacet\n',normal);
    
   v1=coef*[j,N+1,A];
   v2=coef*[(N+2)/2,(N+2)/2,A];
   v3=coef*[j+1,N+1,A];
    
    normal=cross(v1-v2,v1-v3);
    normal=normal/norm(normal);
        
    fprintf(fid,'\tfacet normal %e %e %e\n',normal);
    fprintf(fid,'\t\touter loop\n');
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v1);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v2);
    fprintf(fid,'\t\t\tvertex %e %e %e\n',v3);
    fprintf(fid,'\t\tendloop\n');
    fprintf(fid,'\tendfacet\n',normal);    
    
 end;

 

fprintf(fid,'endsolid\n');
fclose(fid);
end; 


% --- Executes on button press in pushbutton1b.
function pushbutton1b_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    rand('state',0);
    randn('state',0);




