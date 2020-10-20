% dong hoc nguoc vi tri robot scara by NDT
function q=dhnvt(xE,yE,zE,gamma)
k=0;
q=[1;1;1;1];
f=ptdh_robot(q(1),q(2),q(3),q(4),xE,yE,zE,gamma);
while sqrt(f'*f)>1.0e-5
    if k<1000
        jf = robot4dof_jacobif(q(1),q(2),q(3),q(4));
        dq=inv(jf)*(-f);
        q=q + dq;
        k=k+1;
        f=ptdh_robot(q(1),q(2),q(3),q(4),xE,yE,zE,gamma);
    else
        disp('ko hoi tu');
        break;
    end
end
for i=1:1:4
    if i==3
        continue;
    else
        while(q(i)>pi)||(q(i)<-pi)
            if q(i)>pi
                q(i)=q(i)-2*pi;
            else
                q(i)=q(i)+2*pi;
            end
        end
    end
end
        
        
        
        