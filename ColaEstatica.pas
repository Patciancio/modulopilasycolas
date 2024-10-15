unit ColaEstatica;
interface


type
        cola = record
                 elem: array[1..10] of integer;
                  inicio,final: 1..10;
               end;
var
        c:cola;

function vacia(c: cola):boolean;
function llena(c: cola): boolean;
procedure InicializarCola(c: cola);
procedure Insertar(var c: cola; nuevoDato: integer);
function Eliminar(var c: cola): integer;



implementation
function vacia(c: cola):boolean;
begin
        vacia := (c.final = c.inicio)
end;


function llena(c: cola): boolean;
begin
        llena := ((c.final + 1)mod 10) = c.inicio;
end;

procedure InicializarCola(c: cola);
begin
        c.inicio := 1;
        c.final := 1;
end;

procedure Insertar(var c: cola; nuevoDato: integer);
begin
        if not llena(c) then
        begin
                c.final := (c.final + 1)mod 10;
                c.elem[c.final] := nuevoDato;
        end;
end;

function Eliminar(var c: cola): integer;
begin

        if not vacia(c) then
        begin
                Eliminar := c.elem[c.inicio];
                c.inicio := (c.inicio + 1)mod 10;
        end;
end;

{ --- Programa de prueba --- }

end.
