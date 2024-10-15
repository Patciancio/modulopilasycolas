program prueba1;

uses
    pilaEstatica in 'PilaEstatica.pas',
    ColaEstatica in 'ColaEstatica.pas';

procedure PasarPilaACola(p: pila; var c: cola);
var
    pilaAux: pila;
    n: integer;
begin
    InicializarPila(pilaAux);

    while not pilaEstatica.vacia(p) do
    begin
        n := pilaEstatica.Desapilar(p); // Llamada correcta a Desapilar
        pilaEstatica.Apilar(pilaAux, n); // Llamada correcta a Apilar
    end;

    InicializarCola(c);
    while not pilaEstatica.vacia(pilaAux) do
    begin
        n := pilaEstatica.Desapilar(pilaAux); // Desapilar de la pila auxiliar
        ColaEstatica.Insertar(c, n); // Insertar en la cola
    end;
end;

procedure CargarPilaEj(var p: pila);
var
    y: integer;
begin
    y := 1;
    while y <> 0 do
    begin
        WriteLn('Agregar numero');
        read(y);
        if y <> 0 then
            pilaEstatica.Apilar(p, y); // Llamada correcta a Apilar
    end;
end;

procedure MostrarCola(c: cola);
var
    x: integer;
begin
    WriteLn('Los elementos de la cola son: ');
    while not ColaEstatica.vacia(c) do
    begin
        x := ColaEstatica.Eliminar(c); // Llamada correcta a Eliminar
        WriteLn(x);
    end;
end;

var
    p: pila;
    c: cola;
begin
    InicializarPila(p);
    CargarPilaEj(p);           // Cargar n£meros en la pila
    PasarPilaACola(p, c);      // Pasar los elementos de la pila a la cola
    MostrarCola(c);            // Mostrar los elementos de la cola
end.
