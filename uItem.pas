unit uItem;

interface

uses
  SysUtils, Generics.Defaults, Generics.Collections;

type
  TItem = record
    Codigo: String;
    Ditm: String;
  end;
  PItem = ^TItem;
  TItems = Array of PItem;

  procedure CarregarItens;

var
  Items: TItems;

implementation

procedure CarregarItens;
begin
  SetLength(Items, 1);
  New(Items[0]);
  Items[0]^.Codigo := '001';
  Items[0]^.Ditm := 'Primeiro Item';

  SetLength(Items, 2);
  New(Items[1]);
  Items[1]^.Codigo := '002';
  Items[1]^.Ditm := 'Segundo Item';
end;

end.
