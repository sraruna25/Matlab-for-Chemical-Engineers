function tr=sucsub1(to,cin,co)
t_new=ntime(to,cin,co);
e=1e-6;
while (abs(t_new-to)>e)
    to=t_new;
    t_new=ntime(to,cin,co);
end
tr=t_new;
fprintf("ROOT IS: %.6f", tr);
end

function tf = ntime(to, cin, co)
    tf = log(((co / cin) * exp(-0.04 * to)) - 0.07) / (-0.04);
end