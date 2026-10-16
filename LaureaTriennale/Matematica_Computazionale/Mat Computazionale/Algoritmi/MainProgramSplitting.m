%questo è il MainProgram di Splitting e permette di scegliere il metodo
%ierativo con cui risolvere il sistema A*x=b
A=[4,1,2;1,3,1;1,2,5];
b=[16;10;12];
%A=[-2,1,5;4,8,1;4,-1,1];
%A=[4,-1,1;4,8,1;-2,1,5];
%b=[7;-21;15];
%b=[15;-21;7];
%[A,xt]=MatH_diagonale(3,4,1);
%b=A*xt;
toll=1.e-05;
itmax=50;
xold=b;
%disp('Digita 1 per Jacobi, 2 per Gauss-Seidel e 3 per altro')
%opt=input('Scegli il metodo');
%if opt==1
    %N=diag(diag(A));
    %disp('Hai scelto il metodo di Jacobi')
%elseif opt==2
    %N=tril(A);
%   disp('Hai scelto il metodo di Gauss-Seidel')
% else 
%     N=input('Introduci matrice N');
%     disp('Hai scelto il metodo altro')
% end %if
%ALTRO MODO DI SCEGLIERE IL METODO 
opt=menu('Scegli il metodo','JOR','SOR','Altro');
switch opt
    case 1
        %N=diag(diag(A));
        %disp('Hai scelto il metodo di Jacobi')
        omega=input('Inserisci parametro di rilassamento');
        if omega==1
           disp('Hai scelto il metodo di Jacobi') 
        end
        N=diag(diag(A))/omega;
    case 2
        %N=tril(A);
        %disp('Hai scelto il metodo di Gauss-Seidel')
        omega=input('Inserisci parametro di rilassamento');
        if omega==1
           disp('Hai scelto il metodo di Gauss-Seidel') 
        end
        N=diag(diag(A))/omega+tril(A,-1);
    case 3
        N=input('Introduci matrice N');
        disp('Hai scelto il metodo altro')
    otherwise
        disp('Hai sbagliato valore!!!')
        N=eye(3);
        return
end %switch
P=N-A;
[z,flag,it,rho,R]=Splitting(N,P,b,xold,toll,itmax);
%fprintf('\n Il metodo scelto è %d:',opt)
if flag==0
    fprintf('\n NON CONVERGE')
    fprintf('\n Il raggio spettrale è')
    disp(rho)
elseif flag==-1
    fprintf('\n Non converge in %d iterazioni:',itmax)
else
    fprintf('\n Il raggio di convergenza è %e:',R)
    fprintf('\n La soluzione del sistema avviene in %d iterazioni:',it)
    z
end %if
fprintf('\n Verifica della soluzione')
A*z-b