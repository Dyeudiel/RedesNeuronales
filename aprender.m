function [res] = aprender(patron, ascii)
    [filas, columnas] = size(load('entradas.txt'))

    salidaDeseada = horzcat([ascii], fliplr(de2bi(2^(filas-1), columnas)))

    dlmwrite('entradas.txt', patron, 'delimiter', '\t', '-append')
    &dlmwrite('datos.txt', salidaDeseada, 'delimiter', '\t', '-append')
