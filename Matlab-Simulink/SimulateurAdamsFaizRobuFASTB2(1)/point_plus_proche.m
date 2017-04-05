function [point] = point_plus_proche(position_courante,point_courant)
global TrajMere

NbPoints = length(TrajMere(:,1));
Xo=position_courante(1);
Yo=position_courante(2);

debut=max(1,point_courant-20);
fin=min(NbPoints,point_courant+20);

for j=debut:1:fin
    dist(j-debut+1,1)=j;
    dist(j-debut+1,2)=sqrt( (TrajMere(j,2)-Xo)^2 +(TrajMere(j,3)-Yo)^2 );
end
[dist_min,It]=min(dist(:,2));
point=dist(It,1);
