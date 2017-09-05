program Tetris;
uses Crt, Graph;

var
  GraphDriver : smallInt;
  GraphMode : smallint;
  X0, Y0, X1, Y1, X2, Y2 : Integer;

begin
  GraphDriver := detect;
  InitGraph(GraphDriver, GraphMode, 'X:\BP');
    Rectangle(0, 0, 500, 500);
    Rectangle(0,100,250,500);
    x1 := 100;
    y1 := 110;
    x2 := 140;
    y2 := 120;
    while y2 < 500 do
    begin
    setcolor(15);
    rectangle(x1,y1,x2,y2);
    delay(100);
    setcolor(0);
    rectangle(x1,y1,x2,y2);
    delay(10);
    setcolor(15);
    rectangle(x1,y1+5,x2,y2+5);
    delay(100);
    y2 := y2 + 5;
    y1 := y1 + 5;
    end;
    if y2 = 500 then readln;

  CloseGraph;

    end.
end;

