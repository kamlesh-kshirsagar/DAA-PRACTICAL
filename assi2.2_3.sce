n=input("enter no to find fibonaci sequence")
fib_seq = zeros(1, n);
    fib_seq(1) = 0;
    fib_seq(2) = 1;
    for i = 3:n
        fib_seq(i) = fib_seq(i-1) + fib_seq(i-2);
    end
disp(fib_seq)
disp(sum(fib_seq))
