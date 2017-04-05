function [deltaArr] = braquage2(EcLat,EcAng,Courbure,DeltR,DeltA,EcAngRef)

kp=0.04;
kd=.4;
Longueur=1.3;
angle_mini=-15;
angle_maxi=15;
kd2=.5;
%DeltR=0;
%Courbure=-Courbure;

inter=(1-Courbure*EcLat);
inter02=kd2*(EcAng - EcAngRef);
Delta=kd^2/inter - 4*(Courbure)*(inter02);
inter04b= 0.5*( kd - sqrt(Delta) );
if abs(Courbure)<.01
    deltaArr=atan( (kd2*(EcAng-EcAngRef))/(kd) - kd*EcLat/4 ) - EcAng  - DeltR;
else
    deltaArr= atan(inter04b/Courbure) - EcAng -  DeltR;
end


if deltaArr > angle_maxi *pi/180
    deltaArr = angle_maxi *pi/180;
elseif deltaArr < angle_mini *pi/180
    deltaArr = angle_mini *pi/180;
end
