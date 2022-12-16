function features = get_Feature( img )
% The three features are stored as a row matrix
%color feature
fet1 = double(col_RGB(img));
%edge feature
fet2 = double(edgehist(img));
%texture feature
%glcm-gray level occurrence matrix
glcm = graycomatrix(rgb2gray(img));

% figure, imshow(rgb2gray(img));

fet3 = double(glcm(:));
features = [fet1;fet2;fet3];

end