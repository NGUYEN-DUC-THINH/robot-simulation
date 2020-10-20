% he phuong trinh dong hoc robot scara 
function f=ptdh_robot(q1,q2,q3,q4,xE,yE,zE,gamma)
% su dung 3 goc cac dang de xac dinh huong cua robot
f1 = 0.145e3 * cos(q1 + q2) + 0.195e3 * cos(q1)-xE;
f2 = 0.145e3 * sin(q1 + q2) + 0.195e3 * sin(q1)-yE;
f3 = -130 - q3-zE;
f4 = sin(q1 + q2 - q4)-sin(gamma);
f = [f1;f2;f3;f4];