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
    value =[]
    value(1) = char(get(h.txtEntrenar,'String'))
    value(2) = get(h.E1,'Value')
    value(3) = get(h.E2,'Value')
    value(4) = get(h.E3,'Value')
    value(5) = get(h.E4,'Value')
    value(6) = get(h.E5,'Value')
    value(7) = get(h.E6,'Value')
    value(8) = get(h.E7,'Value')
    value(9) = get(h.E8,'Value')
    value(10) = get(h.E9,'Value')
    value(11) = get(h.E10,'Value')
    value(12) = get(h.E11,'Value')
    value(13) = get(h.E12,'Value')
    value(14) = get(h.E13,'Value')
    value(15) = get(h.E14,'Value')
    value(16) = get(h.E15,'Value')
    value(17) = get(h.E16,'Value')
    value(18) = get(h.E17,'Value')
    value(19) = get(h.E18,'Value')
    value(20) = get(h.E19,'Value')
    value(21) = get(h.E20,'Value')
    value(22) = get(h.E21,'Value')
    value(23) = get(h.E22,'Value')
    value(24) = get(h.E23,'Value')
    value(25) = get(h.E24,'Value')
    value(26) = get(h.E25,'Value')

    aprender(value)

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


% --- Executes on button press in E1.
function E1_Callback(hObject, eventdata, handles)
% hObject    handle to E1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E1


% --- Executes on button press in E2.
function E2_Callback(hObject, eventdata, handles)
% hObject    handle to E2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E2


% --- Executes on button press in E3.
function E3_Callback(hObject, eventdata, handles)
% hObject    handle to E3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E3


% --- Executes on button press in E4.
function E4_Callback(hObject, eventdata, handles)
% hObject    handle to E4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E4


% --- Executes on button press in E5.
function E5_Callback(hObject, eventdata, handles)
% hObject    handle to E5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E5


% --- Executes on button press in E6.
function E6_Callback(hObject, eventdata, handles)
% hObject    handle to E6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E6


% --- Executes on button press in E7.
function E7_Callback(hObject, eventdata, handles)
% hObject    handle to E7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E7


% --- Executes on button press in E8.
function E8_Callback(hObject, eventdata, handles)
% hObject    handle to E8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E8


% --- Executes on button press in E9.
function E9_Callback(hObject, eventdata, handles)
% hObject    handle to E9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E9


% --- Executes on button press in E10.
function E10_Callback(hObject, eventdata, handles)
% hObject    handle to E10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E10


% --- Executes on button press in E11.
function E11_Callback(hObject, eventdata, handles)
% hObject    handle to E11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E11


% --- Executes on button press in E12.
function E12_Callback(hObject, eventdata, handles)
% hObject    handle to E12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E12


% --- Executes on button press in E13.
function E13_Callback(hObject, eventdata, handles)
% hObject    handle to E13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E13


% --- Executes on button press in E14.
function E14_Callback(hObject, eventdata, handles)
% hObject    handle to E14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E14


% --- Executes on button press in E15.
function E15_Callback(hObject, eventdata, handles)
% hObject    handle to E15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E15


% --- Executes on button press in E16.
function E16_Callback(hObject, eventdata, handles)
% hObject    handle to E16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E16


% --- Executes on button press in E17.
function E17_Callback(hObject, eventdata, handles)
% hObject    handle to E17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E17


% --- Executes on button press in E18.
function E18_Callback(hObject, eventdata, handles)
% hObject    handle to E18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E18


% --- Executes on button press in E19.
function E19_Callback(hObject, eventdata, handles)
% hObject    handle to E19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E19


% --- Executes on button press in E20.
function E20_Callback(hObject, eventdata, handles)
% hObject    handle to E20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E20


% --- Executes on button press in E21.
function E21_Callback(hObject, eventdata, handles)
% hObject    handle to E21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E21


% --- Executes on button press in E22.
function E22_Callback(hObject, eventdata, handles)
% hObject    handle to E22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E22


% --- Executes on button press in E23.
function E23_Callback(hObject, eventdata, handles)
% hObject    handle to E23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E23


% --- Executes on button press in E24.
function E24_Callback(hObject, eventdata, handles)
% hObject    handle to E24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E24


% --- Executes on button press in E25.
function E25_Callback(hObject, eventdata, handles)
% hObject    handle to E25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of E25


% --- Executes on button press in btnEntrenar.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to btnEntrenar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function txtResultado_Callback(hObject, eventdata, handles)
% hObject    handle to txtResultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtResultado as text
%        str2double(get(hObject,'String')) returns contents of txtResultado as a double


% --- Executes during object creation, after setting all properties.
function txtResultado_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtResultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in A25.
function A25_Callback(hObject, eventdata, handles)
% hObject    handle to A25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A25


% --- Executes on button press in A24.
function A24_Callback(hObject, eventdata, handles)
% hObject    handle to A24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A24


% --- Executes on button press in A23.
function A23_Callback(hObject, eventdata, handles)
% hObject    handle to A23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A23


% --- Executes on button press in A22.
function A22_Callback(hObject, eventdata, handles)
% hObject    handle to A22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A22


% --- Executes on button press in A21.
function A21_Callback(hObject, eventdata, handles)
% hObject    handle to A21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A21


% --- Executes on button press in A20.
function A20_Callback(hObject, eventdata, handles)
% hObject    handle to A20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A20


% --- Executes on button press in A19.
function A19_Callback(hObject, eventdata, handles)
% hObject    handle to A19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A19


% --- Executes on button press in A18.
function A18_Callback(hObject, eventdata, handles)
% hObject    handle to A18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A18


% --- Executes on button press in A17.
function A17_Callback(hObject, eventdata, handles)
% hObject    handle to A17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A17


% --- Executes on button press in A16.
function A16_Callback(hObject, eventdata, handles)
% hObject    handle to A16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A16


% --- Executes on button press in A15.
function A15_Callback(hObject, eventdata, handles)
% hObject    handle to A15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A15


% --- Executes on button press in A14.
function A14_Callback(hObject, eventdata, handles)
% hObject    handle to A14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A14


% --- Executes on button press in A13.
function A13_Callback(hObject, eventdata, handles)
% hObject    handle to A13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A13


% --- Executes on button press in A12.
function A12_Callback(hObject, eventdata, handles)
% hObject    handle to A12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A12


% --- Executes on button press in A11.
function A11_Callback(hObject, eventdata, handles)
% hObject    handle to A11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A11


% --- Executes on button press in A10.
function A10_Callback(hObject, eventdata, handles)
% hObject    handle to A10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A10


% --- Executes on button press in A9.
function A9_Callback(hObject, eventdata, handles)
% hObject    handle to A9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A9


% --- Executes on button press in A8.
function A8_Callback(hObject, eventdata, handles)
% hObject    handle to A8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A8


% --- Executes on button press in A7.
function A7_Callback(hObject, eventdata, handles)
% hObject    handle to A7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A7


% --- Executes on button press in A6.
function A6_Callback(hObject, eventdata, handles)
% hObject    handle to A6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A6


% --- Executes on button press in A5.
function A5_Callback(hObject, eventdata, handles)
% hObject    handle to A5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A5


% --- Executes on button press in A4.
function A4_Callback(hObject, eventdata, handles)
% hObject    handle to A4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A4


% --- Executes on button press in A3.
function A3_Callback(hObject, eventdata, handles)
% hObject    handle to A3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A3


% --- Executes on button press in A2.
function A2_Callback(hObject, eventdata, handles)
% hObject    handle to A2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A2


% --- Executes on button press in A1.
function A1_Callback(hObject, eventdata, handles)
% hObject    handle to A1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of A1
