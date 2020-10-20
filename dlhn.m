function u= dlhn(q,qdot,qdbdot)
global a1 a2 m1 m2 m3 m4 J1xx J1yy J1zz J2xx J2yy J2zz J3xx J3yy J3zz J4xx J4yy J4zz
q1=q(1);q2=q(2);q3=q(3);q4=q(4);
q1d=qdot(1);q2d=qdot(2);q3d=qdot(3);q4d=qdot(4);
m11=J1zz+J2zz+J3zz+J4zz+1/4*a1^2*m1+m2*(a1*a2*cos(q2)+a1^2+1/4*a2^2)+(m3+m4)*(a1^2+a2^2+2*a1*a2*cos(q2));
m12=J2zz+J3zz+J4zz+m2*(1/4*a2^2+1/2*a1*a2*cos(q2))+(m3+m4)*(a2^2+a1*a2*cos(q2));
m13=0;
m14=-J4zz;
m21=J2zz+J3zz+J4zz+m2*(1/4*a2^2+1/2*a1*a2*cos(q2))+(m3+m4)*(a2^2+a1*a2*cos(q2));
m22=J2zz+J3zz+J4zz+1/4*m2*a2^2+m3*a2^2+m4*a2^2;
m23=0;m24=0;
m31=0;m32=0;m33=m3+m4;m34=0;
m41=0;m42=0;m43=0;
m44=J4zz+0.00001;
M=[m11 m12 m13 m14;m21 m22 m23 m24;m31 m32 m33 m34;m41 m42 m43 m44];
c11=-(1/2*m2*a1*a2*sin(q2)+m3*a1*a2*sin(q2)+m4*a1*a2*sin(q2))*q2d;
c12=-(1/2*m2*a1*a2*sin(q2)+m3*a1*a2*sin(q2)+m4*a1*a2*sin(q2))*q1d-(1/2*m2*a1*a2*sin(q2)+m3*a1*a2*sin(q2)+m4*a1*a2*sin(q2))*q2d;
c13=0;c14=0;
c21=(1/2*m2*a1*a2*sin(q2)+m3*a1*a2*sin(q2)+m4*a1*a2*sin(q2))*q1d;
c22=0;
c23=0;c24=0;
c31=0;
c32=0;
c33=0;c34=0;c41=0;c42=0;c43=0;c44=0;
C=[c11 c12 c13 c14;c21 c22 c23 c24;c31 c32 c33 c34;c41 c42 c43 c44];
G=[0;0;-(m3+m4)*g;0];
u=M*qdbdot+C*qdot+G;
