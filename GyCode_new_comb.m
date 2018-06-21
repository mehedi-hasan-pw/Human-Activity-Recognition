
clear all;
close all;
clc;
WINDOW_SIZE = 10*1000;
SLIDE = 4*1000;
walking_features = get_mat_new_comb('./FinalData/Train/TrainCombinedFile_walking.csv',WINDOW_SIZE,SLIDE,0);
sitting_features = get_mat_new_comb('./FinalData/Train/TrainCombinedFile_sitting.csv',WINDOW_SIZE,SLIDE,1);
laying_features  = get_mat_new_comb('./FinalData/Train/TrainCombinedFile_laying.csv',WINDOW_SIZE,SLIDE,2);
standing_features = get_mat_new_comb('./FinalData/Train/TrainCombinedFile_standing.csv',WINDOW_SIZE,SLIDE,3);
total_features = [walking_features;sitting_features;laying_features;standing_features];
total_features = [0:size(total_features,2)-1;total_features];
csvwrite('TrainData_10_4.csv',total_features);









