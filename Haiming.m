function [H0,H1] = Haiming(Data)
% ��������    
% M : ����   H : ��������(H0ż;H1��)
% Data = '10011101';
k = length(Data);
for i = 1 : k
    M(i) = str2num(Data(i));
end
% ��У��λ����2^r -1>=k+r
for i = 0:1000
    if(2^i -1-i >= k)
        r = i;  
        break;
    end
end
% ������ʼ�ı�������H��У��λȫΪ1
n = k + r;                         %���볤��
H=zeros(1,n);                      %����Ľ������
for i=1:r                          %У��λȫ��Ϊ1
    H(2^(i-1))=1;
end
j=1;
for i=1:n                          %����ԭʼ����Data
    if (H(i)==0)
        H(i)=M(j);
        j=j+1;
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
%У��1�ĸ���,���޸�У��λ
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
 % disp(['żУ��ʱ�������ĺ�����Ϊ��',num2str(H0)]);
 % disp(['��У��ʱ�������ĺ�����Ϊ��',num2str(H1)]);
end

   
 
 

