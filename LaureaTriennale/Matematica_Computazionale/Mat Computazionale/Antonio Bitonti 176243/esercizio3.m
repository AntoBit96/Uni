
A=[4,-1,1,1;0,-4,-1,1;-1,-1,4,1;1,-1,0,4];
N=diag(diag(A));
P=N-A;
M=N\P;
N1=tril(A);
P1=N1-A;
M1=N1\P1;
ro=abs(max(eig(M)));
ro1=abs(max(eig(M1)));
format short
v=-10/log(ro)
v1=-10/log(ro1)