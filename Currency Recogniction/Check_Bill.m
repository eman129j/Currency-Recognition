function Check_Bill( im )
% This function is used to take the input image for testing
% The input image is preprocessed and its features are extracted
% The features are compared with the sample images in the database and the output is given
clc;
if (exist('DB_Bills.mat')==2)

    %featureextraction
    db = get_Feature(im);

    load('DB_Bills.mat','-mat');

    % this is used to compare the image and the Bill_Data
    sum = zeros(length(Bill_Data), 1);

    for i = 1:length(Bill_Data)
        for j = 1:length(Bill_Data{1})
            sum(i) = abs((db(j) - Bill_Data{i}{j})/Bill_Data{i}{j}) + sum(i);
        end
    end

    % checking the percent of the bill to see what bill it is
    for i = 1:length(sum)
        if sum(i) <= .10
            msgbox(Bill_Data{i, 2});
            break;
        elseif i == 6 && sum(i) > .10
            msgbox("Not in Database");
        end
    end
end