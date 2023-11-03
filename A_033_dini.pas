program bangun_ruang;
uses crt;
var
     d,v,lp,r : real;
    t : integer;
const
    phi=3.1416;
 begin
     clrscr;
     write('masukkan diameter : ');
     readln(d);
     write('masukkan tinggi : ');
     readln(t);
     r:=d/2;
     v:=(phi*r*r*t);
     lp:=(2*phi*r*r)+(2*phi*r*t);
     writeln('volume bangun tersebut adalah ',v:0:3,'cm');
     writeln('luas permukaan bangun tersebut adalah ',lp:0:4,'cm');
 end.