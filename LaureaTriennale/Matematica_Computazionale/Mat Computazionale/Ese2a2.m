function [T] = Ese2a2(n)
T=eye(n)+diag(-1*ones(n-2,1),-2)+diag(-1*ones(n-1,1),-1);
end

