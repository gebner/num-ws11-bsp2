function [s2,c2]=testeig(v)
    s2=[];
    c1=[]
    c2=[];
    b=[-1;3;2;-4];
    for e=v
        [B,X]=eigensing(e);
        y=B\b;
        s2=[s2,sum(abs(B*y-b))];
        c2=[c2,cond(B)];
        c1=[c1,cond(X)];
    end
    
    loglog(v,s2,'cyan')
    hold on
    loglog(v,c2,'blue')
    loglog(v,c1,'green')
    hold off
end
        
