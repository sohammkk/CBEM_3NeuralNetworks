classdef neuralNetwork
    % neuralNetwork: Class for a three layer nN
    % A detailed explanation goes here ;-)

    properties
        inodes; % number of input nodes
        hnodes; % number of hidden nodes
        onodes; % number of output nodes
        lr;     % learning rate
        w_ih;   % link weights between input layer and hidden layer
        w_ho;   % link weights between hidden layer and output layer
<<<<<<< HEAD
        %extra
        b_ih;
        b_ho;
        lr_decay=0.85;
        %extra
=======
>>>>>>> 97b2190e9861b5356ab50a3cb8371ba60a705bd4
    end

    methods
        function self = neuralNetwork(inputnodes, hiddennodes, outputnodes, learningrate)
<<<<<<< HEAD
            self.inodes=inputnodes; 
            self.hnodes=hiddennodes;
            self.onodes=outputnodes;
            self.lr=learningrate;
            self.w_ih=randn(self.hnodes,self.inodes)/ sqrt(self.inodes);
            self.w_ho=randn(self.onodes,self.hnodes)/ sqrt(self.hnodes);
           %extra
           self.b_ih=zeros(self.hnodes,1);
           self.b_ho=zeros(self.onodes,1);
           %extra
=======
            % neuralNetwork: Construct an instance of this class
            % Your code goes here. 
            
>>>>>>> 97b2190e9861b5356ab50a3cb8371ba60a705bd4
        end
            
        % Query the neural network. The function takes a vector of inputs
        % and computes the outputs, i.e. a "prediction".
<<<<<<< HEAD
        function [final_outputs,hidden_output] = query(self, inputs)
            hidden_output=self.w_ih * (inputs) + self.b_ih; %extra
            hidden_output = self.actfun(hidden_output);
            final_outputs = self.w_ho * hidden_output + self.b_ho;%extra
            final_outputs = self.actfun(final_outputs);
            
            
=======
        function final_outputs = query(self, inputs)
            % your code goes here.
>>>>>>> 97b2190e9861b5356ab50a3cb8371ba60a705bd4
        end

        % Train the neural network. This function learns the link weights
        % from the training data.
        function self = train(self, inputs, targets)
<<<<<<< HEAD
            %error calculation
           [final,hidden]=self.query(inputs);
           output_error=targets-final;
           hidden_error=self.w_ho' * output_error;
          
           %training (changing weights)
           
           self.w_ho=self.w_ho + (self.lr*(output_error .* final .* (1-final))) * hidden';
           self.w_ih= self.w_ih + (self.lr*(hidden_error .* hidden .* (1-hidden))) * inputs';
           self.b_ih= self.b_ih + (self.lr*(hidden_error .* hidden .* (1-hidden))); %extra
           self.b_ho= self.b_ho + (self.lr*(output_error .* final .* (1-final))); %extra
           self.lr = self.lr * self.lr_decay; %extra
           
        end

        %testing function
        function [error,correctness] = test(self, inputs, target)
            [final,~]=self.query(inputs);
            %deviation
            error=target-final;
            error=mean(error);
            %guess correctness
            [~,target_number]=max(target);
            [~,guessed_number]=max(final);
            correctness =(target_number==guessed_number);
               
=======
            % your code goes here
>>>>>>> 97b2190e9861b5356ab50a3cb8371ba60a705bd4
        end
    
    end

    methods(Static)
        function out = actfun(x)
<<<<<<< HEAD
            out=1./(1+exp(-x));
        end
    end

end
=======
            % The code for the activation function goes here.
        end
    end

end
>>>>>>> 97b2190e9861b5356ab50a3cb8371ba60a705bd4
