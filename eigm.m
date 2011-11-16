function [A,X]=eigm(eps,n)
    A=diag(1:n);
    X=rand(n,n-1);
    X=X*X';
    X(n,n)=X(n,n)+eps;
    A=X*A*X^-1;
    
