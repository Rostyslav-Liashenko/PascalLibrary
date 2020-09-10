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
    Label1: TLabel;
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

procedure TForm1.Button2Click(Sender: TObject);
begin
  edit1.Clear;
  Memo1.Clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
var h,sum:real;
begin
  sum:=0;
  h:=StrToFloat(Edit1.Text);
  while h > 0 do
  begin
      Memo1.Lines.Add(FloatToStr(h));
      sum:=sum + h;
      h:=h * 33.3 / 100;
  end;
  Memo1.Lines.Add('--------------');
  Memo1.Lines.add('Length = '+ FloatToStr(sum));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Application.MessageBox('Craety by Liashenko Rostysalv','Author');
end;

end.

