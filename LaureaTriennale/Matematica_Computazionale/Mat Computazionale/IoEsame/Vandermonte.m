function [ V ] = Vandermonte (n)
% n dimensione matrice quedrata V
for i=1:n
    x(i)=1+i*0.1;
end
V=ones(n,1);
for j=1:n
    V=[V,x'.^j];
end

