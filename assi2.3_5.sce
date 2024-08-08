function binary_num = dec_to_bin(n)
    binary_num = "";
    while n > 0
        digit = modulo(n, 2);
        binary_num = string(digit) + binary_num;
        n = floor(n / 2);
    end
endfunction

n = 12;
binary_num = dec_to_bin(n);
disp("Binary equivalent: " + binary_num);
