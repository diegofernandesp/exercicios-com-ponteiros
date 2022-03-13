unit uPedido;

interface

type
  TPedido = record
    Numero: String;
    Data: TDateTime;
  end;
  PPedido = ^TPedido;
  APedidos = Array of PPedido;

  procedure CarregarPedidos;
  procedure DescarregarPedidos;

var
  Pedidos: APedidos;

implementation

uses
  System.SysUtils;

procedure CarregarPedidos;
begin
  SetLength(Pedidos, 1);
  New(Pedidos[0]);
  Pedidos[0].Numero := 'NP0000000001';
  Pedidos[0].Data := EncodeDate(2022, 02, 28);

  SetLength(Pedidos, 2);
  New(Pedidos[1]);
  Pedidos[1].Numero := 'NP0000000002';
  Pedidos[1].Data := EncodeDate(2022, 03, 12);
end;

procedure DescarregarPedidos;
var
  I: Integer;
begin
  for I := Low(Pedidos) to High(Pedidos) do
    Dispose(Pedidos[i]);

  SetLength(Pedidos, 0);
end;

end.
