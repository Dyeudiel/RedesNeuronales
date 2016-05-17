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

function btnAnalizar_Callback(hObject, eventdata, h)
    value = []
    value(1) = get(h.A1,'Value')
    value(2) = get(h.A2,'Value')
    value(3) = get(h.A3,'Value')
    value(4) = get(h.A4,'Value')
    value(5) = get(h.A5,'Value')
    value(6) = get(h.A6,'Value')
    value(7) = get(h.A7,'Value')
    value(8) = get(h.A8,'Value')
    value(9) = get(h.A9,'Value')
    value(10) = get(h.A10,'Value')
    value(11) = get(h.A11,'Value')
    value(12) = get(h.A12,'Value')
    value(13) = get(h.A13,'Value')
    value(14) = get(h.A14,'Value')
    value(15) = get(h.A15,'Value')
    value(16) = get(h.A16,'Value')
    value(17) = get(h.A17,'Value')
    value(18) = get(h.A18,'Value')
    value(19) = get(h.A19,'Value')
    value(20) = get(h.A20,'Value')
    value(21) = get(h.A21,'Value')
    value(22) = get(h.A22,'Value')
    value(23) = get(h.A23,'Value')
    value(24) = get(h.A24,'Value')
    value(25) = get(h.A25,'Value')

    caracter = analisis(value);
    msgbox(caracter)
