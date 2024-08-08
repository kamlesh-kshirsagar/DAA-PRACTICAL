function reversed_num = reverse_num(n)
    reversed_num = 0;
    while n > 0
        digit = modulo(n, 10);
        reversed_num = reversed_num * 10 + digit;
        n = floor(n / 10);
    end
endfunction

n = 12345;
reversed_num = reverse_num(n);
disp("Reversed number: " + string(reversed_num));
