unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
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
var n,i:integer;
  a,s:real;
begin
 n:=StrTOInt(edit1.text);
 S:=0;
 i:=1;
 repeat
   a:=sin(i);
   Memo1.Lines.add(FloatToStr(a));
   S:=S+a;
   i:=i+1;
 until i > n;
 Memo1.Lines.add('------------');
 Memo1.Lines.add(FloatToStr(s));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  edit1.clear;
  Memo1.clear;
end;

end.

