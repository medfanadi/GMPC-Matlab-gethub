function [R1, R2]=calculRDyn(nH,X,Un,Uh,Fm,G)

Cm=[1 0 0 0];

R2=0;
R1=0;

Alfa=0.2;
% Construction de la consigne...
% i=1:nH+1;
% U(1:nH+1)=Un+(Uh-Un)*(i-1)/(nH+1);
U(1:nH+1)=Uh;
U(1)=Un;
% Construction trajectoire de référence...
for j=1:nH+1
    Ref(j)=U(j) - (Alfa^(j-1))*(Un-X(1));
end


for i=1:nH-1
    Ai=calculADyn(Fm,G,i);
    di=Ref(i) - Cm*Fm^(i+1)*X ;
    R2=R2 + Ai*di;
    R1=R1 + Ai^2;
    %R1=nH-1;
end
%R1=Ai^2;
%R2=Ref(nH);