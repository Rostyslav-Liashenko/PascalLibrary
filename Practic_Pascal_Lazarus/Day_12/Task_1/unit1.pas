unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var n,i,j:integer;
    a:array[0..100,0..100] of integer;
begin
     n:=strToINt(edit1.text);
     stringGrid1.ColCount:=n;
     StringGrid1.RowCount:=n;
     StringGrid1.Visible:=true;
     Randomize;
     for i:=0 to n -1 do
     for j:=0 to n -1 do
     begin
       a[i,j]:=random(20)-10;
       stringGrid1.Cells[i,j]:=intTOstr(a[i,j]);
     end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var i,j,n:integer;
    a:array[0..100,0..100] of integer;
begin
     n:=StrTOINT(edit1.text);
     for i:=0 to n -1 do
     for j:=0 to n-1 do
     a[i,j]:=StrToINt(stringGrid1.Cells[i,j]);
     for i:=0 to n-1 do
     for j:=0 to n-1 do
     if a[i,j] < 0
     then a[i,j]:=sqr(a[i,j])
     else
     if a[i,j] > 0
     then a[i,j]:=a[i,j]-10;
     StringGrid2.Visible:=true;
     StringGrid2.ColCount:=n;
     for i:=0 to n-1 do
     for j:=0 to n-1 do
     StringGrid2.Cells[i,j]:=intToStr(a[i,j]);
end;

end.

