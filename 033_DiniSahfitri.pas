uses crt;


type
    matkul_record=record
        nama:string;
        sks:byte;
    end;

    mahasiswa_record=record
        nama:string;
        NIM:string;
        nilai:array[1..24]of string;
        total:real;
        IP:real;
    end;


var
    mahasiswa:mahasiswa_record;
    matkul:array[1..24]of matkul_record;
    jumlah_sks,banyak_matkul:byte;
    i,j,panjang_teks:word;
    nama_file:string;
    teks:TEXT;

function konversi_nilai(mahasiswa:mahasiswa_record;matkul:array of matkul_record;i:integer;banyak_matkul:byte):real; begin
    if (mahasiswa.nilai[i]='A') then konversi_nilai:=4;
    if (mahasiswa.nilai[i]='B+') then konversi_nilai:=3.5;
    if (mahasiswa.nilai[i]='B') then konversi_nilai:=3;
    if (mahasiswa.nilai[i]='C+') then konversi_nilai:=2.5;
    if (mahasiswa.nilai[i]='C') then konversi_nilai:=2;
    if (mahasiswa.nilai[i]='D') then konversi_nilai:=1;
    if (mahasiswa.nilai[i]='E') then konversi_nilai:=0;
end;

procedure garis; begin
    write(teks,'|');
    for i:=1 to panjang_teks+14 do begin
        write(teks,'=');
    end;
    writeln(teks,'|');
end;

begin
    mahasiswa.total:=0;
    jumlah_sks:=0;
    clrscr;
    write('banyak matkul: '); readln(banyak_matkul);
    for i:=1 to banyak_matkul do begin
        clrscr;
        writeln('matkul ',i);
        writeln;
        write('nama matkul: '); readln(matkul[i].nama);
        write('banyak sks: '); readln(matkul[i].sks);
        jumlah_sks+=matkul[i].sks;
    end;
    panjang_teks:=length(matkul[1].nama);
    clrscr;
    write('nama mahasiswa: '); readln(mahasiswa.nama);
    write('NIM mahasiswa: '); readln(mahasiswa.NIM);
    for i:=1 to banyak_matkul do begin
        clrscr;
        write('nilai matkul ',matkul[i].nama,': '); readln(mahasiswa.nilai[i]);
        mahasiswa.nilai[i]:=upcase(mahasiswa.nilai[i]);
        mahasiswa.total+=konversi_nilai(mahasiswa,matkul,i,banyak_matkul)*matkul[i].sks;
    end; 

    for i:= 2 to banyak_matkul do begin
        if (panjang_teks<length(matkul[i].nama)) then begin
            panjang_teks:=length(matkul[i].nama);
        end;
    end;

    if (panjang_teks<6) then panjang_teks:=6;

    clrscr;
    nama_file:='KHS_'+mahasiswa.NIM+'_'+mahasiswa.nama+'.txt';
    writeln('Kartu Hasil Studi anda sudah selesai dan berhasil di simpan di ',nama_file);

    assign(teks,nama_file);
    rewrite(teks);
    writeln(teks,'Kartu Hasil Studi');
    writeln(teks,'=================');
    writeln(teks);
    writeln(teks,'Nama :',mahasiswa.nama);
    writeln(teks,'NIM  :',mahasiswa.NIM);
    writeln(teks);
    garis;
    write(teks,'|No.|Matkul');
    for i:=1 to panjang_teks-6+3 do begin
        write(teks,' ')
    end;
    writeln(teks,'|nilai |');
    garis;
    for i:=1 to banyak_matkul do begin
        write(teks,'|',i,'. |',matkul[i].nama);
        for j:=1 to panjang_teks-(length(matkul[i].nama))+3 do begin
            write(teks,' ');
        end;
        write(teks,'|',mahasiswa.nilai[i]);
        if (mahasiswa.nilai[i]='B+')or(mahasiswa.nilai[i]='C+') then begin
            writeln(teks,'    |');
        end else begin
            writeln(teks,'     |');
        end;
    end;
    garis;
    writeln(teks);
    writeln(teks,'Total SKS     :',jumlah_sks);
    writeln(teks,'IP Semester   :',mahasiswa.total/jumlah_sks:0:2);
    close(teks);
end.