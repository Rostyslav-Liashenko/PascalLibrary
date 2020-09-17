unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
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
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  matrix:array[0..100,0..100] of real;
  n:integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
var i,j:integer;
begin
   if edit1.text = '' then
   begin
    Application.MessageBox('fields not fill','error');
    exit;
   end;
   Label3.Caption:='';
   Label7.Caption:='';
   Label5.Caption:='';
   Label11.Caption:='';
   edit2.clear;
   edit3.clear;
   Randomize;
   n:=StrToInt(edit1.text);
   StringGrid1.ColCount:=n;
   StringGrid1.RowCount:=n;
   for i:=0 to n -1 do
   begin
     for j:=0 to n-1 do
     begin
          matrix[i,j]:=Random(20) - 10;
          StringGrid1.Cells[j,i]:=FloatTostr(matrix[i,j]);
     end;
   end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var i,j:integer;
    x1,x2:real;
    count:integer;
    product:real;
begin
     product:=1;
     count:=0;
     x1:=StrToFloat(edit2.text);
     x2:=StrToFloat(edit3.text);
     for i:=0 to n - 1 do
     begin
       for j:=0 to n - 1 do
       begin
         if (x1 < matrix[i,j]) and (matrix[i,j] < x2) then
         begin
              product:=product * matrix[i,j];
              Inc(count);
         end;
       end;
     end;
     if count = 0 then
     begin
          Label11.Caption:='Elements not found';
     end
     else
     begin
         Label11.Caption:=FloatToStrf(product / count, ffFixed,8,4);
     end;

end;

procedure TForm1.Button1Click(Sender: TObject);
Var i,j:integer;
    productMain,productOther:real;
    count:integer;
begin
productMain:=1;
productOther:=1;
count:=0;
 for i:=0 to n -1 do
 begin
   for j:=0 to n -1 do
   begin
     if matrix[i,j] < 0 then
     begin
       Inc(count);
     end;
     if (i = j) then
     begin
       productMain:=productMain * matrix[i,j];
     end;
     if (n=i+j+1) then
     begin
      productOther:=productOther * matrix[i,j];
     end;
   end;
 end;
 Label3.Caption:=FloatTOstr(productMain);
 Label7.Caption:=FloatTOStr(productOther);
 Label5.Caption:=IntToStr(count);
end;

end.

