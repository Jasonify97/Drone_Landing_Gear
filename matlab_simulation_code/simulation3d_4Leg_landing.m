clc; clear; close all;

%Landing variable setting --------------------------------------------------------
lang1_east = 430;                                % L1 이동경로설정(EAST)
ltheta1_east = lang1_east*(pi/180);
lr1_east = 8;                                    % L1 원의반지름
lx1_east = lr1_east*cos(ltheta1_east)+11.6;      % X축 평행이동 및 설정
lz1_east = lr1_east*sin(ltheta1_east)+50 ;       % Z축 설정

lang2_east = 430;                                % L2 이동경로 설정(EAST)
ltheta2_east = lang2_east*(pi/180);
lr2_east = 8;                                    % L2 원의반지름
lx2_east = lr2_east*cos(ltheta2_east)+11.6;      % X축 평행이동 및 설정
lz2_east = lr2_east*sin(ltheta2_east)+34;        % Z축 평행이동 및 설정

lang1_west = 110;                                % L1 이동경로설정(WEST)
ltheta1_west = lang1_west*(pi/180);
lr1_west = 8;                                    % L1 원의반지름
lx1_west = lr1_west*cos(ltheta1_west)-11.6;      % X축 평행이동 및 설정 
lz1_west = lr1_west*sin(ltheta1_west)+50;        % Z축 설정

lang2_west = 110;                                % L2 이동경로 설정(WEST)
ltheta2_west = lang2_west*(pi/180);
lr2_west = 8;                                    % L2원의반지름
lx2_west = lr2_west*cos(ltheta2_west)-11.6;      % X축 평행이동 및 설정
lz2_west = lr2_west*sin(ltheta2_west)+34;        % Z축 평행이동 및 설정

lang1_north = 430;                               % L1 이동경로설정(NORTH)
ltheta1_north = lang1_north*(pi/180);
lr1_north = 8;                                   % 원의반지름
ly1_north = lr1_north*cos(ltheta1_north)+11.6;   % Y축 평행이동 및 설정 
lz1_north = lr1_north*sin(ltheta1_north)+50;     % Z축 설정

lang2_north = 430;                               % L2 이동경로 설정(NORTH)
ltheta2_north = lang2_north*(pi/180);
lr2_north = 8;                                   % 원의반지름
ly2_north = lr2_north*cos(ltheta2_north)+11.6;   % Y축 평행이동 및 설정
lz2_north = lr2_north*sin(ltheta2_north)+34;     % Z축 평행이동 및 설정

lang1_south = 110;                               % L1 이동경로설정(SOUTH)
ltheta1_south = lang1_south*(pi/180);
lr1_south = 8;                                   % 원의반지름
ly1_south = lr1_south*cos(ltheta1_south)-11.6;   % Y축 평행이동 및 설정 
lz1_south = lr1_south*sin(ltheta1_south)+50;     % Z축 설정

lang2_south = 110;                               % L2 이동경로 설정(SOUTH)
ltheta2_south = lang2_south*(pi/180);
lr2_south = 8;                                   % 원의반지름
ly2_south = lr2_south*cos(ltheta2_south)-11.6;   % Y축 평행이동 및 설정
lz2_south = lr2_south*sin(ltheta2_south)+34;     % Z축 평행이동 및 설정


%Leg move variable setting --------------------------------------------------------


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

%graph setting
hp1 = plot3(ha,[-11.6 0],[0 -11.6],[50 50],'k','Linewidth',1);                          %부품넣을공간 생성(밑면)
hold(ha,'on');                                                                          %1개 FIGURE에 2개이상 그래프 그릴때 
hp2 = plot3(ha,[0 11.6],[-11.6 0],[50 50],'k','Linewidth',1);                           %부품넣을공간 생성(밑면)
hp3 = plot3(ha,[11.6 0],[0 11.6],[50 50],'k','Linewidth',1);                            %부품넣을공간 생성(밑면)
hp4 = plot3(ha,[0 -11.6],[11.6 0],[50 50],'k','Linewidth',1);                           %부품넣을공간 생성(밑면)
hp5 = plot3(ha,[0 0],[-11.6 -11.6],[50 50],'k','Linewidth',1);                          %부품넣을공간 생성(높이)
hp6 = plot3(ha,[11.6 11.6],[0 0],[50 58],'k','Linewidth',1);                            %부품넣을공간 생성(높이)
hp7 = plot3(ha,[0 0],[11.6 11.6],[50 58],'k','Linewidth',1);                            %부품넣을공간 생성(높이)
hp8 = plot3(ha,[-11.6 -11.6],[0 0],[50 58],'k','Linewidth',1);                          %부품넣을공간 생성(높이)
hp9 = plot3(ha,[-11.6 0],[0 -11.6],[58 58],'k','Linewidth',1);                          %부품넣을공간 생성(윗면)
hp10 = plot3(ha,[0 11.6],[-11.6 0],[58 58],'k','Linewidth',1);                          %부품넣을공간 생성(윗면)
hp11 = plot3(ha,[11.6 0],[0 11.6],[58 58],'k','Linewidth',1);                           %부품넣을공간 생성(윗면)
hp12 = plot3(ha,[0 -11.6],[11.6 0],[58 58],'k','Linewidth',1);                          %부품넣을공간 생성(윗면)

