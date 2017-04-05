function [a] = matA(tPred)

% a0=0.1237;
% a1=0.0934;
% b1=1.2155;
% b2=-0.4326;

a0=1.4;
a1=-0.55;
b1=0.075;
b2=0.075;
Cm=[1 0 0];
G=[a0 0 1]';


Fm=[b1 b2 a1; 1 0 0; 0 0 0];

for i=1:20*tPred
        a2=0;
        for j=0:i
            a2 = a2 + [1 0 0]*Fm^(i-j)*G;
            %a2 = a2 + 1;
        end
        a(i) = a2;
end
a