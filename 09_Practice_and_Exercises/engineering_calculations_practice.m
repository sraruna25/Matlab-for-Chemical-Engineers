%sine(pi/4, 4)

% d=[0.5 1.2 3 3.1];
% r=1;
% for i=1:length(d)
% if d(i)<=r
%     v= (pi* d(i).^3) / 3;
%     fprintf('\nVolume: %.3f', v);
% elseif d(i)>r && d(i)<=3*r
%     v= (pi* r.^3) / 3 + pi*r^2*(d(i)-r);
%     fprintf('\nVolume: %.3f', v);
% else
%     fprintf("\nOverflow");
% end
% end

%r=2; l=5;
% h=linspace(0,10,10000);
% v= (r^2 * acos((r-h)/r) - (r-h) .* sqrt(2*r.*h - h.^2))*l;
% plot(h,v);
% xlabel("H");
% ylabel("V")

% ny=[1:5]; p=35000; i=0.076;
% disp("Years  Annual Payment");
% for k=1:length(ny)
%     n=ny(k);
%     a=p* (i*(i+1)^n / ((i+1)^n - 1));
%     fprintf("%4.0f  %f\n", n, a);
% end