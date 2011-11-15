function [s1,s2]=testsing(v);
    s1=[]
    c1=[]
    b=[-1;3;2;-4]
    for e=v
        A=singul(e);
        x=A\b;
        s1=[s1,sum(abs(A*x-b))];
        c1=[c1,cond(A)];
    end
    loglog(v,s1,'red')
    hold on
    loglog(v,c1,'magenta')
    hold off
end
