type Team = record
                Aces:integer;
                Name:string;
             end;
Var Team1,Team2:Team;
begin
  Team1.Aces := 25;
  Team1.Name := 'Dinamo';
  Writeln(Team1);
  Team2:=Team1;
  Writeln(Team2);
end.