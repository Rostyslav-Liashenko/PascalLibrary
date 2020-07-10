
Program Rostik;
Uses Crt;
Var n,k:integer;

function DecToX (n : longint; k : integer) : string; {из десятиричной в произвольную c основанием 2<=k<=36}
var st : string;
begin
    st := '';
    if n = 0 then st := '0'
    else
      begin
          while n>=1 do
            begin
                st := (n mod k) + st;
                n := n div k;
            end;
       end;
 DecToX := st;
 WriteLn(st);
end;
 
begin
    write('Введите число в десятиричной системе счисления -> ');
    readln(N);
    write('Система счисления, в какую необходимо перевести (2..36) ');
    repeat
        write('-> ');
        readln(K);
    until (2 <= k) and (k <= 36);
    DecToX(N,k);
end.