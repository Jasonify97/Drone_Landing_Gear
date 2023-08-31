clc; clear; close all;

%variable setting --------------------------------------------------------
ang = 98:1:180;                         % L1 이동경로설정
theta = ang*(pi/180);
r = 13.5;                                   % 원의반지름
x = r*cos(theta)-11.6;                   % X축 평행이동 
y = r*sin(theta);                        % Y축 평행이동

theta1 = ang*(pi/180);
r1 = 13.5;                                  % 원의반지름
x1 = r*cos(theta1)-11.6;                 % X축 평행이동
y1 = r1*sin(theta1)-16;                  % Y축 평행이동

%graph setting ----------------------------------------------------------
hf = figure;                             %figure창생성
ha = axes(hf);                           %figure창에 좌표넣기

hp1 = plot(ha,[-11.6 x(1)],[0 y(1)],'r','Linewidth',3);     %L1이동하는 선생성(왼쪽다리)
hold(ha,'on');                                              %하나의 figure에 여러개 함수 넣기
hp2 = plot(ha,[x(1) x1(1)],[y(1) y1(1)],'b','Linewidth',3); %L2이동하는 선생성(왼쪽다리)
r = rectangle('Position',[-11.6 0 23.2 8]);                 %드론몸체 생성(가로:23.2cm,세로:8cm)
r.EdgeColor = 'k';                                          %드론몸체 색 지정(검정)
r.LineWidth = 1;                                            %드론몸체 선 두께 지정(크기:1)
hp3 = plot(ha,[11.6 14.3],[0 7.5],'r','Linewidth',3);       %오른쪽 다리생성(L1)
hp4 = plot(ha,[14.3 14.3],[7.5 -8.5],'b','Linewidth',3);    %오른쪽 다리생성(L2)

plot(ha,[-11.6 14.3],[-24 -8.5],'k','LineWidth',2);

axis(ha,'equal');                        %좌표에서 x축, y축 길이 동일
set(ha,'XLim',[-25 25]);                 %좌표에서 x축 설정
set(ha,'YLim',[-30 13]);                 %좌표에서 y축 설정
grid(ha,'on');                           %좌표에 그리드 넣기
pause(1);

%motion ------------------------------------------------------------
   for i_pt = 1:length(theta)                     %애니매이션 실행 1부터theta크기까지 반복
    
       
       set(hp1,'XData',[-11.6 x(i_pt)], ...            %L1 이동하는 선의 x좌표 y좌표를 handle을 이용해 좌표값 반복설정 
            'YData',[0 y(i_pt)]           );   
                       
    set(hp2,'XData',[x(i_pt) x1(i_pt)], ...         %L2 이동하는 선의 x좌표 y좌표를 handle을  이용해 좌표값 반복설정 
            'YData',[y(i_pt) y1(i_pt)]      );                           

    pause(0.01);                                    %0.01초 딜레이 0에가까울수록 빠름(drawnow함수 이용시 제일 빠름)
   end
        