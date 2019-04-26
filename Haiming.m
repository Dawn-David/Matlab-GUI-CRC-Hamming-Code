function [H0,H1] = Haiming(Data)
% 海明编码    
% M : 数据   H : 编码数组(H0偶;H1奇)
% Data = '10011101';
k = length(Data);
for i = 1 : k
    M(i) = str2num(Data(i));
end
% 求校验位数，2^r -1>=k+r
for i = 0:1000
    if(2^i -1-i >= k)
        r = i;  
        break;
    end
end
% 构建初始的编码数组H，校验位全为1
n = k + r;                         %编码长度
H=zeros(1,n);                      %编码的结果数组
for i=1:r                          %校验位全部为1
    H(2^(i-1))=1;
end
j=1;
for i=1:n                          %加入原始数据Data
    if (H(i)==0)
        H(i)=M(j);
        j=j+1;
    end
end
% 二进制位数的矩阵B
B=zeros(n,r);
for i = 1:n
    t= dec2bin(i,r);
    for j=1:r
        B(i,j)=bin2dec(t(j));
    end
end
%校验1的个数,并修改校验位
 num=H*B;
 H0=H;
 H1=H;
 for i = 1 : r                 
     j = 2^(r-i);
     if(mod(num(i),2)==0)
         H1(j) = 0;
     else
         H0(j) = 0;
     end
 end
 % disp(['偶校验时，编码后的海明码为：',num2str(H0)]);
 % disp(['奇校验时，编码后的海明码为：',num2str(H1)]);
end

   
 
 

