function noisyImage = MakeGaussianNoise(InputImage, ErrorRatio)
    noisyImage = double(InputImage);
    randomValues = randn(size(InputImage));
    valuesMULerror = randomValues * ErrorRatio;

    noisyImage =  noisyImage + valuesMULerror;
    %noisyImage = uint8(noisyImage);
end