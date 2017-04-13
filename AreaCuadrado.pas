program areaCuadrado;
uses crt;
var
   area,lado: integer;

procedure saberlado;
begin
     writeln ('Calcular el Area de un Cuadrado');
     writeln ('Introduce lado');
     readln  (lado);

end;
procedure calcularArea;
begin
     area:=lado*lado;
end;
procedure saberArea;
begin
     writeln ('Area es:', area);
end;
begin
Saberlado;
CalcularArea;
saberarea;
Readkey;
end.
