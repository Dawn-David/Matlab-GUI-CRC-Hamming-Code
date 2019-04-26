function [pos] = Haiming2(Data)
% ��������    
% M : ����   nun:������λ��(������)   pos:����λ��
% Data = '111000111101';
n = length(Data);
for i=1:n
    M(i)=str2num(Data(i));
end
% ��У��λ����2^r -1>=k+r=n
for i = 0:1000
    if(2^i -1-i >= n)
        r = i;  
        break;
    end
end
% ������λ���ľ���B
B=zeros(n,r);
for i = 1:n
    t= dec2bin(i,r);
    for j=1:r
        B(i,j)=bin2dec(t(j));
    end
end
num=M*B;
num=mod(num,2);
pos=0;
for i=1:r
    pos=pos*2+num(i);
end
end