%
function [PPT1,PPT2] =AAC()
clear;clc;
[hp positive]=fastaread('1360p_s.txt');%trainpositive.txt
Np=length(positive);%number of positive samples
M=length(positive{1,1});
x=(M+1)/2;
%中间位置的“T”去掉
for i=1:Np
   positive{1,i}(x)='';
  %  s=positive{1,i};
  %  positive{1,i}=s(6:19);
end
[hn negative]=fastaread('1336n_s.txt');
Nn=length(negative);%number of negative samples
%中间位置的“T”去掉
for i=1:Nn
   negative{1,i}(x)='';
  %  s=positive{1,i};
  %  positive{1,i}=s(6:19);
end
AA='ACDEFGHIKLMNPQRSTVWY';


PPT1=zeros(Np,20);

for m=1:Np
    M=length(positive{1,m});
     for j=1:M
        t=positive{1,m}(j);
        k=strfind(AA,t);
        PPT1(m,k)=PPT1(m,k)+1;
     end
    PPT1(m,:)=PPT1(m,:)/M;
end


PPT2=zeros(Nn,20);

for m=1:Nn
    M=length(negative{1,m});
     for j=1:M
        t=negative{1,m}(j);
        k=strfind(AA,t);
        PPT2(m,k)=PPT2(m,k)+1;
     end
     PPT2(m,:)=PPT2(m,:)/M;
end
dlmwrite('PPT1.txt', PPT1, 'delimiter', '\t');
dlmwrite('PPT2.txt', PPT2, 'delimiter', '\t');

% 读取txt文件
data = readtable('PPT1.txt', 'Delimiter', '\t');
data1 = readtable('PPT2.txt', 'Delimiter', '\t');
% 创建'label'列并赋值为"1"
data.label = repmat("1", height(data), 1);
% 创建'label'列并赋值为"0"
data1.label = repmat("0", height(data1), 1);
% 将txt数据保存为csv文件
writetable(data, '775pos.csv');
writetable(data1, '17807neg.csv');

%合并特征提取后得到的正负样本数据集
% 读取第一个CSV文件
data1 = readtable('775pos.csv');
% 读取第二个CSV文件
data2 = readtable('17807neg.csv');
% 合并两个数据表
mergedData = [data1; data2];
% 将合并后的数据保存为新的 CSV 文件
writetable(mergedData, 'AAC_test.csv');
%程序结束
disp('over');


