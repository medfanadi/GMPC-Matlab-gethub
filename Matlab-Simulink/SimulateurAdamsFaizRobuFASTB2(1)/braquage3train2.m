function Sortie = braquage3train2(EcLat,EcAng,Courbure,dCourbure,DeltR,DeltA,deltaN1,deltaN2,tPred,deltaH,CoubureH,deltaArr,Vitesse, DeltaEcartAv, BraquageR)

% Qq param�tres:
% 
% a1=1.55;
% a2=-0.63;
% b1=0.04;
% b2=0.04;
a1=1.0086;
a2=-0.2801;
b1=0.1642;
b2=0.1072;
Cm=[1 0 0];
G=[a1 0 1]';

pas_calcul=0.01;

% for i=1:50
%     EcLat=EcLat + Vitesse*pas_calcul*sin(EcAng+DeltR);
%     EcAng=EcAng + Vitesse*pas_calcul*cos(DeltR)*(tan(BraquageR-DeltA) - tan(DeltR))/1.3 - Vitesse*pas_calcul*(Courbure*cos(EcAng+DeltR))/(1);
% end



Fm=[b1 b2 a2; 1 0 0; 0 0 0];
global Tm2
Tm=Tm2;
 if abs(DeltA)<1*pi/180 & abs(DeltR)<1*pi/180 
     Tm=1+Vitesse/4;
 else
     %Tm=8-5*(EcLat)^2;
     %Tm=8;
     %Tm=.7*Vitesse+3.4-5*abs(EcLat)+0*(sin(EcAng+DeltR));
     %Tm=max(Tm,6);
 
 end
 if abs(CoubureH)<0.04 | abs(Courbure)<0.04
     Tm=4;
 else
     Tm=7;
 end

kdinter=6/(Vitesse*Tm);
kd=min(kdinter,0.6);
if Vitesse<1
    kd=0.3;
end
%kd=0.7;
kp=kd^2/4;

Ki=0;

%Longueur=1.2; % Simu MatLab
Longueur=1.25; % Simu Adams
angle_mini=-30;
angle_maxi=30;


Theta2=EcAng + DeltR + deltaArr;
Alpha1=1 - Courbure*EcLat;

for i=1:20*tPred+1
        a2=0;
        for j=0:i+1
            a2 = a2 + [1 0 0]*Fm^(i+1-j)*G;
            %a2 = a2 + 1;
        end
        a(i) = a2;
end


Alpha=-kd*Alpha1*tan(Theta2) - kp*EcLat + Courbure*Alpha1*(tan(Theta2))^2;


UH=(Longueur)*(CoubureH)*(cos(0*EcAng + deltaArr))/cos(deltaArr);
%UH=(Longueur/cos(DeltR+deltaArr))*(CoubureH*cos(Theta2)/(1 - CoubureH*EcLat));


U=(Longueur/cos(DeltR+deltaArr))*(Courbure*cos(Theta2)/Alpha1);
%U2=(Longueur/cos(0*DeltR+deltaArr))*(Courbure*cos(deltaArr));

V=(Longueur/cos(DeltR+deltaArr))*( ...
        + ((cos(Theta2))^3/(Alpha1)^2)*Alpha )...
        + tan(DeltR+deltaArr);

% *** atan(u+v)+DeltA =atan(u)+atan( v / ( 1 + u*v + v^2 ) ) + DeltA
DeltaEcart = atan(V / (1+U*V+U^2) ) + DeltA; %Partie li�e aux �carts
DeltaTrajH = atan(UH) ; %partie pr�pond�rante li�e � la Courbure


% **** Echantillonage commande 
DeltaTrajT = atan(U);
N=20*tPred;

Cm=[1 0 0];

    X=[deltaN1-DeltaEcart deltaN2-DeltaEcartAv deltaH]';
    
    [R1 R2]=calculR(N,X,DeltaTrajT,DeltaTrajH,Fm,a,deltaN1);
    DeltaTraj=R2/R1;
    
    

delta= DeltaEcart + DeltaTraj;
deltaH=DeltaTraj;


if delta > angle_maxi *pi/180
    delta = angle_maxi *pi/180;
elseif delta < angle_mini *pi/180
    delta = angle_mini *pi/180;
end

Sortie(1)=delta;
Sortie(2)=deltaH;



