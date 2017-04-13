{Código en el que el usuario crea un vector y a partir de ahí se calcula el porcentaje
de numeros pares e impares que hay dentro del vector}

program arrgeglos6v2;
uses crt;
type
    vector=array [0..100]of integer;

var
   VP,VI,V:vector;
   par,impar,n:integer;


Procedure leer (var n:integer);
begin
     Writeln ('N es: ');
     readln  (n);
     writeln;
end;

Procedure llenarv (n:integer; var v:vector);
var
   i:integer;

begin
     For i:=1 to n do
     begin
          writeln ('Elemento ',i);
          readln  (v[i]);
          writeln;
     end;
end;

Function obtenerd (var impar:integer; v:vector; n:integer):integer;
var
   i,par:integer;

begin
     par:=0;
     impar:=0;
     For i:=1 to n do
     begin
          If (V[i] mod 2)=0 then
          par:=par+1
          Else
          impar:=impar+1;
     end;
     obtenerd:=par;
end;

Procedure llenarPI (n:integer; v:vector; var VP,VI:vector);
var
   k,j,i:integer;

Begin
     j:=1;
     k:=1;

     For i:= 1 to n do
     begin
          If (V[i] mod 2)=0 then
          begin
               VP[k]:=V[i];
               k:=k+1;
          end

          Else
          begin
              VI[j]:=V[i];
              j:=j+1;
          end;

     end;
end;

Procedure mostrarv (x:integer; v:vector; t:string);
var
   i:integer;

Begin
     writeln;
     Writeln (t);
     writeln;

     For i:=1 to x do
     begin
          write (V[i], ' ');
     end;
end;





begin
leer (n);
llenarv (n,v);
par:=obtenerd (impar,v,n);
llenarPI (n,v,VP,VI);
mostrarV (n,v,'Vector Original');
mostrarV (impar,VI,'Vector Impar');
mostrarV (par,VP,'Vector Par');
readkey;
end.
