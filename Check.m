function [C] = Check(Data)
% ��������Ƿ�Ϸ�
% C=0��������ȷ��
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