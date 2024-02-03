path = 'C:\Users\dell\camcal\createdChessboardImagesWAffine';
addpath(path);
images = imageSet(path)
imageFileNames = images.ImageLocation;
[imagePoints, boardSize] = detectCheckerboardPoints(imageFileNames);

squareSizeInMM = 17;
worldPoints = generateCheckerboardPoints(boardSize,squareSizeInMM);
I = readimage(images,1); 
imageSize = [size(I, 1),size(I, 2)];
params = estimateCameraParameters(imagePoints,worldPoints, ...
                                  'ImageSize',imageSize,    ...
                                  NumRadialDistortionCoefficients=3, ...
                                  EstimateTangentialDistortion= true);

showReprojectionErrors(params);

figure;
showExtrinsics(params);

drawnow;
figure; 
imshow(imageFileNames{1}); 
hold on;
plot(imagePoints(:,1,1), imagePoints(:,2,1),'go');
plot(params.ReprojectedPoints(:,1,1),params.ReprojectedPoints(:,2,1),'r+');
legend('Detected Points','ReprojectedPoints');
hold off;