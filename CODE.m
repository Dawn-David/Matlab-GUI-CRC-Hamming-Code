function varargout = CODE(varargin)
% CODE MATLAB code for CODE.fig
%      CODE, by itself, creates a new CODE or raises the existing
%      singleton*.
%
%      H = CODE returns the handle to a new CODE or the handle to
%      the existing singleton*.
%
%      CODE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CODE.M with the given input arguments.
%
%      CODE('Property','Value',...) creates a new CODE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CODE_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CODE_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CODE

% Last Modified by GUIDE v2.5 23-Apr-2019 20:45:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CODE_OpeningFcn, ...
                   'gui_OutputFcn',  @CODE_OutputFcn, ...
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


% --- Executes just before CODE is made visible.
function CODE_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CODE (see VARARGIN)

% Choose default command line output for CODE
handles.output = hObject;

%设置输入框初始状态
set(handles.dui1,'Visible','off');
set(handles.dui2,'Visible','off');
set(handles.dui3,'Visible','off');
set(handles.dui4,'Visible','off');
set(handles.dui5,'Visible','off');
set(handles.dui6,'Visible','off');
set(handles.cuo1,'Visible','off');
set(handles.cuo2,'Visible','off');
set(handles.cuo3,'Visible','off');
set(handles.cuo4,'Visible','off');
set(handles.cuo5,'Visible','off');
set(handles.cuo6,'Visible','off');

%显示提示框
h=dialog('name','使用提示','position',[720 350 290 130]);  
uicontrol('parent',h,'style','text','string','使用提示：CRC编码，CRC译码，海明编码，海明译码；点击编码，开始编码；点击译码，开始译码！',...
          'position', [28 15 250 95],'fontsize',12);  
uicontrol('parent',h,'style','pushbutton','position',...  
          [118 12 60 25],'string','确定','callback','delete(gcbf)');
      
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CODE wait for user response (see UIRESUME)
% uiwait(handles.figure1);



% --- Outputs from this function are returned to the command line.
function varargout = CODE_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Data_Callback(hObject, eventdata, handles)
% hObject    handle to Data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Data;
Data=get(handles.Data,'String');
% Hints: get(hObject,'String') returns contents of Data as text
%        str2double(get(hObject,'String')) returns contents of Data as a double


% --- Executes during object creation, after setting all properties.
function Data_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GX_Callback(hObject, eventdata, handles)
% hObject    handle to GX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global GX;
GX=get(handles.GX,'String');
% Hints: get(hObject,'String') returns contents of GX as text
%        str2double(get(hObject,'String')) returns contents of GX as a double


% --- Executes during object creation, after setting all properties.
function GX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CRCbianma_Callback(hObject, eventdata, handles)
% hObject    handle to CRCbianma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CRCbianma as text
%        str2double(get(hObject,'String')) returns contents of CRCbianma as a double


% --- Executes during object creation, after setting all properties.
function CRCbianma_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CRCbianma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bianma.
function bianma_Callback(hObject, eventdata, handles)
% hObject    handle to bianma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% CRC编码    
% M:数据   G：生成多项式     R：余数
global Data;
global GX;
global Crccode;
set(handles.CRCbianma,'String','');
C1=Check(Data);
C2=Check(GX);
if (C1==1)
    set(handles.cuo1,'Visible','on');
    set(handles.dui1,'Visible','off');
else
    set(handles.cuo1,'Visible','off');
    set(handles.dui1,'Visible','on');
end
if (C2==1)
    set(handles.cuo2,'Visible','on');
    set(handles.dui2,'Visible','off');
else
    set(handles.cuo2,'Visible','off');
    set(handles.dui2,'Visible','on');
end
if (C1==0&&C2==0)    
    [Crccode,R] = CRC (Data , GX);
    set(handles.CRCbianma,'String',num2str(Crccode));
end



function Data2_Callback(hObject, eventdata, handles)
% hObject    handle to Data2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Data2;
Data2=get(handles.Data2,'String');
% Hints: get(hObject,'String') returns contents of Data2 as text
%        str2double(get(hObject,'String')) returns contents of Data2 as a double


