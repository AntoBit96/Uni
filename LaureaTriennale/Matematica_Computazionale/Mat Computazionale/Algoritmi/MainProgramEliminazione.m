%Main Program di eliminazione che interaggisce con l'utente per conto della
%funtion corrispondente(Eliminazione in questo caso)
A=input('Inserisci matrice quadrata');
[B,D,sing]=Eliminazione(A);
if sing==0
    disp('Il determinante è')
    D
    error('La matrice è singolare');
    
else
    disp('La matrice inversa è')
    B
    disp('Il determinante è')
    D
end
