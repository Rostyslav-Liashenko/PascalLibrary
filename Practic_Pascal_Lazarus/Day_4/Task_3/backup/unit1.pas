unit Liashenko_indv;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
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
  Math,Eng,Prog,Philoso:integer;
  average:real;
begin
  Math:=StrToInt(Edit1.Text);
  Eng:=StrToInt(Edit2.Text);
  Prog:=StrToInt(Edit3.Text);
  Philoso:=StrToInt(Edit4.Text);

  average:=(Math + Eng + Prog + Philoso) / 4;
  if (average < 7.0) then
  begin
         Label6.Caption:='There is no scholarship';
         Label5.Font.Color:=clRed;
  end
  else
    begin
         if (average > 10) then
         begin
            Label6.Caption:='42.50';
            Label5.Font.Color:=clPurple;
         end
         else
         begin
            Label6.Caption:='34';
            Label5.Font.Color:=clYellow;
         end;
    end;
end;


end.

