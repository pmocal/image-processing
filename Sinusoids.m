Colormap

v = linspace(0,255,100)
randImg = repmat([fliplr(v) v],200,1).';

image(randImg)
colormap(map)