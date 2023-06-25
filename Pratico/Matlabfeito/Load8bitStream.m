function [N,M,Stream] = Load8bitStream(Fname)
    id = fopen(Fname,"r");
    N=fread(id,1,"uint16");
    M=fread(id,1,"uint16",1);
    stream=fread(id,[N,M],"uint8");
    Stream=uint8(stream);
    fclose(id);
end

