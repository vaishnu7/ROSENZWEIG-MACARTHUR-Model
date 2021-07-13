clc;
clear;
close all;
format long
syms u w
a = 1.1;
b = 0.6;
d = 0.7;
f = 1.2;
k = 1;
m = 0.1;
c = 0.25;

j = jacobian([a*u*(1 - u/k)- b*u*w/(1+m*u),-d*w + f*u*w / (1 + m*u)], [u,w]) %Jacobian

sol1 = subs(j,[u,w],[0,0]); %to calculate Jacobian at equilibrium point (0, 0)
sol2 = subs(j,[u,w],[1,0]); %to calculate Jacobian at equilibrium point (1, 0)
sol3 = subs(j,[u,w],[70/113, 9460/12769]); %to calculate Jacobian at equilibrium point (70/113, 9460/12769)

eig(vpa(sol1)) %to calculate eigen values at equilibrium point (0, 0)
eig(vpa(sol2)) %to calculate eigen values at equilibrium point (1, 0)
eig(vpa(sol3)) %to calculate eigen values at equilibrium point (70/113, 9460/12769)
