%Calcola la riga o la colonna i che ha più zeri dove dir ci dice se è riga o colonna
function [i,dir] = NrMaxZeri(A)
T=A==0; %T ha 1 al posto degli zeri di A e 0 altrove
[nzeric,indc]=max(sum(T));
[nzerir,indr]=max(sum(T'));
if nzerir>=nzeric
    i=indr;
    dir='r';
else
    i=indc;
    dir='c';
end
end

