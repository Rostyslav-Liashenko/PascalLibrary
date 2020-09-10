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
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
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
Var a,b,d,y,x:real;
    i,tmp:integer;
begin
  a:=StrTOFloat(Edit1.text);
  b:=StrTOFloat(Edit2.text);
  d:=StrTOFloat(Edit3.text);
  x:=StrToFloat(Edit4.text);
  tmp:=Trunc((b-a)/d) + 1;
  for i:=1 to tmp do
  begin
       y:=x*x*x*x*x+8*x*x*x*x+10;
       x:=x+d;
       Memo1.Lines.Add(FloatToStrF(y,ffFixed,8,3));
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Memo1.Clear;
  Edit4.Clear;
end;


end.

