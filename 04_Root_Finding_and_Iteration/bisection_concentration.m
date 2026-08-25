cin=10; c0=4;
t=linspace(40,80,1000);
f= @(t) cin * (1 - exp((-0.04) .* t) ) + c0 * exp((-0.04) .* t) -9.3;
plot(t,f(t));
xlabel("time");
ylabel("Concentration");
e=0.00000001;
a=40; b=80;
fa=f(a); fb=f(b);
if fa*fb<0
    c= (a+b)/2;
    fc= f(c);
    while abs(fc)>e
        if fa*fc< 0
            b =c;
            fb=fc;
        else
            a =c;
            fa=fc;
        end
    end
    fprintf('\nRoot is: %f\n', c);
end