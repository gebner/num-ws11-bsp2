function [A,X]=eigm(eps,n,X)
    A=diag(1:n);
    X(n,n)=X(n,n)+eps;
    A=X*A*X^-1;
    
