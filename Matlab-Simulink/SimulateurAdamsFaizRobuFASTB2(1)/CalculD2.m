function d=CalculD(Fm,Cm,X,nH,i,Ref)


T=X';
d=Ref(i) - Cm*(Fm^(i+1))*X ;



