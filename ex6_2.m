%Exercise 6 - Q2

f = inline('(-2*0.3*(y^2)/0.5)+0*x');
z = [0 3];
[x,y] = ode45(f,z,2);
plot(x,y);
hold on;
f = inline('(2*0.3*(b^2)/0.5)+0*z');
r = [0 3];
[z,b] = ode45(f,r,0);
plot(z,b);	
hold off;