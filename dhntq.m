% dong luc hoc tong quat robot scara by NDT
function q=dhntq(t,xE,yE,zE,gamma)
n=length(t);
for i=1:n
    q(:,i)=dhnvt(xE(i),yE(i),zE(i),gamma(i));
end
