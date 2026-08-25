% z=linspace(-3,3,100);
% f=exp(-z.^2/2)/ sqrt(2*pi);
% xlabel('z');
% ylabel('frequency');
% plot(z,f);

% v=linspace(-2,1,5)
% v1=[-2:3/4:1]
% 
% r=linspace(6,0,7)
% r1=[6:-1:0]

% t=[32:3.6:93.3];
% tc=5*(t-32)/9;
% d= 5.5289*10^(-8)*tc.^3 -8.5016*10^(-6)*tc.^2 +6.5622*10^(-5)*tc +0.99987;
% plot(tc,d, 'bx');
% xlabel("temperature");
% ylabel("density");

% t=[10:10:60];
% c_exp=[3.4 2.6 1.6 1.3 1 0.5];
% plot(t,c_exp,'s');
% xlabel("time");
% ylabel("concentration");
% hold on;
% t1=linspace(0,70,100);
% c=4.84*exp(-0.034*t1);
% plot(t1,c,'--')

% x=linspace(0, 3*pi/2, 1000);
% cosx = (1 - x.^2/factorial(2) + x.^4/factorial(4) - x.^6/factorial(6));
% plot(x,cosx,'b--')
% hold on
% plot(x, cos(x), 'r-')