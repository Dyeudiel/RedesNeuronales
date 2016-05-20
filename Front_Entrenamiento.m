function varargout = Front_Entrenamiento(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Front_Entrenamiento_OpeningFcn, ...
                   'gui_OutputFcn',  @Front_Entrenamiento_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

function Front_Entrenamiento_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

function varargout = Front_Entrenamiento_OutputFcn(hObject, eventdata, handles)

varargout{1} = handles.output;

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function btnEntrenar_Callback(hObject, eventdata, h)

    ascii = uint16(get(h.txtEntrenar,'String'))

    patron =[]
    patron(1) = get(h.E1,'Value')
    patron(2) = get(h.E2,'Value')
    patron(3) = get(h.E3,'Value')
    patron(4) = get(h.E4,'Value')
    patron(5) = get(h.E5,'Value')
    patron(6) = get(h.E6,'Value')
    patron(7) = get(h.E7,'Value')
    patron(8) = get(h.E8,'Value')
    patron(9)  = get(h.E9,'Value')
    patron(10) = get(h.E10,'Value')
    patron(11) = get(h.E11,'Value')
    patron(12) = get(h.E12,'Value')
    patron(13) = get(h.E13,'Value')
    patron(14) = get(h.E14,'Value')
    patron(15) = get(h.E15,'Value')
    patron(16) = get(h.E16,'Value')
    patron(17) = get(h.E17,'Value')
    patron(18) = get(h.E18,'Value')
    patron(19) = get(h.E19,'Value')
    patron(20) = get(h.E20,'Value')
    patron(21) = get(h.E21,'Value')
    patron(22) = get(h.E22,'Value')
    patron(23) = get(h.E23,'Value')
    patron(24) = get(h.E24,'Value')
    patron(25) = get(h.E25,'Value')

    aprender(ascii, patron)
    msgbox("Caracter aprendido")

function btnAnalizar_Callback(hObject, eventdata, h)
    patron = []
    patron(1) = get(h.A1,'Value')
    patron(2) = get(h.A2,'Value')
    patron(3) = get(h.A3,'Value')
    patron(4) = get(h.A4,'Value')
    patron(5) = get(h.A5,'Value')
    patron(6) = get(h.A6,'Value')
    patron(7) = get(h.A7,'Value')
    patron(8) = get(h.A8,'Value')
    patron(9) = get(h.A9,'Value')
    patron(10) = get(h.A10,'Value')
    patron(11) = get(h.A11,'Value')
    patron(12) = get(h.A12,'Value')
    patron(13) = get(h.A13,'Value')
    patron(14) = get(h.A14,'Value')
    patron(15) = get(h.A15,'Value')
    patron(16) = get(h.A16,'Value')
    patron(17) = get(h.A17,'Value')
    patron(18) = get(h.A18,'Value')
    patron(19) = get(h.A19,'Value')
    patron(20) = get(h.A20,'Value')
    patron(21) = get(h.A21,'Value')
    patron(22) = get(h.A22,'Value')
    patron(23) = get(h.A23,'Value')
    patron(24) = get(h.A24,'Value')
    patron(25) = get(h.A25,'Value')

    caracter = analisis(patron);
    msgbox(caracter)
