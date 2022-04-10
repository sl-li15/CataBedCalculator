function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 11-Apr-2022 05:25:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.popupmenu1,'value',1);
set(handles.edit1,'visible','on');
set(handles.text6,'visible','on');
set(handles.text4,'visible','on');
set(handles.text15,'visible','off');
set(handles.text16,'visible','off');
set(handles.text17,'visible','off');
set(handles.text18,'visible','off');
set(handles.edit6,'visible','off');
set(handles.edit7,'visible','off');
set(handles.text7,'visible','on');
set(handles.text8,'visible','on');
set(handles.text9,'visible','on');
set(handles.text10,'visible','on');
set(handles.text11,'visible','on');
set(handles.text12,'visible','on');
set(handles.text13,'visible','on');
set(handles.text14,'visible','on');
set(handles.edit2,'visible','on');
set(handles.edit3,'visible','on');
set(handles.edit4,'visible','on');
set(handles.edit5,'visible','on');
set(handles.popupmenu2,'visible','on');
set(handles.popupmenu2,'value',1);
set(handles.pushbutton3,'visible','on');
set(handles.pushbutton4,'visible','on');
set(handles.pushbutton5,'visible','on');

set(handles.text20,'visible','off');
set(handles.text21,'visible','off');
set(handles.edit8,'visible','off');
set(handles.edit9,'visible','off');
set(handles.pushbutton7,'visible','off');
set(handles.pushbutton8,'visible','off');

set(handles.pushbutton9,'visible','off');
set(handles.pushbutton10,'visible','off');

set(handles.text23,'visible','off');
set(handles.edit10,'visible','off');
set(handles.text24,'visible','off');
set(handles.text25,'visible','off');
set(handles.edit11,'visible','off');


% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
    s = get(handles.popupmenu1,'value');
    if s == 1
        set(handles.edit1,'visible','on');
        set(handles.text6,'visible','on');
        set(handles.text4,'visible','on');
        set(handles.text15,'visible','off');
        set(handles.text16,'visible','off');
        set(handles.text17,'visible','off');
        set(handles.text18,'visible','off');
        set(handles.edit6,'visible','off');
        set(handles.edit7,'visible','off');
        set(handles.text7,'visible','on');
        set(handles.text8,'visible','on');
        set(handles.text9,'visible','on');
        set(handles.text10,'visible','on');
        set(handles.text11,'visible','on');
        set(handles.text12,'visible','on');
        set(handles.text13,'visible','on');
        set(handles.text14,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.popupmenu2,'visible','on');
        set(handles.popupmenu2,'value',1);
        set(handles.pushbutton3,'visible','on');
        set(handles.pushbutton4,'visible','on');
        set(handles.pushbutton5,'visible','on');
        
        set(handles.text20,'visible','off');
        set(handles.text21,'visible','off');
        set(handles.edit8,'visible','off');
        set(handles.edit9,'visible','off');
        set(handles.pushbutton7,'visible','off');
        set(handles.pushbutton8,'visible','off');
        
        set(handles.pushbutton9,'visible','off');
        set(handles.pushbutton10,'visible','off');
        set(handles.text23,'visible','off');
        set(handles.edit10,'visible','off');
        set(handles.text24,'visible','off');
        set(handles.text25,'visible','off');
        set(handles.edit11,'visible','off');
        
    end
    if s == 2
        set(handles.edit1,'visible','on');
        set(handles.text6,'visible','on');
        set(handles.text4,'visible','on');
        set(handles.text15,'visible','off');
        set(handles.text16,'visible','off');
        set(handles.text17,'visible','off');
        set(handles.text18,'visible','off');
        set(handles.edit6,'visible','off');
        set(handles.edit7,'visible','off');
        set(handles.text7,'visible','on');
        set(handles.text8,'visible','on');
        set(handles.text9,'visible','on');
        set(handles.text10,'visible','on');
        set(handles.text11,'visible','on');
        set(handles.text12,'visible','on');
        set(handles.text13,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.edit5,'visible','off');
        set(handles.popupmenu2,'visible','on');
        set(handles.popupmenu2,'value',1);
        set(handles.pushbutton3,'visible','off');
        set(handles.pushbutton4,'visible','off');
        set(handles.pushbutton5,'visible','off');
        set(handles.text14,'visible','off');
        
        set(handles.text20,'visible','on');
        set(handles.text21,'visible','on');
        set(handles.edit8,'visible','on');
        set(handles.edit9,'visible','on');
        set(handles.pushbutton7,'visible','on');
        set(handles.pushbutton8,'visible','on');
        
        set(handles.pushbutton9,'visible','off');
        set(handles.pushbutton10,'visible','off');
        set(handles.text23,'visible','off');
        set(handles.edit10,'visible','off');
        set(handles.text24,'visible','off');
        set(handles.text25,'visible','off');
        set(handles.edit11,'visible','off');
        
    end
    if s == 3
        set(handles.edit1,'visible','on');
        set(handles.text6,'visible','on');
        set(handles.text4,'visible','on');
        set(handles.text15,'visible','off');
        set(handles.text16,'visible','off');
        set(handles.text17,'visible','off');
        set(handles.text18,'visible','off');
        set(handles.edit6,'visible','off');
        set(handles.edit7,'visible','off');
        set(handles.text7,'visible','on');
        set(handles.text8,'visible','on');
        set(handles.text9,'visible','on');
        set(handles.text10,'visible','on');
        set(handles.text11,'visible','on');
        set(handles.text12,'visible','on');
        set(handles.text13,'visible','on');
        set(handles.edit2,'visible','on');
        set(handles.edit3,'visible','on');
        set(handles.edit4,'visible','on');
        set(handles.edit5,'visible','on');
        set(handles.popupmenu2,'visible','on');
        set(handles.popupmenu2,'value',1);
        set(handles.pushbutton3,'visible','off');
        set(handles.pushbutton4,'visible','off');
        set(handles.pushbutton5,'visible','off');
        set(handles.text14,'visible','on');
        
        set(handles.text20,'visible','off');
        set(handles.text21,'visible','off');
        set(handles.edit8,'visible','off');
        set(handles.edit9,'visible','off');
        set(handles.pushbutton7,'visible','off');
        set(handles.pushbutton8,'visible','off');
        
        set(handles.pushbutton9,'visible','on');
        set(handles.pushbutton10,'visible','on');
        set(handles.text23,'visible','on');
        set(handles.edit10,'visible','on');
        set(handles.text24,'visible','on');
        set(handles.text25,'visible','on');
        set(handles.edit11,'visible','on');
    end


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on key press with focus on popupmenu1 and none of its controls.
function popupmenu1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s = get(handles.popupmenu2,'value');
if s == 1
    set(handles.edit1,'visible','on');
    set(handles.text6,'visible','on');
    set(handles.text15,'visible','off');
    set(handles.text16,'visible','off');
    set(handles.text17,'visible','off');
    set(handles.text18,'visible','off');
    set(handles.edit6,'visible','off');
    set(handles.edit7,'visible','off');
    set(handles.text4,'visible','on');
