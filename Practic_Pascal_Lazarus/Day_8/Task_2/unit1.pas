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
  for i:=1 to step - 1 do
  begin
       t:=t * x;
  end;
  POW:=t;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Memo1.Clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
var x,sum,tmp:real;
    i,n:integer;
begin
    x:=StrToFloat(Edit1.Text);
    n:=StrToInt(Edit2.Text);
    sum:=0;
    for i:=1 to n do
    begin
        tmp:=(2 * i) / (2 * i + pow(x,i));
        sum:=sum + tmp;
        Memo1.Lines.Add(FloatToStrf(tmp,ffFixed,8,3));
    end;
    Memo1.Lines.Add('---------------------');
    Memo1.Lines.add('Sum = '+FloatTostrf(sum,ffFixed,8,3));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Application.MessageBox('Create By Liashenko Rostyslav','Author');
end;

end.

