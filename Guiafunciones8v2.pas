{Ejercicio pr�ctico de funciones y paso de par�metros}


(* Dado dos n�meros naturales (mayores que cero): �N� e �i�, que imprima
por pantalla el d�gito que ocupa la posici�n i�sima del n�mero N. Si i es
mayor que el n�mero de d�gitos de N, se escribir� por pantalla -1. Por
ejemplo: N=25064 e i=2 el resultado es 6, para i=7 el resultado es -1. *)


Program guiafunciones8v2;
uses crt;
var
   n,i:integer;

Procedure leer (var n,i:integer);
begin
     writeln ('Inserte el valor de N: ');
     readln  (n);
     writeln;
     writeln ('Inserte el valor de I: ');
     readln  (i);
     writeln;

end;

Function calculo (n,i:integer):integer;
var
   resto,coc,p:integer;

begin

     resto:=0;
     coc:=n;
     p:=1;

     While (coc<>0) do
     begin
          resto:=coc mod 10;         //Esto separa a N en d�gitos
          coc:=coc div 10;

          If (((i mod 2)=1) and ((P mod 2)=1)) then
          begin
               writeln;
               writeln ('El numero en la posicion iesima es: ',resto);
               writeln;
          end

          Else if (((i mod 2)=0) and ((p mod 2)=0)) then
          begin
               writeln;
               writeln ('El numero en la posicion iesima es: ',resto);
               writeln;
          end;

          p:=p+1;

          If (i>resto)then
          begin
               writeln;
               writeln ('I es mayor que el total de numeros en N, entonces: ',-1);
               writeln;
          end;


    end;
end;

begin
leer (n,i);
calculo (n,i);
readkey;
end.
