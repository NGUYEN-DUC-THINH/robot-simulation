function qdbdot=tinh_qdbdot(in)
q1=in(1);q2=in(2);q3=in(3);q4=in(4);q=[q1;q2;q3;q4];
q1dot=in(5);q2dot=in(6);q3dot=in(7);q4dot=in(8);qdot=[q1dot;q2dot;q3dot;q4dot];
u=[in(9);in(10);in(11);in(12)];
M=matrixM_scara(q);
C=matrixC_scara(q,qdot);
D=matrixD_scara;
G=matrixG_scara(q);
B=matrix_B;
qdbdot=inv(M)*(B*u-C*qdot+D*qdot-G);
