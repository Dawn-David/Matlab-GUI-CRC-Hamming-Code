function [C] = Check(Data)
% 检查输入是否合法
% C=0，输入正确。
% Data = '111000111101';
C=0;
k = length(Data);
if (k==0)
    C=1;
end
for i = 1 : k
    M(i) = str2num(Data(i));
    if (M(i)~=0&&M(i)~=1)
        C=1;
        break;
    end
end
end