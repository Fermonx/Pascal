program Proyecto;
uses crt,sysutils;
type
 matriz=array[1..20,1..20] of char;

procedure Preguntar(var r:integer);                                              //Realiza las preguntas iniciales
begin
 repeat
  writeln('Seleccione la accion que desea realizar');
  writeln('1. Crear tablero');
  writeln('2. Mostrar coordenadas del tablero');
  writeln('3. Jugar');
  writeln('4. Salir');
  readln (r);
  clrscr;
  textcolor(lightred);
  if (r<1) or (r>4) then
   writeln ('El numero debe corresponder con el numero de la accion que desea realizar');
  textcolor(white);
 until (r>0) and (r<5);
end;

procedure GenerarCoordenadas (var x,y:integer; f,c:integer);                     //Genera coordenadas aleatorias
begin
 x:=random(c)+1;
 y:=random(f)+1;
end;

procedure Buscar(Tabl:matriz; B:char; f,c:integer);                              //Busca y muestra las posiciones de lo que se pida
var
 i,j:integer;
begin
 for j:=1 to f do
 begin
  for i:=1 to c do
  begin
   if (tabl[i,j]=b) then
    writeln('(',i,',',j,')');
  end;
 end;
end;

procedure CrearTablero(var filas,columnas,obstaculos,paredes,xt,yt,xj,yj:integer; var tabl:matriz);             //Crea el tablero
var
 x,y,i,j:integer;
begin
 repeat
  writeln ('Introduce el numero de Filas');
  readln (filas);
  writeln ('Introduce el numero de Columnas');
  readln (columnas);
  writeln ('Introduce la cantidad de Obstaculos');
  readln (Obstaculos);
  writeln ('Introduce la cantidad de Paredes');
  readln (Paredes);
  clrscr;
  textcolor(lightred);
  if (filas>20) or (filas<1) then
   writeln ('Las cantidad de filas debe estar entre 0 y 20');
  if (columnas>20) or (columnas<1) then
   writeln ('Las cantidad de columnas debe estar entre 0 y 20');
  if (obstaculos<0) or (paredes<0) or ((Obstaculos+Paredes)>100) or ((Obstaculos+Paredes)>((filas*columnas)-2)) then
   writeln ('La cantidad obstaculos y paredes deben se mayores o iguales a 0. Ademas la cantidad total entre obstaculos y paredes no debe exceder el numero de casillas disponibles');
  textcolor(white);
 until (filas>0) and (filas<21) and (columnas>0) and (columnas<21) and (Obstaculos>=0) and  (Paredes>=0) and ((Obstaculos+Paredes)<=100) and ((Obstaculos+Paredes)<=((filas*columnas)-2));
 randomize;

 generarcoordenadas(xt,yt,filas,columnas);
 tabl[xt,yt]:='T';
 repeat
  generarcoordenadas(xj,yj,filas,columnas);
 until (tabl[xj,yj]<>'T') ;
 tabl[xj,yj]:='J';

 for i:=1 to obstaculos do
 begin
  repeat
   generarcoordenadas(x,y,filas,columnas);
  until (tabl[x,y]<>'O') and (tabl[x,y]<>'T') and (tabl[x,y]<>'J');
  tabl[x,y]:='O';
 end;
 for i:=1 to paredes do
 begin
  repeat
   generarcoordenadas(x,y,filas,columnas);
  until (tabl[x,y]<>'O') and (tabl[x,y]<>'T') and (tabl[x,y]<>'J') and (tabl[x,y]<>'P');
  tabl[x,y]:='P';
 end;

 for j:=1 to filas do
 begin
  for i:=1 to columnas do
  begin
   if (tabl[i,j]<>'T') and (tabl[i,j]<>'J') and (tabl[i,j]<>'O') and (tabl[i,j]<>'P') then
    tabl[i,j]:='+';
  end;
 end;
end;

procedure MostrarCoordenadas(tabl:matriz; f,c:integer);                          //Muestra las coordenadas de todo en el tablero
var
 b:char;
begin
 b:='T';
 writeln ('Coordenadas');
 Writeln ('Tom');
 buscar(tabl,b,f,c);
 writeln;
 b:='J';
 Writeln ('Jerry');
 buscar(tabl,b,f,c);
 writeln;
 b:='O';
 Writeln ('Obstaculos');
 buscar(tabl,b,f,c);
 writeln;
 b:='P';
 Writeln ('Paredes');
 buscar(tabl,b,f,c);
 writeln;
end;

procedure MostrarTablero(tabl:matriz; f,c:integer);                              //Muestra el tablero
var
 i,j:integer;