end
if s == 2
    set(handles.edit1,'visible','off');
    set(handles.text6,'visible','off');
    set(handles.text15,'visible','on');
    set(handles.text16,'visible','on');
    set(handles.text17,'visible','on');
    set(handles.text18,'visible','on');
    set(handles.edit6,'visible','on');
    set(handles.edit7,'visible','on');
    set(handles.text4,'visible','on');
end
if s == 3
    set(handles.edit1,'visible','off');
    set(handles.text6,'visible','off');
    set(handles.text15,'visible','off');
    set(handles.text16,'visible','off');
    set(handles.text17,'visible','off');
    set(handles.text18,'visible','off');
    set(handles.edit6,'visible','off');
    set(handles.edit7,'visible','off');
    set(handles.text4,'visible','off');
end
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s = get(handles.popupmenu2,'value');
Tinf = get(handles.edit2,'string');
Tinf = str2double(Tinf);
Troom = get(handles.edit3,'string');
Troom = str2double(Troom);
dia = get(handles.edit4,'string');
dia = str2double(dia);
ttotal = get(handles.edit5,'string');
ttotal = ceil(str2double(ttotal));
if s==1
    v = get(handles.edit1,'string');
    v = str2double(v);
    csvwrite('vinput.csv',[0,v;ttotal,v]);
    csvwrite('temperature.csv',[Tinf;Troom]);
    estimate(dia);
end
if s==2
    vmax = get(handles.edit6,'string');
    vmax = str2double(vmax);
    f = get(handles.edit7,'string');
    f = str2double(f);
    T = 1 / f;
    num = floor(ttotal / T);
    vout = zeros(1,2);
    t = -T / 2;
    for i = 1:num
        t = t + T;
        vout = [vout;[t,vmax];[t+T/2,0]];
    end
    vout = [vout;[ttotal,0]];
    csvwrite('vinput.csv',vout);
    csvwrite('temperature.csv',[Tinf;Troom]);
    estimate(dia);
