clc;
clear;
close all;
format long
syms u w

%parameter values
a = 1.1;
b = 0.6;
d = 0.7;
f = 1.2;
k = 1;
m = 0.1;

%you can use either solve or vpasolve according to your convenience, but both the commands should give back correct results

%solve
eqns = [a*u*(1 - u/k)- b*u*w/(1+m*u) == 0, -d*w + f*u*w / (1 + m*u) == 0];
S = solve(eqns,[u w]);
S.u %this will give all original values of u
S.w %this will give all original values of w

%vpasolve
[uu,ww] = vpasolve( [a*u*(1 - u/k)- b*u*w/(1+m*u) == 0, -d*w + f*u*w / (1 + m*u) == 0], [u,w] );
pp = [uu, ww] %this will give all decimal values of u and v in a matrix form
