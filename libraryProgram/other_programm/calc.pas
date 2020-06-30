Program calc;
var 
	num1,num2,answer:integer;
	count:integer;

procedure randomNum(var num1,num2:integer);
begin
	num1:=Random(10)+1;
	num2:=Random(10)+1;
end;

procedure printTask;
begin
	Writeln(num1, ' * ',num2,' ? ');
end;

begin
	randomize;
	count:=0;
	while (true) do
	begin
		randomNum(num1,num2);
		printTask;
		readln(answer);
		while (true) do
		begin
			if answer = num1*num2 then
			begin
				Writeln('Luck!');
				inc(count);
				break;
			end
			else
			begin
				Writeln('No!!!');
				Writeln('==Repeat==');
				printTask;
				Readln(answer);
			end;
		end;
	end;
end.	
