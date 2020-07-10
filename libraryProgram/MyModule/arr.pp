unit arr;
interface

const
	Len=20;

type MyArray = array[1..Len] of integer;

function summaArray(a:MyArray):integer;
function MaxElementArray(a:MyArray):integer;
procedure ShowArray(a:MyArray);

implementation

function summaArray(a:MyArray):integer;
Var
	total:integer;
	i:integer;
begin
	total:=0;
	for i:=1 to Len do
		total:=total + a[i];
	summaArray:=total;
end;

function MaxElementArray(a:MyArray):integer;
var 
	max:integer;
	i:integer;
begin
	max:=a[1];
	for i:=1 to Len do
	begin
		if a[i] > max then
			max:=a[i];
	end;
	MaxElementArray:=max;
end;

procedure ShowArray(a:MyArray);
var 
	i:integer;
begin
	for i:=1 to Len do
		Write(a[i]:5);
	Writeln;
end;

end.
