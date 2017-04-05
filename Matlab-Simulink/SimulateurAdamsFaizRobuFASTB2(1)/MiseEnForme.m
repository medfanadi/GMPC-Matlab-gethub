function Sortie=MiseEnForme(Traj,Don,pente)

Sortie(:,1)=Traj(:,2);
Sortie(:,2)=Traj(:,1);
Sortie(:,3)=-Traj(:,4);
Sortie(:,5)=Traj(:,5);
Sortie(:,7)=Don(:,6);
Sortie(:,8)=Don(:,6);
Sortie(:,9)=Don(:,6);
Sortie(:,11)=-Don(:,5);
Sortie(:,14)=Don(:,2);
Sortie(:,15)=Don(:,1);
Sortie(:,17)=Don(:,3);
Sortie(:,32)=Don(:,10);
Sortie(:,33)=Don(:,9);
Sortie(:,38)=Don(:,12);
Sortie(:,39)=Don(:,11);
Sortie(:,40)=Don(:,15);
Sortie(:,41)=Don(:,16);

Sortie(:,48)=Traj(:,6);

Sortie(:,59)=-ones(length(Don(:,1)),1)*9.81*cos(pente*pi/180);
Sortie(:,58)=0;
Sortie(:,57)=ones(length(Don(:,1)),1)*9.81*sin(pente*pi/180)-Sortie(:,9).*Sortie(:,11);
Sortie(:,60)=zeros(length(Don(:,1)),1);











