function [res] = analisis(patron)
    x = load('entradas.txt')'
    dat = load('datos.txt')
    tdat = dat'

    cond = dat(1:size(dat)) %condiciones ascii (primer columna)
    d = dat(1:size(dat),2:size(tdat))' %columna 2 a n luego transpuesta

    red=newp([0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1],25);
    red=train(red,x,d);% Entrenamiento de la red

    tv = patron'
    a = sim(red,tv) %simula la red con la salida

    hayError = true;
    for i=1 : size(cond')
        buscado = dat(i:i,2:size(tdat))'; %patron del txt

        if a==buscado
           res = char(cond(i));
           hayError = false;
           break;
        end
    end

    if hayError == true
        msgbox('No encontrado');
        res = ''
    end
