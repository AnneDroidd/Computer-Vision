a=imread("catalpa-bignonioides-leaf.jpg");
imshow(a);
% CONVERTING 3D COLOUR IMAGE TO 2D GREYSCALE
I=rgb2gray(a);
imshow(I)
% ROBERT EDGE DETECTION
figure(1)
imshow(edge(I,'Roberts'))
title('Roberts Edge Detection')
% SOBEL EDGE DETECTION
figure(2)
imshow(edge(I,'Sobel'));
title('Sobel Edge Detection');
% PREWITT EDGE DETECTION
figure(3)
imshow(edge(I,'Prewitt'));
title('Prewitt Edge Detection');
% CANNY EDGE DETECTION
figure(4)
imshow(edge(I,'Canny'));
title('Canny Edge detection');
