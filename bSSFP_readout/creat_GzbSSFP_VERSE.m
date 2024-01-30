function [ gz_1, rf, gz_2] = creat_GzbSSFP_VERSE(gz,rf, gzReph ,gz_1_Delay ,  sys)
% function [ gz_1, rf, gz_2] = creat_GzbSSFP_VERSE(gz,rf, gzReph ,gz_1_Delay ,  sys)
% Input: 
%       gz  - Slice selective gradient
%       rf  - RF excitation pulse 
%       gzReph - rephase SS gradient 
%       gz_1_Delay - Gz qith dlay 
%       sys - system with pulse info 
%
%
% Andreia S Gaspar @ IST/ISR 2021
%%
gz_1=mr.addGradients({gzReph,gz},'system',sys);
gz_1.delay = gz_1_Delay; % to be align with gx_2 calculated from max(mr.calcDuration(gx_2)-rf.delay,0);
gz_2=gzReph; 

end

