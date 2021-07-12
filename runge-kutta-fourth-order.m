%parameters
a = 1.1;
b = 0.6;
d = 0.07;
f = 1.7;
k = 1;
m = 0.1;
c = 0.25;

%initialization
h = 0.1;
u(1) = 0.125;
w(1) = 0.1;
t = 0:h:20000; %time can be increased or reduced
p = u(1);
q = w(1);

func1 = @(t,u,w) a*u*(1 - u/k)- b*u*w/(1+m*u);
func2 = @(t,u,w) -d*w + f*u*w / (1 + m*u);

%application of RK4 method to find the solutions of the system of non-linear ODE i.e. func1 and func2
for i=1:(length(t)-1)
    k_1 = func1(t(i),u(i),w(i));
    l_1 = func2(t(i),u(i),w(i));
    
    k_2 = func1((t(i)+0.5*h),(u(i)+0.5*k_1*h),(w(i)+0.5*l_1*h));
    l_2 = func2((t(i)+0.5*h),(p+0.5*k_1*h),(q+0.5*l_1*h));
    
    k_3 = func1((t(i)+0.5*h),(u(i)+0.5*k_2*h),(w(i)+0.5*l_2*h));
    l_3 = func2((t(i)+0.5*h),(p+0.5*k_2*h),(q+0.5*l_2*h));
    
    k_4 = func1((t(i)+h),(u(i)+k_3*h),(w(i)+l_3*h));
    l_4 = func2((t(i)+h),(p+k_3*h),(q+l_3*h));
    
    u(i+1) = u(i) + (1/6)*(k_1+2*k_2+2*k_3+k_4)*h;
    w(i+1) = w(i) + (1/6)*(l_1+2*l_2+2*l_3+l_4)*h;
 
    fprintf('iteration %d is : U = %f W = %f  \n',i,u(i),w(i));
    
    p=u(i+1);
    q=w(i+1);
  
end
plot(u,w)
