%������ȡ������������������ȡ������label��ǩ������
% ��ջ�������
close all;
clear;
clc;
format compact

% % %Kmer
% system('python ./Pse-in-One-2.0/nac.pyc ./Temp_data/3133p_s.txt Protein Kmer -k 2 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% system('python ./Pse-in-One-2.0/nac.pyc ./Temp_data/3157n_s.txt Protein Kmer -k 2 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% system('python ./Pse-in-One-2.0/nac.pyc ./Temp_data/1360p_s.txt Protein Kmer -k 1 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% system('python ./Pse-in-One-2.0/nac.pyc ./Temp_data/1336n_s.txt Protein Kmer -k 1 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% %DR
system('python2715 ../Pse-in-One-2.0/nac.py ../Data/Dataset1/775positive_samples_cleaned.txt Protein DR -max_dis 1 -f tab -labels 0 -out ../Data/Processed_Data/775pos.txt');
system('python2715 ../Pse-in-One-2.0/nac.py ../Data/Dataset1/17807negative_samples_cleaned.txt Protein DR -max_dis 1 -f tab -labels 0 -out ../Data/Processed_Data/17807neg.txt');
% system('python ./Pse-in-One-2.0/nac.pyc ./Temp_data/1360p_s.txt Protein DR -max_dis 4 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% system('python ./Pse-in-One-2.0/nac.pyc ./Temp_data/1336n_s.txt Protein DR -max_dis 4 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
%Distance Pair
% system('python ./Pse-in-One-2.0/nac.pyc ./Temp_data/3133p_s.txt Protein DR -max_dis 3 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% system('python ./Pse-in-One-2.0/nac.pyc ./Temp_data/3157n_s.txt Protein DR -max_dis 3 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% system('python ./Pse-in-One-2.0/nac.pyc ./Temp_data/Pos_samples.txt Protein DP -max_dis 4 -cp cp_19 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% system('python ./Pse-in-One-2.0/nac.pyc ./Temp_data/Neg_samples.txt Protein DP -max_dis 4 -cp cp_19 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
%ȱʧ
% %PC-PseAAC-General ȱʧ�ļ�
% % system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Pos_samples.txt Protein PC-PseAAC-General -i propChosen.txt -lamada 2 -w 0.1 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% % system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Neg_samples.txt Protein PC-PseAAC-General -i propChosen.txt -lamada 2 -w 0.1 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% % system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Pos_samples.txt Protein PC-PseAAC-General -i propChosen.txt -lamada 2 -w 0.1  -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% % system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Neg_samples.txt Protein PC-PseAAC-General -i propChosen.txt -lamada 2 -w 0.1  -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
%ȱʧ
% %SC-PseAAC-General ȱʧ�ļ�
% % system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Pos_samples.txt Protein SC-PseAAC-General -i propChosen.txt -lamada 2 -w 0.1 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% % system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Neg_samples.txt Protein SC-PseAAC-General -i propChosen.txt -lamada 2 -w 0.1 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% % system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Pos_samples.txt Protein SC-PseAAC-General -i propChosen.txt -lamada 2 -w 0.1  -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% % system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Neg_samples.txt Protein SC-PseAAC-General -i propChosen.txt -lamada 2 -w 0.1  -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% %PC-PseAAC
% system('python ./Pse-in-One/psee.pyc ./Temp_data/Pos_samples.txt Protein  -lamada 2 -w 0.1 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Neg_samples.txt Protein PC-PseAAC -lamada 2 -w 0.1 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% %SC-PseAAC
% system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Pos_samples.txt Protein SC-PseAAC -lamada 2 -w 0.1 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Neg_samples.txt Protein SC-PseAAC -lamada 2 -w 0.1 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% %PDT��������
% system('python ./Pse-in-One-2.0/profile.py ./Temp_data/Pos_samples.txt Protein PDT -lamada 2 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% system('python ./Pse-in-One-2.0/profile.py ./Temp_data/Neg_samples.txt Protein PDT -lamada 2 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% %PDT-Profile?????
% system('python ./Pse-in-One-2.0/profile.pyc ./Temp_data/Pos_samples.txt Protein PDT-Profile -lamada 1 -n 1 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% system('python ./Pse-in-One-2.0/profile.pyc ./Temp_data/Neg_samples.txt Protein PDT-Profile -lamada 1 -n 1 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% %Top-n-gram?????
% system('python ./Pse-in-One-2.0/profile.py ./Temp_data/Pos_samples.txt Protein Top-n-gram -n 1 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% system('python ./Pse-in-One-2.0/profile.py ./Temp_data/Neg_samples.txt Protein Top-n-gram -n 1 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% %DT?????
% system('python ./Pse-in-One-2.0/profile.py ./Temp_data/Pos_samples.txt Protein DT -max_dis 1 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% system('python ./Pse-in-One-2.0/profile.py ./Temp_data/Neg_samples.txt Protein DT -max_dis 1 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');


filename = '../Data/Dataset1/775positive_samples.txt'; % ��������txt�ļ�·��
filename1 = '../Data/Dataset1/17807negative_samples.txt'; %��������txt�ļ�·��
fileID = fopen(filename, 'r');
fileID1 = fopen(filename1, 'r');
data = textscan(fileID, '%s', 'Delimiter', '\n'); % �Ի��з�Ϊ�ָ�����ȡÿһ������
data1 = textscan(fileID1, '%s', 'Delimiter', '\n'); % �Ի��з�Ϊ�ָ�����ȡÿһ������
lines = data{1};
lines1 = data1{1};
fclose(fileID);
fclose(fileID1);

% ͳ��������ÿһ�е���������
num_elements = zeros(length(lines), 1);
for i = 1:length(lines)
    line_cells = strsplit(lines{i}); % ��һ���ı����Ϊ��Ԫ������
    num_elements(i) = length(line_cells); % ��ȡԪ������
end
% ͳ�Ƹ�����ÿһ�е���������
num_elements1 = zeros(length(lines1), 1);
for i = 1:length(lines1)
    line_cells1 = strsplit(lines1{i}); % ��һ���ı����Ϊ��Ԫ������
    num_elements1(i) = length(line_cells1); % ��ȡԪ������
end
% ��ʾÿһ�е���������
disp('������ÿһ�е�����������');
%disp(num_elements);
disp('������ÿһ�е�����������');
%disp(num_elements1);
% ��ȡtxt�ļ�
data = readtable('../Data/Processed_Data/775pos.txt', 'Delimiter', '\t');
data1 = readtable('../Data/Processed_Data/17807neg.txt', 'Delimiter', '\t');
% ����'label'�в���ֵΪ"1"
data.label = repmat("1", height(data), 1);
% ����'label'�в���ֵΪ"0"
data1.label = repmat("0", height(data1), 1);
% ��txt���ݱ���Ϊcsv�ļ�
writetable(data, '../Data/Processed_Data/775pos.csv');
writetable(data1, '../Data/Processed_Data/17807neg.csv');

%�ϲ�������ȡ��õ��������������ݼ�
% ��ȡ��һ��CSV�ļ�
data1 = readtable('../Data/Processed_Data/775pos.csv');
% ��ȡ�ڶ���CSV�ļ�
data2 = readtable('../Data/Processed_Data/17807neg.csv');
% �ϲ��������ݱ�
mergedData = [data1; data2];
% ���ϲ�������ݱ���Ϊ�µ� CSV �ļ�
writetable(mergedData, '../Data/Processed_Data/DR_Test.csv');
%�������
disp('over');




