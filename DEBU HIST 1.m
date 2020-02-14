clc; clear all; close all; warning off;

%orignal image
img=imread('pout.tif');
imshow(img)
subplot(3,1,1)
imhist(img), title('Histogram of orignal good contrat image');

%generating dark image
D=0.35*img;
subplot(3,1,2)
imhist(D), title('Histogram of dark image');

%generatin brighter image
B=2*img;
subplot(3,1,3)
imhist(B), title('Histogram of brighter image');

figure, imshow(img), title('orignal good contrast image');
figure, imshow(D), title('dark image');
figure, imshow(B), title('bright image');