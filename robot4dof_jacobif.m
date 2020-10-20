% ma tran jacobi f robot scara 
function jf = robot4dof_jacobif(q1,q2,q3,q4)
jf= [-0.145e3 * sin(q1 + q2) - 0.195e3 * sin(q1) -0.145e3 * sin(q1 + q2) 0 0; 0.145e3 * cos(q1 + q2) + 0.195e3 * cos(q1) 0.145e3 * cos(q1 + q2) 0 0; 0 0 -1 0; cos(q1 + q2 - q4) cos(q1 + q2 - q4) 0 -cos(q1 + q2 - q4);];
