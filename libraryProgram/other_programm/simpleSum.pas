Program simpleSum;
var 
	sum,count,n:longint;
begin
	sum:=0;
	count:=0;
	while not Seekeof  do
	begin
		read(n);
		sum:=sum+n;
		count:=count+1;
	end;
	writeln('Count  = ',count,' suma =  ', sum);
end.
