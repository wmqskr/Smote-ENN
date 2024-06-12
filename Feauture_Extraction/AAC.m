%
function [PPT1,PPT2] =AAC()
clear;clc;
[hp positive]=fastaread('1360p_s.txt');%trainpositive.txt
Np=length(positive);%number of positive samples
M=length(positive{1,1});
x=(M+1)/2;
%�м�λ�õġ�T��ȥ��
for i=1:Np
   positive{1,i}(x)='';
  %  s=positive{1,i};
  %  positive{1,i}=s(6:19);
end
[hn negative]=fastaread('1336n_s.txt');
Nn=length(negative);%number of negative samples
%�м�λ�õġ�T��ȥ��
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

% ��ȡtxt�ļ�
data = readtable('PPT1.txt', 'Delimiter', '\t');
data1 = readtable('PPT2.txt', 'Delimiter', '\t');
% ����'label'�в���ֵΪ"1"
data.label = repmat("1", height(data), 1);
% ����'label'�в���ֵΪ"0"
data1.label = repmat("0", height(data1), 1);
% ��txt���ݱ���Ϊcsv�ļ�
writetable(data, '775pos.csv');
writetable(data1, '17807neg.csv');

%�ϲ�������ȡ��õ��������������ݼ�
% ��ȡ��һ��CSV�ļ�
data1 = readtable('775pos.csv');
% ��ȡ�ڶ���CSV�ļ�
data2 = readtable('17807neg.csv');
% �ϲ��������ݱ�
mergedData = [data1; data2];
% ���ϲ�������ݱ���Ϊ�µ� CSV �ļ�
writetable(mergedData, 'AAC_test.csv');
%�������
disp('over');


