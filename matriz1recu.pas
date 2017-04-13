{Creación de una matriz a partir de recursividad
utilizado para practicar y mejorar la eficiciencia al hacer códigos}

program ejrec4;
uses crt;
type
    matriz=array[1..20,1..20]of integer;

var
   h,i,f,c:integer;
   m:matriz;
   s:string;

procedure leer(var x:integer;s:string);
begin
     writeln (s,' ');
     readln  (x);
end;

procedure llenarm(var m:matriz; var f,c:integer; h,i:integer);
begin
     If(i<=f)then
     begin
          If(h<=c)then
          begin
               writeln('Elemento ',i,h);
               readln (M[i,h]);
          end;
     end;
end;


begin
leer(f,'Filas Matriz: ');
leer(c,'Columnas Matriz: ');
llenarm(m,f,c,h,i);
mostrar(m,f,c);
readkey;
end.
