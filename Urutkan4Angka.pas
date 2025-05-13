program Urutkan_4_Angka;

uses crt;

var
    angka : array[1..4] of integer;
    i, j, angkacek, temp : integer;
    ulang : char;

begin

    clrscr;

    writeln('Halo User, ini adalah program mengurutkan 4 angka acak');

    writeln;

    repeat

        writeln('Masukkan 4 angka : ');

        for i := 1 to 4 do
            begin
                write('Angka ke-', i, ' : ');
                readln(angka[i]);
            end;

        writeln;

        for i := 1 to 3 do
            begin
                angkacek := i;
                for j := i + 1 to 4 do
                    begin
                        if angka[j] < angka[angkacek] then
                        begin
                        angkacek := j;
                        end;
                    end;
                if angkacek <> i then
                    begin
                        temp := angka[i];
                        angka[i] := angka[angkacek];
                        angka[angkacek] := temp;
                    end;
            end;

        writeln('Urutan Angka dari Terkecil hingga terbesar :');

        for i := 1 to 4 do
            begin
                writeln('Angka ke-', i, ' : ',angka[i]);
            end;

        writeln;

        write('Apakah Anda ingin mengulangi? (Y/N) : ');
        readln(ulang);

    until (ulang = 'N') or (ulang = 'n');

    writeln;

    writeln('Terima kasih telah menggunakan program ini');

    readln;

end.
