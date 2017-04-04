%***************************************************************************************************************************
%MAE 505 ROBOTICS PROJECT
%COORDINATING LOCOMOTION AND MANIPULATION OF A MOBILE MANIPULATOR
%SIMULATION
%Created by Gan Tao
%Case (ii) 
%x=t,y=t
%Dec. 10 2003
%***************************************************************************************************************************

% Xc                ***X coordinate of center mass of the mobile platform
% Yc                ***Y coordinate of center mass of the mobile platform
% fai               ***heading angle of the platform measured from the X axis of the world coordinates
% theta_R           ***angular displacement of the right wheel
% theta_L           ***angular displacement of the left wheel
% theta_dot_R       ***angular velocity of the right wheel??
% theta_dot_L       ***
% Xr                ***X coordinate of world coordinates of the reference point
% Yr                ***Y coordinate of world coordinates of the reference point
% Xr_c              ***
% Yr_c              ***
% c                 ***c=(r/2*b)
% b                 ***the distance between the driving wheels and the axis of symmetry
% d                 ***the distance from Po(the intersection of the axis of symmetry with the driving wheel axis) to Pc(the center 
%                   ***of mass of the platform
clear;
close all;
clear all
clc

%******* initial state variables ************************************************************************

q_ini = [0 0 pi/4];
q_fin = [10 10 pi/4];

% create the obstacle
[Obstacle] = Obstacleplot(5, 5, pi/2, 1.5);

Obstacle1x = [Obstacle(1,1) Obstacle(1,3)];
Obstacle1y = [Obstacle(1,2) Obstacle(1,4)];

Obstacle2x = [Obstacle(1,3) Obstacle(1,5)];
Obstacle2y = [Obstacle(1,4) Obstacle(1,6)];

Obstacle3x = [Obstacle(1,5) Obstacle(1,7)];
Obstacle3y = [Obstacle(1,6) Obstacle(1,8)];

Obstacle4x = [Obstacle(1,7) Obstacle(1,1)];
Obstacle4y = [Obstacle(1,8) Obstacle(1,2)];


% ***** Plotting Result **********************************************************************************
hold on
axis equal
axis([-1 15 -1 15])
grid on
x_o=10;
y_o=0;

Te=0.1;            %periode d'echantillonnage
q(1,1)=q_ini(1);   %x_o
q(1,2)=q_ini(2);   %y_o
q(1,3)=q_ini(3);   %theta_o

% bug2 algorithm
T1=20;      %durée et params de la 1ere phase
v=1;        %m/s
omega=0;    %rad/s
t(1)=0;
N1=(T1/Te);   %premier nombre de boucle
Nmin=2;
Nmax=N1+1;
captorSave = -1;
tour = false;
for i=Nmin:Nmax,
    captor = Read_sensor(q(i-1,1), q(i-1,2), q(i-1,3), Obstacle);
    
    % if there is an obstacle in front of the robot, we turn
    if (captor == 1)
        v=0;
        omega=-10*q(i-1,3);
    % else, we go straight forward
    else
        v=1;
        omega=0;
    end
    
    % there was an obstacle on the left, now there is no more, so we turn on
    % the left
    if ((captorSave == 2) && (captor == 0))
        tour = true;
        v=0;
        omega=10*0.1570796+q(i-1,3);
    % there was an obstacle on the right, now there is no more, so we turn on
    % the right
    elseif ((captorSave == 3) && (captor == 0))
        tour = true;
        v=0;
        omega=q(i-1,3)+0.1570796;
    % there is an obstacle on the left, and the robot is on its line
    elseif ((captor == 2) && (floor(q(i-1,1)) == floor(q(i-1,2))) && (tour == true))
        v=0;
        omega=-8*q(i-1,3);
    % there is an obstacle on the right, and the robot is on its line
    elseif ((captor == 3) && (floor(q(i-1,1)) == floor(q(i-1,2))) && (tour == true))
        v=0;
        omega=8*q(i-1,3);
    end
    q(i,1)=q(i-1,1)+v*cos(q(i-1,3))*Te;
    q(i,2)=q(i-1,2)+v*sin(q(i-1,3))*Te;
    q(i,3)=q(i-1,3)+omega*Te;
    % we save what the sensors see
    captorSave = captor;
    t(i)=0+i*Te;
end

% plot obstacle
plot(Obstacle1x, Obstacle1y,'g-','LineWidth',3);
plot(Obstacle2x, Obstacle2y,'g-','LineWidth',3);
plot(Obstacle3x, Obstacle3y,'g-','LineWidth',3);
plot(Obstacle4x, Obstacle4y,'g-','LineWidth',3);
        
for j = 1:Nmax, % change to M for sinewave, N for circle
    R1   = 5/1.414;
    R2   = 5/1.414;
    Xc   = q(j,1);
    Yc   = q(j,2);
    fai  = q(j,3); 
    robot_width = 0.3;    % demi-cote du robot

    [Robot] = Robotplot(Xc, Yc, fai, robot_width);

    %********************* Create the 4 lines that draw the box of the mobile robot *************************************
    Robot1x = [Robot(1,1) Robot(1,3)];
    Robot1y = [Robot(1,2) Robot(1,4)];

    Robot2x = [Robot(1,3) Robot(1,5)];
    Robot2y = [Robot(1,4) Robot(1,6)];

    Robot3x = [Robot(1,5) Robot(1,7)];
    Robot3y = [Robot(1,6) Robot(1,8)];

    Robot4x = [Robot(1,7) Robot(1,1)];
    Robot4y = [Robot(1,8) Robot(1,2)];

    plot (Xc,Yc,'r-','LineWidth', 1);

    if j==1,

        h1 =plot(Robot1x, Robot1y,'b-','LineWidth',4);
        h2 =plot(Robot2x, Robot2y,'r-','LineWidth',1);
        h3 =plot(Robot3x, Robot3y,'b-','LineWidth',4);
        h4 =plot(Robot4x, Robot4y,'r-','LineWidth',1);

        set(h1,'EraseMode','xor');
        set(h2,'EraseMode','xor');
        set(h3,'EraseMode','xor');
        set(h4,'EraseMode','xor');
    else
        set(h1,'XData', Robot1x,'YData',Robot1y)
        set(h2,'XData', Robot2x,'YData',Robot2y)
        set(h3,'XData', Robot3x,'YData',Robot3y)
        set(h4,'XData', Robot4x,'YData',Robot4y)
    end
    pause(0.01)
    
end