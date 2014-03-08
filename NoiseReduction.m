figure(1)
pic = imread('Lena256Noisy.png')
image(pic)
colormap(map)

figure(2)
low = 0.04*ones(5)
y = conv2(pic, low)
image(y)
colormap(map)

figure(3)
medpic = imread('Lena256Noisy.png')
for i=2:255,
    for j=2:255,
        med = median([pic(i-1,j-1) pic(i,j-1) pic(i+1,j-1) pic(i-1,j) pic(i,j) pic(i+1,j) pic(i-1,j+1) pic(i,j+1) pic(i+1,j+1)]);
        %for k=-1:1,
        %    for l=-1:1,
        %        pic(i+k,j+l) = med;
        %   end
        %end
        medpic(i-1,j-1) = med;
        medpic(i,j-1) = med;
        medpic(i+1,j-1) = med;
        medpic(i-1,j) = med;
        medpic(i,j) = med;
        medpic(i+1,j) = med;
        medpic(i-1,j+1) = med;
        medpic(i,j+1) = med;
        medpic(i+1,j+1) = med;
    end
end
image(medpic)
colormap(map)