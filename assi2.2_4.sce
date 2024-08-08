n=input("enter no to check whether it is prime or not")
if n <= 1 then
        p = %f
    else
        p = %t
        for i = 2:sqrt(n)
            if modulo(n, i) == 0 then
                p = %f
                break
            end
        end
end
disp(string(p))

   
