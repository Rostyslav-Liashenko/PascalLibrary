Program HelloCrt;
uses crt;
const
	Message = 'Hello world!';
	DelayDuration = 5000; {5 seconds}
var
	x,y:integer;
begin
	clrscr;
	x:=(ScreenWidth - length(Message)) div 2;
	y:=ScreenHeight div 2;
	GotoXY(x,y);
	write(Message);
	GotoXy(1,1);
	delay(DelayDuration);
	GotoXY(12,1);
	Writeln('x = ', whereX);
	Write('y = ', whereY);
	delay(DelayDuration);
	clrscr;
end.
