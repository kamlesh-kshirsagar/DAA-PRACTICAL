function is_armstrong = check_armstrong(n)
    num_digits = count_digits(n);
    sum = 0;
    temp = n;
    while temp > 0
        digit = modulo(temp, 10);
        sum = sum + digit ^ num_digits;
        temp = floor(temp / 10);
    end
    is_armstrong = (n == sum);
endfunction

n = 371;
is_armstrong = check_armstrong(n);
if is_armstrong then
    disp("The number is an Armstrong number.");
else
    disp("The number is not an Armstrong number.");
end
