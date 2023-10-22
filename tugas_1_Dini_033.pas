program tugas_1_DiniSahfitri_033;
uses sysutils,crt;
var
   nama,nim,fakultas,prodi,stambuk,jalur,kelas : string;
   NimInt,Kode_prodi:integer;
begin
    clrscr;
    write('Nama     : ');
    readln(nama);
    write('NIM      : ');
    readln(nim);
    writeln('Stambuk  : 20',nim[1],nim[2]);
    Kode_prodi:= StrToInt(nim[5]+nim[6]);
    case StrToInt(nim[3]+nim[4]) of 
    1: begin
          fakultas:='Kedokteran';
          case Kode_prodi of
          0: prodi:='Kedokteran';
          end;
       end;
    2: begin
          fakultas:='Hukum';
          case Kode_prodi of
          0: prodi:='Hukum';
          end;
       end;
    3: begin
          fakultas:='Pertanian';
          case Kode_prodi of
          1: prodi:='Agroteknologi';
          2: prodi:='Manajemen Sumberdaya Perairan';
          3: prodi:='Agribisnis';
          5: prodi:='Teknologi Pangan';
          6: prodi:='Peternakan';
          8: prodi:='Teknik Pertanian dan Biosistem';
          10: prodi:='Agroteknologi (PSDKU)';
          end;
        end;
    4:begin
          fakultas:='Teknik';
          case Kode_prodi of
          1: prodi:='Teknik Mesin';
          2: prodi:='Teknik Elektro';
          3: prodi:='Teknik Industri';
          4: prodi:='Teknik Sipil';
          5: prodi:='Teknik Kimia';
          6: prodi:='Arsitektur';
          7: prodi:='Teknik Lingkungan';
          8: prodi:='Pendidikan Profesi Insinyur';
          end;
        end;
    5:begin
          fakultas:='Ekonomi dan Bisnis';
          case Kode_prodi of
          1: prodi:='Ekonomi Pembangunan';
          2: prodi:='Manajemen';
          3: prodi:='Akuntansi';
          4: prodi:='Kewirausahaan';
          end;
        end;
    6:begin
          fakultas:='Kedokteran Gigi';
          case Kode_prodi of
          0: prodi:='Sarjana Kedokteran Gigi';
          31: prodi:='Profesi Kedokteran Gigi';
          end;
        end;
    7:begin
          fakultas:='Ekonomi dan Bisnis';
          case Kode_prodi of
          1: prodi:='Sastra Indonesia';
          2: prodi:='Sastra Melayu';
          3: prodi:='Sastra Batak';
          4: prodi:='Sastra Arab';
          5: prodi:='Sastras Inggris';
          6: prodi:='Ilmu Sejarah';
          7: prodi:='Etnomusikologi';
          8: prodi:='Sastra Jepang';
          9: prodi:='Perpustakaan dan Sains Informasi';
          10: prodi:='Bahasa Mandarin';
          end;
        end;
    8:begin
          fakultas:='Matematika dan Ilmu Pengetahuan';
          case Kode_prodi of
          1: prodi:='Fisika';
          2: prodi:='Kimia';
          3: prodi:='Matematika';
          5: prodi:='Biologi';
          end;
        end;
    9:begin
          fakultas:='Ilmu Sosial dan Politik';
          case Kode_prodi of
          1: prodi:='Sosiologi';
          2: prodi:='Ilmu Kesejahteraan Sosial';
          3: prodi:='Ilmu Administrasi Publik';
          4: prodi:='Ilmu Komunikasi';
          5: prodi:='Antropologi Sosial';
          6: prodi:='Ilmu Politik';
          7: prodi:='Ilmu Administrasi Bisnis';
          end;
        end;
    10:begin
          fakultas:='Kesehatan Masyarakat';
          case Kode_prodi of
          0: prodi:='Kesehatan Masyarakat';
          1: prodi:='Gizi';
          end;
        end;
    11:begin
          fakultas:='Keperawatan';
          case Kode_prodi of
          1: prodi:='Sarjana Keperawatan';
          2: prodi:='Profesi Ners';
          end;
        end;
    12:begin
          fakultas:='Kehutanan';
          case Kode_prodi of
          1: prodi:='Kehutanan';
          end;
        end;
    13:begin
          fakultas:='Psikologi';
          case Kode_prodi of
          1: prodi:='Psikologi';
          end;
        end;
    14:begin
          fakultas:='Ilmu Komputer dan Teknologi Informasi';
          case Kode_prodi of
           1: prodi:='Ilmu Komputer';
           2: prodi:='Teknologi Infromasi';
          end;
          NimInt:= StrToInt (nim[7]+nim[8]+nim[9]);
          case NimInt of
           1..30: jalur:='SNBP';
           31..70: jalur:='SNBT';
           else jalur:='SMM';
          end;
          if NimInt mod 3= 1 then kelas:='A'
          else if NimInt mod 3= 2 then kelas:='B'
          else kelas:='C';
        end;
    15:begin
          fakultas:='Farmasi';
          case Kode_prodi of
          1: prodi:='Farmasi';
          end;
        end;
    end;
    writeln('fakultas : ', fakultas);
    writeln('Prodi    : ',prodi);
    if prodi='Ilmu Komputer' then 
    begin
    writeln('Jalur    : ',jalur);
    writeln('kelas    : ',kelas);
    end;
    readln;
end.