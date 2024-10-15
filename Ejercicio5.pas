program ejercicio5;

uses pilaEstatica in 'PilaEstatica.pas', ColaEstatica in 'ColaEstatica.pas';

procedure PasarPilaACola(p: pila; var c:cola);

var
        pilaAux: pila;
        n: integer;


begin

     InicializarPila(pilaAux);

     while not pilaEstatica.vacia(p) do
     begin

        n := Desapilar(p);
        Apilar(pilaAux, n);

     end;

     InicializarCola(c);
     while not pilaEstatica.vacia(pilaAux) do

     begin
        n := Desapilar(pilaAux);
        Insertar(c, n);

     end

end;

procedure CargarPilaEj( var p:pila);

var y: integer;

begin

        y := 1;
        while y <> 0 do

        begin
                WriteLn('Agregar numero');
                read(y);
                Apilar(p, y);
        end
end;

procedure MostrarCola(c:cola);
 var

 x: integer;

 begin

        WriteLn('Los elementos de la cola son: ');
        while not ColaEstatica.vacia(c) do
        begin
                x := Eliminar(c);
                WriteLn(x);
        end

 end;

begin


end.


