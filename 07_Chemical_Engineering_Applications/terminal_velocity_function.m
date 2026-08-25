function v_root=v_terminal(pl,ps,d,u,vt)
e=1e-10;
vt_new=fnvt(pl,ps,d,u,vt);

while (abs(vt_new-vt)>e)
    vt=vt_new;
    vt_new=fnvt(pl,ps,d,u,vt);
end
v_root=vt_new;

end

function x=Cd(pl,d,u,vt) %vt here is the assumed value of vt given
Re=pl*vt*d / u;
x=(24*(1+0.173*Re^0.657)/Re) + (0.413/ (1+16300*Re^(-1.09)));
end

function w=fnvt(pl,ps,d,u,vt)
V=pi*d^3 / 6;
A= pi*d^2 / 4;
g=9.81;
vt2= 2*(ps-pl)*V*g / pl*A*Cd(pl,d,u,vt);
w= sqrt(vt2);
end