clear all
close all

%PROGRAMA QUE CALCULA LA TOMA DE DECISIONES ENTRE 2 CLASES DADO UN VECTOR
%DESCONOCIDO

%INTRODUCIR LOS DATOS DE MIS CLASES

c1=[1 3 1 2 3; 2 3 5 2 3];
c2=[6 6 7 8 8; 4 3 4 4 5];

vx=input('dame la coordenada del vector en x=')
vy=input('dame la coordenada del vector en y=')
vector =[vx ; vy];
%Graficas de clases
hold on
plot(c1(1,:),c1(2,:),"ro","MarkerSize",10,"MarkerFaceColor","r")
plot(c2(1,:),c1(2,:),"bo","MarkerSize",10,"MarkerFaceColor","b")
plot(vector(1,:),vector(2,:),"ko","MarkerSize",10,"MarkerFaceColor","k")


%calculamos los parametros por cada clase

media1=mean(c1,2);
media2=mean(c2,2);

%calculando las distancias entre vector a clasificar y la media
dist1=norm(media1-vector)
dist2=norm(media2-vector)

[dato,dato2] = min([dist1 dist2]);

fprintf("El vector desconocido pertenece a la clase %d\n",dato2)

disp("Fin de programa")

