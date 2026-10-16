A=input('Dare matrice quadrata');
B=[A,A];
Bt=fliplr(B);
%d=prod(diag(B))+prod(diag(B,1))+prod(diag(B,2))-prod(diag(Bt))-prod(diag(Bt,1))-prod(diag(Bt,2));
d=0;
for k=0:2
    d=d+prod(diag(B,k))-prod(diag(Bt,k));
end
d