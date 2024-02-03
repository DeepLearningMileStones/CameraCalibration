distCoeffs = distCoeff;
KMat = params.K;

path = 'C:\Users\dell\camcal\UnDistortedImages2'
addpath(path);
img =  imread(fullfile("1. NewImage.jpg"))

% NewImage = DistImage(img, KMat, distCoeffs)
[xd, yd] = DistPoint(0, 0 , KMat, distCoeffs) 


function [projPointx, projPointy] = DistPoint(u, v, CamMtx, dist)
    fx = CamMtx(1,1);
    fy = CamMtx(2,2);
    cx = CamMtx(1,3);
    cy = CamMtx(2,3);
    k1 = dist(1);
    k2 = dist(2);
    R = sqrt(((u-cx)/fx)^2 + ((v-cy)/fy)^2);
    projPointx = u + (u-cx)*(R^2)*k1 + (u-cx)*(R^4)*k2;
    projPointy = v + (v-cy)*(R^2)*k1 + (v-cy)*(R^4)*k2;
    
end

% function distImage = DistImage(img, KMat, distCoeffs)
%     [height, width, channels] = size(img)
%     emptyImage = zeros(size(img))
%     for i = 1:height
%         for j = 1:width
%             [uhat, vhat] = DistPoint(j, i, KMat, distCoeffs)
%             uhat = round(uhat)
%             vhat = round(vhat)
%             emptyImage(uhat, vhat, :) = img(j, i, :)
%         end
% 
%     end
%     distImage = emptyImage

% end


