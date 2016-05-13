clear all;
x = load('entradas.txt')'
dat = load('datos.txt')
tdat = dat'

cond = dat(1:size(dat)) %condiciones ascii (primer columna)
d = dat(1:size(dat),2:size(tdat))' %columna 2 a n luego transpuesta

red=newp([0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1],25);
red=train(red,x,d);% Entrenamiento de la red

v = [1	0	0	1	0	1	0	1	0	0	1	1	0	0	0	1	0	1	0	0	1	0	0	1	0]
tv = v'
a = sim(red,tv)

test = [];
for i=1 : size(cond')
   buscado = dat(i:i,2:size(tdat))';
   
   if a==buscado
       msgbox(char(cond(i)));
       break;
   end
end

%for i = 1:size(cond)
%    if a == 
%end

%cond = dat'(1:size(dat'))
%d = dat(2:size(dat));



% x=[1 0 1 1 1 1 1 1 1 1;1 0 1 1 0 1 1 1 1 1;1 1 1 1 1 1 1 1 1 1;1 0 0 0 1 1 1 0 1 1;0 0 0 0 0 0 0 0 0 0;1 1 1 1 1 0 0 1 1 1;1 0 1 1 1 1 1 0 1 1;0 0 1 1 1 1 1 1 1 1;1 1 1 1 1 1 1 1 1 1;1 0 1 0 0 0 1 0 1 0;0 0 0 0 0 0 0 0 0 0;1 1 0 1 1 1 1 1 1 1;1 0 1 1 0 1 1 0 1 0;1 0 1 1 0 1 1 0 1 0;1 1 1 1 1 1 1 1 1 1];
% 
% d=[0 0 0 0 0 0 0 0 0 1;0 0 0 0 0 0 0 0 1 0;0 0 0 0 0 0 0 1 0 0;0 0 0 0 0 0 1 0 0 0;0 0 0 0 0 1 0 0 0 0;0 0 0 0 1 0 0 0 0 0;0 0 0 1 0 0 0 0 0 0;0 0 1 0 0 0 0 0 0 0;0 1 0 0 0 0 0 0 0 0;0 0 0 0 0 0 0 0 0 0];
% red=newp([0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1],10);
% red=train(red,x,d);% Entrenamiento de la red
% %validacion de la red (patron de prueba el # 9)
% v=[1	0	0	1	0	1	0	1	0	0	1	1	0	0	0	1	0	1	0	0	1	0	0	1	0];% Vector de prueba tipo fila = al seis
% prueba=v';% Vector de prueba convertido a tipo Columna
% a=sim(red,prueba);% Valor que toma la salida deseada
% b=a';



% if     a== [0;0;0;0;0;0;0;0;0;0]%numero 0
%     salida=0                    
% elseif a== [0;0;0;0;0;0;0;0;1;0]%numero 1
%     salida=1
% elseif a== [0;0;0;0;0;0;0;1;0;0]%numero 2
%     salida=2
% elseif a== [0;0;0;0;0;0;1;0;0;0]%numero 3
%     salida=3
% elseif a== [0;0;0;0;0;1;0;0;0;0]%numero 4
%     salida=4
% elseif a== [0;0;0;0;1;0;0;0;0;0]%numero 5
%     salida=5
% elseif a== [0;0;0;1;0;0;0;0;0;0]%numero 6
%     salida=6
% elseif a== [0;0;1;0;0;0;0;0;0;0]%numero 7
%     salida=7
% elseif a== [0;1;0;0;0;0;0;0;0;0]%numero 8
%     salida=8
% elseif a== [1;0;0;0;0;0;0;0;0;0]%numero 9
%     salida=9
% else
%     salida='El valor ingresado no corresponde a un n?mero'
% end
% 
% b = [1 0 0 0 0 0 0 0 0 0 ]
% b=salida