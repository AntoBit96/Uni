function A = MatTridiagonale(n)
%costruisce la matrice tridiagonale quadrata di dimensione nxn
%A=[0,...,0,-1,2;0,...,-1,2,-1;...;-1,2,-1,0,...,0;2,-1,0,...,0] 
At=diag(-ones(n-1,1),-1)+diag(-ones(n-1,1),1)+diag(2*ones(n,1));
A=fliplr(At);
end

