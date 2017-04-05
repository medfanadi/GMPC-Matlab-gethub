function [Droite] = MdresCarres (Pos,point)

global TrajMere

NbPoints = length(TrajMere(:,1));

nb_pts=10;

if point < nb_pts/2
    xtraj=TrajMere(1:nb_pts,2);
    ytraj=TrajMere(1:nb_pts,3);
elseif point > NbPoints - nb_pts/2 +1
    xtraj=TrajMere(NbPoints-(nb_pts-1):NbPoints,2);
    ytraj=TrajMere(NbPoints-(nb_pts-1):NbPoints,3);
else
    xtraj=TrajMere(point-floor((nb_pts-1)/2):point+ceil((nb_pts-1)/2),2);
    ytraj=TrajMere(point-floor((nb_pts-1)/2):point+ceil((nb_pts-1)/2),3);
end
    t=[-floor((nb_pts-1)/2):1:ceil((nb_pts-1)/2)]';
    Px=Polyfit(t,xtraj,2);
    Py=Polyfit(t,ytraj,2);
    
    Xo=Pos(1);
    Yo=Pos(2);

    tcalc=-.5:0.01:.5;
    Xcalc=Polyval(Px,tcalc);
    Ycalc=Polyval(Py,tcalc);
    for j=1:length(tcalc)
        distance(j)=sqrt( (Xo-Xcalc(j))^2 + (Yo-Ycalc(j))^2 );
    end
    [machin,jcour]=min(distance);
    Xtraj=Xcalc(jcour);
    Ytraj=Ycalc(jcour);
    tcour=tcalc(jcour);
    Xtg=2*Px(1)*(tcour)+Px(2);
    Ytg=2*Py(1)*(tcour)+Py(2);
%     Xtg=2*Px(1)*(0)+Px(2);
%     Ytg=2*Py(1)*(0)+Py(2);

    % ******** D�termination de la tangente 
        
%     if abs(Xtg)>abs(Ytg)
%         if Xtg>0
%             theta_traj=atan(Ytg/Xtg)-pi/2;
%         else
%             theta_traj=atan(Ytg/Xtg)+pi/2;
%         end
%     else
%         if Ytg>0
%             theta_traj=atan(-Xtg/Ytg);
%         else
%             theta_traj=atan(-Xtg/Ytg)-pi;
%         end
%     end
theta_traj=atan2(Ytg,Xtg)-pi/2;
%theta_traj=-atan2(Xtg,Ytg);

Droite= [ Xtraj
          Ytraj
          theta_traj];
