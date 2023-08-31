clc; clear; close all;

%variable setting --------------------------------------------------------
ang1_east = [430:-1:270,270:1:430];           % L1 이동경로설정(EAST)
theta1_east = ang1_east*(pi/180);
r1_east = 8;                                  % L1 원의반지름
x1_east = r1_east*cos(theta1_east)+11.6;      % X축 평행이동 및 설정
z1_east = r1_east*sin(theta1_east);           % Z축 설정

ang2_east = [430:-1:270,270:1:430];           % L2 이동경로 설정(EAST)
theta2_east = ang2_east*(pi/180);
r2_east = 8;                                  % L2 원의반지름
x2_east = r2_east*cos(theta2_east)+11.6;      % X축 평행이동 및 설정
z2_east = r2_east*sin(theta2_east)-16;        % Z축 평행이동 및 설정

ang1_west = [110:1:270,270:-1:110];           % L1 이동경로설정(WEST)
theta1_west = ang1_west*(pi/180);
r1_west = 8;                                  % L1 원의반지름
x1_west = r1_west*cos(theta1_west)-11.6;      % X축 평행이동 및 설정 
z1_west = r1_west*sin(theta1_west);           % Z축 설정

ang2_west = [110:1:270,270:-1:110];           % L2 이동경로 설정(WEST)
theta2_west = ang2_west*(pi/180);
r2_west = 8;                                  % L2원의반지름
x2_west = r2_west*cos(theta2_west)-11.6;      % X축 평행이동 및 설정
z2_west = r2_west*sin(theta2_west)-16;        % Z축 평행이동 및 설정

ang1_north = [430:-1:270,270:1:430];          % L1 이동경로설정(NORTH)
theta1_north = ang1_north*(pi/180);
r1_north = 8;                                 % 원의반지름
y1_north = r1_north*cos(theta1_north)+11.6;   % Y축 평행이동 및 설정 
z1_north = r1_north*sin(theta1_north);        % Z축 설정

ang2_north = [430:-1:270,270:1:430];          % L2 이동경로 설정(NORTH)
theta2_north = ang2_north*(pi/180);
r2_north = 8;                                 % 원의반지름
y2_north = r2_north*cos(theta2_north)+11.6;   % Y축 평행이동 및 설정
z2_north = r2_north*sin(theta2_north)-16;     % Z축 평행이동 및 설정


ang1_south = [110:1:270,270:-1:110];          % L1 이동경로설정(SOUTH)
theta1_south = ang1_south*(pi/180);
r1_south = 8;                                 % 원의반지름
y1_south = r1_south*cos(theta1_south)-11.6;   % Y축 평행이동 및 설정 
z1_south = r1_south*sin(theta1_south);        % Z축 설정

ang2_south = [110:1:270,270:-1:110];          % L2 이동경로 설정(SOUTH)
theta2_south = ang2_south*(pi/180);
r2_south = 8;                                 % 원의반지름
y2_south = r2_south*cos(theta2_south)-11.6;   % Y축 평행이동 및 설정
z2_south = r2_south*sin(theta2_south)-16;     % Z축 평행이동 및 설정


%graph setting ----------------------------------------------------------
hf = figure;                                  %figure창생성
ha = axes(hf);                                %figure창에 좌표넣기

hp1 = plot3(ha,[11.6 x1_east(8)],[0 0],[0 z1_east(8)],'r','Linewidth',3);                    %EAST_L1 다리생성
hold(ha,'on');                                                                               %하나의 figure에 여러개 함수 넣기
hp2 = plot3(ha,[x1_east(8) x2_east(8)],[0 0],[z1_east(8) z2_east(8)],'b','Linewidth',3);     %EAST_L2 다리생성
hp3 = plot3(ha,[-11.6 x1_west(8)],[0 0],[0 z1_west(8)],'r','Linewidth',3);                   %WEST_L1 다리생성
hp4 = plot3(ha,[x1_west(8) x2_west(8)],[0 0],[z1_west(8) z2_west(8)],'b','Linewidth',3);     %WEST_L2 다리생성
hp5 = plot3(ha,[0 0],[11.6 y1_north(8)],[0 z1_north(8)],'r','Linewidth',3);                  %NORTH_L1 다리생성
hp6 = plot3(ha,[0 0],[y1_north(8) y2_north(8)],[z1_north(8) z2_north(8)],'b','Linewidth',3); %NORTH_L2 다리생성
hp7 = plot3(ha,[0 0],[-11.6 y1_south(8)],[0 z1_south(8)],'r','Linewidth',3);                 %SOUTH_L1 다리생성
hp8 = plot3(ha,[0 0],[y1_south(8) y2_south(8)],[z1_south(8) z2_south(8)],'b','Linewidth',3); %SOUTH_L2 다리생성

