%111111111111
xmin1 = fminbnd ('x.^2 -4*x+6', -3,10);
xmax1 = fminbnd ('-(x.^2 -4*x+6)', -3, 10);
fmin1 = (xmin1^2 - 4*xmin1+6);
fmax1 = (-xmax1^2 + 4*xmax1-6);
xmin1
xmax1
fmin1
fmax1

xmin2 = fminbnd('(1-x+x.^3)./(1+x-x.^2)', 0,1);
xmax2 = fminbnd('-(1-x+x.^3)./(1+x-x.^2)', 0,1);
fmin2 = ((1-xmin2+xmin2.^3)./(1+xmin2-xmin2.^2));
fmax2 = (-(1-xmax2+xmax2.^3)./(1+xmax2-xmax2.^2));
xmin2
xmax2
fmin2
fmax2

%222222222222222
A = [2 2
    1 2
    4 0
    0 4];
b = [12 8 16 12];
f = [2 3];
lb =zeros(4, 1);
Aeq = [];
beq = [];
x = linprog(f, A, b,Aeq, beq, lb);
x


%3333333333
H=[2 0 0; 0 2 0; 0 0 0];
f=[-1 -1 0];
A=[1 -2 1];
b = [5];
Aeq=[];
beq=[];
lb = zeros(3, 1);
x = quadprog(H, f, A, b, [], [], lb);
[x, fval]=quadprog(H, f, A, b, [], [], lb);
fval 
x
%44444444444
f = [1 3 0 0 0]
Aeq = [1 3 -1 0 0
    3 -3 0 1 0
    1 -1 1 0 0
    1 1 0 0 0]
A =[]
b = []
beq = [4 6 3 -1]
lb = zeros (5,1)
[y, fval] = linprog (f, A, b, [], [], lb)
[rows, col] = size(y)
for i=1 : rows-1
  x(i) = y(i)./y(rows)
end



%5555551
d=[4 2 3 1 0 6 3 5 6 0 3 2 6 3 0 0 0 0 0 0 0 0 0 0 0];
Aeq = [1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
     0 0 0 0 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 0 0 0
     0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1
     1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0
     0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0
     0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 
     0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0
     0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1
       ];
   beq = [80 140 70 0 0 80 50 50 70 40];
   lb = zeros (25,1);
    [y, fval]=linprog(d, [], [], Aeq, beq, lb, [])  
%555552
d3 = [2 1 5 4 4 7 6 3 2];
Aeq3 =  [1 1 1 0 0 0 0 0 0
         0 0 0 1 1 1 0 0 0
         0 0 0 0 0 0 1 1 1
         1 0 0 1 0 0 1 0 0
         0 1 0 0 1 0 0 1 0
         0 0 1 0 0 1 0 0 1];
beq3 = [10 20 40 15 25 30];
   lb3 = zeros(9, 1);
    [y3, fval3]=linprog(d3, [], [], Aeq3, beq3, lb3, [])   
    
%66666666111
 f = [1 2];
intcon = 1:2;
Aeq=[];
beq=[];
A = [1 1 
    -1 -1];
b = [8/3; 4/3];
lb = zeros (2, 1);
[x, fval] = intlinprog (f, intcon, [], [], Aeq, beq, lb, [])
%6666662222
f = [1 0 0 0];
intcon = 1:2;
Aeq=[1 1 1 0
    -4 7 0 1];
beq=[9.5 4];
A = [];
b = [];
lb = zeros (4, 1);
[x, fval] = intlinprog (f, intcon, [], [], Aeq, beq, lb, [])

%77777777777777777777
x= -3:0.002:3;
y=exp(-x.^2);
plot(x,y)

x=-(3/2)*pi:0.001:(3/2)*pi;
y=cos(x);
plot(x,y)

x=-8:0.05:8;
y=x.^3;
plot(x,y)

%88888888
%1
figure
x = 0:0.1:50;
y1 = 4*exp(-0.05*x).*sin(x);
y2 = 0.2*exp(-0.1*x).*sin(2*x);
plot(x,y1);
hold on
plot (x,y2)
%2
figure
x = -0.1:0.001:10;
y1 = 3./x;
y2 = 7./x.^2;
plot(x,y1);
hold on
plot (x,y2)
%3
figure
x = -4:0.001:4;
y1 = exp(x);
y2 = 1./exp(x);
plot(x,y1);
hold on
plot (x,y2)
%4
figure
x = 0.1:0.001:pi/2-0.1;
y1 = tan(x)+2.*cot(x);
y2 = sin(x)+cos(x);
plot(x,y1);
hold on
plot (x,y2,'m')

plot(x,y1);
hold on
plot (x,y2,'m')

%9999999999
%1
figure
subplot(1,2,1)
x=-3:0.002: 3;
y=2.71.^x;
plot(x,y);

subplot(1,2,2)
x=-3:0.002: 3;
y=2.71.^(-x.^2);
plot(x,y);
%2
figure
subplot(2,2,1)
x=-pi:0.001: pi;
y=sin(x);
plot(x,y);

subplot(2,2,2)
x=-1.5*pi:0.001: 1.5*pi;
y=cos(x);
plot(x,y);

subplot(2,2,3)
x=-0.5*pi+0.1:0.001: 0.5*pi-0.1;
y=tan(x);
plot(x,y);

subplot(2,2,4)
x=0.1:0.001: pi-0.1;
y=cot(x);
plot(x,y);

%10 10 10 10
figure
x=[1 3 2 9 6 8 4 6];
bar(x)
figure
x4 = -2.5: 0.2 : 2.5;
bar(2.71.^(-x4.^2))

%11 11 11 11
%1
t1=0:0.01:2*pi;
x1=cos(2.*t1).*cos(t1.^2);
y1=sin(2.*t1).*sin(t1.^2);
comet(x1,y1)
 %2
t3=-10:0.05:10;
x3=(3.*t3)./(1+t3.^3);
y3=(3.*t3.^2)./(1+t3.^3);
comet(x3,y3)

% 12 12 12
figure
t=0:0.001:2*pi;
x=sin(t);
y=sin(2*t);
z=0.2*t;
plot3 (x, y, z)

%
figure
t=0:0.001:2*pi;
x=sin(t);
y=sin(4*t);
z=0.1*t;
plot3 (x, y, z)

%
figure
x=sin(t);
y=log(abs(t));
z=0.2*t;
plot3 (x, y, z)

%13 13 13
%1
xx=-2:0.01:2;
yy=xx;
[x,y]=meshgrid(xx,yy);
z= (x.^2+y.^2).^0.5;
mesh(z)
%2
xx=1:0.25:6;
yy=xx;
[x,y]=meshgrid(xx,yy);
z= (1./x.^4)+(1./y.^4);
mesh(z)
%3
xx=0:pi/4:2*pi;
yy=0:pi/4:3*pi;

[x,y]=meshgrid(xx,yy);
z= sin(x)+cos(y);
mesh(z)
