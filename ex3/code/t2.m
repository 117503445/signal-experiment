syms t w;
f1 = (1/2) * exp(-2 * t) * heaviside(t);
F1 = fourier(f1)
f2 = (1/2) * exp(-2 * (t - 1)) * heaviside(t - 1);
F2 = fourier(f2)
subplot(2, 2, 1);
ezplot(f1);
grid on;
set(gca, 'GridLineStyle', ':', 'GridColor', 'k', 'GridAlpha', 1);
title('f1(t)');
subplot(2, 2, 2);
ezplot(abs(F1), [-5 5]);
grid on;
set(gca, 'GridLineStyle', ':', 'GridColor', 'k', 'GridAlpha', 1);
title('f1 幅度谱');
p1 = angle(F1);
 %i1=imag(F1);r1=real(F1);p1=atan2(i1,r1); subplot(2,3,3); ezplot(p1);
grid on;
set(gca, 'GridLineStyle', ':', 'GridColor', 'k', 'GridAlpha', 1);
xlim([-5 5]);
title('f1 相位谱');
subplot(2, 2, 3);
ezplot(f2);
grid on;
set(gca, 'GridLineStyle', ':', 'GridColor', 'k', 'GridAlpha', 1);
title('f2(t)');
subplot(2, 2, 4);
ezplot(abs(F2));
grid on;
set(gca, 'GridLineStyle', ':', 'GridColor', 'k', 'GridAlpha', 1);
xlim([-5 5]);
title('f2 幅度谱');
p2 = angle(F2); %i2=imag(F2);r2=real(F2);p2=atan2(i2,r2); subplot(2,3,6); ezplot(p2);
grid on;
set(gca, 'GridLineStyle', ':', 'GridColor', 'k', 'GridAlpha', 1);
xlim([-5 5]); 
title('f2 相位谱');