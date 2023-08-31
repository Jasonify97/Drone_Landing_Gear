clc; clear; close all;

%variable setting --------------------------------------------------------
ang = 110:1:270;                         % L1 이동경로그리기
theta = ang*(pi/180);
r = 8;                                   % 원의반지름
x = r*cos(theta);                        % 삼각함수이용해서 원 X좌표 Y좌표 얻기 
y = r*sin(theta);

ang1 = 110:1:270;                        % L2 이동경로 그리기
theta1 = ang*(pi/180);
r1 = 8;                                  % 원의반지름
x1 = r*cos(theta);                       % L1의 endeffect좌표
y1 = -16+r1*sin(theta);                   % Y축 평행이동

%graph setting ----------------------------------------------------------
hf = figure;                             %figure창생성
ha = axes(hf);                           %figure창에 좌표넣기

hp1 = plot(ha,x,y,'k','Linewidth',1);    %L1원그리기
hold(ha,'on');                           %하나의 figure에 여러개 함수 넣기
hp2 = plot(ha,x1,y1,'k','Linewidth',1);  %L2원그리기
hp3 = plot(ha,x(1),y(1),'k.');           %L1이동하는 점생성
hp4 = plot(ha,x1(1),y1(1),'k.');         %L2이동하는 점생성
hp5 = plot(ha,[0 x(1)],[0 y(1)],'r','Linewidth',3)     %L1이동하는 선생성
hp6 = plot(ha,[0 x1(1)],[0 y1(1)],'b','Linewidth',3)   %L2이동하는 선생성

set(hp3,'MarkerSize',20);                %L1점 크기 세팅
set(hp4,'MarkerSize',20);                %L2점 크기 세팅
axis(ha,'equal');                        %좌표에서 x축, y축 길이 동일
set(ha,'XLim',[-20 3]);                  %좌표에서 x축 설정
set(ha,'YLim',[-30 10]);                 %좌표에서 y축 설정
grid(ha,'on');                           %좌표에 그리드 넣기

pause(7);
%motion ------------------------------------------------------------
   for i_pt = 1:length(theta);                  %애니매이션 실행 1부터theta크기까지 반복

    set(hp3,'XData',[0 x(i_pt)], ...            %L1 이동하는 점의 x좌표 y좌표를 handle을 이용해 좌표값 반복설정 
            'YData',[0 y(i_pt)]           );                           
    set(hp4,'XData',[0 x1(i_pt)], ...           %L2 이동하는 점의 x좌표 y좌표를 handle을  이용해 좌표값 반복설정 
            'YData',[0 y1(i_pt)]      ); 
    set(hp5,'XData',[0 x(i_pt)], ...            %L1 이동하는 선의 x좌표 y좌표를 handle을  이용해 좌표값 반복설정 
            'YData',[0 y(i_pt)]       ); 
    set(hp6,'XData',[x(i_pt) x1(i_pt)], ...     %L2 이동하는 선의 x좌표 y좌표를 handle을  이용해 좌표값 반복설정 
            'YData',[y(i_pt) y1(i_pt)]); 
                                         
    
    pause(0.01)                                  %0.01초 딜레이 0에가까울수록 빠름(drawnow함수 이용시 제일 빠름)
   end