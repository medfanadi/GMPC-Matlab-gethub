function Sortie=TrouvePos(position_courante,vitesse,point_courant,tPred,CourbureT)

global TrajMere
methode=2;


Pcour=point_courant;
H=(vitesse)*(tPred);
%H=5;
if methode==1
    if abs(CourbureT)<0.03    
        X=position_courante(1)+vitesse*tPred*sin(-position_courante(3));
        Y=position_courante(2)+vitesse*tPred*cos(-position_courante(3));
    else
        X=position_courante(1)+vitesse*tPred*1*sin(-position_courante(3)); %remplacer 1 par1.3
        Y=position_courante(2)+vitesse*tPred*1*cos(-position_courante(3));
    end
else
    distance=0;
    distance2=0;
    while (distance2<H)
        distance2=distance2 + sqrt( (TrajMere(Pcour,2)-TrajMere(Pcour+1,2))^2 + (TrajMere(Pcour,3)-TrajMere(Pcour+1,3))^2 );
        distance=distance2;
        Pcour=Pcour+1;
    end
    if Pcour>2
        Longueur_dernier=sqrt( (TrajMere(Pcour-1,2)-TrajMere(Pcour,2))^2 + (TrajMere(Pcour-1,3)-TrajMere(Pcour,3))^2 );
        Longueur_rest=H-distance;
        X = TrajMere(Pcour-1,2) + (TrajMere(Pcour,2)-TrajMere(Pcour-1,2))*Longueur_rest/Longueur_dernier;
        Y = TrajMere(Pcour-1,3) + (TrajMere(Pcour,3)-TrajMere(Pcour-1,3))*Longueur_rest/Longueur_dernier;
    else 
        X=0;
        Y=0;
    end
end

Sortie(1)=X;
Sortie(2)=Y;



