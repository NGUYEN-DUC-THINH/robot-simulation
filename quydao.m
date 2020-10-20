% thiet ke quy dao robot duong thang da thuc bac 3
function p=quydao(ps,pf,vs,vf,t)
f=length(t);
ts=t(1);
tf=t(f);
A=[ts^3 ts^2 ts 1;3*ts^2 2*ts 1 0; tf^3 tf^2 tf 1;3*tf^2 2*tf 1 0];
b=[0;vs;sqrt((pf(1)-ps(1))^2+(pf(2)-ps(2))^2+(pf(3)-ps(3))^2);vf];
a=inv(A)*b;
s=a(1)*(t.^3)+a(2)*(t.^2)+a(3)*t+a(4);
p1=ps(1)+(s/sqrt((pf(1)-ps(1))^2+(pf(2)-ps(2))^2+(pf(3)-ps(3))^2))*(pf(1)-ps(1));
p2=ps(2)+(s/sqrt((pf(1)-ps(1))^2+(pf(2)-ps(2))^2+(pf(3)-ps(3))^2))*(pf(2)-ps(2));
p3=ps(3)+(s/sqrt((pf(1)-ps(1))^2+(pf(2)-ps(2))^2+(pf(3)-ps(3))^2))*(pf(3)-ps(3));
p=[p1;p2;p3];