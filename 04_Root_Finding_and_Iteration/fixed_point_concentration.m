cin=10; c0=4; c=9.3;
t_func = @(t) log((c0*exp(-0.04*t) - c + cin)/cin)/(-0.04);
t1=30;
while abs(t1-t_func(t1))>0.001
    t1=t_func(t1);
end
fprintf('\nRoot is: %f\n', t1);