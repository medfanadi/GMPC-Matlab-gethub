function Corr180=corr180(Angle)

%Angle=Angle+k*2*pi;

if Angle>0
    Angle=Angle-2*pi;
end
Corr180=Angle;

