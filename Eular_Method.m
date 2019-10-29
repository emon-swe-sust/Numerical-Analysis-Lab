function value = Eular(f)
f = inline(f);
x0 = 0;
xn = 2;
y = 1;
h = 0.01;

printf ('x  \t\t y  \n')
printf ('%f \t %f\t \n',x0,y);

for x = x0 : h : xn-h
  x = x+h;
  y = y + f(x,y)*h;
  printf ('%f \t %f\t \n',x,y);
endfor
