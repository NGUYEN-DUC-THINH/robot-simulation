function Mup=tinhMup(in)
up=[in(1);in(2);in(3);in(4)];
q=[in(5);in(6);in(7);in(8)];
M=matrixM_scara(q);
Mup=M*up;