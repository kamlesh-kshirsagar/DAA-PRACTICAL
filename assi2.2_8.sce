n=input("enter no to find permutation and combination") 
r=input(" enter no of obj to choose") 
    permutations = factorial(n) / factorial(n - r);
    combinations = factorial(n) / (factorial(r) * factorial(n - r));
disp(permutations)
disp(combinations)
