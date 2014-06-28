R = 8.314; Tc = 747.1; Pc = 220.55e5;
T = 180 + 273; P = 1e6;

a = (R * Tc) / (8 * Pc);
b = (27/64) * (R.^2 * Tc.^2) / Pc;

f = @(v) (R * T)/(v-b) + a/v.^2 - P;
res = fsolve(f,1);
%f(res)
disp(res)