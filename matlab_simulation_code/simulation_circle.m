clc; clear; close all;

ang = 0:1:360;                           % 원그리기
theta = ang*(pi/180);
r = 8;                                   % 반지름(L1길이)
x = r*cos(theta);                        % 삼각함수이용해서 원 X좌표 Y좌표 얻기 
y = r*sin(theta);


ang1 = 110:1:270;                        % L1이 이동할 각도 설정
theta1 = ang*(pi/180);
r1 = 8;                                  % L1길이
x1 = r*cos(theta);                       % L1의 endeffect좌표
y1 = r*sin(theta);

hf = figure;                             %figure창생성
ha = axes(hf);                           %figure창에 좌표넣기
hp1 = plot(ha,x,y,'b','Linewidth',1);    %원그리기
hold(ha,'on');                           %하나의 figure에 여러개 함수 넣기
hp2 = plot(ha,x1(1),y1(1),'r.');         %이동하는 점생성

hp3 = plot(ha,[0 x1(8)],[0 y1(8)],'k')   %이동하는 선생성


set(hp2,'MarkerSize',40);                %점 크기
axis(ha,'equal');                        %좌표에서 x축, y축 길이 동일
set(ha,'XLim',[-8.5 8.5]);               %좌표에서 x축 설정
set(ha,'YLim',[-8.5 8.5]);               %좌표에서 y축 설정
grid(ha,'on');                           %좌표에 그리드 넣기


%motion
   for i_pt = 1:length(theta);           %애니매이션 실행 1부터theta크기까지 반복

    set(hp2,'XData',x1(i_pt), ...
            'YData',y1(i_pt)      );     %이동하는 점의 x좌표 y좌표를 handle을 
                                         %이용해 속성값 수정
    set(hp3,'XData',[0 x1(i_pt)], ...
            'YData',[0 y1(i_pt)]      ); %이동하는 선의 x좌표 y좌표를 handle을 
                                         %이용해 속성값 수정
    
    pause(0.005)                         %0.005초 딜레이 0에가까울수록 빠름(drawnow함수 이용시 제일 빠름)
   end