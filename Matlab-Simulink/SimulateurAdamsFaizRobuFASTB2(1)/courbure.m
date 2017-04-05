function  Courbure  = courbure(Droite,point)

global TrajMere

NbPoints = length(TrajMere(:,1));


if point<10
    xtraj=TrajMere(1:20,2);
    ytraj=TrajMere(1:20,3);
elseif point>NbPoints-6
    xtraj=TrajMere(NbPoints-2:NbPoints,2);
    ytraj=TrajMere(NbPoints-2:NbPoints,3);
else
    xtraj=TrajMere(point-9:point+9,2);
    ytraj=TrajMere(point-9:point+9,3);
end
    Xtraj=Droite(1);
    Ytraj=Droite(2);
    theta_traj=Droite(3);
    
nb_pts=length(xtraj);

t=[-floor((nb_pts-1)/2):1:ceil((nb_pts-1)/2)]';
Px=Polyfit(t,xtraj,2);
Py=Polyfit(t,ytraj,2);

Xdot=Px(2)+0*(2*Px(1));
Ydot=Py(2)+0*(2*Py(1));
Xdotdot=2*Px(1);
Ydotdot=2*Py(1);
denominateur=Xdot*Ydotdot-Ydot*Xdotdot;

% if denominateur<1e-10 & denominateur>-1e-10
%     RCourbure=1e10;
%     Courbure=0;
% else
%     tempo=sqrt(Xdot*Xdot+Ydot*Ydot);
%     RCourbure=((tempo^3))/denominateur;
%     Courbure=1/RCourbure;
% end

    
%        % Détermination de la courbure de la trajectoure    
xcentre=((xtraj(1)^2+ytraj(1)^2-xtraj(2)^2-ytraj(2)^2)*(ytraj(1)-ytraj(3))-(xtraj(1)^2+ytraj(1)^2-xtraj(3)^2-ytraj(3)^2)*(ytraj(1)-ytraj(2)))/(2*((xtraj(1)-xtraj(2))*(ytraj(1)-ytraj(3))-(xtraj(1)-xtraj(3))*(ytraj(1)-ytraj(2))));
ycentre=((xtraj(1)^2+ytraj(1)^2-xtraj(2)^2-ytraj(2)^2)*(xtraj(1)-xtraj(3))-(xtraj(1)^2+ytraj(1)^2-xtraj(3)^2-ytraj(3)^2)*(xtraj(1)-xtraj(2)))/(2*((ytraj(1)-ytraj(2))*(xtraj(1)-xtraj(3))-(ytraj(1)-ytraj(3))*(xtraj(1)-xtraj(2))));
if abs(xcentre)==Inf | abs(ycentre)==Inf
    Courbure=0;
else
    ray_courbure=-(xcentre-Xtraj)*cos(theta_traj)-(ycentre-Ytraj)*sin(theta_traj);
    Courbure=1/ray_courbure;

end
%     
%     % Détermination de la dérivée de la courbure
dCourbure=0;