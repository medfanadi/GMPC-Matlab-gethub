function truc=truc(Res)
j=1;
% for i=1500:3000
%     if abs(Res(i,9))>0.002 & abs(Res(i,25))>30
%         FR(j,1)=(Res(i,25));
%         BetaR(j,1)=(Res(i,9));
%         j=j+1;
%     end
% end
% j
% j=1;
% for i=1500:3000
%     if abs(Res(i,10))>0.002 & abs(Res(i,24))>30
%         FF(j,1)=(Res(i,24));
%         BetaF(j,1)=-(Res(i,10));
%         j=j+1;
%     end
% end
% j
[b,a]=butter(1,0.01);
b=[0.01 0.01];
a=[1 -0.98];

empattement=1.2;        % wheelbase
LR=0.7;                 % rear half wheelbase
LF=empattement-LR;      % front half wheelbase

j=1;
F=[];
Beta=[];
Thetap=filter(b,a,Res(:,5));
for i=2:length(Thetap)
    ThetappX(i)=(Thetap(i)-Thetap(i-1))/0.05;
    if ThetappX(i)==0;
        ThetappX(i)=ThetappX(i-1);
    end
end

%Thetapp=filtfilt(b,a,ThetappX);
Thetapp=ThetappX;


Vitesse=filter(b,a,Res(:,6));
%Vitesse=Res(:,6);
delta=filter(b,a,Res(:,23));
%delta=Res(:,23);
Derive=Res(:,20);
masse=400;
Iz=300;

for i=2000:length(Res(:,1))
    if abs(delta(i))>1*pi/180 && Vitesse(i)>3 && abs(Thetapp(i))<0.02
        F(j,1)=Thetap(i);
        %alpha(j,1)=-(LF^2+LR^2)*Thetap(i)/(Vitesse(i)*Iz) -LF*delta(i)/Iz +0*(LR-LF)/Iz*Derive(i);
        alpha(j,1)=(delta(i)+2*Derive(i)+ (LR-LF)*Thetap(i)/Vitesse(i) )/(masse*Vitesse(i));
        truc(j,1)=F(j,1)/alpha(j,1);
        j=j+1;
    end
end
pinv(alpha)*F

% figure
% plot(F)
% figure
% plot(alpha)
%truc=pinv(alpha)*F;
%truc=0.5*(trucI(1)+trucI(2));



