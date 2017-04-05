function [R1, R2]=calculR(nH,X,Un,Uh,Fm,a,deltaN)

Cm=[1 0 0];

R2=0;
R1=0;

%Alfa=0.97;
Alfa=0.2;

% % Construction de la consigne...
% ***********************
% U(1:nH+1)=Uh;
% U(1)=Un;
% **********************
U(1:nH+1)=Uh;
%U(1)=Un;


% i=1:nH;
% U(1:nH)=Un+(Uh-Un)*(i-1)/nH;
% Construction trajectoire de référence...
% for j=1:nH
%     Ref(j)=U(j) - (Alfa^(j-1))*(Un-X(1));
% end

% **********************
for j=1:nH+1
    Ref(j)=U(j) - (Alfa^(j-1))*(U(j)-X(1)) ;
end
% ***************************
% for j=1:nH
%     Ref(j)=Uh - (Alfa^(j-1))*(Un-deltaN);
% end
% Ref(1)=Uh-(Un-deltaN);
if abs(Uh)>5*pi/180
    Uh;
end

%Ref(nH)=Uh;

for i=1:nH+1
    %%Ai=calculA(Fm,G,i);
    Ai=a(i);
    di=CalculD(Fm,Cm,X,nH,i,Ref);
    R2=R2 + Ai*di;
    R1=R1 + Ai^2;
    %R1=nH-1;
end
