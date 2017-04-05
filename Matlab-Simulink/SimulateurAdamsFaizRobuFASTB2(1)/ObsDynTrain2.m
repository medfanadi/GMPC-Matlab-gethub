%function ObsEtat = DetectGlissementNew(EcLat,EcLatDeriv,EcAng,EcAngDeriv,courb,vitesse,delta,deltaArr,EcLatG,EcAngG)
function [ObsEtat] = DetectDyn(VitLacetG,Beta01,BetaObj,CapDeriv,vitesse,CF,CR,delta,deltaArr,Alpha)
AngleLim=40;

global LF LR m Iz empattement
masse=m;
% masse=300;
%Iz=300;
%Alpha=Alpha/2;

pas_calcul=0.05;

if vitesse<1
    BetaRdyn=0;
    BetaFdyn=0;
    VitLacetG=CapDeriv;
    Beta01=BetaObj;
else
% Param�tres des observateurs    
    Glac=[-.5 -.5];
    
% ********* Observateur 1: valeur d�rives pr�liminaires
    a11=(-LF^2*CF*cos(delta)-LR^2*CR)/(vitesse*Iz);
    a12=(-LF*CF*cos(delta)+LR*CR)/(Iz);
    a21=-( (LF*CF*cos(delta)-LR*CR)/(masse*vitesse^2) )-1;
    a22=-(CF*cos(delta)+CR)/(masse*vitesse);
    Abet=[a11 a12 0; a21 a22 9.81/vitesse; 0 0 0];
    
    b11=LF*CF*cos(delta)/Iz;
    b12=-LR*CR/Iz;
    b21=CF*cos(delta)/(masse*vitesse);
    b22=CR/(masse*vitesse);
    Bbet=[b11 b12; b21 b22; 0 0];
   
    Xbet=[VitLacetG; Beta01; sin(Alpha)];
    deltaVec=[delta deltaArr]';
    %Xbet=Xbet+pas_calcul*(Abet*Xbet+Bbet*deltaVec)+.1*[1 0; 0.1 0.05]*[CapDeriv-VitLacetG; BetaObj-Beta01];
    for j=1:2
        Xbet=Xbet+pas_calcul/2*(Abet*Xbet+Bbet*deltaVec+1*[10 0 0; 0 .5 0; 0 0 0]*[CapDeriv-VitLacetG; BetaObj-Beta01; 0]);
        %Xbet=Xbet+pas_calcul/2*(Abet*Xbet+Bbet*deltaVec+1*[10 0 0; 5 .5 0; 0 0 0]*[CapDeriv-VitLacetG; BetaObj-Beta01; 0]);
        %Xbet=Xbet+pas_calcul/2*(Abet*Xbet+Bbet*deltaVec+10*[0.5 0 0; -0.1 0.25 0; 0 0 0]*[CapDeriv-VitLacetG; BetaObj-Beta01; 0]);
        %Xbet=Xbet+pas_calcul/2*(Abet*Xbet+Bbet*deltaVec+2*[10 0 0; 0 5 0; 0 0 0]*[CapDeriv-VitLacetG; BetaObj-Beta01; 0]);
    end
    Fbet=expm(pas_calcul*Abet);
    %Xbet=Fbet*Xbet+Abet\(Fbet-[1 0;0 1])*Bbet*deltaVec+[.5 0; 0 .4]*[CapDeriv-VitLacetG; BetaObj-Beta01];
    %Xbet=Fbet*Xbet+Abet\(Fbet-[1 0;0 1])*Bbet*deltaVec+[1 0; 0.1 0.05]*[CapDeriv-VitLacetG; BetaObj-Beta01];
    %Xbet=Fbet*Xbet+Abet\(Fbet-[1 0;0 1])*Bbet*deltaVec+.1*[10 0; -sign(CapDeriv)*1 1]*[CapDeriv-VitLacetG; BetaObj-Beta01];
    Xbet2=Xbet;
%     for i=1:1
%         Xbet2=Xbet2+0.01*(Abet*Xbet+Bbet*deltaVec);
%     end
    
    VitLacetG=Xbet2(1);
    Beta01=Xbet2(2);

end

    
    
BetaRdyn=Beta01-(LR*VitLacetG/vitesse)-deltaArr;
BetaFdyn=Beta01+(LF*VitLacetG/vitesse)-delta;


if vitesse<0.5
    BetaRdyn=0;
    BetaFdyn=0;
end
    
    
    if abs(BetaFdyn)>AngleLim*pi/180
        BetaFdyn=sign(BetaFdyn)*AngleLim*pi/180;
    end
    if abs(BetaRdyn)>AngleLim*pi/180
        BetaRdyn=sign(BetaRdyn)*AngleLim*pi/180;
    end
    
    

ObsEtat=[VitLacetG; Beta01; -BetaFdyn; BetaRdyn ];

