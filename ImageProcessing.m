Colormap
figure(1)
x = imread('cal.jpg')
x(:,:,2:3)=[];
image(x)
colormap(map)

title('orig')

figure(2)
low = 0.04*ones(5)
y = conv2(x, low)
image(y)
colormap(map)

figure(3)
east = [0 -1 0; 0 1 0; 0 0 0]
north = [0 0 0; 0 1 -1; 0 0 0]
a = conv2(x, east)
b = conv2(x, north)
yhn = abs(a)
yhe = abs(b)
zhn = yhn > 127
zhe = yhe > 127
z = zhn | zhe
zprime = 1-z
zprime = zprime * 255
imshow(zprime)