# 基于Matlab的GUI的CRC编码译码和海明编码译码
# CRC.m:        
function [Crccode,R] = CRC(Data,GX)
% CRC编码    
% Data : 数据		GX : 生成多项式		Crccode : 编码后数据		R : 余数

# CRC2.m:
function [R , RR] = CRC2(Data,GX)
% CRC译码   
% Data : 数据		GX : 生成多项式     R : 余数

# Haiming.m:
function [H0,H1] = Haiming(Data)
% 海明编码    
% Data : 数据   H : 编码数组(H0偶;H1奇)

# Haiming2.m:
function [pos] = Haiming2(Data)
% 海明译码    
% Data : 数据   nun : 错误码位数(二进制)   pos : 错误位置

# Check.m:
function [C] = Check(Data)
% 检查输入是否合法
% C=0，输入正确。

# CODE.m:
% 图形界面
