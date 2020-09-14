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
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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

procedure TForm1.Button3Click(Sender: TObject);
begin
  Application.MessageBox('Create by Liashenko Rostyslav','Author');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Clear;
  edit2.clear;
  Memo1.clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
var money:real;
    n,i,j,year:integer;
begin
   if (edit1.Text = '') or (edit2.text = '') or (edit3.text = '') then
   begin
     Application.MessageBox('Not correct data ','error');
     exit;
   end;

   Money:=StrToFloat(edit1.text);
   n:=StrToint(edit3.text);
   year:=StrToInt(edit2.text);
   for j := 1 to year do
   begin
      Memo1.Lines.add(IntToStr(j)+' year');
      Memo1.Lines.add('-----------------');
      for i:=1 to n do
      begin
           money:=money + (money * 5 / 100) - 100;
           Memo1.Lines.add(IntTostr(i) + ' months:  ' +FloatTostr(money));
      end;
      Memo1.Lines.add('-----------------');
   end;
end;

end.

