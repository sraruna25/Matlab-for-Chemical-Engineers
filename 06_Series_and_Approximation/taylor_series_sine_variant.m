function z=sheet2(x,n)
  i=1;
  tru = sin(x);
  appr= 0;
  fprintf('\n');
  fprintf('order true-value approx error \n');
  while (i<=8)
      appr=appr+((-1)^(i-1)*x^(2*i-1)/(factorial(2*i-1)));
      err = ((tru-appr)/tru)*100;
      fprintf('%3d %14.10f %14.10f \n', i,tru,appr,err);
      i=i+1;
  end

end