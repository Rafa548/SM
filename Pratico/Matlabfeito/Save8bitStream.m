function Save8bitStream(Fname,n,m,Stream)
    n = uint16(n);
    m = uint16(m);
    id = fopen(Fname,"w");
    fwrite(id,n,"uint16");
    fwrite(id,m,"uint16");
    fwrite(id,Stream,"uint8");
    fclose(id);
end

