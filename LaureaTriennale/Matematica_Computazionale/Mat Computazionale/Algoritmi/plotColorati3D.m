x0=-4; x1=4;
y0=-4;y1=4;
n=100;
hx=(x1-x0)/n;
hy=(y1-y0)/n; 
[x,y]=meshgrid(x0:hx:x1,y0:hy:y1);%costruisco una griglia di definizione mesh costruisce la superficie
z=exp(-0.3*(x.^2+y.^2)).*sin(x.^2+y.^2);
figure (1)
mesh(x,y,z)
figure (2)
C=gradient(z);%realizza una scala di colori che dipende dall'altezza dei punti
mesh(x,y,z,C);
figure (3)
contour(x,y,z);
figure (4)
meshc(x,y,z);
figure (5)
colormap(pink);
mesh(x,y,z);
figure (6)
colormap(pink);
surf(x,y,z);
figure (7)
colormap(pink);
surfl(x,y,z);
shading interp;%rende uniforme la superficie interpola le curve e da' un effetto liscio 
   