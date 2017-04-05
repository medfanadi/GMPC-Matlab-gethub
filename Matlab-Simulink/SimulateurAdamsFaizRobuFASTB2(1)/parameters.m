function parameters()
% Defintition of trajectory, vehicle and soil properties
global TrajMere LF LR m Iz empattement ParDyn Tsim Tm2 InitF InitR

% Trajectory to select
load 'Trajectoires/QuartAdams.mat'
%load 'Trajectoires/lineAdamsLong.mat'
%load 'Trajectoires/QuartAdams2.mat'
%load 'Trajectoires/TrajZAdams.mat'
%load 'Trajectoires/QuartMont.mat'
%load 'Trajectoires/Robotics.mat'
%load 'Trajectoires/Robotics2.mat'
%load 'Trajectoires/CommeMontoldre.mat'


% Vehicle parameters
%empattement=1.2;        % wheelbase Simu MatLab
empattement=1.25;        % wheelbase Simu Adams
LR=0.7;                 % rear half wheelbase
LF=empattement-LR;      % front half wheelbase

voie=1;               % Robot width
m=350;                  % Mass
Iz=300;              % vertical inertia
Tm2=5;
InitF=[]; 
InitR=[];
% Grip conditions to be tuned by ParPneu.m/ParPneu.fig
load ParDyn.mat


assignin('base', 'Voie', voie);
assignin('base', 'Empattement', empattement)

% Path filtering
TrajMere=PathFilt(TrajMere);



% sample time of simulator Kernel
Tsim=0.01;