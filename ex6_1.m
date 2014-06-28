%Exercise 6 - Q1

f=inline('-10*y+0*t');
t=[0:0.5:2];
[t,y]=ode45(f,t,1);
plot(t,y);