function [delta] = braquage2(EcLat,EcAng,Courbure,dCourbure,DeltR,DeltA,deltaArr,Vitesse)

% faire gains en fonction de DeltA

Tm=7;
if Vitesse>1
    kdinter=6/(Vitesse*Tm);
    kd=min(kdinter,0.6);
else
    kd=0.6;
end
%kd=0.3;
kp=kd^2/4;
    

% Ki=0;
% kp=.015625;
% kd=.25;
Longueur=1.2;
angle_mini=-30;
angle_maxi=30;

Theta2=EcAng + DeltR + deltaArr;
Alpha1=1 - Courbure*EcLat;
Alpha=-kd*Alpha1*tan(Theta2) - kp*EcLat + Courbure*Alpha1*(tan(Theta2))^2 + dCourbure*EcLat*tan(Theta2);


% delta= atan(...
%         (Longueur/cos(DeltR))*(Courbure*cos(Theta2)/Alpha1...
%         + ((cos(Theta2))^3/(Alpha1)^2)*Alpha )...
%         + tan(DeltR)   ) + DeltA;
delta= atan(...
        (Longueur/cos(DeltR+deltaArr))*(Courbure*cos(Theta2)/Alpha1 ...
        + ((cos(Theta2))^3/(Alpha1)^2)*Alpha )...
        + tan(DeltR+deltaArr)   ) + DeltA;
    
%+ DeltR*cos(delta+DeltA)/cos(DeltR)

if delta > angle_maxi *pi/180
    delta = angle_maxi *pi/180;
elseif delta < angle_mini *pi/180
    delta = angle_mini *pi/180;
end
