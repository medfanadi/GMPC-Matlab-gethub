%function ObsEtat = DetectGlissementNew(EcLat,EcLatDeriv,EcAng,EcAngDeriv,courb,vitesse,delta,deltaArr,EcLatG,EcAngG)
function [ObsEtat2] = ObsCFCRMIT(VitLacetG,delta,vitesse,BetaObj,BetaF,BetaR,CFav,CRav,HatVitLacet,HatBeta,deltaArr,Alpha,j,rien,BetaFF,BetaRF)
pas_calcul=0.05;
CRLim=100000;
CRLimB=200;

global LF LR m Iz empattement InitF InitR
masse=m;
% masse=300;
%Iz=300;
F(1)=0;
F(2)=0;
gammaGlob=900;
gamma1=gammaGlob;


%Alpha=Alpha/2;


if vitesse<1
    HatVitLacet=VitLacetG;
    HatBeta=0*BetaObj;
    X=[HatVitLacet; HatBeta];  
    CF=CFav;
    CR=CRav;


else
    %Calcul efforts lateraux
    A=[0; 9.81*sin(Alpha)/(vitesse)-HatVitLacet];
    B=[-LF*cos(delta)/Iz LR*cos(deltaArr)/Iz; -cos(delta)/(masse*vitesse) -cos(deltaArr)/(masse*vitesse)];
    EpsX=[HatVitLacet-VitLacetG; HatBeta-BetaObj];
    %GX=5*[-1 0 ; 0 -.5];
    GX=1*[-5 0 ; 0 -.5];
    %GX=1*[-1 0 ; 0 -.5];
    
    F=pinv(B)*(GX*EpsX-A);
    % Mise à jour observateur
    X=[HatVitLacet; HatBeta];

    X=X+pas_calcul*(A + B*F);

    %Correction rigidites
%     gamma1=50+1000/vitesse^4+0*(F(1)-CFav*BetaF)^2;
%     gamma2=50+1000/vitesse^4+0*(F(2)-CRav*BetaR)^2;
if abs(delta)<2*pi/180
    gamma1=gammaGlob+.0*(F(1)-CFav*BetaF)^2;
    gamma2=gammaGlob+.0*(F(2)-CRav*BetaR)^2;
else    
    gamma1=gammaGlob+.0*(F(1)-CFav*BetaF)^2;
    gamma2=gammaGlob+.0*(F(2)-CRav*BetaR)^2;
end
    if F(1)*BetaFF<0 | F(2)*BetaRF<0
        Cinter(1)=0;
        Cinter(2)=0;
    else
        Cinter(1)=gamma1*(F(1)-CFav*BetaFF)*BetaFF;
        Cinter(2)=gamma2*(F(2)-CRav*BetaRF)*BetaRF;
    end
    % Mise à jour rigidites
    CF=CFav+pas_calcul*Cinter(1);
    CR=CRav+pas_calcul*Cinter(2);
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
end
% Processus initialisation
j=j+1;
if (j<4/0.05) && (vitesse>2) %&& (abs(VitLacetG)<.5*pi/180)  %&& (abs(delta)<0.5*pi/180) 
    %if abs(BetaR)>0.0002
        calc=(-delta - 0*2*BetaObj - 0*(LR-LF)*HatVitLacet/vitesse)/(masse*vitesse);
        InitF=[InitF; VitLacetG, (calc)];
    %end
end
if j==4/0.05
    %CF=1*abs(pinv(InitF(:,2))*InitF(:,1));
    %CR=1*abs(pinv(InitF(:,2))*InitF(:,1));
end
% CF=6000;
% CR=6000;
%     
ObsEtat2=[CF; CR; X(1); X(2); gamma1; F(1); F(2); j; rien];

