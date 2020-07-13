Program Translate;

function CountVariant:word;
var
       	ukr:text;
	count:word;
	s:string[1];
begin
	count:=0;
	assign(ukr,'ukr.txt');
	reset(ukr);
	while not eof(ukr) do
	begin
		readln(ukr,s);
		count:=count+1;
	end;
	CountVariant:=count;
end;


function CreateUkraineWord(var RandomWord:integer; countRandomWord:word):string;
var
        ukr:text;	
	s:string;
	i:integer;
begin
	assign(ukr,'ukr.txt');
	reset(ukr);
	RandomWord:=Random(countVariant)+1;
	for i:=1 to RandomWord do
		Readln(ukr,s);
	close(ukr);
	CreateUkraineWord:=s;
end;

function CreateEnglishWord(var TranslateUkraine:integer):string;
var
	s:string;
	i:integer;
	eng:text;
begin
	assign(eng,'eng.txt');
	reset(eng);
	for i:=1 to TranslateUkraine do
		Readln(eng,s);
	close(eng);
	CreateEnglishWord:=s;
end;

var
    RandomWord:integer;
    UkraineWord:string;
    UserEnglishWord:string;
    scoore:integer;
    countRandomWord:integer;
begin
	Randomize;
	scoore:=0;
	countRandomWord:=CountVariant;
	Writeln('input the end for end programm');
	while true  do
	begin
		UkraineWord:=CreateUkraineWord(RandomWord, countRandomWord);
		Writeln('Input translate ',UkraineWord,' word: ');
		Readln(UserEnglishWord);
		if UserEnglishWord = 'end' then
			break;
		if UserEnglishWord = CreateEnglishWord(RandomWord) then
		begin
			Writeln('Correct!!');
			inc(scoore);
		end
		else
		begin
			Writeln('wrong!!');	
		end;
	end;
	Writeln('Your scoore = ', scoore);
end.
