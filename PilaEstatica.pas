unit pilaEstatica;
interface

type
        pila = record
                elem: array[1..100] of integer;
                cima: 0..100
               end;

var
        p: pila;
        c: integer;


function vacia(p: pila): boolean;
function llena(p: pila): boolean;
procedure InicializarPila(p: pila);
procedure Apilar(var p: pila; nuevoDato: integer);
function Desapilar(var p: pila): integer;
function CantidadDatos: integer;



implementation

function vacia(p: pila): boolean;
begin
        vacia := (p.cima = 0);
end;

function llena(p: pila): boolean;
begin
        llena := (p.cima = 100);
end;

procedure InicializarPila(p: pila);
begin
        p.cima := 0;
end;

procedure Apilar(var p: pila; nuevoDato: integer);
begin
        if not llena(p) then
        begin
                p.cima := p.cima + 1;
                 p.elem[p.cima] := nuevoDato;
        end;
end;

function Desapilar(var p: pila): integer;
begin

        if not vacia(p) then
        begin
                Desapilar := p.elem[p.cima];
                p.cima := p.cima - 1;
        end;
end;

function CantidadDatos: integer;
begin
        CantidadDatos := p.cima;
end;


end.
