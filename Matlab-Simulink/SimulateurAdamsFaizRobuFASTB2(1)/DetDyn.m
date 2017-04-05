%function ObsEtat = DetectGlissementNew(EcLat,EcLatDeriv,EcAng,EcAngDeriv,courb,vitesse,delta,deltaArr,EcLatG,EcAngG)
function [ObsEtat] = DetectDyn(EcLat,EcLatDeriv,EcAng,EcAngDeriv,courb,vitesse,delta,deltaArr,EcLatG,EcAngG)
pas_calcul=0.05;

global LF LR m Iz empattement
masse=m;
AngleLim=30;

if vitesse<0.5
    EcLatG=EcLat;
    EcAngG=EcAng;
    BetaR=0;
    BetaF=0;
else
% Param�tres des observateurs    
    Gy=-10;
    Gt=-5;
%     Gy=-4;
%     Gt=-2;
    
% Garde fou    
    if abs(EcAngDeriv)>pi
        EcAngDeriv=0;
    end
% Variables iterm�diaires
    EpsElat=EcLatG-EcLat;
    EpsEcap=EcAngG-EcAng;
    alpha=1-courb*EcLatG;
% Calcul glissements

    BetaR=asin( (Gy*EpsElat + 0*EcLatDeriv)/vitesse) - (EcAngG+deltaArr);
    if (BetaR>pi/2)
        BetaR=BetaR-2*pi;
    end
    if (BetaR<-pi/2)
        BetaR=BetaR+2*pi;
    end
    Thet2=EcAngG+BetaR+deltaArr;
    BetaF=atan(  ( empattement/(vitesse*cos(BetaR+deltaArr)) )*(Gt*EpsEcap + 0*EcAngDeriv +vitesse*courb*cos(Thet2)/alpha) +tan(BetaR+deltaArr)  ) - (delta);
    
% Mise � jour observateur    
    EcLatG=EcLatG + vitesse*pas_calcul*sin(EcAngG+BetaR+deltaArr);
    EcAngG=EcAngG + vitesse*pas_calcul*cos(BetaR+deltaArr)*(tan(delta+BetaF) - tan(BetaR+deltaArr))/empattement  - vitesse*pas_calcul*(courb*cos(EcAngG+BetaR+deltaArr))/(1-courb*EcLatG);

    
end
%Garde fou
    if abs(BetaR)>AngleLim*pi/180
        BetaR=sign(BetaR)*AngleLim*pi/180;
    end
    if abs(BetaF)>AngleLim*pi/180
        BetaF=sign(BetaF)*AngleLim*pi/180;
    end
    
% Sorties

BetaObj=( LF*(BetaR+deltaArr)+LR*(BetaF+delta) )/(LF+LR) ;

if vitesse<1
    BetaR=0;
    BetaF=0;
    BetaObj=0;
end
ObsEtat=[-BetaF; BetaR; BetaObj; EcLatG; EcAngG];