begin
 for j:=1 to f do
 begin
  for i:=1 to c do
  begin
   if (tabl[i,j]='T') then
    textcolor (lightblue);
   if (tabl[i,j]='J') then
    textcolor (red);
   if (tabl[i,j]='O') then
    textcolor (yellow);
   if (tabl[i,j]='P') then
    textcolor (darkgray);
   if (tabl[i,j]='C') then
    textcolor (lightgreen);
   write (tabl[i,j],' ');
   textcolor (white);
  end;
  writeln;
 end;
end;

procedure solucion1(xt,yt,xj,yj,f,c:integer; tabl:matriz);                       //Ofrece la solucion 1
var
 u,nx:integer;
begin
 if xt<xj then
 begin
  for u:=1 to (xj-xt) do
  begin
   tabl[(xt+u),yt]:='C';
   nx:=xt+u;
  end;
 end
 else if xt>xj then
 begin
  for u:=1 to (xt-xj) do
  begin
   tabl[(xt-u),yt]:='C';
   nx:=xt-u;
  end;
 end;

 if yt<yj then
 begin
  for u:=1 to (yj-yt) do
  begin
   tabl[nx,(yt+u)]:='C';
  end;
 end
 else if yt>yj then
 begin
  for u:=1 to (yt-yj) do
  begin
   tabl[nx,(yt-u)]:='C';
  end;
 end;

 tabl[nx,yj]:='J';

mostrartablero(tabl,f,c);
end;

procedure solucion3(xt,yt,xj,yj,f,c:integer; tabl:matriz);                       //Ofrece la solucion 3
var
 u,ny:integer;
begin
  if yt<yj then
 begin
  for u:=1 to (yj-yt) do
  begin
   tabl[xt,(yt+u)]:='C';
   ny:=yt+u;
  end;
 end
 else if yt>yj then
 begin
  for u:=1 to (yt-yj) do
  begin
   tabl[xt,(yt-u)]:='C';
   ny:=yt-u;
  end;
 end;

 if xt<xj then
 begin
  for u:=1 to (xj-xt) do
  begin
   tabl[(xt+u),ny]:='C';
  end;
 end
 else if xt>xj then
 begin
  for u:=1 to (xt-xj) do
  begin
   tabl[(xt-u),ny]:='C';
  end;
 end;



 tabl[xj,ny]:='J';

mostrartablero(tabl,f,c);
end;

procedure solucion2(xt,yt,xj,yj,f,c:integer; tabl:matriz);                       //Ofrece la solucion 2
var
 j,i,mx,my,tx,ty,no:integer;
 fin:char;
begin
 fin:='+';
 no:=0;
 if (xt<xj) and (yt<yj) then
 begin
  repeat
  mx:=21;
  my:=21;
  no:=0;
  for j:=yt-1 to (yt+1) do
  begin
   for i:=xt-1 to (xt+1) do
   begin
    if (tabl[i,j]='J') and (not((i=xt) and (j=yt))) then
    begin
     fin:='J';
     j:=j+4;
     i:=i+4;
    end
    else if (tabl[i,j]='+') and (not((i=xt) and (j=yt))) then
    begin
     tx:=xj-i;
     ty:=yj-j;
     if tx<0 then
      tx:=tx*(-1);
     if ty<0 then
      ty:=ty*(-1);
     if (tx<mx) then
      mx:=tx;
     if (ty<my) then
      my:=ty;
    end
    else
     no:=no+1;

    if (no=9) then
     fin:='J';


   end;
  end;
  xt:=xj-mx;
  yt:=yj-my;
  tabl[xt,yt]:='C';
 until (fin='J');
 end
 else if (xj<xt) and (yt<yj) then
 begin
  repeat
  mx:=21;
  my:=21;
  no:=0;
  for j:=yt-1 to (yt+1) do
  begin
   for i:=xt-1 to (xt+1) do
   begin
    if (tabl[i,j]='J') and (not((i=xt) and (j=yt))) then
    begin
     fin:='J';
     j:=j+4;
     i:=i+4;
    end
    else if (tabl[i,j]='+') and (not((i=xt) and (j=yt))) then
    begin
     tx:=xj-i;
     ty:=yj-j;
     if tx<0 then
      tx:=tx*(-1);
     if ty<0 then
      ty:=ty*(-1);
     if (tx<mx) then
      mx:=tx;
     if (ty<my) then
      my:=ty;
    end
    else
     no:=no+1;

    if (no=9) then
     fin:='J';

   end;
  end;
  xt:=xj+mx;
  yt:=yj-my;
  tabl[xt,yt]:='C';
 until (fin='J');
 end
 else if (xj<xt) and (yj<yt) then
 begin
  repeat
  mx:=21;
  my:=21;
  no:=0;
  for j:=yt-1 to (yt+1) do
  begin
   for i:=xt-1 to (xt+1) do
   begin
    if (tabl[i,j]='J') and (not((i=xt) and (j=yt))) then
    begin
     fin:='J';
     j:=j+4;
     i:=i+4;
    end
    else if (tabl[i,j]='+') and (not((i=xt) and (j=yt))) then
    begin
     tx:=xj-i;
     ty:=yj-j;
     if tx<0 then
      tx:=tx*(-1);
     if ty<0 then
      ty:=ty*(-1);
     if (tx<mx) then
      mx:=tx;
     if (ty<my) then
      my:=ty;
    end
    else
     no:=no+1;

    if (no=9) then
     fin:='J';

   end;
  end;
  xt:=xj+mx;
  yt:=yj+my;
  tabl[xt,yt]:='C';
 until (fin='J');
 end
 else if (xt<xj) and (yj<yt) then
 begin
  repeat
  mx:=21;
  my:=21;
  no:=0;
  for j:=yt-1 to (yt+1) do
  begin
   for i:=xt-1 to (xt+1) do
   begin
    if (tabl[i,j]='J') and (not((i=xt) and (j=yt))) then
    begin
     fin:='J';
     j:=j+4;
     i:=i+4;
    end
    else if (tabl[i,j]='+') and (not((i=xt) and (j=yt))) then
    begin
     tx:=xj-i;
     ty:=yj-j;
     if tx<0 then
      tx:=tx*(-1);
     if ty<0 then
      ty:=ty*(-1);
     if (tx<mx) then
      mx:=tx;
     if (ty<my) then
      my:=ty;
    end
    else
     no:=no+1;

    if (no=9) then
     fin:='J';

   end;
  end;
  xt:=xj-mx;
  yt:=yj+my;
  tabl[xt,yt]:='C';
 until (fin='J');
 end;

 mostrartablero(tabl,f,c);
