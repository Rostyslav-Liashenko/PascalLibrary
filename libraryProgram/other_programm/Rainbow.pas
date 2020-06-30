Program Rainbow;
type 
	RainbowColors = (red,orange,yellow,green,blue,indigo,violet);
	Signals = (SigRed, SigYellow,SigGreen);
var
	rc:RainbowColors;
begin
	rc:=green;
	Writeln('red, orange, yellow, green, blue, indigo, violet');
	Writeln('pred color green  = ', pred(rc));
	Writeln('succ color green = ', succ(rc));
	Writeln('ord(red) = ', ord(red));
	Writeln('ord(blue) = ', ord(blue));
end.
