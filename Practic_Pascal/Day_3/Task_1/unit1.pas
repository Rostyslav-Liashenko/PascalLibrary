unit Unit1;

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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Button1Click(Sender: TObject);
    function CheckEditEquation1():boolean;
    function CheckEditEquation2():boolean;
    procedure CalculateEquation1;
    procedure CalculateEquation2;
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

function TForm1.CheckEditEquation1():boolean;
begin
     if (Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '') then
     begin
          CheckEditEquation1:=false;
     end
     else
         CheckEditEquation1:=true;
end;

function TForm1.CheckEditEquation2():boolean;
begin
     if (Edit1.Text = '') then
        CheckEditEquation2:=false
     else
         CheckEditEquation2:=true;
end;

procedure TForm1.CalculateEquation1;
Var x,b,c:real;
begin
     x := StrToFloat(Edit1.Text);
     b := StrToFloat(Edit2.Text);
     c := StrToFloat(Edit3.Text);
     {1 equation}
     if (x > 0) and (b*x <> c)then
        Label6.Caption:=FloatToStr((3.75 + x) / (b * x - c))
     else
     begin
          if (b * x = c) and (x > 0) then
             Label6.Caption:=FloatToStr(sqr(b) - x)
          else
          begin
               if (x <= 0) then
                  Label6.Caption:=FloatToStr(b * x / (sqr(c) - 6.85))
               else
                   Label6.Caption:='There is no suitable option';

          end;
     end;
end;

procedure TForm1.CalculateEquation2;
Var x:real;
begin
   x := StrToFloat(Edit1.Text);
   {2 equation}
     if (1 < x) and (x < 9) then
          Label7.Caption:=FloatToStr(16.5 * x + 9 * sqr(x) - 1.2 * (x * x *x))
     else
     begin
          if x <= 1 then
             Label7.Caption:=FloatToStr(1)
          else
              Label7.Caption:=FloatToStr(12.5 - x);
     end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    if RadioButton1.Checked then
    begin
         if not CheckEditEquation1 then
            Label6.Caption:='Fill the all input'
         else
         begin
              CalculateEquation1;
              Label7.Caption:='';
         end;
    end
    else
    begin
         if not CheckEditEquation2 then
            Label7.Caption:='Fill the "a" input'
         else
         begin
             Label6.Caption:='';
             Edit2.Text:='';
             Edit3.Text:='';
             CalculateEquation2;
         end;
    end;
end;

end.

