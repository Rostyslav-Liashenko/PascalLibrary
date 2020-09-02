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
    procedure Button1Click(Sender: TObject);
    function CheckEdit():boolean;
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

function TForm1.CheckEdit():boolean;
begin
     if (Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '') then
     begin
          CheckEdit:=false;
     end
     else
         CheckEdit:=true;

end;

procedure TForm1.Button1Click(Sender: TObject);
Var c,b,x:real;
begin
     if  not CheckEdit() then
         begin
              Label6.Caption := 'Edit not fill';
              Label7.Caption := 'Edit not fill';
              exit;
         end;
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


end.