hp13 = plot3(ha,[11.6 lx1_east],[0 0],[50 lz1_east],'r','Linewidth',3);                    %EAST_L1 다리생성(랜딛용)
hp14 = plot3(ha,[lx1_east lx2_east],[0 0],[lz1_east lz2_east],'b','Linewidth',3);          %EAST_L2 다리생성(랜딛용)
hp15 = plot3(ha,[-11.6 lx1_west],[0 0],[50 lz1_west],'r','Linewidth',3);                   %WEST_L1 다리생성(랜딛용)
hp16 = plot3(ha,[lx1_west lx2_west],[0 0],[lz1_west lz2_west],'b','Linewidth',3);          %WEST_L2 다리생성(랜딛용)
hp17 = plot3(ha,[0 0],[11.6 ly1_north],[50 lz1_north],'r','Linewidth',3);                  %NORTH_L1 다리생성(랜딛용)
hp18 = plot3(ha,[0 0],[ly1_north ly2_north],[lz1_north lz2_north],'b','Linewidth',3);      %NORTH_L2 다리생성(랜딛용)
hp19 = plot3(ha,[0 0],[-11.6 ly1_south],[50 lz1_south],'r','Linewidth',3);                 %SOUTH_L1 다리생성(랜딛용)
hp20 = plot3(ha,[0 0],[ly1_south ly2_south],[lz1_south lz2_south],'b','Linewidth',3);      %SOUTH_L2 다리생성(랜딛용)

axis(ha,'equal');                        %좌표에서 x축, y축 길이 동일
set(ha,'XLim',[-40 40]);                 %좌표에서 x축 설정
set(ha,'YLim',[-40 40]);                 %좌표에서 y축 설정
set(ha,'ZLim',[-40 70]);                 %좌표에서 y축 설정
grid(ha,'on');                           %좌표에 그리드 넣기
xlabel(ha,'X');
ylabel(ha,'Y');
zlabel(ha,'Z');

%camera setting ----------------------------------------------------------

set(ha,'XTickLabelMode','manual');                  %cam x축 좌표고정
set(ha,'XTickMode','manual');
set(ha,'YTickLabelMode','manual');                  %cam y축 좌표고정
set(ha,'YTickMode','manual');
set(ha,'ZTickLabelMode','manual');                  %cam z축 좌표고정
set(ha,'ZTickMode','manual');
cam_ang = linspace(0,360,length(theta1_west));      %theta1_west와 cam_ang의 벡터값이 같아야하므로 linspace를 이용해 벡터값 맞추기

% Landing motion ------------------------------------------------------------
fprintf('랜딩 시작\n')
a=linspace(1,1,50);                                 %1값을 50개 만들기
for i = 1:length(a)                                 %50번반복
set(hp1,'ZData',[50-i 50-i]);                       %시작위치는 밑변:50,윗면:58 이며, 1씩 감소(50번 반복)
set(hp2,'ZData',[50-i 50-i]);
set(hp3,'ZData',[50-i 50-i]);
set(hp4,'ZData',[50-i 50-i]);
set(hp5,'ZData',[50-i 58-i]);
set(hp6,'ZData',[50-i 58-i]);
set(hp7,'ZData',[50-i 58-i]);
set(hp8,'ZData',[50-i 58-i]);
set(hp9,'ZData',[58-i 58-i]);
set(hp10,'ZData',[58-i 58-i]);
set(hp11,'ZData',[58-i 58-i]);
set(hp12,'ZData',[58-i 58-i]);
set(hp13,'ZData',[50-i lz1_east-i]);
set(hp14,'ZData',[lz1_east-i lz2_east-i]);
set(hp15,'ZData',[50-i lz1_west-i]);
set(hp16,'ZData',[lz1_west-i lz2_west-i]);
set(hp17,'ZData',[50-i lz1_north-i]);
set(hp18,'ZData',[lz1_north-i lz2_north-i]);
set(hp19,'ZData',[50-i lz1_south-i]);
set(hp20,'ZData',[lz1_south-i lz2_south-i]);
pause(0.08);                                         %0.08초딜레이
end