end;

procedure menu;                                                                  //Menu principal
var
 filas,columnas,xt,yt,xj,yj,ver,resp,obstaculos,paredes:integer;
 tabl:matriz;
begin
 ver:=0;
 repeat
  preguntar (resp);

  if (resp=1) then                                                               //Codigo de Respuesta 1
  begin
   creartablero(filas,columnas,obstaculos,paredes,xt,yt,xj,yj,tabl);
   clrscr;
   ver:=1;
  end;

  if (resp=2) and (ver=1) then                                                   //Codigo de Respuesta 2
  begin
   mostrartablero(tabl,filas,columnas);
   mostrarcoordenadas(tabl,filas,columnas);
   writeln;
   writeln ('Presione una tecla para continuar');
   readkey;
   clrscr;
  end
  else if (ver<1) then
  begin
   clrscr;
   textcolor(lightred);
   writeln ('Debe crear el tablero primero');
   textcolor(white);
   writeln;
  end;

  if (resp=3) and (ver=1) then                                                   //Codigo de Respuesta 3
  begin
   writeln ('Tablero Original');
   mostrartablero(tabl,filas,columnas);
   writeln;
   writeln ('Solucion 1');
   solucion1(xt,yt,xj,yj,filas,columnas,tabl);
   writeln;
   writeln ('Solucion 2');
   solucion2(xt,yt,xj,yj,filas,columnas,tabl);
   writeln;
   writeln ('Solucion 3');
   solucion3(xt,yt,xj,yj,filas,columnas,tabl);

   readkey;
  end
  else if (ver=0) then
  begin
   clrscr;
   textcolor(lightred);
   writeln ('Debe crear el tablero primero');
   textcolor(white);
   writeln;
  end;

  if (resp=4) then                                                               //Codigo de Respuesta 4
   halt;
 until (resp=4);
end;


begin                                                                            //Programa principal
 textcolor(red);
 writeln ('#######                  #     #          #                            ');
 textcolor(lightred);
 writeln ('   #     ####  #    #     #   #           # ###### #####  #####  #   # ');
 textcolor(yellow);
 writeln ('   #    #    # ##  ##      # #            # #      #    # #    #  # #  ');
 textcolor(lightgreen);
 writeln ('   #    #    # # ## #       #             # #####  #    # #    #   #   ');
 textcolor(lightcyan);
 writeln ('   #    #    # #    #       #       #     # #      #####  #####    #   ');
 textcolor(lightblue);
 writeln ('   #    #    # #    #       #       #     # #      #   #  #   #    #   ');
 textcolor(blue);
 writeln ('   #     ####  #    #       #        #####  ###### #    # #    #   #   ');
 writeln;
 textcolor(white);
 menu;
 readkey;
end.

