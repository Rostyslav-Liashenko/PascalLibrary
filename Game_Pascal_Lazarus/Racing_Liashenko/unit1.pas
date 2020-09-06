unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

Const
  Min_cars =1;
  Max_cars =4;
  fin = 55 + 808;

type

  { TForm1 }

  car = record
        name:string;
        finished:boolean;
        Pic:TImage;
  end;

  array_car = array[Min_cars..Max_cars] of car;


  TForm1 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image7: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Memo1: TMemo;
    Panel1: TPanel;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    {My procedure and function}
    function CheckNotFinish:boolean;
    procedure CreateRate;
    procedure ShowMoney;
    procedure ManagerBet;
    function CheckBet:boolean;
  private

  public

  end;


var
  Form1: TForm1;

  isGame:boolean;
  cars:array_car;

  Money:integer;
  bet:integer;
  IDMaybeWinCar:integer;
  isWin:boolean;
  IDWinner:integer;
implementation

{$R *.lfm}

 { TForm1 }

procedure TForm1.ShowMoney;
begin
   Label4.Caption:=IntToStr(Money) + '$';
end;

procedure TForm1.ManagerBet;  {Decided player is win or not}
begin
   if IDMaybeWinCar = IDWinner then
   begin
        Money:=Money+(bet * 3); {double bat + money}
        ShowMoney;
        ShowMessage('You win!!');
   end
   else
   begin
       ShowMessage('You lose!!!');
   end;
   if (Money <= 0) then
   begin
        ShowMessage('Game Over');
        Close; {exit program}
   end;
end;

function TForm1.CheckBet:boolean;
begin
   if (edit1.Text = '') or (StrToInt(edit1.Text) <= 0) then
      begin
           ShowMessage('Please input your correct bet');
           CheckBet:=false;
      end
      else
      begin
          CheckBet:=true;
      end;
end;

procedure TForm1.CreateRate;
Var i:integer;
begin
  for i:=Min_cars to Max_cars do
   begin
        if cars[i].Pic.Left > fin then
        begin
           if  not (cars[i].finished) then
           begin
                cars[i].finished:=true;
                Memo1.Lines.Add(cars[i].name);
                if not isWin then
                begin
                     isWin:=true;
                     IDWinner:=i;
                end;
           end;
        end
   end;
end;

function TForm1.CheckNotFinish:boolean;
var i:integer;
begin
   i:=1;
   if (cars[i].Pic.Left < fin) or (cars[i+1].Pic.Left < fin)
   or (cars[i+2].Pic.Left < fin) or (cars[i+3].Pic.Left < fin) then
   begin
        CheckNotFinish:=true;
   end
   else
   begin  {end of game loop and setting new sesion game}
       isGame:=false;
       Button1.Enabled:=true;
       CheckNotFinish:=false;
       ManagerBet; {if player is win, bet * 2}
   end;
   CreateRate;
end;

procedure TForm1.FormCreate(Sender: TObject); {prepare for game}
var i:integer;
begin
     Randomize;
     isGame:=false;
     Memo1.Clear;
     for i:=Min_cars to Max_cars do
     begin
       cars[i].name:='cars_' + IntToStr(i);
     end;
     cars[1].name:='Green';
     cars[2].name:='Blue';
     cars[3].name:='Purple';
     cars[4].name:='Red';
     cars[1].Pic:=Image1;
     cars[2].Pic:=Image2;
     cars[3].Pic:=Image3;
     cars[4].Pic:=Image4;
     Money:=1000;
     ShowMoney;
end;


procedure TForm1.Button1Click(Sender: TObject); {clear variable, read bet and start game}
Var i:integer;
begin
   Memo1.Clear;
   if not CheckBet then
      exit;
   bet:=StrToInt(Edit1.Text);
   Money:=Money - bet;
   ShowMoney;

   IDMaybeWinCar:=ComboBox1.ItemIndex + 1;

   for i:=Min_cars to Max_cars do
   begin
        cars[i].Pic.Left:=24;
        cars[i].finished:=false;
   end;
   isGame:=true;
   Button1.Enabled:=false;
   IDWinner:=0; {all IDMaybeWinCar <> 0}
   isWin:=false;
end;

procedure TForm1.Timer1Timer(Sender: TObject); {game loop work with timer, realized move cars}
Var i:integer;
begin
     if (IsGame) then
     begin
          if (CheckNotFinish) then
          begin
               for i:=Min_cars to Max_cars do
               begin
                    if  not (cars[i].finished) then
                        cars[i].Pic.Left:=cars[i].Pic.Left + Random(8);
               end;
          end;

     end;
end;




end.

