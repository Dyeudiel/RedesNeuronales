function [res] = aprender(patron, ascii)
    [filas, columnas] = size(load('entradas.txt'))

    %concatena el ascii con la salida deseada
    salidaDeseada = horzcat(ascii, fliplr(de2bi(2^(filas-1), columnas)));

    dlmwrite('entradas.txt', patron, 'delimiter', '\t', '-append')
    dlmwrite('datos.txt', salidaDeseada, 'delimiter', '\t', '-append')
