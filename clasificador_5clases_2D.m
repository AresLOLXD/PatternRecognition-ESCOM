clear all
close all

%PROGRAMA QUE CALCULA LA TOMA DE DECISIONES ENTRE 5 CLASES DADO UN VECTOR
%DESCONOCIDO

%INTRODUCIR LOS DATOS DE MIS CLASES

c1=[1 1 0.5 1.15 1.23; 2 1.15 2 2.37 2.2];
c2=[4 4.38 3.5 3.97 4.22; -2 -1.67 -2.49 -2.37 -2.2];
c3=[-1.34 -1.8 -0.59 -1.19 -1.29; -2.2 -1.56 -2.74 -2.34 -2.4];
c4=[-1.92 -1.77 -2.31 -1.6 -1.53; 2.5 1.59 2.87 2.83 2.25];
c5=[0.23 0.01 0.01 0.05 0.03; 0.14 0.37 0.13 0.37 0.2];
circulo=[-0.1 0.5]


vx=input('dame la coordenada del vector en x=')
vy=input('dame la coordenada del vector en y=')
vector =[vx ; vy];
%Graficas de clases
hold on
plot(c1(1,:),c1(2,:),"ro","MarkerSize",10,"MarkerFaceColor","r")
plot(c2(1,:),c2(2,:),"go","MarkerSize",10,"MarkerFaceColor","g")
plot(c3(1,:),c3(2,:),"yo","MarkerSize",10,"MarkerFaceColor","y")
plot(c4(1,:),c4(2,:),"co","MarkerSize",10,"MarkerFaceColor","c")
plot(c5(1,:),c5(2,:),"bo","MarkerSize",10,"MarkerFaceColor","b")
plot(vector(1,:),vector(2,:),"ko","MarkerSize",10,"MarkerFaceColor","k")


%calculamos los parametros por cada clase

media1=mean(c1,2);
media2=mean(c2,2);
media3=mean(c3,2);
media4=mean(c4,2);
media5=mean(c5,2);

if norm(circulo-vector)>=6
    disp("El punto esta fuera del rango valido")
else
    %calculando las distancias entre vector a clasificar y la media
    dist1=norm(media1-vector)
    dist2=norm(media2-vector)
    dist3=norm(media3-vector)
    dist4=norm(media4-vector)
    dist5=norm(media5-vector)

    [dato,dato2] = min([dist1 dist2 dist3 dist4 dist5]);

    fprintf("El vector desconocido pertenece a la clase %d\n",dato2)
end
disp("Fin de programa")

