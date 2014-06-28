%Exercise 5 - Q2

%Given Data
Q = 1.2; g = 9.81; b = 1.8;
h0 = 0.6; H = 0.075;

funct = @(h) (Q.^2/(2*g*(b.^2)))*(h0.^-2 - h.^-2) + h0 - h + H;
res = fzero(funct, 1);

fprintf('Computed height h is %f\n', res);

