function [Image] = DecodeImage_rle(N,M,Stream)
    Image = [];
    for i = 1:2:length(Stream)
        for a = 1:Stream(i+1)
            Image(end+1)=Stream(i);
        end
    end
    Image(end+1)=0;
    Image = reshape(Image,[N,M]);
    Image=Image.';
end

