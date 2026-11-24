clear; clc; close all;
A = 5; w = 3;
T0 = 2*pi/w;
t = linspace(0, 2*T0, 1001);
x = A*cos(w*t);

figure('Color','w');
plot(t,x,'LineWidth',1.8); hold on; grid on;
xline(T0,'--k','T_0 = 2\pi/3');
plot([0 T0 2*T0],[A A A],'o','MarkerSize',5);
xlabel('Time, t (s)'); ylabel('x(t)');
title('x(t) = 5cos(3t) over two periods');
xlim([0 2*T0]); ylim([-6 6]);
xticks([0 T0/2 T0 3*T0/2 2*T0]);
xticklabels({'0','\pi/3','2\pi/3','\pi','4\pi/3'});

err = max(abs(x(501:end) - x(1:501)));
fprintf('T0 = %.6f s\n', T0);
fprintf('Max periodicity error = %.3e\n', err);
print(gcf,'M1_Cosine_Plot','-dpng','-r300');
