function b=matrix_b_scara(in)
q=[in(1);in(2);in(3);in(4)];
qdot=[in(5);in(6);in(7);in(8)];
C=matrixC_scara(q,qdot);
G=matrixG_scara(q);
b=C*qdot+G;