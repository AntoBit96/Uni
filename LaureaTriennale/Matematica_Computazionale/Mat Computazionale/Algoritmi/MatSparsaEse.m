function A = MatSparsaEse(n)
%costruisce A=[4,-1,0,...,1;-1,4,-1,0,...,0;...;1,...,-1,4]
A=diag(-ones(n-1,1),-1)+diag(-ones(n-1,1),1)+diag(4*ones(n,1))+diag(1,n-1)+diag(1,-(n-1));
end

