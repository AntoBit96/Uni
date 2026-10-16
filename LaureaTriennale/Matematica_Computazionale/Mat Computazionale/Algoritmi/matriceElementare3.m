function A = matriceElementare3(i,j,c,n) %combinazione lineare di due righe con scalare c
I=eye(n);
for k=1:n
    for h=1:n
        if k==i && h==j
            A(k,h)=c;
        else 
            A(k,h)=I(k,h);
        end
    end
end   
end

