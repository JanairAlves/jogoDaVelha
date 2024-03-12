unit uRegrasTabuleiro;

interface

uses
  Vcl.ExtCtrls, Vcl.Graphics, Dialogs;

type
  TJogador = record
  Nome: string;
  Simbolo: char;
  end;
  procedure ZerarTabuleiro;
  function ValidarJogadaVitoriosa(pn1, pn2, pn3: TPanel): boolean;
  function Jogada: string;
  procedure CriarJogadores(jogadores: array of TJogador);

implementation

uses
  System.SysUtils, System.Classes;

procedure ZerarTabuleiro;
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

function ValidarJogadaVitoriosa(pn1, pn2, pn3: TPanel): boolean;
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

function Jogada: string;
var
  jogada: string;
begin
  jogada := 'X';
  Result := jogada;
end;

procedure CriarJogadores(jogadores: array of TJogador);
begin
  jogadores[0].Nome := '';
  jogadores[0].Simbolo := 'O';

  jogadores[1].Nome := '';
  jogadores[1].Simbolo := 'X';

end;



end.
