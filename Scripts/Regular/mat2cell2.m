%% mat2cell2.m 
%a simple container for options to define how on wants to split a Matrix using inbuilt mat2cell into Cell Arrays
%
%%  Inputs:
%
%       Matrix = The input data
%       Direction = The way the matrix is to be split
%           'r'      =   splits a 2D array into the rows n x 1
%           'c'   =   splits a 2D array into columns 1 x n
%           'f'     =   splits a 3D matrix into frame 1 x 1 x n
%           'eframe'    =   splits a 3D matrix 2D element wise n x n x 1
%%  Outputs:
%       dataout  =    The cell array returned
%%  Example:
%
%       data=zeros(20,20,20);
%       mat2cell2(data,'eframe')
%%
function [dataout]=mat2cell2(Matrix,Direction)

if Direction=="r"
dataout=mat2cell(Matrix,ones(size(Matrix,1),1),size(Matrix,2));
elseif Direction=="c"
dataout=mat2cell(Matrix,size(Matrix,1),ones(size(Matrix,2),1));
elseif Direction=="f"
dataout=mat2cell(Matrix,size(Matrix,1),size(Matrix,2),ones(1,size(Matrix,3)));
elseif Direction=="eframe"
 dataout=mat2cell(Matrix,ones(size(Matrix,1),1),ones(size(Matrix,2),1),size(Matrix,3));
   
end