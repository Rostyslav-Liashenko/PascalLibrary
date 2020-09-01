unit unit;

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
    Label1: TLabel;
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
Var
  a,b:real;
begin
   a := StrToFloat(Edit1.Text);
   b := StrToFloat(Edit2.Text);
   Label1.Caption := FloatToStr(a * b);
end;

procedure TForm1.Button2Click(Sender: TObject);
Var
   a,b:real;
begin
   a := StrToFloat(Edit1.Text);
   b := StrToFloat(Edit2.Text);
   Label1.Caption := FloatToStr(a - b);
end;

procedure TForm1.Button3Click(Sender: TObject);
Var
   a,b:real;
begin
  a := StrToFloat(Edit1.Text);
   b := StrToFloat(Edit2.Text);
   Label1.Caption := FloatToStr(a + b);
end;

procedure TForm1.Button4Click(Sender: TObject);
Var
   a,b:real;
begin
  a := StrToFloat(Edit1.Text);
   b := StrToFloat(Edit2.Text);
   Label1.Caption := FloatToStr(a / b);
end;

end.

