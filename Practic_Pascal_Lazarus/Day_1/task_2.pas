Program task_2;
Var
    scholarship,upScholarship:real;
begin
    Writeln('Input the scholarship:  ');
    Readln(scholarship);
    scholarship:=abs(scholarship);
    upScholarship:= scholarship * 1.25;
    Writeln('Up scholarship: ',upScholarship:6:2);
    Writeln('Create by Liashenko Rostyslav');
end.
