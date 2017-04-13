{Calculadora de pago semestral ficticio}


Program TALLEREJ1;
uses crt;
var
   nombre,apellido:string;
   carnet:integer;
   nmaterias:integer;
   creditos:integer;
   montosem:real;
   descuento:real;

procedure datos;                           //El usuario introduce sus datos y el total de créditos y materias a cursar durante el semestre.
begin
     writeln ('Introduzca su Nombre');
     readln  (nombre);
     writeln;
     writeln ('Introduzca su Apellido');
     readln  (apellido);
     writeln;
     writeln ('Introduzca su Carnet');
     readln  (carnet);
     writeln;
     writeln ('Cantidad de Materias a Cursar');
     readln  (nmaterias);
     writeln;
     writeln ('Total de Creditos');
     readln  (creditos);
end;
                                                                  //Se calcula un monto fijo dependiendo del total de créditos a cursar.
procedure montosemestre;
begin
     If (creditos<8)then
     montosem:=3000*creditos

     Else If ((creditos>=8)and(creditos<=12)) then
     montosem:=3300*creditos

     Else If (creditos>12) then
     montosem:=4200*creditos;
end;

procedure semestredescuento;                                    //Si las materias están entre un rango determinado se le aplica descuento al monto final.
begin
     If ((nmaterias>=4) and (nmaterias<=6)) then
     descuento:=(montosem*10)/100

     Else If (nmaterias>6) then
     descuento:=(montosem*15)/100;
end;

procedure mostrar;                                                //Se muestra el monto final a pagar por el usuario.
begin
     writeln ('El Monto total a pagar por el semestre',montosem-descuento:0:4);

end;
begin
datos;
montosemestre;
semestredescuento;
mostrar;
readkey;
end.
