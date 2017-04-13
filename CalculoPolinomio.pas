program ejercicio3;
uses crt;
var
   X:real;
   Pol:real;

procedure valorx;
begin
          writeln ('Valor de X:');
          readln (x);
end;

procedure calcularpol;
begin
     Pol:=(x*x*x)+x+1;
end;

procedure mostrarres;
begin
          writeln ('El Resultado de la Operacion es:',pol:0:2);
end;
begin
valorx;
calcularpol;
mostrarres;
readkey;
end.
