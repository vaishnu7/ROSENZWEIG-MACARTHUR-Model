clc;
clear;
close all;
format long
syms u w

%initialization of parameters
a = 1.1;
b = 0.6;
d = 0.7;
f = 1.2;
k = 1;
m = 0.1;
c = 0.25;

%calculate Jacobian matrix for the given system of non-linear ODE
jac = jacobian([a*u*(1 - u/k)- b*u*w/(1+m*u),-d*w + f*u*w / (1 + m*u)], [u,w]);

%calculate the equilibrium points of the system - this includes all positive and negative solutions
[uu,ww] = vpasolve( [a*u*(1 - u/k)- b*u*w/(1+m*u) == 0, -d*w + f*u*w / (1 + m*u) == 0], [u,w] );
pp = [uu, ww];

[m, n] = size(pp); %defining the size of the matrix where the equlibrium points are stored

%calculate the eigen values for positive equlibrium points only. discard the negative ones.
for i=1:m
        if pp(i,1)>=0 && pp(i,2)>=0
            sol = subs(jac,[u,w],[pp(i,1),pp(i,2)]);
            eig(vpa(sol))
        end
end
