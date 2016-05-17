function [res] = analisis(patron)

    clear all;

    x = load('entradas.txt')'
    dat = load('datos.txt')
    tdat = dat'

    cond = dat(1:size(dat)) %condiciones ascii (primer columna)
    d = dat(1:size(dat),2:size(tdat))' %columna 2 a n luego transpuesta

    red=newp([0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1],25);
    red=train(red,x,d);% Entrenamiento de la red

    tv = patron'
    a = sim(red,tv)

    test = [];
    hayError = true;
    for i=1 : size(cond')
        buscado = dat(i:i,2:size(tdat))';

        if a==buscado
           //msgbox(char(cond(i)));
           res = char(cond(i));
           hayError = false;
           break;
        end
    end

    if(hayError){
        msgbox('No encontrado');
    }
