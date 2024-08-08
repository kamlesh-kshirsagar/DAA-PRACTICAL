function cnt = count_digits(n)
   cnt = 0;
    while n > 0
       n = floor(n / 10);
        cnt = cnt + 1;
    end
endfunction
n = 12345;
count = count_digits(n);
disp("Number of digits: " + string(count));
