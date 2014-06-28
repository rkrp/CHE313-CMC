%Exercise 4 - Q5

%Given Data
Nu = [1.9676 0.8986 0.4261 2.5098 1.1521 0.5520];
Re = [ 1 0.1 0.01 1 0.1 0.01];
Pr = [0.73 0.73 0.73 1.5 1.5 1.5];

fit_relation = 'a0 * ((Re).^a1) * ((Pr).^a2)';
coeffs = {'a0', 'a1', 'a2'};
indep = {'Re', 'Pr'};
dep = {'Nu'};

%Generating fit template
myfit = fittype(fit_relation, 'coefficients', coeffs, 'independent', indep);

%Fitting the data
res = fit([Re', Pr'], Nu', myfit);
res_coeffs = [res.a0 res.a1 res.a2];


fprintf('THe coeficients are');
disp(res_coeffs);


