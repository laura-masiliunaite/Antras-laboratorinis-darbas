n = 2;
a = 0.5;

%1 �ingsnis. Sudaromas pradinis simpleksas:
x0 = [mod(20170184, 10)/2 + 1, mod(20170184, 10)/2 + 1];

%Kitos simplekso vir�un�s skai�iuojamos:
b1 = ((sqrt(n+1)+n-1)/n*sqrt(2))*a;
b2 = ((sqrt(n+1)-1)/n*sqrt(2))*a;
%Tuomet
x1 = [x0(1)+b2, x0(1)+b1];
x2 = [x0(2)+b1, x0(2)+b2];

%2 �ingsnis. Visuose simplekso vir��n�se apskai�iuojamos tikslo
%funkcijos reik�m�s
fx0 = rosenbrock( x0);
fx1 = rosenbrock( x1);
fx2 = rosenbrock( x2);

%3 �ingsnis. Vir�un� perstumiama tiese, nubr��ta per likusi� vir�uni�
%svorio centr�, ir tampa nauja simplekso vir��ne. Tokiu b�du panaikinama
%simplekso vir��n� su did�iausia funkcijos reik�me.
xc = [(x1(1)+x2(1))/2, (x1(2)+x2(2))/2];

% Naujas ta�kas apslao�iuojamas taip
x3 = [x0(1)+2*(xc(1)-x0(1)), x0(2)+2*(xc(2)-x0(2))];
fx3 = rosenbrock( x3);

[xx, yy, zz] = meshgrid(x1, x2, fx0+fx2+fx3);
figure
surf(xx, yy, zz);
colormap

%% 2 dalis
[x, f] = fminsearch(@rosenbrock, x0);
[x11, f1] = fminsearch(@rosenbrock, x1);
[x12, f2] = fminsearch(@rosenbrock, x2);