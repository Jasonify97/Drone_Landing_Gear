clc; clear; close all;

L1 = 16;
L2 = 8;
x2 = 8:-0.1:2.7;
y2 =12.5;                                                                                                                                                              

costh2 = (x2.^2 + y2.^2 -(L1^2+L2^2))/(2*L1*L2);
sinth2 = sqrt(1-abs(costh2).^2);
th2 = atan2d(sinth2,costh2);
th1 = atan2d(y2,x2) - atan2d(L1+L2*cosd(th2),L2*sind(th2));
x1 = L1*sind(-th1);
y1 = L1*cosd(-th1);

hf = figure;                            
ha = axes(hf);  


subplot(2,4,[1,2,5,6],ha)
a = plot(ha,[-19.6 x1(1)-19.6],[-12.5 y1(1)-12.5],'r','LineWidth',3);
hold on
b = plot(ha,[x1(1)-19.6 x2(1)-19.6],[y1(1)-12.5 y2-12.5],'b','LineWidth',3);
grid(ha,'on');
set(ha,'XLim',[-30 20]);
set(ha,'YLim',[-20 20]);
axis(ha,'equal'); 

pause(1);

for i = 1:length(x2)

    set(a,'XData',[-19.6 x1(i)-19.6],'YData',[-12.5 y1(i)-12.5]);
        
    set(b,'XData',[x1(i)-19.6 x2(i)-19.6],'YData',[y1(i)-12.5 y2-12.5]);
   
    
    pause(0.05);

end


%%

    red = sqrt(x1.^2 + y1.^2)
    blue = sqrt((x2-x1).^2 + (y2-y1).^2)

