unit uRegrasTabuleiro;

interface

uses
  System.Classes, System.SysUtils, Vcl.ExtCtrls, Vcl.Graphics, Dialogs,
  Vcl.Forms;

type
  TJogador = record
    Nome: string;
    Simbolo: char;
  end;
  TJogadorArray = array [0..1] of TJogador;
  TPanelArray = array [0..8] of TPanel;

type
  TRgTb = class
  private

  public
    procedure LimparTabuleiro(vArrayPanelJogadas: TPanelArray);
    function ValidarTabuleiroCheio(vArrayPanelJogadas: TPanelArray): Boolean;
    function ValidarVitoria(vArrayPanelJogadas: TPanelArray; vJogador: TJogador): Boolean;
    function AtribuirSequencia(nmJ1, nmJ2: String): Integer;
    function RealizaJogada(vPanel: TPanel; vJogador: TJogador): Boolean;

end;

implementation

{$REGION 'Valida se o tabuleiro está cheio'}
function TRgTb.ValidarTabuleiroCheio(vArrayPanelJogadas: TPanelArray): Boolean;
var
  i: integer;
begin
  for i := 0 to High(vArrayPanelJogadas) do
  begin
    Result := vArrayPanelJogadas[i].Caption <> EmptyStr;
    if not Result then Exit;
  end;
end;
{$ENDREGION}

{$REGION 'Limpar tabuleiro'}
procedure TRgTb.LimparTabuleiro(vArrayPanelJogadas: TPanelArray);
var
  i: integer;
begin
  for i := 0 to High(vArrayPanelJogadas) do
  begin
    vArrayPanelJogadas[i].Caption := EmptyStr;
  end;
end;
{$ENDREGION}

{$REGION 'Estilo panel Jogador'}
// Essa procedure ainda não está sendo usada, foi salvo apenas como esboço, se preferir pode descartar
procedure estiloPn;
var
  pnPecaTab: TPanel;
  i: integer;
begin
  for i := 1 to 9 do
  begin
    pnPecaTab := FindGlobalComponent('pnTab' + intToStr(i)) as TPanel;
    if not(pnPecaTab.Caption = EmptyStr) then
    begin
      if (pnPecaTab.Caption = 'X') then
        pnPecaTab.Color := clRed
      else
        pnPecaTab.Color := clBlue;
    end;
  end;
end;
{$ENDREGION}

{$REGION 'Valida a jogada vitoriosa'}
function TRgTb.ValidarVitoria(vArrayPanelJogadas: TPanelArray; vJogador: TJogador): Boolean;
begin
{$region 'Validação horizontal'}
  Result := (vArrayPanelJogadas[0].Caption = vJogador.Simbolo) and
            (vArrayPanelJogadas[1].Caption = vJogador.Simbolo) and
            (vArrayPanelJogadas[2].Caption = vJogador.Simbolo);
  if Result then Exit;

  Result := (vArrayPanelJogadas[3].Caption = vJogador.Simbolo) and
            (vArrayPanelJogadas[4].Caption = vJogador.Simbolo) and
            (vArrayPanelJogadas[5].Caption = vJogador.Simbolo);
  if Result then Exit;

  Result := (vArrayPanelJogadas[6].Caption = vJogador.Simbolo) and
            (vArrayPanelJogadas[7].Caption = vJogador.Simbolo) and
            (vArrayPanelJogadas[8].Caption = vJogador.Simbolo);
  if Result then Exit;
{$endregion}

{$region 'Validação vertical'}
  Result := (vArrayPanelJogadas[0].Caption = vJogador.Simbolo) and
            (vArrayPanelJogadas[3].Caption = vJogador.Simbolo) and
            (vArrayPanelJogadas[6].Caption = vJogador.Simbolo);
  if Result then Exit;

  Result := (vArrayPanelJogadas[1].Caption = vJogador.Simbolo) and
            (vArrayPanelJogadas[4].Caption = vJogador.Simbolo) and
            (vArrayPanelJogadas[7].Caption = vJogador.Simbolo);
  if Result then Exit;

  Result := (vArrayPanelJogadas[2].Caption = vJogador.Simbolo) and
            (vArrayPanelJogadas[5].Caption = vJogador.Simbolo) and
            (vArrayPanelJogadas[8].Caption = vJogador.Simbolo);
  if Result then Exit;
{$endregion}

{$region 'Validação diagonal'}
  Result := (vArrayPanelJogadas[0].Caption = vJogador.Simbolo) and
            (vArrayPanelJogadas[4].Caption = vJogador.Simbolo) and
            (vArrayPanelJogadas[8].Caption = vJogador.Simbolo);
  if Result then Exit;

  Result := (vArrayPanelJogadas[2].Caption = vJogador.Simbolo) and
            (vArrayPanelJogadas[4].Caption = vJogador.Simbolo) and
            (vArrayPanelJogadas[6].Caption = vJogador.Simbolo);
{$endregion}
end;
{$ENDREGION}

{$REGION 'Sequência jogada'}
function TRgTb.AtribuirSequencia(nmJ1,nmJ2:String):Integer;
var JogadorEscolhido:String;
begin
  while not ((JogadorEscolhido = '1') or (JogadorEscolhido = '2'))  do
  try
    if not((nmJ1 = EmptyStr) and (nmJ2 = EmptyStr)) then
    begin
      JogadorEscolhido:= InputBox('Selecione um jogador para inciar a partida (1 ou 2)','Nome:', '');

      if JogadorEscolhido='' then
      begin
        abort;
      end;

      if ((JogadorEscolhido = '1') or (JogadorEscolhido = '2')) then
      begin
        result:= StrToInt(JogadorEscolhido);

        if (JogadorEscolhido = '1') then
          JogadorEscolhido:=nmJ1
        else
          JogadorEscolhido:=nmJ2;

        ShowMessage('Foi selecionado o jogador : '+ uppercase(JogadorEscolhido) + ' para inciar a partida')
      end
      else
        ShowMessage('Por favor digite apenas 1 ou 2. ');
    end;

    if ((JogadorEscolhido = nmJ1) or (JogadorEscolhido = nmJ2)) then
      Break;
  finally
    if ((JogadorEscolhido = nmJ1) or (JogadorEscolhido = nmJ2)) then
      ShowMessage('Que comece o Jogo!');
  end;
end;
{$ENDREGION}

{$REGION 'Realiza jogada'}
function TRgTb.RealizaJogada(vPanel: TPanel; vJogador: TJogador): Boolean;
begin
  Result := vPanel.Caption = EmptyStr;

  if not Result then Exit;

  vPanel.Caption := vJogador.Simbolo;
end;
{$ENDREGION}

end.
