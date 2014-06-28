%Exercise 5 - Q4
 
funct = @(x) x*((3-2*x).^2)/((1-x).^3) - 249.2;
 
res = fsolve(funct, 10);
fprintf('Conversion X = %f\n', res);