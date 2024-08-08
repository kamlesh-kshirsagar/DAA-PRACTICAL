// Define the function to solve the quadratic equation
function [p, q] = solveQuadratic(a, b, c)
    // Check if 'a' is zero to prevent division by zero
    if a == 0 then
        error("Coefficient 'a' must be non-zero for a quadratic equation.");
    end
    
    // Calculate the discriminant
    D = b^2 - 4*a*c;
    
    // Compute the roots based on the discriminant
    if D > 0 then
        // Two distinct real roots
        p = (-b + sqrt(D)) / (2 * a);
        q = (-b - sqrt(D)) / (2 * a);
    elseif D == 0 then
        // One real root (repeated root)
        p = -b / (2 * a);
        q = p;  // Both roots are the same
    else
        // Two complex roots
        realPart = -b / (2 * a);
        imaginaryPart = sqrt(-D) / (2 * a);
        p = realPart + imaginaryPart * %i;
        q = realPart - imaginaryPart * %i;
    end
endfunction

// Example usage of the function
a = 1;  // Coefficient of x^2
b = -3; // Coefficient of x
c = 2;  // Constant term

// Call the function to solve the quadratic equation
[p, q] = solveQuadratic(a, b, c);

// Display the results
disp("The roots of the quadratic equation are:");
disp("p = " + string(p));
disp("q = " + string(q));
