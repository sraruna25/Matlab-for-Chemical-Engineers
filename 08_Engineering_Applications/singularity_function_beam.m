function z = prob2_2(x)
xx = linspace(0,x);
N = length(xx);
for i=1:N
    uy(i)= -(5/6)*(sing(xx(i),0,4)-sing(xx(i),5,4));
    uy(i)=uy(i) + (15/6)*sing(xx(i),8,3) + 75*sing(xx(i),7,2);
    uy(i)=uy(i) + (57/6)*xx(i)^3 - 238.25*xx(i);
end
plot(xx,uy);
z=0;
end


function s=sing(x1,a,n)
if x1>a
    s=(x1-a).^n;
else
    s=0;
end
end