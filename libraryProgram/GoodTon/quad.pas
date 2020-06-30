Program quad;
Var x1,x2:real;

function quadratic(a,b,c:real; var x1,x2:real):boolean;
var 
	d:real;
begin
	if a = 0 then
	begin
		quadratic:=false;
		exit
	end;
	d:=b*b-4*a*c;
	if d < 0 then
	begin
		quadratic:=false;
		exit
	end;
	d:=sqrt(d);
	x1 :=(-b-d)/(2*a);
	x2 :=(-b+d)/(2*a);
	quadratic:=true;
end;

begin
	if quadratic(1,-3,2,x1,x2)  then
	begin
		writeln('x1 = ',x1:6:2);
		writeln('x2 = ',x2:6:2);
	end
	else
		writeln('The equation cannot be solved ');
end.