% --- Executes during object creation, after setting all properties.
function Data2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Data2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GX2_Callback(hObject, eventdata, handles)
% hObject    handle to GX2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global GX2;
GX2=get(handles.GX2,'String');
% Hints: get(hObject,'String') returns contents of GX2 as text
%        str2double(get(hObject,'String')) returns contents of GX2 as a double


% --- Executes during object creation, after setting all properties.
function GX2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GX2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CRCyima_Callback(hObject, eventdata, handles)
% hObject    handle to CRCyima (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CRCyima as text
%        str2double(get(hObject,'String')) returns contents of CRCyima as a double


% --- Executes during object creation, after setting all properties.
function CRCyima_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CRCyima (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in yima.
function yima_Callback(hObject, eventdata, handles)
% hObject    handle to yima (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global Data2;
global GX2;
global R2;
global RR2;
set(handles.CRCyima,'String','');
set(handles.CRCjieguo,'String','');
C1=Check(Data2);
C2=Check(GX2);
if (C1==1)
    set(handles.cuo3,'Visible','on');
    set(handles.dui3,'Visible','off');
else
    set(handles.cuo3,'Visible','off');
    set(handles.dui3,'Visible','on');
end
if (C2==1)
    set(handles.cuo4,'Visible','on');
    set(handles.dui4,'Visible','off');
else
    set(handles.cuo4,'Visible','off');
    set(handles.dui4,'Visible','on');
end
if (C1==0&&C2==0)
    [R2 , RR2] = CRC2 (Data2 , GX2);
    set(handles.CRCyima,'String',num2str(R2));
    if (RR2==1)
        set(handles.CRCjieguo,'String','接收正确');
    else
        set(handles.CRCjieguo,'String','接收错误');
    end
end

function CRCjieguo_Callback(hObject, eventdata, handles)
% hObject    handle to CRCjieguo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CRCjieguo as text
%        str2double(get(hObject,'String')) returns contents of CRCjieguo as a double


% --- Executes during object creation, after setting all properties.
function CRCjieguo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CRCjieguo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Data3_Callback(hObject, eventdata, handles)
% hObject    handle to Data3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Data3;
Data3=get(handles.Data3,'String');
% Hints: get(hObject,'String') returns contents of Data3 as text
%        str2double(get(hObject,'String')) returns contents of Data3 as a double


% --- Executes during object creation, after setting all properties.
function Data3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Data3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in haiming.
function haiming_Callback(hObject, eventdata, handles)
% hObject    handle to haiming (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 海明编码    
% M : 数据   H : 编码数组(H0偶;H1奇)
% Data = '10011101';
global Data3;
global H0;
global H1;
set(handles.haiming10,'String','');
C1=Check(Data3);
if (C1==1)
    set(handles.cuo5,'Visible','on');
    set(handles.dui5,'Visible','off');
else
    set(handles.cuo5,'Visible','off');
    set(handles.dui5,'Visible','on');
end
if (C1==0)
    [H0,H1] = Haiming (Data3);
    set(handles.haiming10,'String',num2str(H0));
end


function Data4_Callback(hObject, eventdata, handles)
% hObject    handle to Data4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Data4;
Data4=get(handles.Data4,'String');
% Hints: get(hObject,'String') returns contents of Data4 as text
%        str2double(get(hObject,'String')) returns contents of Data4 as a double


% --- Executes during object creation, after setting all properties.
function Data4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Data4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in haiming2.
function haiming2_Callback(hObject, eventdata, handles)
% hObject    handle to haiming2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 海明译码    
% M : 数据   nun:错误码位数(二进制)   pos:错误位置
global Data4;
global pos;
set(handles.haiming20,'String','');
set(handles.haiming30,'String','');
C1=Check(Data4);
if (C1==1)
    set(handles.cuo6,'Visible','on');
    set(handles.dui6,'Visible','off');
else
    set(handles.cuo6,'Visible','off');
    set(handles.dui6,'Visible','on');
end
if (C1==0)
    [pos] = Haiming2 (Data4);
    if (pos==0)
        set(handles.haiming20,'String','接收正确');
        set(handles.haiming30,'String','没有错误');
    else
        Hai_result=['第',num2str(pos),'位错误'];
        set(handles.haiming20,'String','接收错误');
        set(handles.haiming30,'String',Hai_result);
    end
end
    