vertex=[0 -11.6 0;                                                                    %직육면체의 8개 꼭짓점 좌표지정 
        11.6 0 0;
        0 11.6 0;
        -11.6 0 0;
        0 -11.6 8;
        11.6 0 8;
        0 11.6 8;
        -11.6 0 8];
face=[1 2 3 4;                                                                        %직육면체의 6개 면 그리는 순서 지정
      1 2 6 5;
      2 3 7 6;
      3 4 8 7;
      1 4 8 5;
      5 6 7 8];
patch('Faces',face,'Vertices',vertex,'Facecolor',[0.8 0.8 1]);                        %face는 면그리기, vertex는 꼭짓점 지정, facecolor는 색깔
view(3);

axis(ha,'equal');                        %좌표에서 x축, y축 길이 동일
set(ha,'XLim',[-30 30]);                 %좌표에서 x축 설정
set(ha,'YLim',[-30 30]);                 %좌표에서 y축 설정
set(ha,'ZLim',[-30 30]);                 %좌표에서 y축 설정
grid(ha,'on');                           %좌표에 그리드 넣기
xlabel(ha,'X');
ylabel(ha,'Y');
zlabel(ha,'Z');

%camera setting

set(ha,'XTickLabelMode','manual');                  %cam x축 좌표고정
set(ha,'XTickMode','manual');
set(ha,'YTickLabelMode','manual');                  %cam y축 좌표고정
set(ha,'YTickMode','manual');
set(ha,'ZTickLabelMode','manual');                  %cam z축 좌표고정
set(ha,'ZTickMode','manual');
cam_ang = linspace(0,360,length(theta1_west));      %theta1_west와 cam_ang의 벡터값이 같아야하므로 linspace를 이용해 벡터값 맞추기


%motion ------------------------------------------------------------
for i_pt = 1:length(theta1_west)                                %애니매이션 실행 1부터theta_west크기까지 반복

    set(hp1,'XData',[11.6 x1_east(i_pt)], ...                   %L1_EAST 이동하는 선의 x좌표 y좌표를 handle을 이용해 좌표값 반복설정 
            'ZData',[0 z1_east(i_pt)]           );                           
    set(hp2,'XData',[x1_east(i_pt) x2_east(i_pt)], ...          %L2_EAST 이동하는 선의 x좌표 y좌표를 handle을  이용해 좌표값 반복설정 
            'ZData',[z1_east(i_pt) z2_east(i_pt)]      );  
    set(hp3,'XData',[-11.6 x1_west(i_pt)], ...                  %L1_WEST 이동하는 선의 x좌표 y좌표를 handle을 이용해 좌표값 반복설정 
            'ZData',[0 z1_west(i_pt)]           );                           
    set(hp4,'XData',[x1_west(i_pt) x2_west(i_pt)], ...          %L2_WEST 이동하는 선의 x좌표 y좌표를 handle을  이용해 좌표값 반복설정 
            'ZData',[z1_west(i_pt) z2_west(i_pt)]      );                           
    set(hp5,'YData',[11.6 y1_north(i_pt)], ...                  %L1_NORTH 이동하는 선의 x좌표 y좌표를 handle을 이용해 좌표값 반복설정 
            'ZData',[0 z1_north(i_pt)]           );                           
    set(hp6,'YData',[y1_north(i_pt) y2_north(i_pt)], ...        %L2_NORTH 이동하는 선의 x좌표 y좌표를 handle을  이용해 좌표값 반복설정 
            'ZData',[z1_north(i_pt) z2_north(i_pt)]      );                           
    set(hp7,'YData',[-11.6 y1_south(i_pt)], ...                 %L1_SOUTH 이동하는 선의 x좌표 y좌표를 handle을 이용해 좌표값 반복설정 
            'ZData',[0 z1_south(i_pt)]           );                           
    set(hp8,'YData',[y1_south(i_pt) y2_south(i_pt)], ...        %L2_SOUTH 이동하는 선의 x좌표 y좌표를 handle을  이용해 좌표값 반복설정 
            'ZData',[z1_south(i_pt) z2_south(i_pt)]      );                           

    cam_x = 60*cos(cam_ang(i_pt)*pi/180);                       %x축 으로 돌아가는 속도 조절
    cam_y = 60*sin(cam_ang(i_pt)*pi/180);                       %y축 으로 돌아가는 속도 조절
    cam_z = 30;                                                 %z축은 고정(위에서 내려다보기)
    set(ha,'CameraPosition',[cam_x cam_y cam_z]);               %cam의 handle속성값 바꾸기

pause(0.035);                                                %0.035초 딜레이 0에가까울수록 빠름(drawnow함수 이용시 제일 빠름)
end