%% GLOBAL SCRIPT  


%% Clean up the workspace and existing figures
clear all; 
close all;
clc;

%% Thanks to precise this parameters according to the ype trajectory chosen
Vitesse=0.1;  %Speed (straight or ciculaire) 
R=15;   %% Radius chosen for ciculair reference trajectory

%%  initial conditions (x(0) y(0) psi(0) dx(0) dy(0) dPsi(0))
X0_rectiligne=[0 0 pi/3*1.2 Vitesse*cos(pi/3*1.2) Vitesse*sin(pi/3*1.2) 0];  % straight trajectory
X0_circulaire=[R 0 pi/2 0 Vitesse Vitesse/R]; %circular trajectory

%% Simulation according to the type of reference trajectory chosen (rectiligne, ciculaire, sinusoidale)
SimulationTime=200;
sim('NCGPC_droite',SimulationTime);   % NCGPC_circulaire  OR   NCGPC_droite


%% Robot parameters 

%graphic coef (d'agrondissement du robot)
coef=3;

% Rear and front vehicle half wheelbases
a=1.200*coef; %Empatement avant
b=1.00*coef; % Empattement arriere
l=1.500*coef;  % largeur

% Wheels 
r=0.500*coef; 
e=0.200*coef; % radius and thickness



%% Polt of front and rear Sterring angles 

figure;
plot(temps,beta(:,1),'b','LineWidth',3)
hold on;
plot(temps,beta(:,2),'r--','LineWidth',3)
grid on
xlabel('time(s)');
ylabel('steering angle (rad)');
legend('beta-front','beta-rear');
title('Front and rear steering angle(rad)');



%% data reading from Simulink (reference and calculated trajectory)

x_ref(:,1)=posref(1,1,:);

y_ref(:,1)=posref(1,2,:);

psi_ref(:,1)=posref(1,3,:);

x_cal(:,1)=pos_cal(1,1,:);

y_cal(:,1)=pos_cal(1,2,:);

psi_cal(:,1)=pos_cal(1,3,:);

%% errors

% Xref-X error
figure;
plot(temps,x_ref(:,1)-x_cal(:,1),'b','LineWidth',3)
grid on
xlabel('Time(s)');
ylabel('X Error (m)');
title('X error between reference and calculated trajectory (m)');

% Yref-Y error
figure;
plot(temps,y_ref(:,1)-y_cal(:,1),'b','LineWidth',3)
grid on
xlabel('Time(s)');
ylabel('Y Error (m)');
title('Y error between reference and calculated trajectory (m)');

% Anglair error 
figure;
plot(temps,psi_ref(:,1)-psi_cal(:,1),'b','LineWidth',3)
grid on
xlabel('Time(s)');
ylabel('Anglair error (rad)');
title('Anglair error (rad)');

%% Show of reference and calculated trajectory 

% Graphical settings 
x=zeros(1,5);
y=zeros(1,5);

figure;

h2=plot(x,y,'-');

hold on

h1=plot(x_cal,y_cal,'r--','LineWidth',3); % plot calculated trajectory 

hold on

h3=plot(x_ref,y_ref,'b-','LineWidth',3);   % plot reference trajectory 

axis([-50 50 -50 50]);
axis square;

grid on;

set(h2,'EraseMode','xor','LineWidth',2);
set(h1);
set(h3);

xbel=xlabel('x(m)','FontWeight','bold');
ybel=ylabel('y(m)','FontWeight','bold');
legend('Robot','Calculated Trajectory','reference trajectory');
set(xbel);
set(ybel);  

for i=1:length(beta)

    %% data reading (beta, POS_cal, POS_ref)
    
    XPOS=x_cal(i,1);
    YPOS=y_cal(i,1);
    psi=pos_cal(1,3,i);
    betaf=beta(i,1);
    betar=beta(i,2);
    
    %% Calcul des points graphiques du robot
    
    % (wheel rear right)
    RX11=[0,r,r,-r,-r,0];
    RY11=[0,0,-e,-e,0,0];
 
    mat_r=[cos(betar),-sin(betar);sin(betar),cos(betar)];


    auxiR1=mat_r*[RX11;RY11];RX1=auxiR1(1,:); RY1=auxiR1(2,:);
    
    %(wheel rear left)
    RX22=[0,r,r,-r,-r,0];
    RY22=[0,0,e,e,0,0];
    
    auxiR2=mat_r*[RX22;RY22];RX2=auxiR2(1,:); RY2=auxiR2(2,:);
    
    %(wheel front right)
    RX33=[0,r,r,-r,-r,0];
    RY33=[0,0,e,e,0,0];
    
    mat_f=[cos(betaf),-sin(betaf);sin(betaf),cos(betaf)];

    auxiF1=mat_f*[RX33;RY33];RX3=auxiF1(1,:); RY3=auxiF1(2,:);
    
    %(wheel front left)
    RX44=[0,r,r,-r,-r,0];
    RY44=[0,0,-e,-e,0,0];
    
    auxiF2=mat_f*[RX44;RY44];RX4=auxiF2(1,:); RY4=auxiF2(2,:);
 
   % Robot graph 
    auxX=[RX1-a,RX2-a,RX3+b,RX4+b,-a];
    auxY=[RY1-l/2+e/2,RY2+l/2-e/2,RY3+l/2-e/2,RY4-l/2+e/2,-l/2+e/2];
    
   %% Robot deplacement at each time ste 
   
    ROT = [cos(psi),-sin(psi);sin(psi),cos(psi)];
    
    auxi=ROT*[auxX;auxY]+[XPOS*ones(1,size(auxX,2));YPOS*ones(1,size(auxX,2))]; 

    PRX=auxi(1,:); 
    PRY=auxi(2,:);
    
    %% Plot of robot and time 
    set(h2,'XData',PRX,'YData',PRY);
    
    pause(0.01);
    
end