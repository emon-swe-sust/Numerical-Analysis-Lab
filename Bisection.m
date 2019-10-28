f = @(x) x*x*x + x*x - 1;
low=input('lower range : '); 
high=input('higher range : ');
tol=input('maximum difference value : ');
if f(low)==0
  fprintf('root is %f',low);
  return
elseif f(high)==0
  fprintf('root is %f',high);
  return
end

if f(high)*f(low)>0
  fprintf('no root exist in that interval\n');
 return 
end


mid=(low+high)/2;
i=1;
fprintf('iterator   low            high             mid            value\n');
while abs(f(mid))>=tol
  mid=(low+high)/2;
  fprintf('  %d\t  %f\t%f\t%f\t%f\n',i,low,high,mid,f(mid));
  i=i+1;
  if f(mid)*f(low)<0
    high=mid;
  else
    low=mid;
  endif
endwhile
