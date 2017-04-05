function [Ecart]= ecarts(position_courante,Droite)

Xtraj=Droite(1);
Ytraj=Droite(2);
theta_traj=Droite(3);

Xo=position_courante(1);
Yo=position_courante(2);
Theta_tract=position_courante(3);

%EcLat = -(Xo-Xtraj)*cos(theta_traj)-(Yo-Ytraj)*sin(theta_traj);
EcLat = (Xo-Xtraj)*cos(theta_traj-pi)+(Yo-Ytraj)*sin(theta_traj-pi);
EcAng = Theta_tract - theta_traj;

    if EcAng>pi
        EcAng=EcAng-2*pi;
    end
    if EcAng<-pi
        EcAng=EcAng+2*pi;
    end

Ecart=[EcLat; EcAng];
