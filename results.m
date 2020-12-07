clear;
clc;

t = readtable('Results_libm.txt');
sim_seconds = t{:,[2]};
cpi = t{:,[3]};
dcache = t{:,[4]};
icache = t{:,[5]};
l2cache = t{:,[6]};

x = sim_seconds;
b = bar(x,'BarWidth',0.5);
b.FaceColor = [0.3010 0.7450 0.9330];
b.EdgeColor = [0 0.5 0.5];
xlabel('sim seconds');
text(1:length(x),x,num2str(x,2),'vert','bottom','horiz','center'); 
grid on;
saveas(gcf,'sim_seconds','jpeg');

x = cpi;
b = bar(x,'BarWidth',0.5);
b.FaceColor = [0.3010 0.7450 0.9330];
b.EdgeColor = [0 0.5 0.5];
xlabel('cpi');
text(1:length(x),x,num2str(x,2),'vert','bottom','horiz','center'); 
grid on;
saveas(gcf,'cpi','jpeg');

x = dcache;
b = bar(x,'BarWidth',0.5);
b.FaceColor = [0.3010 0.7450 0.9330];
b.EdgeColor = [0 0.5 0.5];
xlabel('dcache misses');
text(1:length(x),x,num2str(x,2),'vert','bottom','horiz','center'); 
grid on;
saveas(gcf,'dcache','jpeg');

x = icache;
b = bar(x,'BarWidth',0.5);
b.FaceColor = [0.3010 0.7450 0.9330];
b.EdgeColor = [0 0.5 0.5];
xlabel('icache misses');
text(1:length(x),x,num2str(x,2),'vert','bottom','horiz','center'); 
grid on;
saveas(gcf,'icache','jpeg');

x = l2cache;
b = bar(x,'BarWidth',0.5);
b.FaceColor = [0.3010 0.7450 0.9330];
b.EdgeColor = [0 0.5 0.5];
xlabel('l2cache misses');
text(1:length(x),x,num2str(x,2),'vert','bottom','horiz','center'); 
grid on;
saveas(gcf,'l2cache','jpeg');