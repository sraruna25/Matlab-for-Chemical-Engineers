z=linspace(-3,3);
f=(1/sqrt(2*pi))*exp(-z.^2/2);
plot(z,f);
xlabel("z");
ylabel("Frequency");

% Tf=[32:3.6:93.3];
% Tc=5*(Tf-32)/9;
% p=(5.5289*10^(-8))*(Tc.^3)-((8.5016*10^(-6)*(Tc.^2)))+6.5622*10^(-5)*(Tc)+0.99987;
% plot(Tc,p);
% xlabel("Tc");
% ylabel("Density");

% t1=linspace(0,70);
% c1=4.84*exp(-0.034*t);
% t2=[10:10:60];
% c2=[3.4 2.6 1.6 1.3 1.0 0.5 0.5];
% semilogy(t2,c2,".", t1,c1,"--");
% xlabel("t");
ylabel("conc");