A=input('Inserisci matrice quadrata');%[0,1,-1;1.3,2,-0.7;0.5,0.5*i,4*i]
n=size(A);
r=sum(abs(A')); %raggio circonferenze
tstep=linspace(0,2*pi); %crea 100 punti tra 0 e 2*pi
for k=1:n
    xr(k,:)=real(A(k,k))+r(k)*cos(tstep); %real prende la parte reale di un numero complesso
    yr(k,:)=imag(A(k,k))+r(k)*sin(tstep);   %imag quella immaginaria
end
plot(xr',yr') %plotto per colonne
%grid on
axis equal
hold on
x=-10:0.01:10;
plot(x,0*x,'k')
plot(0*x,x,'k')

