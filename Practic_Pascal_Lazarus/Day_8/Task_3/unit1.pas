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
    function POW(x:real; step:integer):real;
    function fact(x:integer):real;
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

function TForm1.fact(x:integer):real;
Var p,i:integer;
begin
   if (x = 0) or (x = 1) then
    begin
      fact:=1;
      exit;
    end;
   p:=1;
   for i:=1 to x do
   begin
        p:=p * i;
   end;
   fact:=p;
end;

function TForm1.POW(x:real; step:integer):Real;
var t:real;
  i:integer;
begin
  t:=x;
  for i:=1 to step - 1 do
  begin
       t:=t * x;
  end;
  POW:=t;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  edit1.Clear;
  edit2.Clear;
  Memo1.Clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
Var sum,x:real;
    z,n,i:integer;
    tmp:real;
begin
  x:=StrToFloat(Edit1.Text);
  n:=StrToint(Edit2.Text);
  tmp:=1-x;
  sum:=tmp;
  z:=-1;
  for i:=2 to n + 1 do
  begin
       z:=-z;
       Memo1.Lines.Add(FloatToStr(tmp));
       tmp:=(pow(z * x,i)) / fact(i);
       sum:=sum + tmp ;
  end;
   Memo1.Lines.add('------------');
   Memo1.Lines.add(FloatToStr(sum));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Application.MessageBox('Create by Liashenko Rostyslav','Author');
end;

end.

