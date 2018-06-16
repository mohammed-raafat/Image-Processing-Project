originalImage = imread('C:\image.jpg');
grayImage = rgb2gray(originalImage);

noisyImage1 = MakeSaltPepperNoise(grayImage, 0.15);
noisyImage2 = MakeGaussianNoise(grayImage, 0.15);

subplot(2,2,1)
imshow(originalImage);
title('Original Image');

subplot(2,2,2)
imshow(grayImage);
title('Gray Image');

subplot(2,2,3)
imshow(noisyImage1);
title('Salt & Pepper Noise');

subplot(2,2,4)
imshow(noisyImage2);
title('Gaussian Noise');