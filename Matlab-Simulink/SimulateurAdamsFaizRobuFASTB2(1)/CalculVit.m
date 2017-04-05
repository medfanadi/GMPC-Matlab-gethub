function CalculVit = CalculVit(CF,CR,betaF,betaR,delta)

global TrajMere LF LR m Iz empattement ParDyn Tsim
    masse = m;
    BetaLim=5*pi/180;
    
    alpha=(tan(delta+betaF)-tan(betaR))/empattement;
    A=((LF*CF-LR*CR)/m)*alpha;
    B=-(CF/m)*delta;
    if abs(alpha)<1*pi/180
        CalculVit=10;
    else
        CalculVit=sqrt( (1/alpha)*(((CF+CR)/m)*BetaLim -A - B  ) );
    end
    