Program task_4;
Const
    PDV = 20;
Var
    NewCost,CostProduct,discount:real;
    name:string;
begin
    Writeln('Input the name product: ');
    Readln(name);
    Writeln('Input the price of product, discount,');
    Readln(CostProduct, discount);
    NewCost :=(CostProduct - (CostProduct * discount / 100)) + (CostProduct * PDV/ 100);
    Writeln(name,'      ',CostProduct:6:2,' ',PDV:6,' ',discount:6:2,' ',NewCost:6:2);
    Writeln('Create by Liasenko Rostyslav');
end.
