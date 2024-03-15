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
    function ValidarVitoria(vArrayPanelJogadas: TPanelArray; Jogador: TJogador): Boolean;

//  published
end;

var
  oRgTb: TRgTb;

implementation

{$REGION 'Valida se o tabuleiro está cheio'}
function TRgTb.ValidarTabuleiroCheio(vArrayPanelJogadas: TPanelArray): Boolean;
var
  i: integer;
begin
  for i := 0 to High(vArrayPanelJogadas) do
  begin
    if vArrayPanelJogadas[i].Caption = EmptyStr then
    begin
      Result := False;
      Exit;
    end;
  end;
  Result := True;
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
function TRgTb.ValidarVitoria(vArrayPanelJogadas: TPanelArray; Jogador: TJogador): Boolean;
begin
{$region 'Validação horizontal'}
  Result := (vArrayPanelJogadas[0].Caption = Jogador.Simbolo) and
            (vArrayPanelJogadas[1].Caption = Jogador.Simbolo) and
            (vArrayPanelJogadas[2].Caption = Jogador.Simbolo);
  if Result then Exit;

  Result := (vArrayPanelJogadas[3].Caption = Jogador.Simbolo) and
            (vArrayPanelJogadas[4].Caption = Jogador.Simbolo) and
            (vArrayPanelJogadas[5].Caption = Jogador.Simbolo);
  if Result then Exit;

  Result := (vArrayPanelJogadas[6].Caption = Jogador.Simbolo) and
            (vArrayPanelJogadas[7].Caption = Jogador.Simbolo) and
            (vArrayPanelJogadas[8].Caption = Jogador.Simbolo);
  if Result then Exit;
{$endregion}

{$region 'Validação vertical'}
  Result := (vArrayPanelJogadas[0].Caption = Jogador.Simbolo) and
            (vArrayPanelJogadas[3].Caption = Jogador.Simbolo) and
            (vArrayPanelJogadas[6].Caption = Jogador.Simbolo);
  if Result then Exit;

  Result := (vArrayPanelJogadas[1].Caption = Jogador.Simbolo) and
            (vArrayPanelJogadas[4].Caption = Jogador.Simbolo) and
            (vArrayPanelJogadas[7].Caption = Jogador.Simbolo);
  if Result then Exit;

  Result := (vArrayPanelJogadas[2].Caption = Jogador.Simbolo) and
            (vArrayPanelJogadas[5].Caption = Jogador.Simbolo) and
            (vArrayPanelJogadas[8].Caption = Jogador.Simbolo);
  if Result then Exit;
{$endregion}

{$region 'Validação diagonal'}
  Result := (vArrayPanelJogadas[0].Caption = Jogador.Simbolo) and
            (vArrayPanelJogadas[4].Caption = Jogador.Simbolo) and
            (vArrayPanelJogadas[8].Caption = Jogador.Simbolo);
  if Result then Exit;

  Result := (vArrayPanelJogadas[2].Caption = Jogador.Simbolo) and
            (vArrayPanelJogadas[4].Caption = Jogador.Simbolo) and
            (vArrayPanelJogadas[6].Caption = Jogador.Simbolo);
{$endregion}
end;
{$ENDREGION}

end.
