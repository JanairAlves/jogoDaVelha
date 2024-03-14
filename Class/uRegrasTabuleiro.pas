unit uRegrasTabuleiro;

interface

uses
  System.Classes, System.SysUtils, Vcl.ExtCtrls, Vcl.Graphics, Dialogs, vcl.Forms;

procedure LimparTabuleiro(vListaPanelTabuleiro: TList);
function ValidarTabuleiroCheio(vListaPanelTabuleiro: TList): boolean;

implementation


{$region 'Valida se o tabuleiro está cheio'}
function ValidarTabuleiroCheio(vListaPanelTabuleiro: TList): boolean;
var
  pnPecaTab: TPanel;
begin
  for pnPecaTab in vListaPanelTabuleiro do
  begin
    if pnPecaTab.Caption = EmptyStr then
    begin
      Result := False;
      Exit;
    end;
  end;
  Result := True;
end;
{$endregion}

{$region 'Limpar tabuleiro'}
procedure LimparTabuleiro(vListaPanelTabuleiro: TList);
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
//Essa procedure ainda não está sendo usada, foi salvo apenas como esboço, se preferir pode descartar
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
