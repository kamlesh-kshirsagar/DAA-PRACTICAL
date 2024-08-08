A = [1 2; 3 4];
B = [5 6; 7 8];
[m, n] = size(A);
    [p, q] = size(B);
    if m ~= p || n ~= q then
        error("Matrices are not of comparable order.");
    end
    C = zeros(m, n);
    for i = 1:m
        for j = 1:n
            C(i, j) = A(i, j) + B(i, j);
        end
    end
 disp(C)
