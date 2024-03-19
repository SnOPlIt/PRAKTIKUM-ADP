program BUS_PT_ANS_LINTAS_SUMATERA;
uses crt;
var     tujuan,kelas:string;
        jumlah:integer;
        total1,total2,tambah,harga,diskon:real;




begin
clrscr;

writeln('   BUS PT. ANS LINTAS SUMATERA');
writeln('=================================');
writeln('TUJUAN DARI JAMBI KE   :');
writeln('1.MEDAN             : RP.270000');
writeln('2.PADANG            : RP.215000');
writeln('3.LAMPUNG           : RP.330000');
writeln('4.BENGKULU          : RP.345000');
writeln('5.PALEMBANG         : RP.200000');
writeln('6.ACEH              : RP.375000');
writeln('---------------------------------');
write('TUJUAN YANG DIPILIH : ');readln(tujuan); tujuan:=UpCase(tujuan);

writeln('=================================');
writeln('KELAS (BIAYA TAMBAHAN) :');
writeln('1.EKONOMI CLASS     : RP.10000');
writeln('2.BISNIS CLASS      : RP.20000');
writeln('3.FIRST CLASS       : RP.30000');
writeln('---------------------------------');
write('KELAS YANG DIPILIH  : ');readln(kelas); kelas:=UpCase(kelas);
write('JUMLAH TIKET        : ');readln(jumlah);
writeln('=================================');
        if tujuan = 'MEDAN' then harga:=270000
                        else
        if tujuan = 'PADANG' then harga:=215000
                        else
        if tujuan = 'LAMPUNG' then harga:=330000
                        else
        if tujuan = 'BENGKULU' then harga:=345000
                        else
        if tujuan = 'PALEMBANG' then harga:=200000
                        else
        if tujuan = 'ACEH' then harga:=375000
                        else
        begin
                writeln('TUJUAN TIDAK VALID. SILAHKAN MASUKKAN KEMBALI'); readln; end;


        if kelas = 'EKONOMI' then tambah:=10000
                        else
        if kelas = 'BISNIS' then tambah:=20000
                        else
        if kelas = 'FIRST' then tambah:=30000
                        else
        begin
                writeln('KELAS TIDAK VALID. SILAHKAN MASUKKAN KEMBALI'); readln; end;

        total1:=(harga + tambah) * jumlah;
        diskon:= 0;
                if (jumlah >= 3) and (jumlah <= 5) then
                diskon:= total1 * 0.05 else if jumlah > 5 then
                diskon:= total1 * 0.1;
                        total2:=total1 - diskon;

writeln('TUJUAN               : ', tujuan);
writeln('KELAS                : ', kelas);
writeln('JUMLAH TIKET         : ', jumlah);
writeln('TOTAL                : RP.', total1:0:0);
writeln('DISKON               : RP.',diskon:0:0);
writeln('TOTAL SETELAH DISKON : RP.',total2:0:0); writeln;readln;


end.
