function C=matrixC_scara(q,qdot)
global m1 m2 m3 m4 a1 a2 q3max d4 r1 r2 r3 r4 gr;
q1=q(1);q2=q(2);q3=q(3);q4=q(4);
q1dot=qdot(1);q2dot=q(2);q3dot=qdot(3);q4dot=qdot(4);
C=[-(a1*a2*sin(q2)*(m2 + 2*m3 + 2*m4))/2,-a1*a2*sin(q2)*(m2 + 2*m3 + 2*m4), 0, 0;(a1*a2*sin(q2)*(m2 + 2*m3 + 2*m4)*(2*q1dot + q2dot - 1))/4, (a1*a2*sin(q2)*(q1dot - 1)*(m2 + 2*m3 + 2*m4))/4, 0, 0;0 0 0 0;0 0 0 0];