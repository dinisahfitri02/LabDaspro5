program c_hero;
uses crt;
var
    kabel,musuh: shortint;
    j,m: integer;
    ekabel,k,total: real;
    buff: string;
begin
    clrscr;
    write('banyak kabel ');
    readln(kabel);
    write('jumlah energi tiap kabel ');
    readln(ekabel);
    write('banyak musuh ');
    readln(musuh);
    write('apakah mendapat buff ');
    readln(buff);
    k:= kabel*ekabel;
    J:=musuh* 15;
    m:= musuh * 8;
    if buff='TRUE' then
    begin
    total := ((k+j)/2)-m;
    end
    else 
    begin
    total := (k+j)-m;
    end;
    writeln(total:0:0);
    readln;
end.