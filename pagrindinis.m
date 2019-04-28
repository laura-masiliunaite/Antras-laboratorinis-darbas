n = 2;
a = 0.5;

%1 þingsnis. Sudaromas pradinis simpleksas:
x0 = [mod(20170184, 10)/2 + 1, mod(20170184, 10)/2 + 1];

%Kitos simplekso virðunës skaièiuojamos:
b1 = ((sqrt(n+1)+n-1)/n*sqrt(2))*a;
b2 = ((sqrt(n+1)-1)/n*sqrt(2))*a;
%Tuomet
x1 = [x0(1)+b2, x0(1)+b1];
x2 = [x0(2)+b1, x0(2)+b2];

%2 þingsnis. Visuose simplekso virðûnëse apskaièiuojamos tikslo
%funkcijos reikðmës
fx0 = rosenbrock( x0);
fx1 = rosenbrock( x1);
fx2 = rosenbrock( x2);

%3 þingsnis. Virðunë perstumiama tiese, nubrëþta per likusiø virðuniø
%svorio centrà, ir tampa nauja simplekso virðûne. Tokiu bûdu panaikinama
%simplekso virðûnë su didþiausia funkcijos reikðme.
xc = [(x1(1)+x2(1))/2, (x1(2)+x2(2))/2];

% Naujas taðkas apslaoèiuojamas taip
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