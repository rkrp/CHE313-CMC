%Exercise 4 - Q4
warning off;
x = [0 21.1 37.8 54.4 71.1 87.8 100];
y = [1.79 1.13 0.696 0.519 0.338 0.321 0.296];
y = y * 1e-3;
q = [10 30 60 90];

cftool(x,y);

coeff = polyfit(x, y, 3);
disp(polyval(coeff, q))