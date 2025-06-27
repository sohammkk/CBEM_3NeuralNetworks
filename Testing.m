clear;
clc;
error_sum=0;
correct=0;
%loading trained model
load("Trained_models\trainedNetwork.mat");
%network_test = neuralNetwork(784,100,10,0.5);
%loading test file
filename= fullfile('datasets','mnist_test.csv');
data = readmatrix(filename);
l=size(data,1);
%testing


for i = 1:l
    inputs = ((data(i,2:end) / 255.0)*0.99+0.01)';
    n=data(i,1);
    target = ones(10,1) ./ 100;
    target(n+1,1)=0.99;
    [err,corr]=network1.test(inputs,target);
    error_sum = error_sum + err;
    correct=correct + corr;
end


fprintf("Correctness of our Neural Network: %.2f%% \n",(correct/l)*100);
fprintf("Mean Error deviation: %.2f\n", error_sum/l);
disp('End');