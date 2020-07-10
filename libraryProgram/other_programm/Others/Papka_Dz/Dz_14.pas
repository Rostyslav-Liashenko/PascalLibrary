Program typeSymbol;
Uses Crt;
Label
  rp;
Var 
  symbol,sim:char;
  a:integer;
begin
  rp:
  Write('Введіть тип символу: ');
  Readln(symbol);
  a := ord(symbol);
  if (a >= 48) and (a <= 57) then 
    Writeln('цифровий тип')
  else
    begin
      if (a >= 43) and (a <= 47) then
         Writeln('Операторний тип')
      else
        begin
          if (a >= 65) and (a <= 90) then
            Writeln('Латинський  Великий тип')
          else
            begin
              if (a >= 97) and (a <= 122 ) then
                Writeln('Латинський маленький тип')
                else
                  begin
                    if ((a >= 160) and (a <= 175)) or ((a >= 1072) and (a <= 1103)) then
                      Writeln('Кирилиця маленький тип')
                    else
                      begin
                        if ((a >= 128) and (a <= 159)) or ((a >= 1040) and (a <= 1071)) then
                          Writeln('Кирилиця великий тип')
                          else
                          begin
                            if (a >= 60) and (a <= 62) then
                             Writeln('Тип відношення')
                            else
                              begin
                                if (a >= 23) and (a <= 29) then
                                  Writeln('Стрелочний тип')
                                else
                                  begin
                                    Writeln('Інші типи');
                                  end;
                              end;
                          end;
                      end;
                  end;
            end;
            
        end;
    
    end;
    Writeln('повторити программу? [д/н]');
    Readln(sim);
    if (sim = 'д') or (sim = 'Д') then
      goto rp;
end.