
p = (0:0.1:2*pi);
%x = sin(p);

%plot(p, x);

%y = (1/(2*pi))

figure();

subplot(4,1,1);
F = 0;
%f = (1/(2*pi)) .* ( exp(-F) + ( sqrt(pi*F) .* cos(p) .* exp(-F .* sin(p) .* sin(p)) * (1 + erf(sqrt(F) .* cos(p))) ));
f = (1/(2*pi)) .* (exp(-F) + (sqrt(pi*F) .* cos(p) .* exp(-F .* sin(p) .* sin(p)) .* (1 + erf(sqrt(F) .* cos(p))) )) ;
plot(p.*180/pi, f);
xlabel("phi (in degrees)");
ylabel("f(phi)");
title("F=0");

subplot(4,1,2);
F = 1;
f = (1/(2*pi)) .* (exp(-F) + (sqrt(pi*F) .* cos(p) .* exp(-F .* sin(p) .* sin(p)) .* (1 + erf(sqrt(F) .* cos(p))) )) ;
plot(p.*180/pi, f);
xlabel("phi (in degrees)");
ylabel("f(phi)");
title("F=1");

subplot(4,1,3);
F = 10;
f = (1/(2*pi)) .* (exp(-F) + (sqrt(pi*F) .* cos(p) .* exp(-F .* sin(p) .* sin(p)) .* (1 + erf(sqrt(F) .* cos(p))) )) ;
plot(p.*180/pi, f);
xlabel("phi (in degrees)");
ylabel("f(phi)");
title("F=10");


subplot(4,1,4);
F = 10;
f = sqrt(F/pi)*(exp(-F.*p.*p));
plot(p.*180/pi, f);
xlabel("phi (in degrees)");
ylabel("f(phi)");
title("F=10 and f(phi) approximation");

