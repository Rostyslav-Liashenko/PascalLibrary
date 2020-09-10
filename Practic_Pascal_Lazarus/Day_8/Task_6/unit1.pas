unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type


  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    function POW(x:real; step:integer):Real;
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

function TForm1.POW(x:real; step:integer):Real;
var t:real;
  i:integer;
begin
  t:=x;
  if step = 0 then
  begin
    Pow:=1;
    exit;
  end;
  for i:=1 to step - 1 do
  begin
       t:=t * x;
  end;
  POW:=t;
end;


procedure TForm1.Button3Click(Sender: TObject);
begin
  Application.MessageBox('Create by Liashenko Rostyslav','Author');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  edit1.Clear;
  edit2.Clear;
  Memo1.Clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
var tmp,x,sum:real;
    i,n:integer;
begin
  i:=0;
  sum:=0;
  n:=StrToInt(Edit1.text);
  x:=StrToFloat(Edit2.text);
  tmp:=i;
  while i <= n do
  begin
      tmp:=(n - i) * pow(x,i);
      Memo1.Lines.add(FloatTOStr(tmp));
      sum:=sum + tmp;
      i:=i + 1;
  end;
  Memo1.Lines.add('-------------');
  Memo1.Lines.add('Sum '+FloatTOStr(sum));
end;

end.

