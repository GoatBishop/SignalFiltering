% x Ϊԭʼ�ź�
% ����strel�����ľ����÷������:https://blog.csdn.net/qwerasdf_1_2/article/details/54376657
 
se1 = strel('line', 65, 0); %����Ϊ����,����Ϊ65,�Ƕ�Ϊ0
fo1 = imopen(x, se1);%������
fc1 = imclose(x, se1);%������
foc1 = imclose(fo1, se1); %��-������
fco1 = imopen(fc1, se1);%��-��Ԫ��
x =  x - floor((foc1 + fco1)/2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

seA = strel('line', 25, 0); %����Ϊ����,����Ϊ25,�Ƕ�Ϊ0  
fo = imopen(x, seA);
fc = imclose(x, seA);
foc = imclose(fo, seA); 
fco = imopen(fc, seA);
xb2 = floor((foc + fco)/2);
QRSx = x - xb2; %QRS����ȡ
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

seB = strel('line', 65, 0); %����Ϊ����,����Ϊ65,�Ƕ�Ϊ0 
fo = imopen(xb2, seB);
fc = imclose(xb2, seB);
foc = imclose(fo, seB); 
fco = imopen(fc, seB);
xc = floor((foc + fco)/2);        
TPx = xb2- xc;  % P�� T����ȡ
x = QRSx + TPx;