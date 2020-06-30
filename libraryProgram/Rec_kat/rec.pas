Program rec;
type 
	CheckPoint = record
		n:integer;
		latitude, longitude:real;
		hidden:boolean;
		penalty:integer;
	end;
var cp:CheckPoint;
begin
	cp.n:=70;
	cp.latitude:=54.83843;
	cp.longitude:=37.59556;
	cp.hidden:=false;
	cp.penalty:=30;
	Writeln('n = ',cp.n);
	Writeln('latitude = ',cp.latitude:8:5);
	Writeln('longitude = ', cp.longitude:8:5);
	Writeln('hidden = ', cp.hidden);
	Writeln('penalty = ', cp.penalty);
end.

