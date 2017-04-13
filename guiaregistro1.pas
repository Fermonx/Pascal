{Primer ejercicio de registros, práctica para su uso y como acceder a variables dentro del mismo}

{Dado un arreglo de registros con carnet, nombre, apellido y 3 notas
parciales para un grupo de 15 alumnos. Procesar estos datos y construir un
nuevo arreglo que contenga solamente los carnets y el promedio de notas
de aquellos alumnos cuyo promedio está por encima de 14 ptos. Mostrar
este arreglo.}


program gregistro1;
uses crt;
type
    info=record
         carnet,notas:integer;
         nombre,apellido:string;
         end;

    LInfo=array[1..15]of info;

var
   l:linfo;
   n:integer;
   prom:real;

Procedure leer (var n:integer);
begin
     writeln ('Cantidad de Alumnos: ');
     readln  (n);
     writeln;
end;

Procedure llenar (var l:linfo; n:integer);
var
   h,p,i:integer;

begin
     h:=0;
     p:=0;
     For i:=1 to n do
     begin
          writeln ('Nombre: ');
          readln  (l[i].nombre);
          writeln;
          writeln ('Apellido: ');
          readln  (l[i].apellido);
          writeln;
          writeln ('Carnet: ');
          readln  (l[i].carnet);
          writeln;
          Repeat
                writeln ('Notas: ');
                readln  (l[i].notas);
                h:=h+(l[i].notas);
                prom[i]:=h*

