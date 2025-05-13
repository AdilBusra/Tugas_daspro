program Prima_Yes_No;

uses crt;

var
    angka, i, j : integer;
    prima : boolean;

begin

    clrscr;

    writeln('Cek kepastian Bilangan Prima dengan program ini');

    writeln;

    write('Masukkan sebuah bilangan : ');
    readln(angka);

    writeln;

    if angka < 2 then
        begin
            writeln(angka, ' bukan bilangan prima.');
        end
    else
        begin 
            prima := true;
            for i := 2 to angka do
                begin
                    for j := 2 to i - 1 do
                        begin
                            if (i mod j = 0) then
                                begin
                                    if (i = angka) then
                                        begin
                                            prima := false;
                                        end;
                                end;
                        end;
                end;
            if prima then
                begin
                    writeln(angka, ' adalah bilangan prima.');   
                end;
            else
                begin
                    writeln(angka, ' bukan bilangan prima.');    
                end;
        end;

    writeln;

    writeln('Terima kasih sudah menggunakan program ini');

    readln;

end.
