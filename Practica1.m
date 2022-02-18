clc             % limpiar pantalla
clear all       % limpiar todo
close all       % cierra todo
warning off all % sin advertencias
%programa para generar n clases, con m representantes cada una
%generando clases de datos

fprintf('-------------------------------------\n')
fprintf('    PROGRAMA GENERADOR DE CLASES     \n')
fprintf('-------------------------------------\n')
fprintf('Ingresa las coordenadas del vector a analizar\n')
vx = input('x = ');
vy = input('y = ');
vector=[vx;vy];
n_clases = input('Dame el numero de clases: ');

grid on
hold on

plot(vector(1,:),vector(2,:),'ko','MarkerSize',10,'MarkerFaceColor','k','DisplayName','punto')

vec_dist = [];
cmap = hsv(n_clases);
for a = 1:n_clases
    fprintf('-------------------------------------\n')
    fprintf('               clase %d               \n',a)
    fprintf('-------------------------------------\n')
    fprintf('Ingresa las coordenadas\n')
    x = input('x = ');
    y = input('y = ');
    n = input('Ingresa el numero de representantes : ');
    d = input('Ingresa el numero de dispersion : ');
    c_x = ( randn(1,n) + x ) * d;
    c_y = ( randn(1,n) + y ) * d;

    %mostrar elementos
    txt = ['clase ',num2str(a)];
    plot(c_x(1,:),c_y(1,:),'o','MarkerSize',10,"Color",cmap(a,:),'MarkerFaceColor',cmap(a,:),'DisplayName',txt)

    %calcular distancia
    c=[c_x(:,:);c_y(:,:)];
    media=mean(c,2);
    vec_dist(a)=norm(media-vector);
end

legend

[minimo,index] = min(vec_dist);

fprintf('El vector pertenece a la clase%d\n',index)
