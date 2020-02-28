clc; clear all; close all;
i=imread('cameraman.tif');
i1=imnoise(i,'gaussian', .01,.02);
figure,imshow(i1);
i2=imnoise(i,'salt & pepper', 0.05);
figure,imshow(i2);
i3=imnoise(i,'speckle', 0.05);
figure,imshow(i3);


%8.2
m1=1/9*ones(3,3);
m2=1/25*ones(5,5);

filtered001=conv2(i,m1);
figure,imshow(filtered001,[]);
filtered002=conv2(i,m2);
figure,imshow(filtered002,[]);


filtered1=conv2(i1,m1);
figure,imshow(filtered1,[]);
filtered2=conv2(i2,m1);
figure,imshow(filtered2,[]);
filtered3=conv2(i3,m1);
figure,imshow(filtered3,[]);

filtered01=conv2(i1,m2);
figure,imshow(filtered01,[]);
filtered02=conv2(i2,m2);
figure,imshow(filtered02,[]);
filtered03=conv2(i3,m2);
figure,imshow(filtered03,[]);


%8.3
filtered1=medfilt2(i1);
figure,imshow(filtered1);

filtered2=medfilt2(i2);
figure,imshow(filtered2);

filtered3=medfilt2(i3);
figure,imshow(filtered3);