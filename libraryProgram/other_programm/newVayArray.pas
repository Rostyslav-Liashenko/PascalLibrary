Program NewVayArray;
type 
	from1to100 = 1..100;
	real100 = array[from1to100] of real;
var
	a:real100;
	i:integer;
begin
	for i:=1 to 100 do
		a[i]:=(Random(100)+1) /(Random(10)+1);
	for i:=1 to 100 do
		Writeln('a[',i,'] = ', a[i]:5:2);

end.
