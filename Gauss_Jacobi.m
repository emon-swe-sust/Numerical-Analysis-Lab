array = [4,1,2,-1;3,6,-1,2;2,-1,5,-3;4,1,-3,-8];
b = [2;-1;3;2];

n = length(b);
arrx = zeros(n,1);
arrx_new = zeros(n,1);

iteration = 100;
dif = 0.00001;

for x = 1 : iteration
  bool = true;
  for i = 1 : n
    sum = 0;
    for j = 1 : n
      if i ~= j
        sum = sum + array(i,j)*arrx(j);
      endif
    endfor
    arrx_new(i) = (-1/array(i,i))*(sum - b(i));
    if(arrx_new(i)-arrx(i) > dif)
      bool = false;
    endif
  endfor
  if bool
    break
  endif
  arrx = arrx_new;
endfor

iteration
disp('Ans');
arrx_new
