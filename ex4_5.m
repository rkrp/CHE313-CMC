%Exercise 4 - Q5

x = 0:0.5:5.5;
y = [1 0.994 0.99 0.985 0.979 0.977 0.972 0.969 0.967 0.96 0.956 0.952];

logy = log10(y);

%Determining a and b
coeff = polyfit(x, logy, 1);
disp(coeff);
t = (log10(0.5) - coeff(2)) / (coeff(1))