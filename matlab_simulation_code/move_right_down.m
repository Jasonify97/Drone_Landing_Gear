clc; clear; close all;

L1 = 8;
L2 = 16;
x2 = 8;
y2 =-8:-0.1:-20;                                                                                                                                                              


costh2 = (x2^2 + y2.^2 -(L1^2+L2^2))/(2*L1*L2);
sinth2 = sqrt(1-abs(costh2).^2);
th2 = atan2d(sinth2,costh2);
th1 = atan2d(y2,x2) - atan2d(L1+L2*cosd(th2),L2*sind(th2));
x1 = L1*sind(-th1)
y1 = L1*cosd(-th1)

hf = figure;                            
ha = axes(hf);  


subplot(2,4,[1,2,5,6],ha)
a = plot(ha,[0 x1(1)],[0 y1(1)],'r','LineWidth',3);
hold on
b = plot(ha,[x1(1) x2],[y1(1) y2(1)],'b','LineWidth',3);
grid(ha,'on');
set(ha,'XLim',[-20 20]);
set(ha,'YLim',[-20 20]);
axis(ha,'equal'); 

k1=subplot(2,4,[3,4]);
s = linspace(1,length(y2),length(y2));
c1 = plot(k1,s(1),th1(1),'*');
set(c1,'LineWidth',2,'Color','r');
title('theta1','Color','r');
grid on
axis([0 160 -200 200]);


k2 = subplot(2,4,[7,8]);
s1 = linspace(1,length(y2),length(y2));
d = plot(k2,s1(1),th2(1),'.');
set(d,'MarkerSize',20,'Color','b');
title('theta2','Color','b');
grid on
axis([0 160 -200 200]);

pause(1);

for i = 1:length(y2)

    set(a,'XData',[0 x1(i)],'YData',[0 y1(i)]);
        
    set(b,'XData',[x1(i) x2],'YData',[y1(i) y2(i)]);

    set(c1,'XData',s(i),'YData',th1(i));

    set(d,'XData',s1(i),'YData',th2(i));
   
    
    pause(0.05);

end





%%

    red = sqrt(x1.^2 + y1.^2)
    blue = sqrt((x2-x1).^2 + (y2-y1).^2)

