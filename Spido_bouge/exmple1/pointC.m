% stabilisation traj d'un point contraint

clear all, clf;
Tfin=6;
dt=0.01;
TSPAN=linspace(0,Tfin,Tfin/dt);

%coef graphique
coef=0.001;

% le robot
a=00; b=1000; l=800;  % longueur, largeur, position de C
% les roues
r=200; e=100; % rayon et epaisseur
%la roue folle 
d=300;

% Conditions Initiales

XPOS=0;
YPOS=1000;
alpha=0;
psi=0; %angle roue folle

% cond initiales robot r�f�rence

XR=0;
YR=0;
alphaR=0;

ETATinit=[XPOS,YPOS,alpha,psi,0,XR,YR,alphaR];

%integrer param�tres d'�tat
 [T,ETAT]=ode23('modelPC',TSPAN,ETATinit);
 
 
 %%% affichage 

%qques r�glages graphiques
x=zeros(1,5);
y=zeros(1,5);
h2=plot(x,y,'-');
axis([-1 5 -3 3]);
axis square;
grid on;

set(h2,'EraseMode','xor','LineWidth',2);

for i=1:1:size(T) 

    XPOS=ETAT(i,1);
    YPOS=ETAT(i,2);
    alpha=ETAT(i,3);
    psi=ETAT(i,4);

    %% Calcul des points graphiques du robot
    %la roue folle 
    
    auxX=[0,d-r,d-r,d+r,d+r,d-r,d-r,0];
    auxY=[0,0,-e/2,-e/2,e/2,e/2,0,0];
    mat=[cos(psi),-sin(psi);sin(psi),cos(psi)];
    
    auxi=mat*[auxX;auxY]; auxX0=auxi(1,:); auxY0=auxi(2,:);
    
    %La roue
    RX1=[0,r,r,-r,-r,0];
    RY1=[0,0,-e,-e,0,0];
    RX2=[0,r,r,-r,-r,0];
    RY2=[0,0,e,e,0,0];
 
    
    
    auxX=[RX1-a,b+auxX0,RX2-a,-a];
    auxY=[RY1-l/2+e/2,auxY0,RY2+l/2-e/2,-l/2+e/2];
    
    ROT = [cos(alpha),-sin(alpha);sin(alpha),cos(alpha)];
    auxi=ROT*[auxX;auxY]+[XPOS*ones(1,size(auxX,2));YPOS*ones(1,size(auxX,2))]; 
    PRX=coef*auxi(1,:); 
    PRY=coef*auxi(2,:);
    
    set(h2,'XData',PRX,'YData',PRY);
    
    %if (i==1) pause(0.1); else pause(0.1*(T(i)-T(i-1))); end
    pause(0.1);
end




