img=imread('pout.tif')
figure, imshow(img,[]);
figure, imhist(img); title('orignal histogram');

%histogram stretching
HS=imadjust(img);
figure, imshow(HS); title('Histogram Stretched Image');
figure, imshow(HS); title('Stretched Histogram');

%histogram equlzation
HE=histeq(img);
figure, imshow(HS); title('Histogram equalized image');
figure, imshow(HS); title('equalized histogram');