end
if s==3
    csvwrite('temperature.csv',[Tinf;Troom]);
    estimate(dia);
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s = get(handles.popupmenu2,'value');
Tinf = get(handles.edit2,'string');
Tinf = str2double(Tinf);
Troom = get(handles.edit3,'string');
Troom = str2double(Troom);
dia = get(handles.edit4,'string');
dia = str2double(dia);
ttotal = get(handles.edit5,'string');
ttotal = ceil(str2double(ttotal));
if s==1
    v = get(handles.edit1,'string');
    v = str2double(v);
    csvwrite('vinput.csv',[0,v;ttotal,v]);
    csvwrite('temperature.csv',[Tinf;Troom]);
    predict(dia);
end
if s==2
    vmax = get(handles.edit6,'string');
    vmax = str2double(vmax);
    f = get(handles.edit7,'string');
    f = str2double(f);
    T = 1 / f;
    num = floor(ttotal / T);
    vout = zeros(1,2);
    t = -T / 2;
    for i = 1:num
        t = t + T;
        vout = [vout;[t,vmax];[t+T/2,0]];
    end
    vout = [vout;[ttotal,0]];
    csvwrite('vinput.csv',vout);
    csvwrite('temperature.csv',[Tinf;Troom]);
    predict(dia);
end
if s==3
    csvwrite('temperature.csv',[Tinf;Troom]);
    predict(dia);
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ecs = importdata('ecs.csv');
necs = ones(size(ecs,1),1);
csvwrite('ecs.csv', necs);



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s = get(handles.popupmenu2,'value');
Tinf = get(handles.edit2,'string');
Tinf = str2double(Tinf);
Troom = get(handles.edit3,'string');
Troom = str2double(Troom);
dia = get(handles.edit4,'string');
dia = str2double(dia);
step = get(handles.edit8,'string');
step = ceil(str2double(step));
err = get(handles.edit9,'string');
err = str2double(err);
csvwrite('mesh.csv',[250,50;20000,200]);
ttotal = 200;
if s==1
    v = get(handles.edit1,'string');
    v = str2double(v);
    csvwrite('vinput.csv',[0,v;ttotal,v]);
    csvwrite('temperature.csv',[Tinf;Troom]);
    newparas = train(err, dia, step);
    csvwrite('temp',newparas);
end
if s==2
    vmax = get(handles.edit6,'string');
    vmax = str2double(vmax);
    f = get(handles.edit7,'string');
    f = str2double(f);
    T = 1 / f;
    num = floor(ttotal / T);
    vout = zeros(1,2);
    t = -T / 2;
    for i = 1:num
        t = t + T;
        vout = [vout;[t,vmax];[t+T/2,0]];
    end
    vout = [vout;[ttotal,0]];
    csvwrite('vinput.csv',vout);
    csvwrite('temperature.csv',[Tinf;Troom]);
    newparas = train(err, dia, step);
    csvwrite('temp',newparas);
end
if s==3
    csvwrite('temperature.csv',[Tinf;Troom]);
    newparas = train(err, dia, step);
    csvwrite('temp',newparas);
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
paras = importdata('temp');
csvwrite('paras.csv',paras);


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s = get(handles.popupmenu2,'value');
Tinf = get(handles.edit2,'string');
Tinf = str2double(Tinf);
Troom = get(handles.edit3,'string');
Troom = str2double(Troom);
dia = get(handles.edit4,'string');
dia = str2double(dia);
ttotal = get(handles.edit5,'string');
ttotal = ceil(str2double(ttotal));
tmesh = 100 * ttotal;
xtotal = get(handles.edit10,'string');
xtotal = str2double(xtotal);
xmesh = ceil(5 * xtotal);
csvwrite('mesh.csv',[xmesh,xtotal;tmesh,ttotal]);
err = get(handles.edit11,'string');
err = str2double(err);
if s==1
    v = get(handles.edit1,'string');
    v = str2double(v);
    csvwrite('vinput.csv',[0,v;ttotal,v]);
    csvwrite('temperature.csv',[Tinf;Troom]);
    nkc = trainkc(dia, err);
    csvwrite('temp',nkc);
end
if s==2
    vmax = get(handles.edit6,'string');
    vmax = str2double(vmax);
    f = get(handles.edit7,'string');
    f = str2double(f);
    T = 1 / f;
    num = floor(ttotal / T);
    vout = zeros(1,2);
    t = -T / 2;
    for i = 1:num
        t = t + T;
        vout = [vout;[t,vmax];[t+T/2,0]];
    end
    vout = [vout;[ttotal,0]];
    csvwrite('vinput.csv',vout);
    csvwrite('temperature.csv',[Tinf;Troom]);
    nkc = trainkc(dia, err);
    csvwrite('temp',nkc);
end
if s==3
    csvwrite('temperature.csv',[Tinf;Troom]);
    nkc = trainkc(dia, err);
    csvwrite('temp',nkc);
end


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
kc = importdata('temp');
csvwrite('kc.csv',kc);



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
