function [x] = Sostituzioneavantidiag1(A,b)
n=size(A,1);
x=[b(1),zeros(1,n-1)];
for i=2:n
    x(i)=b(i)-A(1:i-1)*x(1:i-1)';
    
end


end

