function [R1, R2]=calculR(nH,X,Un,Uh,Fm,a,DeltaTrajHR)

YB=a;
Cm=[1 0 0];

R2=0;
R1=0;
Nobj=findobj('tag','Gamma');
Alfa=str2num(get(Nobj,'string'));
mat1=zeros(2,2);
% Construction de la consigne...
% Construction de la consigne...
NChoixCons=findobj('tag','ChoixCons');

if (get(NChoixCons,'value'))==1
    U(1:nH+1)=Uh;
    Un=Uh;
elseif (get(NChoixCons,'value'))==2
    U(1:nH)=Un+((Uh-Un)*[1:nH])/(nH);
elseif (get(NChoixCons,'value'))==3
    U(1:nH)=DeltaTrajHR;
end


% Construction trajectoire de référence...
for j=1:nH
    Ref(j)=U(j) - (Alfa^(j-1))*(Un-X(1));
end

% Algorithme de prédiction


for i=1:nH
    d(i)=CalculD2(Fm,Cm,X,nH,i,Ref);
    mat1=mat1+YB(:,i)*YB(:,i)';
end
Calc=d*(inv(mat1)*YB)'*[1 0]';
R1=Calc;
R2=0;
