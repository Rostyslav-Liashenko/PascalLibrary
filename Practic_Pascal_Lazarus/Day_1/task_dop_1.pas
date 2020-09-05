Program task_dop_1;
Var
    a,z1,z2:real;
begin
    Writeln('Input a: ');
    Readln(a);
    z1:= 2 * sqr(sin(3 * PI - 2 * a))* sqr(cos(5 * PI + 2 * a));
    z2:= 0.25 - 0.25 * sin(5/2 * Pi - 8 * a);
    Writeln('z1 = ',z1:6:2);
    Writeln('z2 = ',z2:6:2);
end.
