unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
Var x,y,z,dx,xk,t:real;
begin
  Memo1.Clear;
  t:=0;
  xk:=StrToFloat(edit6.text);
  x:=StrToFloat(edit1.text);
  y:=StrToFloat(edit2.text);
  z:=StrToFloat(edit3.text);
  dx:=StrToFloat(edit4.text);
  while x < xk do
  begin
       t:=abs(x - y) * (sqr(sin(z)) + tan(z));
       Memo1.Lines.Add(FloatToStr(t));
       x:=x+dx;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
Var x,y,xk,dx:real;
    t:real;
begin
  Memo1.Clear;
  edit3.Clear;
  x:=StrToFloat(edit1.text);
  y:=StrToFloat(edit2.text);
  xk:=StrToFloat(edit6.text);
  dx:=StrTOFloat(edit4.Text);
  while x < xk do
  begin
       t:=(ln(abs(x))) / (exp(1/3 * ln(abs(x) + abs(y))));
       Memo1.Lines.Add(FloatToStr(t));
       x:=x + dx;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
Var x,z,xk,dx,tmp:real;
begin
   Memo1.Clear;
   Edit2.Clear;
   x:=StrToFloat(edit1.text);
   z:=StrToFloat(edit3.text);
   xk:=StrToFloat(edit6.text);
   dx:=StrTOFloat(edit4.Text);
   while x < xk do
   begin
        if x < z then
        begin
          tmp:=cos(x+3) * cos(x+3) * cos(x+3);
        end
        else
        begin
           tmp:=x + arctan(z);
        end;
        Memo1.Lines.add(FloatToStr(tmp));
        x:=x + dx;
   end;
end;

end.

