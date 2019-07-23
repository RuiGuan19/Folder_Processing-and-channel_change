path = 'F:\map_data\NIR-RGB_file\';
% path1 = 'C:\Users\gr\Desktop\';
fileExt = '*.tif';
files = dir(fullfile(path,fileExt));
len = size(files,1);
for i=1:len
    fileName = strcat(path,files(i,1).name);
    image = imread(fileName);
    a = image(:,:,[2,3,4]);
    imwrite(a, ['C:\Users\gr\Desktop\RGB_file\',num2str(i),'.png']);
end
