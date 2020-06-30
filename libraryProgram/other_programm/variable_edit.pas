Program variable_edit;
Var a,b,c,d:real;

Procedure powers(x:real; var  a,b,c,d:real);
begin
	a:=x*x;
	b:=a*x;
	c:=b*x;
	d:=c*x;
end;

begin
	a:=0;
	b:=0;
	c:=0;
	d:=0;
	Writeln('number x = ',17.5:6:2);
        Writeln('quad =  ',a:6:2);
        Writeln('cube = ',b:6:2);
        Writeln('foutrth = ',c:6:2);
        Writeln('fifth = ',d:6:2);
	powers(17.5,a,b,c,d);
	Writeln('number x = ',17.5:6:2);
        Writeln('quad =  ',a:6:2);
        Writeln('cube = ',b:6:2);
        Writeln('foutrth = ',c:6:2);
        Writeln('fifth = ',d:6:2);

end.
