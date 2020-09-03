unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
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
  day,month,year: integer;
  maxDay:integer;
begin
     day := StrToInt(Edit1.Text) + 1;
     month := StrToInt(Edit2.Text);
     year := StrToInt(Edit3.Text);
     if (month = 2) then
        maxDay:=29
     else
     begin
          if (month = 1) or (month = 3) or (month = 5) or (month = 7) or (month = 8) or (month = 10) or (month = 12) then
             maxDay:=31
          else
              maxDay:=30;
     end;
     if day > MaxDay then
     begin
          day := 1;
          Inc(month);
          if (month > 12) then
          begin
               Inc(year);
               month:=1;
          end;
     end;
     Label5.Font.Color:=clHighlight;
     Label5.Caption:=IntToStr(day) + '.' + IntToStr(month) + '.' +IntToStr(year);
end;

end.

