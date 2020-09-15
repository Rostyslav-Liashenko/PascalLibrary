unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  profit:array[0..100] of Real;
  years:array[0..100] of integer;
  countElements:integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Application.MessageBox('Create by Liashenko Rostyslav','Author');
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  Label6.Caption:='';
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
 edit2.clear;
 label11.caption:='';
end;


procedure TForm1.Button2Click(Sender: TObject);
var i:integer;
begin
  edit1.clear;
  edit2.clear;
  Label11.Caption:='';
  Label8.Caption:='';
  Label6.Caption:='';
  memo1.Clear;
  memo2.clear;
  memo3.clear;
  for i:=0 to countElements-1 do
  begin
      profit[i]:=0;
      years[i]:=0;
  end;
  countElements:=0;
end;

procedure TForm1.Button3Click(Sender: TObject);
var i:integer;
begin
     if Memo1.Lines.Count <> Memo2.Lines.Count then
     begin
          Application.MessageBox('Not correct data','Error');
          exit;
     end;
     for i:=0 to countElements - 1 do
     begin
         profit[i]:=StrToFloat(Memo2.Lines[i]);
     end;
end;

procedure TForm1.Button4Click(Sender: TObject);
Var i:integer;
    userYear:integer;
begin
  if edit1.text = '' then
  begin
       Application.MessageBox('Not correct data, please input the correct year','Error');
       exit;
  end;
   UserYear:=StrToint(edit1.text);
     for i:=(2020 - UserYear + 1) to 2020 do
     begin
         years[countElements]:=i;
         Memo1.Lines.add(IntToStr(years[countElements]));
         Inc(countElements);
     end;
end;

procedure TForm1.Button5Click(Sender: TObject);
Var i:integer;

begin
  Memo3.Lines.add('Income Years: ');
  for i:=0 to countElements -1 do
  begin
       if profit[i] > 0 then
       begin
            Memo3.Lines.add(IntTOstr(years[i]));
       end;
  end;
  Memo3.Lines.add('---------------');
  Memo3.Lines.add('Spending Years: ');
  for i:=0 to countElements -1 do
  begin
      if profit[i] <= 0 then
      begin
           Memo3.Lines.add(IntToStr(years[i]));
      end;
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
Var
    i:integer;
    min:Real;
    index:integer;
begin
  min:=profit[0];
  index:=0;
  for i:=1 to countElements -1 do
  begin
      if profit[i] < min then
      begin
           min:=profit[i];
           index:=i;
      end;
  end;
  Label6.Caption:=IntToStr(years[index]);
end;

procedure TForm1.Button7Click(Sender: TObject);
var i:integer;
    sum:real;
begin
   sum:=0;
   for i:= 0 to countElements -1 do
   begin
       sum:=sum + profit[i];
   end;
   Label8.Caption:=FloatToStrf(sum,ffFixed,8,2);
end;

procedure TForm1.Button8Click(Sender: TObject);
var i:integer;
    period:integer;
    sum:real;
    year:integer;
begin
   if edit2.text = '' then
   begin
        Application.MessageBox('Period not found','Error');
        exit;
   end;
   year:=countElements-1;
   period:=StrToINt(edit2.text);
   sum:=0;
   for i:=2020 downto period do
   begin
       sum:=sum + profit[year];
       Dec(year);
   end;
   Label11.Caption:=FloatToStrf(sum,ffFixed,8,2);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
    Label8.Caption:='';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  countElements:=0;
end;

end.

