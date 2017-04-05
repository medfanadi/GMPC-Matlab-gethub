%function ObsEtat = DetectGlissementNew(EcLat,EcLatDeriv,EcAng,EcAngDeriv,courb,vitesse,delta,deltaArr,EcLatG,EcAngG)
function [ObsEtat2] = ObsCFCR(VitLacetG,delta,vitesse,BetaObj,BetaF,BetaR,CFav,CRav,HatVitLacet,HatBeta,deltaArr,Alpha)
pas_calcul=0.05;
CRLim=100000;
CRLimB=1000;

global LF LR m Iz empattement
masse=m;
% masse=300;
%Iz=300;
B=[-LF*BetaF*cos(delta)/Iz LR*BetaR*cos(deltaArr)/Iz; -BetaF*cos(delta)/(masse*vitesse) -BetaR*cos(deltaArr)/(masse*vitesse); 0 0 ];

    Cinter(1)=CFav;
    Cinter(2)=CRav;
    A2=[0 0 0;-1 0 9.81/vitesse; 0 0 0];
    X=[HatVitLacet; HatBeta; sin(Alpha)];
    X=X+pas_calcul*(A2*X + B*Cinter' );
    EpsX=[HatVitLacet-VitLacetG; HatBeta-BetaObj; 0];



if abs(BetaR)<1*pi/180 | abs(BetaF)<1*pi/180 %| abs(delta)<1*pi/180 %| abs(EpsX(2))>0.01
    HatVitLacet=VitLacetG;
    HatBeta=BetaObj;

    X=[HatVitLacet; HatBeta; sin(Alpha)];
   
    CF=CFav;
    CR=CRav;

else
% Param�tres des observateurs
    GX=1*[-5 0 0; 0 -.5 0; 0 0 0];
    Cinter=pinv(B)*(GX*EpsX-A2*[VitLacetG; BetaObj; sin(Alpha)]);


    CF=Cinter(1);
    CR=Cinter(2);
    
    
    Cinter(1)=CF;
    Cinter(2)=CR;
      
   
    
    if (CR)>CRLim
        CR=CRLim;
    end
    if (CF)>CRLim
        CF=CRLim;
    end
    if (CR)<CRLimB
        CR=CRLimB;
    end
    if (CF)<CRLimB
        CF=CRLimB;
    end
    
    %EpsX2=X(2)-BetaObj;
    %Alpha=(0.01*EpsX2 + DbetaMes -BetaF*CF*cos(delta)/(masse*vitesse) -BetaR*CR*cos(deltaArr)/(masse*vitesse))*vitesse/9.81; %
    
    
end

% CF=15000;
% CR=15000;
    
ObsEtat2=[CF; CR; X(1); X(2); Alpha; 0; 0];

