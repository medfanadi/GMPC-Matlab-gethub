function [TC] = CalculTC(vitesset,HatVitLacet3,HatBeta3,DPhiv,Phiv)

global TrajMere LF LR m Iz empattement ParDyn Tsim
    masse = m;
    Ix=100;
    Iy=100;
    grav=9.8;
    voie=1.2;
    h=1.6;
    kr=14500;
    br=6000;
    pas_calcul=0.05;

    D2Phiv=(h*DPhiv*DPhiv*sin(Phiv)+h*HatVitLacet3*HatVitLacet3*sin(Phiv)+vitesset*HatVitLacet3*cos(HatBeta3)-((kr*Phiv+br*DPhiv)/(masse*h))*cos(Phiv))/(h*cos(Phiv));
    DPhiv=DPhiv + pas_calcul*D2Phiv;
    Phiv=Phiv+pas_calcul*DPhiv;
    Somme=masse*(-h*D2Phiv*sin(Phiv)-h*DPhiv*DPhiv*cos(Phiv)+grav-((kr*Phiv+br*DPhiv)/(h*masse))*sin(Phiv));
    
    Difference=(2/voie)*(Ix*D2Phiv+(Iz-Iy)*(HatVitLacet3*HatVitLacet3*cos(Phiv)*sin(Phiv))-h*sin(Phiv)*Somme);
    
    TC(1)=-Difference/Somme;
    
    if(TC(1)>1) 
        TC(1)=1;
    end
    if(TC(1)<-1)
        TC(1)=-1;
    end   
TC(2)=DPhiv;
TC(3)=Phiv;
