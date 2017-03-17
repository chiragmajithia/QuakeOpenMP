close all;
X_1D = [0,1,2,4,8,16]
T_Process = [60+11.63,60+16.13,41,22.33,12.41,07.06]


X = X_1D
figure;
title('Time / (Performance) comparison with number of processes')
hold on;
%plot(X,T_SEQ)

plot(X,T_Process,':b*','LineWidth',2);
xlabel('Number of processes');
ylabel('Computation time (secs)');
grid on;
%%
saveas(gcf,'performance.png')