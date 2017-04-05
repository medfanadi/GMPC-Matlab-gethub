function CalculHPred = CalculHPred(CF,CR,Vitesse)

global LF LR Iz Tm2
CalculHPred=0.5+Vitesse*Iz/( (LF^2 + LR^2)*(CF+CR)/2 );
Tm2=min(10*CalculHPred,12);
