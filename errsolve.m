function relerr = errsolve(A, b)
relerr = norm(A * (A \ b) - b) / norm(b);
