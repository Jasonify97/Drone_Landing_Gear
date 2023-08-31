clc; clear; close all;

%variable setting --------------------------------------------------------
ang = 110:1:270;                         % L1 이동경로설정
theta = ang*(pi/180);
r = 8;                                   % 원의반지름
x = r*cos(theta)-11.6;                   % X축 평행이동 
y = r*sin(theta);                        % Y축 평행이동

ang1 = 110:1:270;                        % L2 이동경로 설정
theta1 = ang*(pi/180);
r1 = 8;                                  % 원의반지름
x1 = r*cos(theta1)-11.6;                 % X축 평행이동
y1 = r1*sin(theta1)-16;                  % Y축 평행이동

L1 = 8;
L2 = 16;


lex2 = 0;
ley2 =-24:0.1:-8.5;                                                                                                                                                              

lcosth2 = (lex2^2 + ley2.^2 -(L1^2+L2^2))/(2*L1*L2);
lsinth2 = sqrt(1-abs(lcosth2).^2);
th2 = atan2d(lsinth2,lcosth2);
th1 = atan2d(ley2,lex2) - atan2d(L1+L2*cosd(th2),L2*sind(th2));

lex1 = L1*sind(th1);
ley1 = L1*cosd(th1);

rex2 = 2.7;
rey2 =[-8.5:-0.1:-23.8,linspace(-23.8,-23.8,2)];                                                                                                                                                              

costh2 = (rex2^2 + rey2.^2 -(L1^2+L2^2))/(2*L1*L2);
sinth2 = sqrt(1-abs(costh2).^2);
th2 = atan2d(sinth2,costh2);
th1 = atan2d(rey2,rex2) - atan2d(L1+L2*cosd(th2),L2*sind(th2));

rex1 = L1*sind(-th1);
rey1 = L1*cosd(-th1);


%graph setting ----------------------------------------------------------
hf = figure;                             %figure창생성
ha = axes(hf);                           %figure창에 좌표넣기


hp1 = plot(ha,[-11.6 x(8)],[0 y(8)],'r','Linewidth',3);     %L1이동하는 선생성(왼쪽다리)
hold(ha,'on');                                              %하나의 figure에 여러개 함수 넣기
hp2 = plot(ha,[x(8) x1(8)],[y(8) y1(8)],'b','Linewidth',3); %L2이동하는 선생성(왼쪽다리)
r = rectangle('Position',[-11.6 0 23.2 8]);                 %드론몸체 생성(가로:23.2cm,세로:8cm)
r.EdgeColor = 'k';                                          %드론몸체 색 지정(검정)
r.LineWidth = 1;                                            %드론몸체 선 두께 지정(크기:1)
hp3 = plot(ha,[11.6 14.3],[0 7.5],'r','Linewidth',3);       %오른쪽 다리생성(L1)
hp4 = plot(ha,[14.3 14.3],[7.5 -8.5],'b','Linewidth',3);    %오른쪽 다리생성(L2)

t= plot(ha,[-11.6 14.3],[ley2(1) ley2(end)],'k','Linewidth',2);

axis(ha,'equal');                        %좌표에서 x축, y축 길이 동일
set(ha,'XLim',[-25 25]);                 %좌표에서 x축 설정
set(ha,'YLim',[-30 13]);                 %좌표에서 y축 설정
grid(ha,'on');                           %좌표에 그리드 넣기

pause(7); 


%motion ------------------------------------------------------------
for i_pt = 1:length(theta)                     %애니매이션 실행 1부터theta크기까지 반복


    set(hp1,'XData',[-11.6 x(i_pt)], ...            %L1 이동하는 선의 x좌표 y좌표를 handle을 이용해 좌표값 반복설정
        'YData',[0 y(i_pt)]           );

    set(hp2,'XData',[x(i_pt) x1(i_pt)], ...         %L2 이동하는 선의 x좌표 y좌표를 handle을  이용해 좌표값 반복설정
        'YData',[y(i_pt) y1(i_pt)]      );

    pause(0.01);                                    %0.01초 딜레이 0에가까울수록 빠름(drawnow함수 이용시 제일 빠름)
end

pause(1); 

delete(hp1);
delete(hp2);
delete(hp3);
delete(hp4);
delete(t);

