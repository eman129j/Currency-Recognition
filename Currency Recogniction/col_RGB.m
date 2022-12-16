function img_val = col_RGB(img)
%   Detailed explanation goes here
R = double(img(:, :, 1));
G = double(img(:, :, 2));
B = double(img(:, :, 3));

%find mean,color variance and color skewness for each channel
colfet(1)= mean(R(:));
colfet(2) = std(R(:))^2;
colfet(3)= skewness(R(:));
colfet(4) = mean(G(:));
colfet(5) = std(G(:))^2;
colfet(6) = skewness(G(:));
colfet(7) = mean(B(:));
colfet(8) = std(B(:))^2;
colfet(9) = skewness(B(:));
img_val = colfet';
end