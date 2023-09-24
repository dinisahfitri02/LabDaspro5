program sapa;
uses wincrt;
var
    nama,nim,kom,alamat:string;
begin
    write('masukkan nama anda: ');
    readln(nama);
    write('masukkan NIM anda: ');
    readln(nim);
    write('masukkan kom anda: ');
    readln(kom);
    write('masukkan alamat anda: ');
    readln(alamat);
    writeln('Hallo nama saya ',nama,' NIM saya ',nim,' saya di kom ',kom,' alamat saya di ',alamat,'.Salam kenal semuanya!');
end.