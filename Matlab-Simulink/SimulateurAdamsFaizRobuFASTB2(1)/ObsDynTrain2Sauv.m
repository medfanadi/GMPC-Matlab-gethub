%function ObsEtat = DetectGlissementNew(EcLat,EcLatDeriv,EcAng,EcAngDeriv,courb,vitesse,delta,deltaArr,EcLatG,EcAngG)
function [ObsEtat] = DetectDyn(VitLacetG,Beta01,BetaObj,CapDeriv,vitesse,CF,CR,delta,deltaArr)
AngleLim=40;

global LF LR m Iz empattement
masse=m;
pas_calcul=0.05;

if vitesse<1
    BetaRdyn=0;
    BetaFdyn=0;
    VitLacetG=CapDeriv;
    Beta01=BetaObj;
else
% Paramètres des observateurs    
    Glac=[-.5 -.5];
    
% ********* Observateur 1: valeur dérives préliminaires
    a11=(-LF^2*CF-LR^2*CR)/(vitesse*Iz);
    a12=(-LF*CF+LR*CR)/(Iz);
    a21=-( (LF*CF-LR*CR)/(masse*vitesse^2) )-1;
    a22=-(CF+CR)/(masse*vitesse);
    Abet=[a11 a12; a21 a22];
    
    b11=LF*CF/Iz;
    b12=-LR*CR/Iz;
    b21=CF/(masse*vitesse);
    b22=CR/(masse*vitesse);
    Bbet=[b11 b12; b21 b22];
   
    Xbet=[VitLacetG; Beta01];
    deltaVec=[delta deltaArr]';

    % Observer
    %Xbet=Xbet+0.01*(Abet*Xbet+Bbet*deltaVec)+[1 0; 0 .3]*[CapDeriv-VitLacetG; BetaObj-Beta01];
    Xbet=Xbet+pas_calcul*((Abet*Xbet+Bbet*deltaVec)+([10 0; 0 15]+Abet)*[CapDeriv-VitLacetG; BetaObj-Beta01]);
    Xbet2=Xbet;
%     for i=1:1
%         Xbet2=Xbet2+0.01*(Abet*Xbet2+Bbet*deltaVec);
%     end
%     VitLacetG=Xbet(1);
%     Beta01=Xbet(2);
    VitLacetG=Xbet2(1);
    Beta01=Xbet2(2);
end

    
    
BetaRdyn=Beta01-(LR*VitLacetG/vitesse)-deltaArr;
BetaFdyn=Beta01+(LF*VitLacetG/vitesse)-delta;
    
if vitesse<2
    BetaRdyn=0;
    BetaFdyn=0;
end
    
    
    if abs(BetaFdyn)>30*pi/180
        BetaFdyn=sign(BetaFdyn)*30*pi/180;
    end
    if abs(BetaRdyn)>30*pi/180
        BetaRdyn=sign(BetaRdyn)*30*pi/180;
    end
    
    

ObsEtat=[VitLacetG; Beta01; -BetaFdyn; BetaRdyn ];

