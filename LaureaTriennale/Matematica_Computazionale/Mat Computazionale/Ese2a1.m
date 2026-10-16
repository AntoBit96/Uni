function [A] = Ese2a1(n,alpha)
A=alpha*eye(n)+diag(-1*ones(n-2,1),-2)+diag(-1*ones(n-1,1),-1)+diag(-1*ones(n-2,1),2)+diag(-1*ones(n-1,1),1);


end

