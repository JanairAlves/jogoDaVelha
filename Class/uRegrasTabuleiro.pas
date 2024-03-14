unit uRegrasTabuleiro;

interface

uses
  System.Classes, System.SysUtils, Vcl.ExtCtrls, Vcl.Graphics, Dialogs, vcl.Forms;

type
  TJogador = record
  Nome: string;
  Simbolo: char;
  end;

type
  TRgTb = class
  private
  function ValidarTabuleiroCheio(vListaPanelTabuleiro: TList): Boolean;
  public
  procedure LimparTabuleiro(vListaPanelTabuleiro: TList);
  end;

  var Jogador : TJogador;
        oRgTb : TRgTb;
implementation


{$region 'Valida se o tabuleiro est� cheio'}
function TRgTb.ValidarTabuleiroCheio(vListaPanelTabuleiro: TList): boolean;
var
  pnPecaTab: TPanel;
  i: integer;
begin
  for i := 1 to 9 do
  begin
    pnPecaTab := FindGlobalComponent('pnTab' + intToStr(i)) as TPanel;
    if pnPecaTab.Caption = '' then
    begin
      Result := False;
      Exit;
    end;
  end;
  Result := True;
end;
{$endregion}

{$region 'Limpar tabuleiro'}
procedure TRgTb.LimparTabuleiro(vListaPanelTabuleiro: TList);
var
  panel: TPanel;
begin
  for panel in vListaPanelTabuleiro do
  begin
    if  panel.Caption <> EmptyStr then
      panel.Caption :=  EmptyStr;
  end;
end;
{$endregion}

{$region 'Estilo panel Jogador'}
//Essa procedure ainda n�o est� sendo usada, foi salvo apenas como esbo�o, se preferir pode descartar
procedure estiloPn;
var pnPecaTab: TPanel; i: integer;
begin
  for i := 1 to 9 do
  begin
    pnPecaTab := FindGlobalComponent('pnTab' + intToStr(i)) as TPanel;
    if not (pnPecaTab.Caption = EmptyStr) then begin
      if (pnPecaTab.Caption = 'X') then
          pnPecaTab.Color := clRed
          else
          pnPecaTab.Color := clBlue;
    end;
  end;
end;
{$endregion}


end.
