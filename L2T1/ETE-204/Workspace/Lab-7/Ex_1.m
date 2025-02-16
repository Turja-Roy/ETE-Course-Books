pkg load symbolic

syms f(x) g(x);

DE1 = diff(f(x), x) + 1.5*f(x) - g(x) == 0;
DE2 = diff(g(x), x) + f(x) - 2*g(x) == 0;

ode_sys = [DE1, DE2];

soln = dsolve(ode_sys, [f(0) == 0, g(0) == 2]);

disp('f(x) = ');
pretty(soln.f)
disp('g(x) = ');
pretty(soln.g)
