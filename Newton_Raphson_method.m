function value = newton_raphson(f,low,high,dif)   
  pkg load symbolic  
  syms x;  
  ffd = diff(f, x);
  f = function_handle(f);
  ffd = function_handle(ffd);
  i=1;
  mid = (low+high)/2;
  fprintf('%f %f',f(mid),ffd(mid));
  temp = mid - (f(mid)/ffd(mid));
  temp = temp
  if f(low) == 0
    fprintf('root is %f.' ,low);
    return
  endif

  if f(high) == 0
    fprintf('root is %f.' ,high);
    return
  endif

  if f(mid) == 0
    fprintf('root is %f.' ,mid);
    return
  endif

  fprintf('iterator      mid                value\n');
  fprintf('   %d       %f            %f\n',i,mid,f(mid)); 
  while abs(f(mid)) >= dif
      i=i+1;
      mid = mid - (f(mid)/ffd(mid));
      fprintf('   %d       %f            %f\n',i,mid,f(mid));
      
  endwhile
endfunction
 
