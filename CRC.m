function [Crccode,R] = CRC(Data,GX)
% CRC编码    
% M:数据   G：生成多项式     R：余数
% Data='1101011011';
% GX='10011';

%将输入数据转化为数组
Length_D=length(Data);
Length_G=length(GX);
for i=1:Length_D
    M(i)=str2num(Data(i));
end
for i=1:Length_G
    G(i)=str2num(GX(i));
end

%补G(X)的阶次r=Length_G-1位的0
M(Length_D+1 : Length_D+Length_G-1)=0;
m=Length_D+Length_G-1;  %除数长度
n=Length_G;             %被除数长度
Crccode=M;

%长除法求余数R(X)
for i=1:m-n+1                       
    if(M(i)==1)
        for j=1:n
            if(M(i+j-1)==G(j))      %异或
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
