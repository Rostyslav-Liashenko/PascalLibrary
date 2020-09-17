unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
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
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  matrix:array[1..100,1..100] of real;
  m,k:integer;
implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.Button2Click(Sender: TObject);
var i:integer;
begin
  if (edit1.Text = '') or (edit2.text = '') then
  begin
      Application.MessageBox('Size of matrix undefind','Error');
      exit;
  end;
  m:=StrToint(edit2.text); {m = col}
  k:=StrToInt(edit1.text); {k = row}
  for i:= 1 to k  do
  begin
       StringGrid1.Cells[0,i]:='Place ' + IntToStr(i);
  end;
  for i:= 1 to m do
  begin
       StringGrid1.Cells[i,0]:='Candidate ' + INtTostr(i);
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var i,j:integer;
    min:real;
    minCandidate:integer;
begin
  for i:=1 to k do
  begin
       Memo1.Lines.add('Place ' + INtTOstr(i));
       min:=(matrix[i,1]);
       minCandidate:=1;
       for j:=1 to m do
       begin
         if matrix[i,j] < min then
         begin
              min:=matrix[i,j];
              minCandidate:=j;
         end;
       end;
       Memo1.Lines.add(StringGrid1.Cells[minCandidate,0] + ': ' + FloatToStr(min));
       Memo1.Lines.add('-------------------------------');
  end;

end;

procedure TForm1.Button4Click(Sender: TObject);
var j:integer;
    n:integer;
    max:real;
    index:integer;
begin
     n:=StrToint(Edit3.Text);
     if n > k then
     begin
          Application.MessageBox('Wrong data for number place','Error');
          exit;
     end;
     max:=matrix[n,1];
     index:=1;
     for j:=1 to m do
     begin
       if matrix[n,j] > max then
       begin
            max:=matrix[n,j];
            index:=j;
       end;
     end;
     Label4.Caption:=StringGrid1.Cells[index,0] + '  Rating: ' + floatTOstr(max);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  edit3.clear;
  Label4.caption:='';
end;

procedure TForm1.Button6Click(Sender: TObject);
var i,j:integer;
    sum,t:real;

    arr:array[1..100] of real;
    arr2:array[1..100] of string;
    s:string;

    n:real;
begin
   if edit4.text = '' then
   begin
        Application.MessageBox('Please input the minimal rating','Error');
        exit;
   end;
   n:=StrTofloat(edit4.text);
   Memo2.clear;
   for j:=1 to m do
   begin
     sum:=0;
     for i:=1 to k do
     begin
       sum:=sum + matrix[i,j];
     end;
     arr[j]:=sum;
     arr2[j]:=StringGrid1.Cells[j,0];
   end;

     for i:=1 to m - 1 do
     begin
       for j:=1 to m - i do
       begin
            if arr[j] > arr[j+1] then
            begin
                 t:=arr[j];
                 arr[j]:=arr[j+1];
                 arr[j+1]:=t;

                 s:=arr2[j];
                 arr2[j]:=arr2[j+1];
                 arr2[j+1]:=s;
            end;
       end;
     end;
     for i:=1 to m do
     begin
       if arr[i] > n then
       begin
           Memo3.Lines.add(arr2[i] + ' ' + FloatTostr(arr[i]));
       end;
       Memo2.Lines.add(arr2[i] + ' ' + FloatTostr(arr[i]));
     end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  memo1.clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
Var i,j:integer;
begin
  Button2Click(Sender);
  for i:=1 to k do
  begin
       for j:=1 to m do
       begin
            matrix[i,j]:=Random(100) + 1;
            StringGrid1.Cells[j,i]:=FloatTOStr(matrix[i,j]);
       end;
  end;
end;

end.

