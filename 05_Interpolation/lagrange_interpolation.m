x=[0:4:32];
y=[0 18 31 42 50 56 61 65 70];
x_given=linspace(0,32);
n=length(x);
p=0;
for i=1:n
    L=1;
    for j=1:n
        if i~=j
            L=L.*((x_given-x(i)) / (x(i)-x(j)));
        p=p+y(i)*L;
        end
    end
end

plot(x_given,p) %area below this graph is the distance covered