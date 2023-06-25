function [Stream] = EncodeImage_rle(Image)
    img = reshape(Image.',1,[]);
    counter = 1;
    Stream=[];
    for i = 1:length(img)-1
        if img(i) == img(i+1)
            counter=counter+1;
            continue
        end
        Stream(end+1) = img(i);
        Stream(end+1) = counter;
        counter = 1;
    end
end

