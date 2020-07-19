Program Translate;


function CountVariant(var nameSource:string):word;
var
       	source:text;
	count:word;
	s:string[1];
begin
	count:=0;
	assign(source,nameSource);
	reset(source);
	while not seekeof(source) do
	begin
		readln(source,s);
		count:=count+1;
	end;
	CountVariant:=count;
end;

function RandomIndexWord(countWord:integer):integer;
begin
	Randomize;
	RandomIndexWord:=Random(CountWord) + 1;
end;

procedure CreateWord( var nameSource:string; var outEnglish:string; var outUkraine:string; countWord:integer);
var
	source:text;
	i:integer;
	s:string;
	indexWord:integer;
begin
	outEnglish:='';
	outUkraine:='';
	assign(source,nameSource);
	reset(source);
	indexWord:=RandomIndexWord(countWord);
	for i:=1 to indexWord do
	begin
		readln(source,s);
	end;
	for i:=1 to Length(s) do
	begin
		if s[i] = '=' then
		begin
			break;
		end
		else
		begin
			outEnglish:=outEnglish + s[i];
		end;
	end;
	delete(outEnglish,Length(outEnglish),1);
	outUkraine:=copy(s,Length(outEnglish)+4,255);
	close(source);
end;

var
     countWord:word;
    nameFile:string;
    outEnglish,outUkraine:string;
    UserWord:string;
    scoore:integer;
begin
	scoore:=0;
	outEnglish:='';
	outUkraine:='';
	Writeln('Input the name file:');
	Readln(nameFile);
	countWord:=countVariant(nameFile);
	Writeln('All word = ', countWord);
	while true do
	begin

		CreateWord(nameFile,outEnglish,outUkraine,countWord);
		Writeln('Translate ', outUkraine,' :');
		Readln(UserWord);
		if UserWord = 'end' then
		begin
			break;
		end;
		if userWord = outEnglish then
		begin
			Writeln('Right!!!');
			scoore:=scoore + 1;
		end
		else
		begin
			Writeln('Wrong!!!');
		end;
		Writeln;
	end;
	Writeln('scoore = ', scoore);
end.
