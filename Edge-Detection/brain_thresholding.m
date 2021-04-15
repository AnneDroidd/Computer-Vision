x=imread("brain.png");
imshow(x);
title("Original Greyscale image");

Id =x;
T = 0.5*(min(min(Id))+max(max(Id)));
deltaT = 0.001; % convergence criterion
done = false;
while ~done
  g = Id >= T;
  Tnext = 0.5*(mean(Id(g)) + mean(Id(~g)));
  done = abs(T - Tnext) < deltaT;
  T = Tnext;
end
figure;
d=imbinarize(x,T);
imshow(d);
title('Global Thresholding using userdefined code');