pause(1);                     %착륙후 1초쉬기
delete(hp13);                 %랜딩용 다리지우기
delete(hp14);                 %랜딩용 다리지우기
delete(hp15);                 %랜딩용 다리지우기
delete(hp16);                 %랜딩용 다리지우기
delete(hp17);                 %랜딩용 다리지우기
delete(hp18);                 %랜딩용 다리지우기
delete(hp19);                 %랜딩용 다리지우기
delete(hp20);                 %랜딩용 다리지우기

hp21 = plot3(ha,[11.6 x1_east(8)],[0 0],[0 z1_east(8)],'r','Linewidth',3);                    %EAST_L1 다리생성(다리펴기)
hp22 = plot3(ha,[x1_east(8) x2_east(8)],[0 0],[z1_east(8) z2_east(8)],'b','Linewidth',3);     %EAST_L2 다리생성(다리펴기)
hp23 = plot3(ha,[-11.6 x1_west(8)],[0 0],[0 z1_west(8)],'r','Linewidth',3);                   %WEST_L1 다리생성(다리펴기)
hp24 = plot3(ha,[x1_west(8) x2_west(8)],[0 0],[z1_west(8) z2_west(8)],'b','Linewidth',3);     %WEST_L2 다리생성(다리펴기)
hp25 = plot3(ha,[0 0],[11.6 y1_north(8)],[0 z1_north(8)],'r','Linewidth',3);                  %NORTH_L1 다리생성(다리펴기)
hp26 = plot3(ha,[0 0],[y1_north(8) y2_north(8)],[z1_north(8) z2_north(8)],'b','Linewidth',3); %NORTH_L2 다리생성(다리펴기)
hp27 = plot3(ha,[0 0],[-11.6 y1_south(8)],[0 z1_south(8)],'r','Linewidth',3);                 %SOUTH_L1 다리생성(다리펴기)
hp28 = plot3(ha,[0 0],[y1_south(8) y2_south(8)],[z1_south(8) z2_south(8)],'b','Linewidth',3); %SOUTH_L2 다리생성(다리펴기)

fprintf('랜딩 끝\n다리시작\n')

for i_pt = 1:length(theta1_west)                                     %애니매이션 실행 1부터theta_west크기까지 반복

        set(hp21,'XData',[11.6 x1_east(i_pt)], ...                   %L1_EAST 이동하는 선의 x좌표 y좌표를 handle을 이용해 좌표값 반복설정
            'ZData',[0 z1_east(i_pt)]           );
        set(hp22,'XData',[x1_east(i_pt) x2_east(i_pt)], ...          %L2_EAST 이동하는 선의 x좌표 y좌표를 handle을  이용해 좌표값 반복설정
            'ZData',[z1_east(i_pt) z2_east(i_pt)]      );
        set(hp23,'XData',[-11.6 x1_west(i_pt)], ...                  %L1_WEST 이동하는 선의 x좌표 y좌표를 handle을 이용해 좌표값 반복설정
            'ZData',[0 z1_west(i_pt)]           );
        set(hp24,'XData',[x1_west(i_pt) x2_west(i_pt)], ...          %L2_WEST 이동하는 선의 x좌표 y좌표를 handle을  이용해 좌표값 반복설정
            'ZData',[z1_west(i_pt) z2_west(i_pt)]      );
        set(hp25,'YData',[11.6 y1_north(i_pt)], ...                  %L1_NORTH 이동하는 선의 x좌표 y좌표를 handle을 이용해 좌표값 반복설정
            'ZData',[0 z1_north(i_pt)]           );
        set(hp26,'YData',[y1_north(i_pt) y2_north(i_pt)], ...        %L2_NORTH 이동하는 선의 x좌표 y좌표를 handle을  이용해 좌표값 반복설정
            'ZData',[z1_north(i_pt) z2_north(i_pt)]      );
        set(hp27,'YData',[-11.6 y1_south(i_pt)], ...                 %L1_SOUTH 이동하는 선의 x좌표 y좌표를 handle을 이용해 좌표값 반복설정
            'ZData',[0 z1_south(i_pt)]           );
        set(hp28,'YData',[y1_south(i_pt) y2_south(i_pt)], ...        %L2_SOUTH 이동하는 선의 x좌표 y좌표를 handle을  이용해 좌표값 반복설정
            'ZData',[z1_south(i_pt) z2_south(i_pt)]      );

        cam_x = 10*cos(cam_ang(i_pt)*pi/180);                       %x축 으로 돌아가는 속도 조절
        cam_y = 10*sin(cam_ang(i_pt)*pi/180);                       %y축 으로 돌아가는 속도 조절
        cam_z = 20;                                                 %z축은 고정(위에서 내려다보기)
        set(ha,'CameraPosition',[cam_x cam_y cam_z]);               %cam의 handle속성값 바꾸기

        pause(0.035);                                               %0.035초 딜레이 0에가까울수록 빠름(drawnow함수 이용시 제일 빠름)
end

fprintf('다리 끝')