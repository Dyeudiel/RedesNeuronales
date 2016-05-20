function [res] = aprender(codigo, patron)
    [filas, columnas] = size(load('entradas.txt'))

    %Computa una salida unica lineal 2^n 
    salidaDeseada = fliplr(de2bi(2^(filas-1), columnas)) 

    %concatena el ascii con la salida deseada
    res = [codigo, salidaDeseada];

    dlmwrite('entradas.txt', patron, 'delimiter', '\t', '-append')
    dlmwrite('datos.txt', res, 'delimiter', '\t', '-append')
