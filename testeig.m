function [s2,c2]=testeig(v)
    s2=[];
    c1=[]
    c2=[];
    b=eigv;
    for e=v
        [B,X]=eigm(e);
        y=B\b;
        s2=[s2,sum(abs(B*y-b))];
        c2=[c2,cond(B)];
        c1=[c1,cond(X)];
    end
    
    loglog(v,s2,'c')
    hold on
    loglog(v,c2,'b')
    loglog(v,c1,'g')
    hold off
end
        
