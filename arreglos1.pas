{Primer código práctico del uso de vectores, en este caso es únicamente para crear, llenar y mostrar un vector}


Program arreglo1;
uses crt;
const
     n=100;
type
    vector=array[1..n]of integer;
var
   ve:vector;
   x:integer;

Procedure leert (var x:integer);
begin
     writeln ('Tamano es: ');
     readln  (x);
end;

Procedure llenarvector (x:integer; var ve:vector);
var
   i:integer;
begin
     For i:=1 to x do
     begin
          writeln ('Escribe Elemento: ',i);
          readln  (Ve[i]);
          writeln;
     end;
end;

Procedure mostrarvector (x:integer; ve:vector);
var
   i:integer;
begin
     For i:=1 to x do
     begin
          write(Ve[i],' ');
     end;
end;

Begin
leert(x);
llenarvector(x,ve);
mostrarvector(x,ve);
readkey;
end.
