% x 为原始信号
% 关于strel函数的具体用法，请见:https://blog.csdn.net/qwerasdf_1_2/article/details/54376657
 
se1 = strel('line', 65, 0); %设置为线性,长度为65,角度为0
fo1 = imopen(x, se1);%开运算
fc1 = imclose(x, se1);%闭运算
foc1 = imclose(fo1, se1); %开-闭运算
fco1 = imopen(fc1, se1);%闭-开元算
x =  x - floor((foc1 + fco1)/2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

seA = strel('line', 25, 0); %设置为线性,长度为25,角度为0  
fo = imopen(x, seA);
fc = imclose(x, seA);
foc = imclose(fo, seA); 
fco = imopen(fc, seA);
xb2 = floor((foc + fco)/2);
QRSx = x - xb2; %QRS波提取
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

seB = strel('line', 65, 0); %设置为线性,长度为65,角度为0 
fo = imopen(xb2, seB);
fc = imclose(xb2, seB);
foc = imclose(fo, seB); 
fco = imopen(fc, seB);
xc = floor((foc + fco)/2);        
TPx = xb2- xc;  % P波 T波提取
x = QRSx + TPx;