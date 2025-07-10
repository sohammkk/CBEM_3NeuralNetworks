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
    end

    methods
        function self = neuralNetwork(inputnodes, hiddennodes, outputnodes, learningrate)
            self.inodes=inputnodes; 
            self.hnodes=hiddennodes;
            self.onodes=outputnodes;
            self.lr=learningrate;
            %Xavier initialization
            self.w_ih=randn(self.hnodes,self.inodes)/ sqrt(self.inodes);
            self.w_ho=randn(self.onodes,self.hnodes)/ sqrt(self.hnodes);
            
            %self.w_ih=zeros(self.hnodes,self.inodes) *0.5;            
            %only guessing 0 when weights=0.5 and 1 when weights=0 (same guess with same weights)
            %self.w_ho=zeros(self.onodes,self.hnodes) *0.5;
        end
            
        % Query the neural network. The function takes a vector of inputs
        % and computes the outputs, i.e. a "prediction".
        function [final_outputs,hidden_output] = query(self, inputs)
            hidden_output=self.w_ih * (inputs);
            hidden_output = self.actfun(hidden_output);
            final_outputs = self.w_ho * hidden_output;
            final_outputs = self.actfun(final_outputs);
        end

        % Train the neural network. This function learns the link weights
        % from the training data.
        function self = train(self, inputs, targets)
            %error calculation
           [final,hidden]=self.query(inputs);
           output_error=targets-final;
           hidden_error=self.w_ho' * output_error;
          
           %training (changing weights)
           
           self.w_ho=self.w_ho + (self.lr*(output_error .* final .* (1-final))) * hidden';
           self.w_ih= self.w_ih + (self.lr*(hidden_error .* hidden .* (1-hidden))) * inputs';
        end

        %testing function
        function correctness = test(self, inputs, target)
            [final,~]=self.query(inputs);
            %guess correctness
            [~,target_number]=max(target);
            [~,guessed_number]=max(final);
            correctness =(target_number==guessed_number);
               
        end
    
    end

    methods(Static)
        function out = actfun(x)
            out=1./(1+exp(-x));
        end
    end

end