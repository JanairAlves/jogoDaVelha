program JogoDaVelha;

uses
  Vcl.Forms,
  uFormJogoDaVelha in 'Form\uFormJogoDaVelha.pas' {FormJogoDaVelha},
  uRegrasTabuleiro in 'Class\uRegrasTabuleiro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormJogoDaVelha, FormJogoDaVelha);
  Application.Run;
end.
