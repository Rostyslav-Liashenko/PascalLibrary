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
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
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
    Memo4: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
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
  income,spending:array[0..100] of real;
  countIncome,countSpending:integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var a,b:real;
    i:integer;
begin
  if memo3.lines.count <> memo2.Lines.count then
  begin
    Application.MessageBox('Field not fill','Error');
    exit;
  end;
  for i:=0 to Memo3.Lines.Count-1 do
  begin
       a:=StrToFloat(Memo3.Lines[i]);
       b:=StrToFloat(Memo2.Lines[i]);
       income[countIncome]:=a;
       spending[countSpending]:=b;
       Inc(countIncome);
       Inc(countSpending);
       Memo1.Lines.add('Income:           '+ FloatTOstr(income[i]) + '  Spending:         ' + FloatToStr(spending[i]) + '  Profit:   '+ FloatTostr(a-b));
  end;


end;

procedure TForm1.Button10Click(Sender: TObject);
var i:integer;
begin
     Memo4.clear;
     for i:=1 to countIncome do
     begin
          Memo4.Lines.add('Income: ' + FloatTOStr(income[i])+ '  Spending: ' + FloatToStr(spending[i]));
     end;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  Application.MessageBox('Create by Liashenko Rostyslav','Author');
end;

procedure TForm1.Button2Click(Sender: TObject);
var i:integer;
    Sum:real;
begin
     sum:=0;
     for i:=0 to countIncome do
     begin
          sum:=sum + (income[i] - spending[i]);
     end;
     Label5.Caption:=FloatToStrf(sum,ffFixed,8,2);
end;

procedure TForm1.Button3Click(Sender: TObject);
var i,period:integer;
    sum:real;
    countYear:integer;
begin
  if (countIncome = 0) or (countSpending = 0) then
  begin
       Application.MessageBox('Data is clear, please input the data','error');
       exit;
  end;
  if edit1.Text = '' then
  begin
       Application.MessageBox('Period not found','error');
       exit;
  end;
  if (StrToINt(edit1.text) < 0)  or (StrToInt(edit1.text) > countIncome ) then
  begin
       Application.MessageBox('Not correct period','Error');
  end;
   sum:=0;
   period:=StrToint(edit1.text);
   countYear:=0;
   for i:=0 to period - 1 do
   begin
      sum := sum + (income[i] - spending[i]);
   end;
   Label8.Caption:=FloatToStrf(sum,ffFixed,8,2);
   for i:=0 to countIncome do
   begin
      if sum = (income[i] - spending[i]) then
         Inc(countYear);
   end;
   Label10.Caption:=IntToStr(countYear);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   Label5.Caption:='';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
   edit1.clear;
   Label8.Caption:='';
   Label10.Caption:='';
end;

procedure TForm1.Button6Click(Sender: TObject);
var i:integer;
    max:real;
    index:integer;
begin
 if (countIncome = 0) or (countSpending = 0) then
  begin
       Application.MessageBox('Data is clear, please input the data','error');
       exit;
  end;
 max:=Spending[0];
 index:=0;
 for i:=0 to countSpending do
 begin
    if spending[i] > max then
    begin
      max:=spending[i];
      index:=i;
    end;
 end;
  Label12.Caption:=intTostr(index + 1);
  Label14.Caption:=FloatToStr(max);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Label12.Caption:='';
  Label14.Caption:='';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  Memo1.clear;
  memo2.clear;
  memo3.clear;
end;

procedure TForm1.Button9Click(Sender: TObject);
Var i:integer;
begin
  for i:=0 to 100 do
  begin
     income[i]:=0;
     spending[i]:=0;
  end;
  countIncome:=0;
  countSpending:=0;
  Button8Click(Sender);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  countIncome:=0;
  countSpending:=0;
end;

end.

