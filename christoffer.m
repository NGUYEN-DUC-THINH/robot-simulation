% tinh ma quan tinh va Coriolis qua ma tran M by NDT
function C = christoffer(M,q,qdot)
syms a
n=length(q);
C=a*zeros(n,n);
for i=1:n
    for j=1:n
        for k=1:n
            C(i,j)=C(i,j)+1/2*(diff(M(i,j),q(k))+diff(M(i,k),q(j))-diff(M(j,k),q(i))*qdot(k));
        end
    end
end