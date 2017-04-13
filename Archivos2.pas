{Ejercicio inicial sobre la creación y acceso de archivos.}

{Dada un archivo A que contiene enteros, se pide desarrollar un programa que seleccione
los pares e impares que contenga el archivo A y genere dos archivos B y C, uno que
contenga los números pares (B) y otro con los números impares (C). Los archivos B y C
no contendrán números repetidos. No se permite utilizar estructuras auxiliares, tales como
arreglos.}


Program archivos2;
uses crt;
var
   a,b,c:text;
   num:integer;

procedure asignar(var a,b,c:text);
begin
     assign (A,'Arch1');
     assign (B,'Arch2');
     assign (C,'Arch3');
end;

Procedure crear (var a:text);
var
   i:integer;

begin
     Rewrite(A);
     i:=1;
     While (i<=10) do
     begin
          writeln(A,i);
          i:=i+1;
     end;
end;

Procedure ProcA(var a,b,c:text; var num:integer);
begin
     Reset(A);
     Rewrite(B);
     Rewrite(C);
     While (not(EOF(A))) do
     begin
          Readln(A,num);
          If ((num mod 2)=0) then
          begin
               writeln (B,num);
          end
          Else
              writeln(C,num);
     end;
end;

Procedure mostrar (var ar:text; num:integer);
begin
     Reset(ar);
     While (not(EOF(ar))) do
     begin
          Readln(ar, num);
          write(num);

     end;
     writeln;
end;

procedure Cerrar(var ar:text);
begin
     close(ar);
end;

begin
asignar(a,b,c);
crear(a);
procA(a,b,c,num);
mostrar(a,num);
mostrar(b,num);
mostrar(c,num);
cerrar(a);
cerrar(b);
cerrar(c);
readkey;
end.
