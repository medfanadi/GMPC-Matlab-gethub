function Affich

N=findobj('tag','FigResultat');
close(N)
ResultatsFig;
Donnees=evalin('base','Resultat');

%affiche Elat
N=findobj('tag','Elat')
axes(N)
plot(Donnees(:,1),'k')
grid on
hold on
plot(Donnees(:,22),'r')

% affiche ECap
N=findobj('tag','Ecap');
axes(N)
plot(Donnees(:,2)*180/pi,'k')
grid on
hold on
plot(Donnees(:,23)*180/pi,'k')

% affiche angle braquage
N=findobj('tag','StAngle');
axes(N)
plot(Donnees(:,25)*180/pi,'k')
hold on
%plot(Donnees(:,31)*180/pi,'b')
grid on
hold off

% affiche dérives
N=findobj('tag','Beta');
axes(N)
hold on
plot(Donnees(:,9)*180/pi,'b')
plot(Donnees(:,10)*180/pi,'r')
plot(-Donnees(:,11)*180/pi,'.b')
plot(Donnees(:,12)*180/pi,'.r')
grid on
hold off

% affiche Vitesse lacet
N=findobj('tag','VitCap');
axes(N)
hold on
plot(Donnees(:,5)*180/pi,'k')
plot(Donnees(:,13)*180/pi,'b')
plot(Donnees(:,19)*180/pi,'r')
grid on
hold off

% affiche Rigidite de dérive
N=findobj('tag','Rigidite');
axes(N)
hold on
plot(Donnees(:,15),'b')
plot(Donnees(:,16),'r')
plot(Donnees(:,17),'.b')
plot(Donnees(:,18),'.r')
grid on
hold off

% affiche dérives Globales
N=findobj('tag','DerGlob');
axes(N)
hold on
plot(Donnees(:,21)*180/pi,'k')
plot(Donnees(:,14)*180/pi,'b')
plot(Donnees(:,20)*180/pi,'r')


grid on
hold off

