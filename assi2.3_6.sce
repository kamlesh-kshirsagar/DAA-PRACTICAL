function decimal_num = bin_to_dec(binary_num)
    decimal_num = 0;
    power = 0;
    for i = length(binary_num) : -1 : 1
        digit = evstr(binary_num(i));
        decimal_num = decimal_num + digit * 2 ^ power;
        power = power + 1;
    end
endfunction

binary_num = "1100";
decimal_num = bin_to_dec(binary_num);
disp("Decimal equivalent: " + string(decimal_num));
