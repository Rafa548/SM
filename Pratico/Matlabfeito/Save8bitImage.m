function Save8bitImage(Fname,Image)
    [n,m]=size(Image);
    n = uint16(n);
    m = uint16(m);
    id = fopen(Fname,"w");
    fwrite(id,n,"uint16");
    fwrite(id,m,"uint16");
    fwrite(id,Image,"uint8");
    fclose(id);
end

