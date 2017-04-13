program ejercicio1;
uses crt;
var
   nombre, apellido: string;
   nota1: real;
   nota2: real;
   nota3: real;
   promedio: real;

procedure Introducirdatos;
begin
     writeln ('Nombre:');
     readln (nombre);
     writeln;
     writeln ('Apellido:');
     readln (apellido);
     writeln;
     Writeln ('Primera Nota:');
     readln (nota1);
     writeln;
     writeln ('Segunda Nota:');
     readln (nota2);
     writeln;
     writeln ('Tercera Nota:');
     readln (nota3);
     writeln;
end;

procedure Calcularpromedio;
begin
          Promedio:= (nota1+nota2+nota3)/3
end;

procedure mostrardatos;
begin
          writeln ('Su Nombre es:', nombre);
          writeln ('Su Apellido es:', apellido);
          writeln ('Su Promedio es:', promedio:0:2);

end;
begin
     introducirdatos;
     calcularpromedio;
     mostrardatos;
     readkey;

end.
