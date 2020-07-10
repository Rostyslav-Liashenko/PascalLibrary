Program masssa;
Uses Crt;
Label 
    rp;
Var 
  idm,h,m:real;
  sim:char;
begin
  rp:
  write('Введiть свою вагу: ');
  Readln(m);
  if m <= 0 then 
    begin
      Writeln('Не вiрнi даннi');
      goto rp;
    end;
  write('Введiть свiй рост: ');
  readln(h);
  if h <= 0 then 
    begin
      Writeln('Не вiрнi даннi');
      goto rp;
    end;
  idm := h - 100;
  if idm <= 0 then
    begin
      Writeln('Не можливо');
      goto rp;
    end;
  Writeln('Ваша iдеальна вага: ', idm);
  if idm = m then
    Writeln('у вас iдеальна вага')
  else
    begin
      if idm > m then
        begin
          idm:= idm - m;
          Writeln('вам потрiбно набрати ', idm);
        end
        else
          begin
            idm:= m - idm;
            Writeln('Вам потрiбно скинути ', idm);
          end;
    end;
    Writeln('Повторити программу? [д/н]');
    Readln(sim);
    if (sim = 'д') or (sim = 'Д') then
      goto rp;
end.