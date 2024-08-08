function is_prime = check_prime(num)
    if num < 2 then
        is_prime = %f;
    elseif num == 2 then
        is_prime = %t;
    else
        is_prime = %t;
        for i = 2 : sqrt(num)
            if modulo(num, i) == 0 then
                is_prime = %f;
                break;
            end
        end
    end
endfunction

function sum = sum_of_primes(n)
    sum = 0;
    count = 0;
    num = 2;
    while count < n
        if check_prime(num) then
            sum = sum + num;
            count = count + 1;
        end
        num = num + 1;
    end
endfunction

n = 5;
sum = sum_of_primes(n);
disp("Sum of first " + string(n) + " prime numbers: " + string(sum));
