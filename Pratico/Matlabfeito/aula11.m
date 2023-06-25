[image, map] = imread("Parede_8bit.bmp");

%figure(1);

%imshow(image)
%colormap(map)

Save8bitImage('img.raw',image);

[N,M,lm] = Load8bitImage('img.raw');

%figure(2);
%imshow(lm)

Stream_normal = EncodeImage_rle(lm);
[N2,M2] = size(Stream_normal);
Save8bitStream('stream.raw',N2,M2,Stream_normal);

[N3,M3,stream_comprimido]=Load8bitStream("stream.raw");

random = DecodeImage_rle(N,M,Stream_normal);
