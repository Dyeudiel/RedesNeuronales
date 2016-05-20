function [res] = aprender(patron)
    [filas, columnas] = size(load('entradas.txt'))
    
    salidaDeseada = fliplr(de2bi(2^(filas-1), columnas))
    
    dlmwrite('entradas.txt', patron, 'delimiter', '\t', '-append')
    dlmwrite('datos.txt', salidaDeseada, 'delimiter', '\t', '-append')
