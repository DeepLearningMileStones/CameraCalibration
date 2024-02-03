# CameraCalibration
Brief Overview of purpose of experiment 
The primary objective of this experiment was to comprehensively understand and extract both 
intrinsic and extrinsic camera parameters. This included the transformation of the world 
coordinate system into the image pixel coordinate system, a crucial step in computer vision and 
image processing.  
An integral aspect of the investigation was the acknowledgment of the impact of imperfect 
lenses, leading to distortions in captured images. In this experiment, I employed chessboard 
images that incorporated distortions. I calculated the projection matrix parameters and 
distortion coefficients using these images, encompassing both intrinsic and extrinsic factors. 
Subsequently, I utilized these distortion coefficients and parameters to undistort the images. 
The undistorted images were then intentionally distorted using predefined acceptable values for 
distortion parameters. After this distortion, the images were once again undistorted to extract 
the distortion parameters. The obtained distortion parameters were then compared with the 
initial distortion parameters used to distort the images in the first phase of the experiment.  
The experimental dataset comprises 20 images, each featuring a chessboard pattern. Notably, 
the observed radial distortion exhibits a distinctive barrel-type distortion. In each image, the 
chessboard is characterized by 11 inside corners along the x-direction and 7 corners along the y
direction, creating a grid-like pattern. The presence of this specific distortion type is visually 
evident, emphasizing the significance of the distortion parameters in addressing the non
uniformities in the images.
