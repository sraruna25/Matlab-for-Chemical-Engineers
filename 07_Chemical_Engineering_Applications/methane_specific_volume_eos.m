r=0.518; tc=191; t=233; pc=4600; p=65000;
a = (0.427*r^2*tc^2.5)/pc;
b = (0.0866*r*tc)/pc;
v = linspace(0.002, 0.004, 1000);
f = @(v) (r*t)./(v - b) - a./(v.*(v + b)*sqrt(t)) - p;
plot(v,f(v));
xlabel("volume");
ylabel("pressure");

e=10e-6;
x=0.002; y=0.004;
fx=f(x); fy=f(y);
if fx*fy<0
    z= (x+y)/2;
    fz= f(z);
    while abs(fz)>e
        if fx*fz<0
            y =z;
            fy=fz;
        else
            x =z;
            fx=fz;
        end
    end
end

fprintf('\nSpecific volume is: %f m3/kg\n', z);
mass = 3 / z;
fprintf('Mass of methane: %.2f kg\n', mass);