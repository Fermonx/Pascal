Program  MinutosASegundos;
uses crt;
const Segundos = 60;
var

   Minutos : integer;

Procedure Saberdatos;
begin

          Writeln ('Minutos');
          readln (Minutos);


end;

Procedure CalcularSegundos;
begin

    Minutos:=Segundos*Minutos;

end;

Procedure MostrarSegundos;
begin

     writeln ('Cantidad de Segundos Son:', Minutos);

end;
begin
Saberdatos;
CalcularSegundos;
MostrarSegundos;
readkey;
end.
