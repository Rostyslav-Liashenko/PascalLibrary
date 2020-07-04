Program task_1;
Var
	i:integer;
	i_ptr:^integer;
begin
	{Task =  https://labs-org.ru/pascal-15/}
	i:=2;
	i_ptr:=@i;
	Writeln('Value ', i_ptr^);
end.
