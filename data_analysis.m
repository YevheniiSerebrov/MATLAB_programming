% Початкові дані
clear all;
clc;
y = [46 161 147 167 175 208 152 171 165 175 172 186];
x = [89 93 98 90 100 117 78 99 84 98 87 126];

fprintf('Вивід рівняння a та b \n');
[b, dev, stats] = glmfit (x, y);
formatSpec ='%4.4f + %4.4f*x\n';
fprintf(formatSpec, b(1), b(2));

% Коефіцієнт кореляції і коефіцієнт детермінації
Rxy = corrcoef (x, y);
fprintf('Коефіцієнт кореляції r: ')
r = Rxy (1,2);
fprintf('Коефіцієнт детермінації R: ')
R = r^2;

% Критерій Фішера
fprintf('Число ступенів свободи')
df = stats.dfe
fprintf('Критерій Фішера')
F_p = r^2/(1-r^2)*df

% Критерій Стьюдента
fprintf('Значення статистики t Стьюдента для параметрі рівняння регрресії')
t_a0 = stats.t (1)
t_a1 = stats.t (2)

% Перевірка rxy за критерієм Стьюдента
t_rxy = r/sqrt ((1-r^2)/df)

%Індивідуальне прогнозне значення
fprintf('Виконання прогнозу на основі лінії регресії')
xnew = 126.5;
[yfit, y1, y2] = glmval (b, xnew, 'identity', stats, 0.95);
xnew = yfit

% 95-% довірчі інтервали для коефіцієнтів регресії
t_tabl = tinv (1-0.025, df)
fprintf('Інтервали прогнозу для коефіцієнтів регресії: \n')
formatSpecInterval = '%4.2f<%s<%4.2f \n';
fprintf(formatSpecInterval, b(1)-t_tabl*stats.se(1), 'a', b(1)+t_tabl*stats.se(1));
fprintf(formatSpecInterval, b(2)-t_tabl*stats.se(2), 'a', b(1)+t_tabl*stats.se(2));

% Графік лінії регресії
y_p = b(1)+b(2)*x;
plot (x,y,'mo',x,y_p,'k')
title ('Графік лінії регресії')
