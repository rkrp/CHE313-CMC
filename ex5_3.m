% Exercise 5 - Q3

eff = 0.3; gamma = 5/3;

syms x;
funct = (log(x) - (1 - 1/x)) / ((log(x) + (1 - 1/x) / (gamma - 1))) - eff;

ex5_1(funct,10);
