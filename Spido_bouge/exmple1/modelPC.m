function dETATdt=modelPC(t,ETAT)

a=0; b=1000; l=800;  
r=200; 
d=300;
lambda=(a+b)/l;


XPOS=ETAT(1);
YPOS=ETAT(2);
alpha=ETAT(3);
psi=ETAT(4);

XR=ETAT(6);
YR=ETAT(7);
alphaR=ETAT(8);

%%% commande véhicule de référence
U1R=1000; 
U2R=0;


% gains
k1=0.0001; k2=0.0001; k3=0.1;

%%

XPR=U1R*cos(alphaR);
YPR=U1R*sin(alphaR);
alphaPR=U2R;


z1=(XPOS-XR)*cos(alphaR)+(YPOS-YR)*sin(alphaR);
z2=-(XPOS-XR)*sin(alphaR)+(YPOS-YR)*cos(alphaR);
z3=tan(alpha-alphaR);

w1=-k1*abs(U1R)*(z1+z2*z3);
w2=-k2*U1R*z2-k3*abs(U1R)*z3;

u1=(w1+U1R)/cos(alpha-alphaR);
u2=w2*(cos(alpha-alphaR))^2+U2R;

u(1)=u1/r-l*u2/(2*r);
u(2)=u1/r+l*u2/(2*r);


dETAT=[0.5*r*cos(alpha)+a*r/l*sin(alpha),0.5*r*cos(alpha)-a*r/l*sin(alpha);
    0.5*r*sin(alpha)-a*r/l*cos(alpha),0.5*r*sin(alpha)+a*r/l*cos(alpha);
    -r/l,r/l;
    r/d*(0.5*sin(psi)+lambda*cos(psi)+d/l),r/d*(0.5*sin(psi)-lambda*cos(psi)-d/l);
    0.5*cos(psi)-lambda*sin(psi), 0.5*cos(psi)+lambda*sin(psi)]*u';

dETATdt=[dETAT',XPR,YPR,alphaPR]';

