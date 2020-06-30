Program TestRecordFile;
const 
	countStudent = 2;
type student = record 
		name:string[20];
		middleRating:real;
	end;

Var 
	f:file of student;
	i:integer;
	s:string[20];


procedure writeFile(nameFile:string);
var 
	person:student;
begin
	seek(f,filesize(f));
	Writeln('Input the name of student: ');
	Readln(person.name);
	Writeln('Input the name of middle Rating of student: ');
	Readln(person.middleRating);
	Write(f,person);
end;

procedure ReadFile(nameFile:string);
Var
	person:student;
begin
	assign(f,nameFile);
	reset(f);
	while not eof(f) do
	begin
		Read(f,person);
		Writeln(person.name ,' ', person.middleRating:6:2);
	end;

end;

begin
	Write('Input the file name: ');
	Readln(s);
	assign(f,s);
	rewrite(f);
	for i:=1 to countStudent do
		WriteFile(s);

	ReadFile(s);
	close(f);
end.
