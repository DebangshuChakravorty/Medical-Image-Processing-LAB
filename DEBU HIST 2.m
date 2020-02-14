clc; clear all; close all; warning off;
A=imread('cameraman.tif');
figure,imshow(A)
title('orignal image');
a=size(A)
H=zeros(1,a(1));
for i=1:a(1);
    for j= 1:a(2);
        H(1,A(i,j))=H(1,A(i,j))+1;
    end
end
figure, stem(H)
title('HISTOGRAM')