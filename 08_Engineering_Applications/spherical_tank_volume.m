d=[0.5, 1.2 ,3 ,3.1];
R=1;
disp("Depth     Volume");
for i = 1:length(d)
    if d(i)<=R
        V=pi .* d(i)^3 ./ 3;
        fprintf('%.3f \t %.3f \n', d(i),V);
    elseif d(i)<=3*R && d(i)>R
            V=pi*R^3/3 + pi* R^2 * (d(i)-R);
            fprintf('%.3f \t %.3f \n', d(i),V);
    else
        fprintf('%.3f \t', d(i));
        disp("OVERTOP");
    end    
end