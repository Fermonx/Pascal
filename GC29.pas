{Calcula el promedio de edad y la cantidad de socios que practican algún deporte
en un club ficticio.}


Program GC29;
uses crt;
var
   n,nums,edad,i,depor:integer;
   PE,ST,SF:real;
   apellido,nombre:string;

Procedure dato;
begin
     writeln ('Cantidad de Socios');
     readln  (n);
     writeln;
end;

Procedure Calculo;
begin
     i:=1;
     PE:=0;
     ST:=0;
     SF:=0;
     while (n>=i) do
     begin
          writeln ('Numero de Socio');
          readln  (nums);
          writeln;
          writeln ('Nombre del Socio');
          readln  (nombre);
          writeln;
          writeln ('Apellido del Socio');
          readln  (apellido);
          writeln;
          writeln ('Edad del Socio');
          readln  (edad);
          writeln;
          writeln ('Deporte que Practica');
          readln  (depor);
          writeln;

          If ((depor=1)and(edad>=20)and(edad<=25))then
          ST:=ST+1
          Else If ((depor=4))then
          SF:=SF+1;
          PE:=PE+Edad;
          i:=i+1;
      end;
          SF:=SF/N*100;
          PE:=Edad/N;
end;

Procedure Mostrar;
begin
     Writeln ('# Socios que Practican Tenis: ',ST:0:2);
     Writeln;
     Writeln ('Porcentaje de Socios que Practican Futbol: ',SF:0:2);
     writeln;
     writeln ('Promedio de Edades entre los Socios: ',PE:0:2);
     writeln;
end;
begin
dato;
calculo;
mostrar;
readkey;
end.
