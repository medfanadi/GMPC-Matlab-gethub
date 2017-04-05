function a=calculADyn(Fm,G,i)
a=0;
for j=0:i
   a2 = [1 0 0 0]*Fm^(i-j)*G;
   a=a+a2;
end