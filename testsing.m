function [s1,s2]=testsing(v);
    s1=[]
    c1=[]
    b=svdv
    for e=v
        A=svdm(e);
        x=A\b;
        s1=[s1,sum(abs(A*x-b))];
        c1=[c1,cond(A)];
    end
    loglog(v,s1,'r')
    hold on
    loglog(v,c1,'m')
    hold off
end
