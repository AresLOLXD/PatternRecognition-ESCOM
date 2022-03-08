clc             % limpiar pantalla
clear all       % limpiar todo
close all       % cierra todo
warning off all % sin advertencias
%programa para generar n clases, con m representantes cada una
%generando clases de datos


disp("Ingresa las coordenadas del vector a analizar")
vx = input("x = ");
vy = input("y = ");
vector=[vx;vy];
numClases = input("Dame el numero de clases: ");
n = input("Ingresa el numero de representantes : ");

grid on
hold on

plot(vector(1,:),vector(2,:),"ko","MarkerSize",10,"MarkerFaceColor","k","DisplayName","Vector")

vec_dist = [];
disp("Generacion de clases:")
colores = hsv(numClases);
for a = 1:numClases
    
    disp("Ingresa las coordenadas")
    x = input("x = ");
    y = input("y = ");
    
    d = input("Ingresa el numero de dispersion : ");
    claseX = ( randn(1,n) + x ) * d;
    claseY = ( randn(1,n) + y ) * d;

    %mostrar elementos
    txt = strcat("Clase ",num2str(a),"");
    plot(claseX(1,:),claseY(1,:),"o","MarkerSize",10,"Color",colores(a,:),"MarkerFaceColor",colores(a,:),"DisplayName",txt)

    %calcular distancia
    c=[claseX(:,:) ; claseY(:,:)];
    media=mean(c,2);
    vec_dist(a)=norm(media-vector);
end

legend

[minimo,index] = min(vec_dist);

fprintf("El vector pertenece a la clase%d\n",index)
