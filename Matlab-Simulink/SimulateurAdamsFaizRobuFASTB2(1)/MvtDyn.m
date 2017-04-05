function  [PositionSsGlissement] = MvtDyn(X, Y, Theta, dTheta, beta, Ft_1, Ft_2, vitesse, delta, deltaArr )
delta=delta;

pente=10*pi/180;

global LF LR m Iz ParDyn Tsim empattement
%global ParDyn Tsim



% empattement=1.3;        % wheelbase
% LR=0.55;                 % rear half wheelbase
% LF=empattement-LR;      % front half wheelbase
% m=380;                  % Mass
% Iz=300;              % vertical inertia


pas_calcul=Tsim;
masse=m;
a1=ParDyn(1);
a2=ParDyn(2);
a3=ParDyn(3);
a4=ParDyn(4);
a5=ParDyn(5);
a6=ParDyn(6);
a7=ParDyn(7);
a8=ParDyn(8);
C=ParDyn(9);

a=LF;
b=LR;
% a=0.7;
% b=0.5;

L1=LF;
L2=LR;
%Iz2=500;

Fz1=(L1/empattement)*(m)*9.81*0.02;
Fz2=(L2/empattement)*(m)*9.81*0.01;

D1=a1*Fz1^2+a2*Fz1;
E1=a6*Fz1^2+a7*Fz1+a8;
B1=(a3*sin(a4*atan(a5*Fz1)))/(C*D1);

D2=a1*Fz2^2+a2*Fz2;
E2=a6*Fz2^2+a7*Fz2+a8;
B2=(a3*sin(a4*atan(a5*Fz2)))/(C*D2);



if vitesse>1
    d2Theta=(1/Iz)*(-a*(Ft_1)*cos(delta)+b*(Ft_2));
    
    %----- Calcul de dpsi    
    dTheta=dTheta+pas_calcul*d2Theta;

    
    %----- Calcul de psi  
    Theta=Theta+pas_calcul*dTheta;

    u0=vitesse/(cos(beta));    
    %----- Calcul de dbeta    
    dbeta=(-1/(m*u0))*((Ft_1)*cos(beta-delta)+(Ft_2)*cos(beta) +m*9.8*sin(pente))-dTheta;
    
    %----- Calcul de beta   
    beta=beta+pas_calcul*dbeta;
    
    %----- Calcul de alpha_r
    alpha_r=atan(tan(beta)-(b*dTheta)/(u0*cos(beta)));
   
    
    %----- Calcul de alpha_f
    alpha_f=atan(tan(beta)+(a*dTheta)/(u0*cos(beta)))-delta;
else
    alpha_r=0;
    alpha_f=0;
end
 
     
    
    %----- Calcul des efforts lat�raux
    alpha_f2=alpha_f*180/pi;
    alpha_r2=alpha_r*180/pi;
    
%     Ft_1=15000*alpha_f;
%     Ft_2=15000*alpha_r;
    Ft_1=6000*alpha_f;
    Ft_2=6000*alpha_r;
    
    
%     Ft_1=D1*sin(C*atan(B1*((1-E1)*alpha_f2+(E1/B1)*atan(B1*alpha_f2))));
%     Ft_2=D2*sin(C*atan(B2*((1-E2)*alpha_r2+(E2/B2)*atan(B2*alpha_r2))));   

    X=X-vitesse*pas_calcul*sin(Theta+alpha_r);
    Y=Y+vitesse*pas_calcul*cos(Theta+alpha_r);
    
    
    PositionSsGlissement = [ X, Y, Theta, dTheta, beta, Ft_1, Ft_2, vitesse, delta, deltaArr, pente];
