function Sortie = braquage3Dyn(EcLat,EcAng,Courbure,dCourbure,DeltR,DeltA,deltaN1,deltaN2,tPred,deltaH,CoubureH,deltaArr,Vitesse,CF,CR,ThetaP,Beta)
global empattement LF LR m Iz
% *********** Partie adaptative:
%DeltA=0;
% qq paramètres
masse=m;
Longueur=empattement;
angle_mini=-30;
angle_maxi=30;
CF=500000;
CR=500000;
% Definition gains
Tm=8;
%Tm=4;

if abs(DeltA)<1*pi/180 & abs(DeltR)<1*pi/180 & Vitesse>3
    Tm=6;
else
    Tm=6;
end
kdinter=6/(Vitesse*Tm);
kd=min(kdinter,0.6);
%kd=0.1;
kp=kd^2/4;

Ki=0;
% Definition variables
Theta2=EcAng + DeltR + deltaArr;
Alpha1=1 - Courbure*EcLat;
Alpha=-kd*Alpha1*tan(Theta2) - kp*EcLat + Courbure*Alpha1*(tan(Theta2))^2;
% Calcul partie courbure
U2=(Longueur/cos(DeltR+deltaArr))*(Courbure*cos(EcAng + DeltR + deltaArr)/Alpha1); % Sans gliss
U=(Longueur/cos(DeltR+deltaArr))*(Courbure*cos(Theta2)/Alpha1); % Adapt
% Partie écarts glissement
V=(Longueur/cos(DeltR+deltaArr))*( ...
        + ((cos(Theta2))^3/(Alpha1)^2)*Alpha )...
        + tan(DeltR+deltaArr);
% Commande adaptative:
%DeltaEcart = atan(V / (1+U*V+U^2) ) + DeltA+(deltaH-atan(empattement*Courbure)); %Partie liée aux écarts
DeltaEcart = atan(V / (1+U2*V+U2^2) ) + DeltA - 0*(deltaH-atan(empattement*CoubureH)); %Partie liée aux écarts !!!!!*****!!!!****!!!!***!!!
if Vitesse<1
    DeltaTraj=atan(U);
else
    % *************** Commande prédictive
    % Points de coïncidence:
%     N=50; % Période échantillonnage pred
%     T=tPred/N;
    T=0.025; % Période échantillonnage pred
    N=tPred/T;
    % paramètres pour matrices
%     ksi=0.7; 
%     w0=6.32;
    ksi=0.7; 
    w0=14.14;
    a11=(-LF^2*CF-LR^2*CR)/(Vitesse*Iz);
    a12=(-LF*CF+LR*CR)/(Iz);
    a21=-( (LF*CF-LR*CR)/(masse*Vitesse^2) )-1;
    a22=-(CF+CR)/(masse*Vitesse);
    b11=LF*CF/Iz;
    b21=CF/(masse*Vitesse);
    % Construction des matrices
    %Fm=[1 0 0 0;0 1 0 0;0 0 1 0; 0 0 0 1]+T*[a11 a12 0 b11; a21 a22 0 b21; 0 0 -2*ksi*w0 -w0^2; 0 0 1 0];
    Fm=expm([a11 a12 0 b11; a21 a22 0 b21; 0 0 -2*ksi*w0 -w0^2; 0 0 1 0]*T);
    %Fm=[1 0; 0 1]+T*[a11 a12;a21 a22];
    %G=T*[0 0 w0^2 0]';
    G=([a11 a12 0 b11; a21 a22 0 b21; 0 0 -2*ksi*w0 -w0^2; 0 0 1 0])\...
        (Fm-[1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1])*[0 0 w0^2 0]';
    %G=T*[b11; b21];
    Cm=[1 0 0 0];
    %Cm=[1 0];
    % Construction vecteur d etat [ThetaP Beta deltaSP deltaS]
    X=[ThetaP Beta (deltaN1-deltaN2)/0.05 deltaH]';
    %X=[ThetaP Beta]';
    % Calcul commande
%     spointH=Vitesse*cos(Theta2)/(1-CoubureH*EcLat);
%     spoint=Vitesse*cos(Theta2)/Alpha1;
    ThetaPDH=  Vitesse*CoubureH*(cos(DeltR+EcAng)/Alpha1);
    ThetaPD=Vitesse*Courbure;
    
    [R1 R2]=calculRDyn(N,X,ThetaPD,ThetaPDH,Fm,G);
    DeltaTraj=R2/R1;
end
% addition commande
delta= DeltaEcart + DeltaTraj;
deltaH=DeltaTraj;


if delta > angle_maxi *pi/180
    delta = angle_maxi *pi/180;
elseif delta < angle_mini *pi/180
    delta = angle_mini *pi/180;
end

Sortie(1)=delta;
Sortie(2)=deltaH;



