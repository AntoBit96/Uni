function [A] = Ese1a( n )
%n=dimensione della matrice
A=2*eye(n)+diag(-1*ones(n-1,1),1)+diag(-1*ones(n-1,1),-1);
A=fliplr(A);


end

