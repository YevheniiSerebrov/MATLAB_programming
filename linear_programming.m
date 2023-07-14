%%%%%%%%%%%%%%%%%%%%% MATLAB %%%%%%%%%%%%%%%%%%%%%
f = [16 4 0.0001]
A = [4 6 -5; 1 -1 -1; 1 1 -1]
Aeq =[0.0001 1 -5]
b = [0.0001 0.0001 0.0001]
beq = -6
lb = zeros (3,1)
[y, fval] = linprog (f, A, b, [], [], lb)
[rows, col] = size(y)
for i=1 : rows-1
  x(i) = y(i)./y(rows)
end
%%%%%%%%%%%%%%%%%%%%%
f = [1 -1 0]
A = [1 1 -6; 2 -1 -10]
Aeq = [2, 3, 0.0001]
b = [0 0]
beq = 1
lb = zeros (3,1)
[y, fval] = linprog (-f, A, b, Aeq, beq, lb)
[rows, col] = size(y)
for i=1 : rows-1
  x(i) = y(i)./y(rows)
end
%%%%%%%%%%%%%%%%%%%%%
fun = @(x) (x(1)-2)^2+(x(2)-3)^2
A=[2 1; 1 0]
b = [10 5]
x0=[0 0]
lb = zeros(2,1)
[x, val] = fmincon(fun, x0, A, b, [], [], lb, [])
%%%%%%%%%%%%%%%%%%%%%
fun = @(x) (x(1)-3)^2+(x(2)-3)^2;
A=[-1 1; 1 1; 1 0];
b = [3 1 4];
x0=[0 0];
lb = [1, 0];
[x, fval] = fmincon(fun, x0, A, b, [], [], lb, []);
%%%%%%%%%%%%%%%%%%%%%
fun = @(x) -x(1)*x(2);
A=[2 -1; 1 2];
b = [4 6];
x0=[0 0];
lb = zeros(2,1);
[x, fval] = fmincon(fun, x0, A, b, [], [], lb, []);
%%%%%%%%%%%%%%%%%%%%%
fun = @(x) (x(1)-3)^2+(x(2)-3)^2;
A=[1 2; 1 0];
b = [12 4];
x0=[0 0];
lb = zeros(2,1);
[x, fval] = fmincon(fun, x0, A, b, [], [], lb, []);
x
fval
%%%%%%%%%%%%%%%%%%%%%
fun = @(x) x(1)*x(2);
A=[3 2; -1 -2; 0 1];
b = [12 -10 1];
x0=[0 0];
lb = zeros(2,1);
[x, fval] = fmincon(fun, x0, A, b, [], [], lb, []);
x
fval
