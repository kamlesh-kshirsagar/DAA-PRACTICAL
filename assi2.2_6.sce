A = [1 2; 3 4];
B = [5 6; 7 8];
[m, n] = size(A);
    [p, q] = size(B);
    if n ~= p then
        error("Matrices are not of comparable order.");
    end
    C = zeros(m, q);
    for i = 1:m
        for j = 1:q
            for k = 1:n
                C(i, j) = C(i, j) + A(i, k) * B(k, j);
            end
        end
    end
    disp(C)
