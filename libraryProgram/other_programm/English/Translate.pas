Program Translate;
Const
	CountMaxWord = 40;
type
	number = array[1..CountMaxWord] of integer;
var
    	countWord:word; 
    	nameFile:string;
    	outEnglish,outUkraine:string;
    	UserWord:string;
    	scoore:integer;
	UselessNumber:number; {array for write repeat number}
	isEnd:boolean;
	CountElementArray:integer;

function CheckFile(nameFile:string):boolean; {check file}
var f:file;
begin
	{$I-}
	assign(f,nameFile);
	reset(f);
	{$I+}
	if IOResult = 0 then
		CheckFile:=true
	else
		CheckFile:=false;
end;

function CountVariant(var nameSource:string):word; {count all string in file}
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

function RandomIndexWord(countWord:integer; var ArrayUselessNumber:number; var isEnd:boolean; var countElementArray:integer):integer;
var 
	i:integer;
	outIndexWord:integer;
	isFound:boolean;
begin
	Randomize;
	isFound:=true;
	inc(countElementArray);
	while isFound do
	begin
		outIndexWord:=Random(CountWord) + 1;
		Writeln('outIndexWord = ', outIndexWord);
		for i:=1 to countElementArray do
		begin
			if outIndexWord = ArrayUselessNumber[i] then
			begin
				isFound:=true;
				break;
			end
			else
			begin
				isFound:=false;
			end;
			if countElementArray = CountWord then
			begin
				isEnd:=true;
				exit;		
			end;
		end;
	end;
	ArrayUselessNumber[countElementArray]:=outIndexWord;
	RandomIndexWord:=outIndexWord;	
end;

procedure CreateWord( var nameSource:string; var outEnglish:string; var outUkraine:string; countWord:integer); {Create random}
var													       {English and Ukraine word}
	source:text;
	i:integer;
	s:string;
	indexWord:integer;
begin
	outEnglish:='';
	outUkraine:='';
	assign(source,nameSource);
	reset(source);
	indexWord:=RandomIndexWord(countWord,UselessNumber, isEnd, countElementArray);
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


begin
	countElementArray:=0;
	isEnd:=false;
	scoore:=0;
	outEnglish:='';
	outUkraine:='';

	Writeln('Input the name file:');
	Readln(nameFile);

	if not CheckFile(nameFile) then {if file not found}
	begin
		Writeln('Wrong name file!!!');
		Writeln('Please input the correct file!!!');
		halt(1) {exit programm}
	end;

	countWord:=countVariant(nameFile); {count all word, how ready to translate}
	Writeln('All word = ', countWord);

	while true do
	begin

		CreateWord(nameFile,outEnglish,outUkraine,countWord); {Create Ukraine and English word for translate}
		Writeln('Translate ', outUkraine,' :'); 
		Readln(UserWord);
		if (UserWord = 'end') or isEnd then {if word is ended then programm is over or user print "end"}
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
			Writeln('it is ', outEnglish);
		end;
		Writeln;
	end;

	Writeln('scoore = ', scoore);
end.
