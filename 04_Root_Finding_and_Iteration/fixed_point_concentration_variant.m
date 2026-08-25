cin=10; c0=4;
t=@t log(1+ (c0*exp(-0.04*t)/cin)- c/cin)/(-0.04*t);
c=9.3;
t1=30;
while (t1-t(t1)>0.001)
    t1=t(t1);
end
fprintf('\nRoot is: %f\n', t1);