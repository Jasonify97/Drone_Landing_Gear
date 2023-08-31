clc; clear; close all;

%variable setting --------------------------------------------------------
ang = 110:1:180;                         % L1 이동경로설정
theta = ang*(pi/180);
r = 8;                                   % 원의반지름
x = r*cos(theta)-11.6;                   % X축 평행이동 
y = r*sin(theta);                        % Y축 평행이동
x1 = x;
y1 = y-16;
L1 = 8;
L2 = 16;

%----------------------------------------------------------------------
%ley2 =-16:0.1:-8.5;     
ley2 =-16:0.1:-12.5;
lex2 = linspace(-8,-8,length(ley2));

lcosth2 = (lex2.^2 + ley2.^2 -(L1^2+L2^2))/(2*L1*L2);
lsinth2 = sqrt(1-abs(lcosth2).^2);
lth2 = atan2d(lsinth2,lcosth2);
lth1 = atan2d(ley2,lex2) + atan2d(L1+L2*cosd(lth2),L2*sind(lth2));

lex1 = L1*sind(lth1);
ley1 = -L1*cosd(lth1);


%----------------------------------------------------------------------
%rey2 =-8.5:-0.1:-16; 
rey2 =-8.5:-0.1:-12.5;
rex2 = linspace(2.7,2.7,length(rey2));

costh2 = (rex2.^2 + rey2.^2 -(L1^2+L2^2))/(2*L1*L2);
sinth2 = sqrt(1-abs(costh2).^2);
rth2 = atan2d(sinth2,costh2);
rth1 = atan2d(rey2,rex2) - atan2d(L1+L2*cosd(rth2),L2*sind(rth2));

rex1 = L1*sind(-rth1);
rey1 = L1*cosd(-rth1);


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

t= plot(ha,[-19.6 14.3],[-16 -8.5],'k','Linewidth',2);

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

    pause(0.03);                                    %0.01초 딜레이 0에가까울수록 빠름(drawnow함수 이용시 제일 빠름)
end

pause(1); 

delete(hp1);
delete(hp2);
delete(hp3);
delete(hp4);
delete(t);

%inverse kinetics ------------------------------------------------------------

hpl1 = plot(ha,[-11.6 lex1(1)-11.6],[0 ley1(1)],'r','Linewidth',3);             %L1이동하는 선생성(왼쪽다리)
hpl2 = plot(ha,[lex1(1)-11.6 lex2(1)-11.6],[ley1(1) ley2(1)],'b','Linewidth',3);

hpr1 = plot(ha,[11.6 rex1(1)+11.6],[0 rey1(1)],'r','Linewidth',3);             %L1이동하는 선생성(왼쪽다리)
hpr2 = plot(ha,[rex1(1)+11.6 rex2(1)+11.6],[rey1(1) rey2(1)],'b','Linewidth',3);

k= plot(ha,[lex2(1)-11.6 rex2(1)+11.6],[ley2(1) rey2(1)],'k','Linewidth',2);

for i_pt1 = 1:length(ley1)                     %애니매이션 실행 1부터theta크기까지 반복

    set(hpl1,'XData',[-11.6 lex1(i_pt1)-11.6],'YData',[0 ley1(i_pt1)]);
    set(hpl2,'XData',[lex1(i_pt1)-11.6 lex2(i_pt1)-11.6],'YData',[ley1(i_pt1) ley2(i_pt1)]);
    set(hpr1,'XData',[11.6 rex1(i_pt1)+11.6],'YData',[0 rey1(i_pt1)]);
    set(hpr2,'XData',[rex1(i_pt1)+11.6 rex2(i_pt1)+11.6],'YData',[rey1(i_pt1) rey2(i_pt1)]);

    set(k,'YData',[ley2(i_pt1) rey2(i_pt1)]);


    pause(0.03);                                    %0.01초 딜레이 0에가까울수록 빠름(drawnow함수 이용시 제일 빠름)
end
%%
pause(1);      
delete(hpl1);
delete(hpl2);
delete(hpr1);
delete(hpr2);

%수평유지까지 완료 ------------------------------------------------------------
%5월24일까지 함 여기서 부터 수정하기 내가 봤을때 왼쪽다리 왼쪽으로각도조정하는거부터 하면ㄴ될듯 오른다리는 됨
g_L1 = 16;
g_L2 = 8;
                                                                                                                                                             

g_lex2 = 8:-0.1:2.7;
g_ley2 =linspace(12.5,12.5,length(g_lex2));

g_lcosth2 = (g_lex2.^2 + g_ley2.^2 -(g_L1^2+g_L2^2))/(2*g_L1*g_L2);
g_lsinth2 = sqrt(1-abs(g_lcosth2).^2);
g_lth2 = atan2d(g_lsinth2,g_lcosth2);
g_lth1 = atan2d(g_ley2,g_lex2) - atan2d(g_L1+g_L2*cosd(g_lth2),g_L2*sind(g_lth2));

g_lex1 = g_L1*sind(-g_lth1);
g_ley1 = g_L1*cosd(-g_lth1);


%----------------------------------------------------------------------
g_rex2 =-2.7:-0.1:-8;                                                                                                                                                              
g_rey2 = linspace(12,12,length(g_rex2));

g_costh2 = (g_rex2.^2 + g_rey2.^2 -(g_L1^2+g_L2^2))/(2*g_L1*g_L2);
g_sinth2 = sqrt(1-abs(g_costh2).^2);
g_rth2 = atan2d(g_sinth2,g_costh2);
g_rth1 = atan2d(g_rey2,g_rex2) + atan2d(g_L1+g_L2*cosd(g_rth2),g_L2*sind(g_rth2));

g_rex1 = g_L1*sind(g_rth1);
g_rey1 = -g_L1*cosd(g_rth1);


hpl3 = plot(ha,[-19.6 g_lex1(1)-19.6],[-12.5 g_ley1(1)-12.5],'b','Linewidth',3);            %L1이동하는 선생성(왼쪽다리)
hpl4 = plot(ha,[g_lex1(1)-19.6 g_lex2(1)-19.6],[g_ley1(1)-12.5 g_ley2(1)-12.5],'r','Linewidth',3);

hpr3 = plot(ha,[14.3 g_rex1(1)+14.3],[-12 g_rey1(1)-12],'b','Linewidth',3);             %L1이동하는 선생성(왼쪽다리)
hpr4 = plot(ha,[g_rex1(1)+14.3 g_rex2(1)+14.3],[g_rey1(1)-12 g_rey2(1)-12],'r','Linewidth',3); 


for i_pt2 = 1:length(ley1)    
set(hpl3,'XData',[-19.6 g_lex1(i_pt2)-19.6],'YData',[-12.5 g_ley1(i_pt2)-12.5]);
set(hpl4,'XData',[g_lex1(i_pt2)-19.6 g_lex2(i_pt2)-19.6],'YData',[g_ley1(i_pt2)-12.5 g_ley2(i_pt2)-12.5]);

set(hpr3,'XData',[14.3 g_rex1(i_pt2)+14.3],'YData',[-12 g_rey1(i_pt2)-12]);
set(hpr4,'XData',[g_rex1(i_pt2)+14.3 g_rex2(i_pt2)+14.3],'YData',[g_rey1(i_pt2)-12 g_rey2(i_pt2)-12]);


pause(0.03)
end


%%
    red = sqrt(x1.^2 + y1.^2)
    blue = sqrt((x2-x1).^2 + (y2-y1).^2)