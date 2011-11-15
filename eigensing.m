function [A,X]=eigensing(eps)
    A=diag([1,2,3,4]);
    X=[1,2,3,4;-4,3,1,5;11,-2,3,5];
    X=X'*X;
    X(4,4)=X(4,4)+eps;
    A=X*A*X^-1;
    
