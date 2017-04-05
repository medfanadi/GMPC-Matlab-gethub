function Sortie=PathFilt(Traj)

X0=Traj(1,2);
Y0=Traj(1,3);

[b,a]=butter(1,0.025);

X=Traj(:,2)-X0;
Y=Traj(:,3)-Y0;

Sortie(:,1)=Traj(:,1);
Sortie(:,2)=filter(b,a,X)+X0;
Sortie(:,3)=filter(b,a,Y)+Y0;





