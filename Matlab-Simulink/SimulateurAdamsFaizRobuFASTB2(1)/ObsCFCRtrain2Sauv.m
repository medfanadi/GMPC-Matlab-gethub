%function ObsEtat = DetectGlissementNew(EcLat,EcLatDeriv,EcAng,EcAngDeriv,courb,vitesse,delta,deltaArr,EcLatG,EcAngG)
function [ObsEtat2] = ObsCFCR(VitLacetG,delta,vitesse,BetaObj,BetaF,BetaR,CFav,CRav,HatVitLacet,HatBeta,deltaArr)
pas_calcul=0.05;

global LF LR m Iz empattement
masse=m;

B=[-LF*BetaF*cos(delta)/Iz LR*BetaR*cos(deltaArr)/Iz; -BetaF*cos(delta)/(masse*vitesse) -BetaR*cos(deltaArr)/(masse*vitesse)];
if vitesse>.5
    truc=cond(B);
    if truc>1000
        truc=1000;
    end
else
    truc=1000;
end



if abs(VitLacetG)<8*pi/180 | abs(truc)>20 | abs(BetaF)<1*pi/180 | abs(BetaR)<1*pi/180%| abs(LF*BetaF-LR*BetaR)>0.1*vitesse/5
    HatVitLacet=VitLacetG;
    HatBeta=BetaObj;
    X=[HatVitLacet; HatBeta];
   
    CF=CFav;
    CR=CRav;
    %A=[-LF*BetaF*CFav/Iz+LR*BetaR*CRav/Iz ;  -(1/(masse*vitesse))*(BetaF*CFav+BetaR*CRav)-HatVitLacet];
    %X=X+pas_calcul*(A);
else
% Paramètres des observateurs
%     gain1=15;
%     GX=.8*[-.4*gain1 0 ; 0 -.5*gain1];
%     gain1=5;
%     GX=1*[-.4*gain1 0 ; 0 -.05*gain1];
    gain1=.1;
    GX=-1*[10*gain1 0 ; 0 1*gain1];


    A=[-LF*BetaF*CFav/Iz+LR*BetaR*CRav/Iz ;  -(1/(masse*vitesse))*(BetaF*CFav+BetaR*CRav)-HatVitLacet];
    A2=[0 0;-1 0];


    EpsX=[HatVitLacet-VitLacetG; HatBeta-BetaObj];


    Cinter=pinv(B)*(GX*EpsX-A2*[VitLacetG; BetaObj]);

% if abs(Cinter(1))>500
%     Cinter(1)=sign(Cinter(1))*1000;
% end
% if abs(Cinter(2))>500
%     Cinter(2)=sign(Cinter(2))*1000;
% end

%     CF=Cinter(1)+CFav;
%     CR=Cinter(2)+CRav;
    CF=Cinter(1);
    CR=Cinter(2);
    
    if (CR)>600000
        CR=600000;
    end
    if (CF)>600000
        CF=600000;
    end
    if (CR)<500
        CR=500;
    end
    if (CF)<500
        CF=500;
    end

    Cinter(1)=CF;
    Cinter(2)=CR;
      
   
    X=[HatVitLacet; HatBeta];
    X=X+pas_calcul*(A2*X + B*Cinter );
end


    
ObsEtat2=[CF; CR; X(1); X(2); truc];

