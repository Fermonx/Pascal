program AreaTriangulo;
uses crt;
var
   area, altura, base: real;

Procedure ConocerDatos;
begin

     Writeln ('Introduce Altura');
     readln (altura);
     Writeln ('Introduce Base');
     readln (base);

end;
Procedure CalcularArea;
begin

          area:=(base*altura)/2

end;
Procedure Saberarea;
begin

     Writeln ('El Area es:', area);

end;
begin
Conocerdatos;
Calculararea;
saberarea;
readkey;
end.
