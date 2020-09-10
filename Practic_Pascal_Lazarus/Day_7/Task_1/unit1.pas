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
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
Var i,n:integer;
    p:real;
begin
     n:=strToint(edit1.text);
     P:=1;
     for i:=1 to n do
         p:=p * i;
     edit2.Text:=FloatToStr(P);
end;

procedure TForm1.Button2Click(Sender: TObject);
var i,n:integer;
    p:real;
begin
     n:=strTOint(edit1.text);
     p:=1;
     i:=1;
     while i <= n do
     begin
       p:=p*i;
       i:=i+1;
     end;
     edit3.text:=FloatToStr(p);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    edit1.clear;
    edit2.clear;
    edit3.clear;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   edit1.clear;
   edit2.clear;
   edit3.clear;
end;

end.

