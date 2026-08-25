function z= sine(x,n)
tru=sin(x);
apprx=0;
fprintf('order true-value approx error \n');
for i= 0:n-1
        apprx=apprx + (-1)^i * (x^(2*i+1))/ factorial(2*i+1);
        e= (tru-apprx)*100/tru;
        fprintf('%3d %14.10f %14.10f \n', i,tru,apprx,e);
        i=i+1
end
z=apprx