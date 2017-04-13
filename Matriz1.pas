{Primer ejercicio práctico sobre el uso de matrices
para después aplicarlos en la creación del proyecto final}


program matriz1;
uses crt;
type
    matriz=array [1..50,1..50]of integer;

var
   m:matriz;
   f,c:integer;


Procedure leer (var x:integer);
begin
     writeln ('Tam: ');
     readln  (x);
     writeln;

end;

Procedure llenar (f,c:integer; var m:matriz);
var
   i,j:integer;

begin
     For i:=1 to f do
     begin
          For j:=1 to c do
          begin
               writeln;
               writeln ('Elemento: ',i,',',j);
               readln  (M[i,j]);
               writeln;
          end;
     end;
end;

Procedure mostrar (f,c:integer; m:matriz);
var
   i,j:integer;

Begin
     For i:=1 to f do
     begin
          For j:=1 to c do
          begin
               write (M[i,j],' ');
          end;
          writeln;
     end;
end;

Begin
leer (f);
leer (c);
llenar (f,c,m);
mostrar (f,c,m);
readkey;
end.
