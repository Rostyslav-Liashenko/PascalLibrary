unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Calendar;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Calendar1: TCalendar;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button1MouseLeave(Sender: TObject);
    procedure Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button2Click(Sender: TObject);
    procedure Button2MouseLeave(Sender: TObject);
    procedure Button2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button3Click(Sender: TObject);
    procedure Button3MouseLeave(Sender: TObject);
    procedure Button3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Calendar1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  FullDate:string;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
Var

  day,month,year: integer;
  maxDay:integer;
  tmp:string;
begin
     tmp:=Copy(FullDate,1,pos('-',FullDate)-1);
     day:=StrToInt(tmp) + 1;
     Delete(FullDate,1,pos('-',FullDate));

     tmp:=Copy(FullDate,1,pos('-',FullDate)-1);
     month:=StrToInt(tmp);
     Delete(FullDate,1,pos('-',FullDate));

     year:=StrToInt(FullDate);

     if (month = 2) then
     begin
        if (year mod 4 <> 0) or (year mod 100 = 0) and (year mod 400 <> 0) then
           maxDay:=28
        else
            maxDay:=29;
     end
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



procedure TForm1.Calendar1Change(Sender: TObject);
begin
     FullDate:=Calendar1.Date;
     {ShowMessage(FullDate);}
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
  Label5.Caption:='';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ShowMessage('Create by Liashenko Rostyslav');
end;

{effects move}

procedure TForm1.Button1MouseLeave(Sender: TObject);
begin
  Button1.Font.Color:=clDefault;
end;

procedure TForm1.Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Button1.Font.Color:=clRed;
end;

procedure TForm1.Button2MouseLeave(Sender: TObject);
begin
  Button2.Font.Color:=clDefault;
end;

procedure TForm1.Button2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Button2.Font.Color:=clYellow;
end;

procedure TForm1.Button3MouseLeave(Sender: TObject);
begin
  Button3.Font.Color:=clDefault;
end;

procedure TForm1.Button3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Button3.Font.Color:=clRed;
end;

end.

