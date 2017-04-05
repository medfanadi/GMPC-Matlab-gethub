function A=vitMax(ThetaP,Beta,CF,CR,betaR,deltaF)
BetaRMax=15*pi/180;
%BetaRMin=-15*pi/180;
global LR LF m Iz


if abs(ThetaP)<6*pi/180
    truc=0;
else
    for i=1:10
        truc=(m*Iz)/(CF*cos(deltaF)*(LF+LR)*ThetaP*(m+Iz))*(-5*(BetaRMax-betaR)-ThetaP);
        vitesse=sqrt(1/truc);
        a11=(-LF^2*CF-LR^2*CR)/(vitesse*Iz);
        a12=(-LF*CF+LR*CR)/(Iz);
        a21=-( (LF*CF-LR*CR)/(m*vitesse^2) )-1;
        a22=-(CF+CR)/(m*vitesse);
        Abet=[a11 a12; a21 a22];
    
        b11=LF*CF/Iz;
        b12=-LR*CR/Iz;
        b21=CF/(m*vitesse);
        b22=CR/(m*vitesse);
        Bbet=[b11 b12; b21 b22];
    
        Xbet2=[ThetaP; Beta];
        deltaVec=[deltaF 0]';
        Xbet2=Xbet2+0.01*(Abet*Xbet2+Bbet*deltaVec);
        ThetaP=Xbet2(1);
        Beta=Xbet2(2);
        betaR=Beta-(LR*ThetaP/vitesse);
    end
end
    

%     for i=1:10
%         truc=(m*Iz)/(CF*cos(deltaF)*(LF+LR)*ThetaP*(m+Iz))*(-1*(BetaRMax-betaR)-ThetaP);
%         betaR=betaR+0.01*( -ThetaP+CF*cos(deltaF)*(LF+LR)*ThetaP*(1/m+LF/Iz)*truc);
%     end

if abs(truc)<.0001
    V=100;
else
    V=sqrt(1/truc);
end
eps=(BetaRMax-betaR);
A(1)=V;
A(2)=eps;