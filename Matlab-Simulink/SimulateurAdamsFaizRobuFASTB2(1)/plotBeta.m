
function plotBeta=plotBeta(Traj,Donnees)

L=1.2;
b=0.7;
a=L-b;

for i=1:length(Traj(:,1))
    vitesse=Donnees(i,6);
    beta=Traj(i,6);
    dTheta=Donnees(i,5);
    delta=Traj(i,4);
    
    u0=vitesse/(cos(beta));    

    %----- Calcul de alpha_r
    alpha_r=atan(tan(beta)-(b*dTheta)/(u0*cos(beta)));
   
    
    %----- Calcul de alpha_f
    alpha_f=atan(tan(beta)+(a*dTheta)/(u0*cos(beta)))-delta;
    DeriveAv(i)=alpha_f;
    DeriveAr(i)=alpha_r;
    
end



figure
plot(DeriveAv*180/pi,'k')
hold on
grid on
plot(-Donnees(:,10)*180/pi,'b')
%plot(Donnees(:,9)*180/pi,'b')
plot(-Donnees(:,12)*180/pi,'r')

figure
plot(DeriveAr*180/pi,'k')
hold on
grid on
plot(Donnees(:,9)*180/pi,'b')
plot(Donnees(:,11)*180/pi,'r')