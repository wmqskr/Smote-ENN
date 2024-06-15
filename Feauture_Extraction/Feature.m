% Feature extraction, pass in positive and negative samples, assign label tags after feature extraction and save
% Clear environment variables
close all;
clear;
clc;
format compact

% Kmer
% system('python ./Pse-in-One-2.0/nac.pyc ./Temp_data/3133p_s.txt Protein Kmer -k 2 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% system('python ./Pse-in-One-2.0/nac.pyc ./Temp_data/3157n_s.txt Protein Kmer -k 2 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% system('python ./Pse-in-One-2.0/nac.pyc ./Temp_data/1360p_s.txt Protein Kmer -k 1 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% system('python ./Pse-in-One-2.0/nac.pyc ./Temp_data/1336n_s.txt Protein Kmer -k 1 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% DR
system('python2715 ../Pse-in-One-2.0/nac.py ../Data/Dataset1/775positive_samples_cleaned.txt Protein DR -max_dis 1 -f tab -labels 0 -out ../Data/Processed_Data/775pos.txt');
system('python2715 ../Pse-in-One-2.0/nac.py ../Data/Dataset1/17807negative_samples_cleaned.txt Protein DR -max_dis 1 -f tab -labels 0 -out ../Data/Processed_Data/17807neg.txt');
% system('python ./Pse-in-One-2.0/nac.pyc ./Temp_data/1360p_s.txt Protein DR -max_dis 4 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% system('python ./Pse-in-One-2.0/nac.pyc ./Temp_data/1336n_s.txt Protein DR -max_dis 4 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% Distance Pair
% system('python ./Pse-in-One-2.0/nac.pyc ./Temp_data/3133p_s.txt Protein DR -max_dis 3 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% system('python ./Pse-in-One-2.0/nac.pyc ./Temp_data/3157n_s.txt Protein DR -max_dis 3 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% system('python ./Pse-in-One-2.0/nac.pyc ./Temp_data/Pos_samples.txt Protein DP -max_dis 4 -cp cp_19 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% system('python ./Pse-in-One-2.0/nac.pyc ./Temp_data/Neg_samples.txt Protein DP -max_dis 4 -cp cp_19 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% Missing
% PC-PseAAC-General Missing file
% system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Pos_samples.txt Protein PC-PseAAC-General -i propChosen.txt -lamada 2 -w 0.1 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Neg_samples.txt Protein PC-PseAAC-General -i propChosen.txt -lamada 2 -w 0.1 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Pos_samples.txt Protein PC-PseAAC-General -i propChosen.txt -lamada 2 -w 0.1  -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Neg_samples.txt Protein PC-PseAAC-General -i propChosen.txt -lamada 2 -w 0.1  -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% Missing
% SC-PseAAC-General Missing file
% system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Pos_samples.txt Protein SC-PseAAC-General -i propChosen.txt -lamada 2 -w 0.1 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Neg_samples.txt Protein SC-PseAAC-General -i propChosen.txt -lamada 2 -w 0.1 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Pos_samples.txt Protein SC-PseAAC-General -i propChosen.txt -lamada 2 -w 0.1  -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
% system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Neg_samples.txt Protein SC-PseAAC-General -i propChosen.txt -lamada 2 -w 0.1  -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% PC-PseAAC
system('python ./Pse-in-One/psee.pyc ./Temp_data/Pos_samples.txt Protein  -lamada 2 -w 0.1 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Neg_samples.txt Protein PC-PseAAC -lamada 2 -w 0.1 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% SC-PseAAC
system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Pos_samples.txt Protein SC-PseAAC -lamada 2 -w 0.1 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
system('python ./Pse-in-One-2.0/psee.pyc ./Temp_data/Neg_samples.txt Protein SC-PseAAC -lamada 2 -w 0.1 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% PDT?????
system('python ./Pse-in-One-2.0/profile.py ./Temp_data/Pos_samples.txt Protein PDT -lamada 2 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
system('python ./Pse-in-One-2.0/profile.py ./Temp_data/Neg_samples.txt Protein PDT -lamada 2 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% PDT-Profile?????
system('python ./Pse-in-One-2.0/profile.pyc ./Temp_data/Pos_samples.txt Protein PDT-Profile -lamada 1 -n 1 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
system('python ./Pse-in-One-2.0/profile.pyc ./Temp_data/Neg_samples.txt Protein PDT-Profile -lamada 1 -n 1 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% Top-n-gram?????
system('python ./Pse-in-One-2.0/profile.py ./Temp_data/Pos_samples.txt Protein Top-n-gram -n 1 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
system('python ./Pse-in-One-2.0/profile.py ./Temp_data/Neg_samples.txt Protein Top-n-gram -n 1 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');
% DT?????
system('python ./Pse-in-One-2.0/profile.py ./Temp_data/Pos_samples.txt Protein DT -max_dis 1 -f tab -labels 0 -out ./Temp_data/PCBmark_pos.txt');
system('python ./Pse-in-One-2.0/profile.py ./Temp_data/Neg_samples.txt Protein DT -max_dis 1 -f tab -labels 0 -out ./Temp_data/PCBmark_neg.txt');

filename = '../Data/Dataset1/775positive_samples.txt'; % Path of the positive sample txt file
filename1 = '../Data/Dataset1/17807negative_samples.txt'; % Path of the negative sample txt file
fileID = fopen(filename, 'r');
fileID1 = fopen(filename1, 'r');
data = textscan(fileID, '%s', 'Delimiter', '\n'); % Read each line of data with newline as delimiter
data1 = textscan(fileID1, '%s', 'Delimiter', '\n'); % Read each line of data with newline as delimiter
lines = data{1};
lines1 = data1{1};
fclose(fileID);
fclose(fileID1);

% Count the number of data in each line of positive sample
num_elements = zeros(length(lines), 1);
for i = 1:length(lines)
    line_cells = strsplit(lines{i}); % Split each line of text into an array of cells
    num_elements(i) = length(line_cells); % Get the number of elements
end
% Count the number of data in each line of negative sample
num_elements1 = zeros(length(lines1), 1);
for i = 1:length(lines1)
    line_cells1 = strsplit(lines1{i}); % Split each line of text into an array of cells
    num_elements1(i) = length(line_cells1); % Get the number of elements
end
% Display the number of data in each line
disp('Number of data in each line for positive sample:');
%disp(num_elements);
disp('Number of data in each line for negative sample:');
%disp(num_elements1);
% Read txt files
data = readtable('../Data/Processed_Data/775pos.txt', 'Delimiter', '\t');
data1 = readtable('../Data/Processed_Data/17807neg.txt', 'Delimiter', '\t');
% Create 'label' column and assign value of "1"
data.label = repmat("1", height(data), 1);
% Create 'label' column and assign value of "0"
data1.label = repmat("0", height(data1), 1);
% Save txt data as csv files
writetable(data, '../Data/Processed_Data/775pos.csv');
writetable(data1, '../Data/Processed_Data/17807neg.csv');

% Merge the positive and negative sample datasets obtained after feature extraction
% Read the first CSV file
data1 = readtable('../Data/Processed_Data/775pos.csv');
% Read the second CSV file
data2 = readtable('../Data/Processed_Data/17807neg.csv');
% Combine the two tables
mergedData = [data1; data2];
% Save the merged data as a new CSV file
writetable(mergedData, '../Data/Processed_Data/DR_Test.csv');
% End of program
disp('over');