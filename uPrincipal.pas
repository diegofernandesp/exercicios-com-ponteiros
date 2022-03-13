unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    memoLog: TMemo;
    procedure ToolButton1Click(Sender: TObject);
  private
    procedure ImprimirItensMemo;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uItem;

procedure TForm1.ImprimirItensMemo;
var
  I: Integer;
begin
  memoLog.Lines.Clear;

  for I := Low(Items) to High(Items) do
    memoLog.Lines.Add(Items[I].ToString);
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
  CarregarItens;
  ImprimirItensMemo;
  DescarregarItens;
end;

end.
