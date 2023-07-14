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

% 1
figure
xx=-2:0.01:2;
yy=xx;
[x,y]=meshgrid(xx,yy);
z=exp(-x.^3-y.^3);
mesh(z)

%
figure
xx=-4:.01:4;
yy=xx;
[x,y]=meshgrid(xx,yy);
z=(exp(x.^2)+exp(y.^2)).^0.5;
mesh(z)
  





