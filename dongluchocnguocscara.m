function u=dongluchocnguocscara(in)
global m1 m2 m3 m4 d_1 d_2 d_3 d_4 a1 a2 q3max d4 r1 r2 r3 r4 gr;
q=[in(1);in(2);in(3);in(4)];
qdot=[in(5);in(6);in(7);in(8)];
qdbdot=[in(9);in(10);in(11);in(12)];
M=matrixM_scara(q);
C=matrixC_scara(q,qdot);
G=matrixG_scara(q);
D=matrixD_scara;
u=M*qdbdot+C*qdot+G-D*qdot;