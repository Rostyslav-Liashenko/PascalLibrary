unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.CheckBox1Change(Sender: TObject);
Var x,y1:real;
begin
  x:=StrToFloat(edit1.Text);
  y1:=abs(x);
  if checkbox1.state = cbchecked
  then
  edit2.Text:=floatToStr(y1)
  else
  edit2.clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   edit1.Text:='';
   edit2.Text:='';
   edit3.Text:='';
end;

procedure TForm1.CheckBox2Change(Sender: TObject);
var x,y2:real;
begin
     x:=StrToFloat(edit1.text);
     y2:=sqr(x);
     if checkbox2.state = cbchecked
     then
     edit3.text:=floatToStr(y2)
     else
     edit3.Clear;
end;

end.

