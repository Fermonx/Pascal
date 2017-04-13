{Programa básico de inserción y muestra de datos ignresados por el usuario
para prácticar el uso de los Strings.}


program PracticaStrg;
uses crt;
var
   edad: integer;
   nombre, apellidos: string;
   genero, edocivil: string;

Procedure Introducirdatos;
begin
     writeln ('Nombre:');
     readln (nombre);
     writeln;
     writeln ('Apellido:');

     readln (apellidos);
     writeln;
     writeln ('Edad:');

     readln (edad);
     writeln;
     writeln ('Genero:');

     readln (genero);
     writeln;
     writeln ('Edo. Civil:');

     readln (edocivil);
     writeln;

end;

Procedure mostrarinformacion;
begin

     writeln ('Su Nombre es:',nombre);
     writeln;
     writeln ('Su Apellido es:',apellidos);
     writeln;
     writeln ('Su Genero es:',genero);
     writeln;
     writeln ('Su Edad es:',edad);
     writeln;
     writeln ('Su Estado Civil es:',edocivil);

end;
begin
     introducirdatos;
     mostrarinformacion;
     readkey;

end.

