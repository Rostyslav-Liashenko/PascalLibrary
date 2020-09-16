unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }
  Tprofit = array[0..100] of Real;
  Tyears = array[0..100] of Integer;

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
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
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
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
    Memo5: TMemo;
    Memo6: TMemo;
    Memo7: TMemo;
    Memo8: TMemo;
    Memo9: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
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
  profit:Tprofit;
  years:Tyears;
  countElements:integer;
  MaxSpending:integer;
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

procedure TForm1.Button12Click(Sender: TObject);
var i:integer;
begin
     Button6Click(Sender);
     for i:=MaxSpending to CountElements -2 do
     begin
          profit[i]:=profit[i+1];
          years[i]:=years[i+1];
     end;
     Dec(CountElements);
end;

procedure TForm1.Button13Click(Sender: TObject);
var
    i:integer;
    j:integer;
begin
  if Memo4.Lines.Count = 0 then
  begin
       Application.MessageBox('Fields is empty','Errors');
       exit;
  end;
  if Memo4.Lines.Count <> Memo5.Lines.Count then
  begin
       Application.MessageBox('Fields not fill','Error add data');
       exit;
  end;
  for i:=0 to Memo4.Lines.Count do
  begin
       if StrToInt(Memo4.Lines[i]) > 2020 then
       begin
            Application.MessageBox('Years is not correct','Error add Year');
            exit;
       end;
  end;
  j:=0;
  for i:=countElements to countElements + Memo4.Lines.Count - 1 do
  begin
       profit[i]:=StrToFloat(Memo5.Lines[j]);
       years[i]:=StrToInt(Memo4.Lines[j]);
       Inc(j);
  end;
  countElements:=CountElements+Memo4.Lines.Count;
  Memo4.Clear;
  Memo5.Clear;
end;

procedure TForm1.Button14Click(Sender: TObject);
var i:integer;
begin
  Memo6.clear;
  Memo7.clear;
  for i:=0 to CountElements-1 do
  begin
   Memo6.Lines.add(IntToStr(years[i]));
   Memo7.Lines.add(FLoatToStrf(profit[i],ffFixed,8,2));
  end;
end;

procedure TForm1.Button15Click(Sender: TObject);
var t2:real;
begin
   t2:=profit[CountElements -1 ];
   profit[CountElements - 1] := profit[0];
   profit[0]:=t2;
end;

procedure TForm1.Button16Click(Sender: TObject);
var count,max,i:integer;
begin
     max:=0;
     count:=0;
     for i:=0 to CountElements - 1 do
     begin
          if (profit[i] <= 0) then
          begin
               Inc(count);
               if count > max then
                  max:=count;
          end
          else
          begin
               count:=0;
          end;
     end;
     Label16.Caption:=IntTOStr(max);
end;

procedure TForm1.Button17Click(Sender: TObject);
var
    i,j:integer;

    money:Tprofit;
    date:TYears;

    count:integer;
    t:integer;
    ft:real;
begin
  date:=years;
  money:=profit;
  count:=CountElements - 1;

  for i:=0 to count - 1 do
  begin
       for j:=0 to count - 1 do
       begin
            if money[j] > money[j+1] then
            begin
                 ft:=money[j];
                 money[j]:=money[j+1];
                 money[j+1]:=ft;

                 t := date[j];
                 date[j]:=date[j+1];
                 date[j+1]:=t;

            end;
       end;
  end;
  for i:=0 to count do
  begin
       Memo9.Lines.add(FloatToStr(money[i]));
       Memo8.Lines.add(IntTostr(date[i]));
  end;

end;



procedure TForm1.Button2Click(Sender: TObject);
var i:integer;
begin
  edit1.clear;
  edit2.clear;
  Label11.Caption:='';
  Label8.Caption:='';
  Label6.Caption:='';
  Label16.Caption:='';
  memo1.Clear;
  memo2.clear;
  memo3.clear;
  memo4.clear;
  memo5.clear;
  memo6.clear;
  memo7.clear;
  memo8.clear;
  memo9.clear;
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
  MaxSpending:=index;
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
  memo1.Enabled:=false;
end;

end.

