function is_palindrome = check_palindrome(n)
    reversed_num = reverse_num(n);
    is_palindrome = (n == reversed_num);
endfunction

n = 12321;
is_palindrome = check_palindrome(n);
if is_palindrome then
    disp("The number is a palindrome.");
else
    disp("The number is not a palindrome.");
end
