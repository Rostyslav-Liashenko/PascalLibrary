Program EraseFile;
var
	f:file;
begin
	{$I-}
	if ParamCount < 1 then
	begin
		writeln(ErrOutput,'Please specify the file to erase');
		halt(1);
	end;
	assign(f,ParamStr(1));
	erase(f);
	if IOResult <> 0 then
	begin
		Writeln(ErrOutput,'Error erasing the file');
		halt(1)
	end;
end.
