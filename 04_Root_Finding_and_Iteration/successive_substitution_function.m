function tr=sucsub (to,cin,co) 
    tol = 1e-6; 
    gt=fngt(to, cin, co); 
    tnew = gt; 
    ft=fnt(tnew,cin,co); 
    while (abs(ft) >= tol) 
        gt=fngt(tnew,cin,co); 
        tnew = gt;
        ft=fnt(tnew,cin,co); 
    end
    tr = tnew;
    fprintf("Time required =%f", tr);
end

function gt=fngt(t,c1,c2)
    gt=(-1/0.04)*log(0.07+ (c2/c1) * exp(-0.04*t));
end

function ft=fnt(t,c1,c2) 
    ft = 0.07*c1 - c1*exp(-0.04*t) + c2*exp(-0.04*t); 
end