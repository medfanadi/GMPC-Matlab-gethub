function derivation=derivation(Beta)

T=0.05;
for i=2:length(Beta)
    derivation(i)=Beta(i)-Beta(i-1);
end