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
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    function Pow(x:real; step:integer):real;
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
  edit1.clear;
  edit2.clear;
  memo1.clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
var n:integer;
    i,j,x:integer;
    tmp,fact,sum:real;
begin
   Memo1.Clear;
   sum:=0;
   n:=StrToInt(edit1.text);
   x:=StrToInt(edit2.text);
   for i:=0 to n do
   begin
        fact:=1;
        for j:=1 to i do
        begin
             fact:=fact * j;
        end;
        tmp:=(fact - i) * pow(x,i);
        sum:=sum + tmp;
        Memo1.Lines.add(FloatToStr(tmp));
   end;
   Memo1.Lines.add('-----------');
   Memo1.Lines.add(FloatToStr(sum));
end;

end.

