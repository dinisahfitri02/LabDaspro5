program alamat;
uses wincrt;
var
    jln,no,kota,kode_pos:string;
begin
    write('Jalan   : ');
    readln(jln);
    write('no      : ');
    readln(no);
    write('kota    : ');
    readln(kota);
    write('kode pos: ');
    readln(kode_pos);
    writeln('Alamat: jalan ',jln,' no ',no,' ',kota,' ',kode_pos);
end.