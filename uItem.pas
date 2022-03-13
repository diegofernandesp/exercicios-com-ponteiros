unit uItem;

interface

uses
  SysUtils, Generics.Defaults, Generics.Collections, uPedido;

type
  TItem = record
    Codigo: String;
    Descricao: String;
    function ToString: String;
  end;
  PItem = ^TItem;
  TItems = Array of PItem;

  procedure CarregarItens;
  procedure DescarregarItens;

var
  Items: TItems;

implementation

procedure CarregarItens;
begin
  SetLength(Items, 1);
  New(Items[0]);
  Items[0]^.Codigo := '001';
  Items[0]^.Descricao := 'Primeiro Item';

  SetLength(Items, 2);
  New(Items[1]);
  Items[1]^.Codigo := '002';
  Items[1]^.Descricao := 'Segundo Item';
end;

procedure DescarregarItens;
var
  I: Integer;
begin
  { Descarregar }
  for I := Low(Items) to High(Items) do Dispose(Items[I]); SetLength(Items, 0);
end;

{ TItem }

function TItem.ToString: String;
begin
  Result := Format('Codigo: %s - Descrição: %s',
    [Codigo, Descricao]);
end;

end.
