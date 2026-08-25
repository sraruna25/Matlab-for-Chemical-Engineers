r=2; l=5; h=linspace(0,4,100);
v = ((r^2.*acos((r-h)./r))-(r-h).*sqrt((2*r.*h) -h.^2))*l;
plot(h,v);
xlabel("Depth");
ylabel("Volume")