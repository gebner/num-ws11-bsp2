function A=householder(v)
v = v/norm(v);
A = eye(length(v)) - 2*v*v';
