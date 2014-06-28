%Exercise 4 - Q3

x = [0.2 2 20 200 2000 20000];
y = [103 13.9 2.72 0.8 0.401 0.433];
logx = log10(x);
logy = log10(y);

q = [5 50 500 5000];
logq = log10(q);

sol = 10 .^ interp1(logx, logy, logq, 'spline');
disp(sol);