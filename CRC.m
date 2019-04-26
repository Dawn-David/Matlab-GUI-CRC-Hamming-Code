function [Crccode,R] = CRC(Data,GX)
% CRC����    
% M:����   G�����ɶ���ʽ     R������
% Data='1101011011';
% GX='10011';

%����������ת��Ϊ����
Length_D=length(Data);
Length_G=length(GX);
for i=1:Length_D
    M(i)=str2num(Data(i));
end
for i=1:Length_G
    G(i)=str2num(GX(i));
end

%��G(X)�Ľ״�r=Length_G-1λ��0
M(Length_D+1 : Length_D+Length_G-1)=0;
m=Length_D+Length_G-1;  %��������
n=Length_G;             %����������
Crccode=M;

%������������R(X)
for i=1:m-n+1                       
    if(M(i)==1)
        for j=1:n
            if(M(i+j-1)==G(j))      %���
                M(i+j-1)=0;
            else 
                M(i+j-1)=1;
            end
        end
    end
end
R(1:n-1)=M(m-n+2:m);
Crccode(m-n+2:m)=R(1:n-1);
% RR=R(1);
% CCrccode=Crccode(1);
% for i=2:n-1
%     RR=RR*10+R(i);
% end
% for i=2:m
%     CCrccode=CCrccode*10+Crccode(i);
% end
% num2str(R);
% num2str(Crccode)
end
