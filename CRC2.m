function [R , RR] = CRC2(Data,GX)
% CRC����   
% M:����   G�����ɶ���ʽ     R������
% Data='11010110111110';
%  Data='101100110100';
%  GX='11001';

m=length(Data);
n=length(GX);
for i = 1 : m
    M(i)=str2num(Data(i));
end
for i = 1 : n
    G(i)=str2num(GX(i));
end

for i = 1 : m-n+1                       %������������
    if(M(i)==1)
        for j = 1 : n
            if(M(i+j-1) == G(j))
                M(i+j-1) = 0;
            else 
                M(i+j-1) = 1;
            end
        end
    end
end
R=M(m-n+2 : m);

if(M(m-n+2 : m)==0)
    RR=1;
    % disp('������ȷ');
else
    RR=0;
    % disp(['���մ�������Ϊ��',num2str(M(m-n+2 : m))]);
end
end