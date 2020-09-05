unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure Button1MouseLeave(Sender: TObject);
    procedure Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton1MouseLeave(Sender: TObject);
    procedure SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton2MouseLeave(Sender: TObject);
    procedure SpeedButton2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    function NumberWithDifficulty:integer;
  private

  public

  end;

var
  Form1: TForm1;
  gen_num,num_attemps:integer;
  rep:boolean;
implementation

{$R *.lfm}

{ TForm1 }

 { begin my funtion}
function TForm1.NumberWithDifficulty:integer;
begin
     Randomize;
     if RadioButton1.Checked then
     begin
         NumberWithDifficulty:=Random(11); {0..10}
     end
     else
     begin
         if RadioButton2.Checked then
         begin
             NumberWithDifficulty:=Random(101); {0..100}
         end
         else
         begin
             NumberWithDifficulty:=Random(1001); {0..1000}
         end;
     end;
end;
  {end my function }

  {begin event usually button}
procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage('Create by Rostyslav Liashenko');
end;

procedure TForm1.Button1MouseLeave(Sender: TObject);
begin
  Button1.Font.Color:=clWhite;
end;

procedure TForm1.Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Button1.Font.Color:=clRed;
end;
  {end event usually button}

  {begin event Speed Button}
procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  gen_num:=NumberWithDifficulty;
  Edit1.Text:='';
  rep:=true;
  num_attemps:=0;
  Label7.Caption:='';
  Image1.Picture.LoadFromFile('image/cub.png');
  ShowMessage('Number is generated');
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
Var user_num:integer;
begin
     Label7.Font.Color:=clRed;
     if  not rep then
     begin
          label5.Caption:='You dont use button Random Generate';
          exit;
     end;
     user_num:=StrToInt(Edit1.Text);
     if user_num = gen_num then
     begin
          Label5.Font.Color:=clGreen;
          Label5.Caption:='You win';
          Label3.Caption:='';
          Label7.Caption:=intToStr(num_attemps);
          Label7.Font.Color:=clGreen;
          num_attemps:=0;
          Image1.Picture.LoadFromFile('image/yes.png');
     end
     else
     begin
         Label5.Font.Color:=clRed;
         Label5.Caption:='You lose';
         Image1.Picture.LoadFromFile('image/no.jpg');
         Inc(num_attemps);
         Label7.Caption:=IntToStr(num_attemps);
         if user_num > gen_num then
         begin
             Label3.Caption:='Smaller'
         end
         else
         begin
              Label3.Caption:='More'
         end;
     end;

end;

procedure TForm1.SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
     SpeedButton1.Font.Color:=clYellow;
end;

procedure TForm1.SpeedButton2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    SpeedButton2.Font.Color:=clYellow;
end;
procedure TForm1.SpeedButton1MouseLeave(Sender: TObject);
begin
   SpeedButton1.Font.Color:=clNone;
end;

procedure TForm1.SpeedButton2MouseLeave(Sender: TObject);
begin
     SpeedButton2.Font.Color:=clNone;
end;

    {end event Speed Button}
end.

