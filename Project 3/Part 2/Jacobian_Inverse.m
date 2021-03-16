function y = Jacobian_Inverse(q)

J = Jacobian(q);
        
y = inv(J);
