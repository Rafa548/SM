function [N,M,Lm] = Load8bitImage(Fname)
    id = fopen(Fname,"r");
    N=fread(id,1,"uint16");
    M=fread(id,1,"uint16",1);
    lm=fread(id,[N,M],"uint8");
    Lm=uint8(lm);
    fclose(id);
end

