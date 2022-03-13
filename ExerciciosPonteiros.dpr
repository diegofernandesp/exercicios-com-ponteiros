program ExerciciosPonteiros;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uItem in 'uItem.pas',
  uPedido in 'uPedido.pas';

{$R *.res}

begin
  {$IFDEF DEBUG}
    ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
