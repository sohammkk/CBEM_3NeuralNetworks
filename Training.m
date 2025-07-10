clc;clear;

input_nodes=784;
hidden_nodes=100; %increasing hidden nodes increases accuracy and training time (and vice versa)
output_nodes=10;
learning_rate=0.2;

%intialize neural network
network1=neuralNetwork(input_nodes,hidden_nodes,output_nodes,learning_rate);
%load("Trained_models\trainedNetwork.mat"); %uncomment if training on same network
disp("Training in progress....");
tic;
% Load the MNIST CSV file
filename= fullfile('datasets','mnist_train.csv');
data = readmatrix(filename);


%train
for i = 1:size(data,1)
    %preparing values using correction
    inputs = ((data(i,2:end) / 255.0)*0.99+0.01)';
    n=data(i,1);
    target = ones(10,1) ./ 100;
    target(n+1,1)=0.99;
    network1=network1.train(inputs, target);
end
fprintf("Time taken: %.1f s\n",toc);
disp("Saving in progress....")
%saving the trained model
save('Trained_models\trainedNetwork.mat', 'network1');

disp("done");


