program Perkalian_Matriks_2x2;

uses crt;

var
    a, b, c : array[1..2, 1..2] of integer;
    i, j, k : integer;

begin

    clrscr;

    writeln('Program Perkalian Matriks 2 x 2');
    writeln('Selamat Menggunakan Program');

    writeln;

    writeln('Masukkan nilai pada matriks A :');

    for  i := 1 to 2 do 
        begin
            writeln('Baris ',i,' ');
            for j := 1 to 2 do
                begin
                    write('Kolom ',j,' :');
                    readln(a[i,j]);
                end;
        end;

    writeln;

    writeln('Masukkan nilai pada matriks B :');

    for  i := 1 to 2 do 
        begin
            writeln('Baris ',i,' ');
            for j := 1 to 2 do
                begin
                    write('Kolom ',j,' :');
                    readln(b[i,j]);
                end;
        end;

    writeln;

    for i := 1 to 2 do
        begin
            for j := 1 to 2 do
                begin
                    c[i, j] := 0;
                end;          
        end;

    for i := 1 to 2 do
        begin
            for j := 1 to 2 do
                begin
                    for k := 1 to 2 do
                    begin 
                        c[i, j] := c[i, j] + a[i, k] * B[k, j];          
                    end;
                end;    
        end;

    writeln('Hasil perkalian matriks A dan B adalah:');

    for i := 1 to 2 do
    begin
        for j := 1 to 2 do
            begin
                write(c[i, j],'  ');
            end;
        writeln;
    end;

    for  i := 1 to 2 do 
        begin
            writeln('Baris ',i,' ');
            for j := 1 to 2 do
                begin
                    write('Kolom ',j,' :');
                    writeln(c[i,j]);
                end;
        end;

    writeln;
    
    writeln('Terima kasih telah menggunakan program ini');

    readln;

end.
