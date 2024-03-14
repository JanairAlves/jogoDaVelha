unit uRegrasTabuleiro;

interface

uses
  System.SysUtils, Vcl.ExtCtrls, Vcl.Graphics, Dialogs;

type
  TJogador = record
  Nome: string;
  Simbolo: char;
  private
  procedure CriarJogadores(jogadores: array of TJogador);
  public
  end;

type
  TRgTb = class
  private
  function ValidarJogadaVitoriosa(pn1, pn2, pn3: TPanel): boolean;
  function ValidarTabuleiroCheio: boolean;
  public
  procedure LimparTabuleiro;
  function Jogada: string;
  end;

  var Jogador : TJogador;
        oRgTb : TRgTb;
implementation

uses
  System.Classes;

{$region 'Valida se o tabuleiro está cheio'}
function TRgTb.ValidarTabuleiroCheio: boolean;
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
procedure TRgTb.LimparTabuleiro;
var
  pnPecaTab: TPanel;
  i: integer;
begin
  for i := 1 to 9 do
  begin
    pnPecaTab := FindGlobalComponent('pnTab' + intToStr(i)) as TPanel;
    if  Assigned(pnPecaTab) then pnPecaTab.Caption :=  EmptyStr;
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

function TRgTb.ValidarJogadaVitoriosa(pn1, pn2, pn3: TPanel): boolean;
begin
  if Trim(pn1.Caption).IsEmpty or Trim(pn2.Caption).IsEmpty or Trim(pn3.Caption).IsEmpty then
     begin
       Result := False;
       Exit;
     end;
  if (Trim(pn1.Caption) = Trim(pn2.Caption)) and (Trim(pn1.Caption) = Trim(pn3.Caption)) then
     begin
      Result := True;
      Exit;
     end;

  Result := False;
end;

function TRgTb.Jogada: string;
var
  jogada: string;
begin
  jogada := 'X';
  Result := jogada;
end;

procedure TJogador.CriarJogadores(jogadores: array of TJogador);
begin
  jogadores[0].Nome := '';
  jogadores[0].Simbolo := 'O';

  jogadores[1].Nome := '';
  jogadores[1].Simbolo := 'X';

end;

end.
