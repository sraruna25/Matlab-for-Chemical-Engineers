n=[1 2 3 4 5]; P=35000; i=0.076;
A=P* (i* (i+1).^n) ./ ((i+1).^n -1);
disp('Number of Payments (n)      Annual Payment (A)');
for k = 1:length(n)
    fprintf('\t %d\t\t\t%.3f\n', n(k), A(k));
end