Program char2num;
Var a:longint;
function ReadLongint(var result:longint):boolean;
var 
	c:char;
	res:longint;
	poz:longint;
begin
	res:=0;
	poz:=0;
	repeat
		read(c);
		poz:=poz+1;
	until (c <> ' ') and (c <> #10);
	while (c <> ' ') and (c <> #10) do
	begin
		if (c < '0') or (c > '9') then
		begin
			writeln('Unexpected ''',c,''''' in pos:',poz);
			readln;
			readLongint:=false;
			exit
		end;
		res:=res*10+ord(c)-ord('0');
		Writeln('vzyal y potoka = ',c);
		read(c);
		poz:=poz+1;
	end;
	result:=res;
	ReadLongint :=true;
end;

begin
	ReadLongint(a);
	Writeln(a);

end.
