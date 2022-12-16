B_1 = imread("Bills\1 Dollar Bill.jpg");
B_5 = imread("Bills\5 Dollar Bill.jpg");
B_10 = imread("Bills\10 Dollar Bill.jpg");
B_20 = imread("Bills\20 Dollar Bill.jpg");
B_50 = imread("Bills\50 Dollar Bill.jpg");
B_100 = imread("Bills\100 Dollar Bill.jpg");

B_1_gF = num2cell(double(get_Feature(B_1)));
B_5_gF = num2cell(double(get_Feature(B_5)));
B_10_gF = num2cell(double(get_Feature(B_10)));
B_20_gF = num2cell(double(get_Feature(B_20)));
B_50_gF = num2cell(double(get_Feature(B_50)));
B_100_gF = num2cell(double(get_Feature(B_100)));

B_1_message = "1 Dollar Bill";
B_5_message = "5 Dollar Bill";
B_10_message = "10 Dollar Bill";
B_20_message = "20 Dollar Bill";
B_50_message = "50 Dollar Bill";
B_100_message = "100 Dollar Bill";

Bill_Data = {B_1_gF B_1_message; B_5_gF B_5_message; B_10_gF B_10_message; 
    B_20_gF B_20_message; B_50_gF B_50_message; B_100_gF B_100_message};
qty = 6;

save('DB_Bills.mat', 'Bill_Data');