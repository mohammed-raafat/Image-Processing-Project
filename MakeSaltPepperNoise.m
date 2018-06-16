function noisyImage = MakeSaltPepperNoise(InputImage, ErrorRatio)
    noisyImage = InputImage;
    F = round(rand());%randi([0,1],1,1);
    N = round(ErrorRatio*numel(InputImage)); 
    R = randi([0 numel(InputImage)],N,1);

    for i = 1:length(R)
        if(F == 0)
            try
                noisyImage(R(i)) = 0;        %Generates Black Pixel

            catch
                return;
            end
        else
            try
                noisyImage(R(i)) = 255;      %Generates White Pixel

            catch
                return;
            end
        end
        F = round(rand());%randi([0,1],1,1);
    end

    noisyImage = uint8(noisyImage);
end