%inverse kinetics ------------------------------------------------------------
% @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
hpl1 = plot(ha,[-11.6 lex1(1)-11.6],[0 ley1(1)],'r','Linewidth',3);             %L1이동하는 선생성(왼쪽다리)
hpl2 = plot(ha,[lex1(1)-11.6 lex2-11.6],[ley1(1) ley2(1)],'b','Linewidth',3);
hpr1 = plot(ha,[11.6 rex1(1)+11.6],[0 rey1(1)],'r','Linewidth',3);             %L1이동하는 선생성(왼쪽다리)
hpr2 = plot(ha,[rex1(1)+11.6 rex2+11.6],[rey1(1) rey2(1)],'b','Linewidth',3);

k= plot(ha,[-11.6 14.3],[ley2(1) rey2(1)],'k','Linewidth',2);

for i_pt1 = 1:length(ley1)                     %애니매이션 실행 1부터theta크기까지 반복

    set(hpl1,'XData',[-11.6 lex1(i_pt1)-11.6],'YData',[0 ley1(i_pt1)]);
    set(hpl2,'XData',[lex1(i_pt1)-11.6 lex2-11.6],'YData',[ley1(i_pt1) ley2(i_pt1)]);   
    set(hpr1,'XData',[11.6 rex1(i_pt1)+11.6],'YData',[0 rey1(i_pt1)]);
    set(hpr2,'XData',[rex1(i_pt1)+11.6 rex2+11.6],'YData',[rey1(i_pt1) rey2(i_pt1)]);
    set(k,'YData',[ley2(i_pt1) rey2(i_pt1)]);
    pause(0.01);                                    %0.01초 딜레이 0에가까울수록 빠름(drawnow함수 이용시 제일 빠름)
end      
% @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
lex2 = 0;
ley2 =[-8.5:-0.1:-24,-24:0.1:-8.5,-8.5:-0.1:-24,-24:0.1:-8.5,-8.5:-0.1:-24,-24:0.1:-8.5,-8.5:-0.1:-24,-24:0.1:-8.5];                                                                                                                                                              

lcosth2 = (lex2^2 + ley2.^2 -(L1^2+L2^2))/(2*L1*L2);
lsinth2 = sqrt(1-abs(lcosth2).^2);
th2 = atan2d(lsinth2,lcosth2);
th1 = atan2d(ley2,lex2) - atan2d(L1+L2*cosd(th2),L2*sind(th2));

lex1 = L1*sind(th1);
ley1 = L1*cosd(th1);

rex2 = 2.7;
rey2 =[-23.8:0.1:-8.5,linspace(-8.5,-8.5,2),-8.5:-0.1:-23.8,linspace(-23.8,-23.8,2),-23.8:0.1:-8.5,linspace(-8.5,-8.5,2),-8.5:-0.1:-23.8,linspace(-23.8,-23.8,2),-23.8:0.1:-8.5,linspace(-8.5,-8.5,2),-8.5:-0.1:-23.8,linspace(-23.8,-23.8,2),-23.8:0.1:-8.5,linspace(-8.5,-8.5,2),-8.5:-0.1:-23.8,linspace(-23.8,-23.8,2)];                                                                                                                                                              

costh2 = (rex2^2 + rey2.^2 -(L1^2+L2^2))/(2*L1*L2);
sinth2 = sqrt(1-abs(costh2).^2);
th2 = atan2d(sinth2,costh2);
th1 = atan2d(rey2,rex2) - atan2d(L1+L2*cosd(th2),L2*sind(th2));

rex1 = L1*sind(-th1);
rey1 = L1*cosd(-th1);

for i_pt1 = 1:length(ley1)                     %애니매이션 실행 1부터theta크기까지 반복

    set(hpl1,'XData',[-11.6 lex1(i_pt1)-11.6],'YData',[0 ley1(i_pt1)]);
    set(hpl2,'XData',[lex1(i_pt1)-11.6 lex2-11.6],'YData',[ley1(i_pt1) ley2(i_pt1)]);
    set(hpr1,'XData',[11.6 rex1(i_pt1)+11.6],'YData',[0 rey1(i_pt1)]);
    set(hpr2,'XData',[rex1(i_pt1)+11.6 rex2+11.6],'YData',[rey1(i_pt1) rey2(i_pt1)]);
    set(k,'YData',[ley2(i_pt1) rey2(i_pt1)]);
    pause(0.01);                                    %0.01초 딜레이 0에가까울수록 빠름(drawnow함수 이용시 제일 빠름)
end

