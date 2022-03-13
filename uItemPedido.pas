unit uItemPedido;

interface

uses uPedido, uItem;

type
  TItemPedido = record
    Pedido: PPedido;
    Item: PItem;
    Quantidade: Double;
    Function ToString: String;
  end;
  PItemPedido = ^TItemPedido;
  TItensPedido = array of PItemPedido;

  procedure CarregarItensPedido;
  procedure DescarregarItensPedido;

var
  ItensPedido: TItensPedido;

implementation

uses
  System.SysUtils;

procedure CarregarItensPedido;
begin
  SetLength(ItensPedido, 1);
  New(ItensPedido[0]);
  ItensPedido[0]^.Pedido := @Pedidos[0]^;
  ItensPedido[0]^.Item := @Items[1]^;
  ItensPedido[0]^.Quantidade := 2.5;

  SetLength(ItensPedido, 2);
  New(ItensPedido[1]);
  ItensPedido[1]^.Pedido := @Pedidos[0]^;
  ItensPedido[1]^.Item := @Items[0]^;
  ItensPedido[1]^.Quantidade := 99.8;

  SetLength(ItensPedido, 3);
  New(ItensPedido[2]);
  ItensPedido[2]^.Pedido := @Pedidos[1]^;
  ItensPedido[2]^.Item := @Items[1]^;
  ItensPedido[2]^.Quantidade := 2.6;
end;

procedure DescarregarItensPedido;
var
  I: Integer;
begin
  for I := Low(ItensPedido) to High(ItensPedido) do
    Dispose(ItensPedido[I]);
  SetLength(ItensPedido, 0);
end;

{ TItemPedido }

function TItemPedido.ToString: String;
begin
  Result := Format(
    'Pedido:     %s' + sLineBreak +
    'Data:       %s' + sLineBreak +
    'Item:       %s' + sLineBreak +
    'Descrição:  %s' + sLineBreak +
    'Quantidade: %f' + sLineBreak
    , [Pedido.Numero, FormatDateTime('dd/MM/yyyy', Pedido.Data),
       Item.Codigo, Item.Descricao,
       Quantidade]
  );
end;

end.
