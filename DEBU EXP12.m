clc;clear all;
i=imread('cameraman.tif');
H=fspecial('disk',5);
blurredimage=imfilter(i,H,'replicate');
s=s*0.3;
deblurred=i+s;
figure,imshow(i), figure, imshow(blurredimage), figure, imshow(deblurred);