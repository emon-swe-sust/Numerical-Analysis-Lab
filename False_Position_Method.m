func = input('Enter the function: ');
f = inline(func);
f = @(x) x*x + sin(x) - 1;
low = input('lower Value: ');
high = input('Higher Value: ');
dif = input('Maximum difference: ');

if f(low)==0
  fprintf('Root is %f/n',low);
  return
elseif f(high)==0
  fprintf('Root is %f/n',high);
  return
endif

if f(low)*f(high)>0
  fprintf('No root is exist in that interval');
  return
endif

mid = (low*f(high)-high*f(low))/(f(high)-f(low));
i=1;
fprintf('iterator   low            high             mid            value\n');
while abs(f(mid)) >= dif
  mid = (low*f(high)-high*f(low))/(f(high)-f(low));
  fprintf('   %d\t%f\t%f\t%f\t%f\n',i,low,high,mid,f(mid));
  i=i+1;
  if f(mid)*f(low)<0
    high = mid;
   else
    low = mid;
  endif
endwhile
