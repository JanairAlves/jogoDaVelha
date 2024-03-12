unit uFormJogoDaVelha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, uRegrasTabuleiro;

type
  TFormJogoDaVelha = class(TForm)
    pnTodaArea: TPanel;
    pnTabuleiro: TPanel;
    pnStatus: TPanel;
    pnTab1: TPanel;
    pnTab2: TPanel;
    pnTab3: TPanel;
    pnTab4: TPanel;
    pnTab5: TPanel;
    pnTab6: TPanel;
    pnTab7: TPanel;
    pnTab8: TPanel;
    pnTab9: TPanel;
    pnStatusNome: TPanel;
    pnStatusVitorias: TPanel;
    pnStatusRodadas: TPanel;
    lbJogador1: TLabel;
    lbJogador2: TLabel;
    lbJog1: TLabel;
    lbJog2: TLabel;
    lbVitorias: TLabel;
    lbNomes: TLabel;
    lbRodadas: TLabel;
    lbContRodadas: TLabel;
    lbNomeJogador1: TLabel;
    lbNomeJogador2: TLabel;
    lbVitJog1: TLabel;
    lbVitJog2: TLabel;
    pnJogadas: TPanel;
    pnTituloJogadas: TPanel;
    pnCS1: TPanel;
    pnCS2: TPanel;
    pnCS3: TPanel;
    pnCS4: TPanel;
    pnCS5: TPanel;
    pnCS6: TPanel;
    pnCS7: TPanel;
    pnCS8: TPanel;
    pnCS9: TPanel;
    procedure FormShow(Sender: TObject);
    procedure pnTab1Click(Sender: TObject);
    procedure pnTab2Click(Sender: TObject);
    procedure pnTab3Click(Sender: TObject);
    procedure pnTab4Click(Sender: TObject);
    procedure pnTab5Click(Sender: TObject);
    procedure pnTab6Click(Sender: TObject);
    procedure pnTab7Click(Sender: TObject);
    procedure pnTab8Click(Sender: TObject);
    procedure pnTab9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormJogoDaVelha: TFormJogoDaVelha;

implementation

{$R *.dfm}

{ TFormJogoDaVelha }

procedure TFormJogoDaVelha.FormShow(Sender: TObject);
begin
  zerarTabuleiro;
end;

procedure TFormJogoDaVelha.pnTab1Click(Sender: TObject);
begin
 pnTab1.Caption := Jogada;
end;

procedure TFormJogoDaVelha.pnTab2Click(Sender: TObject);
begin
 pnTab2.Caption := Jogada;
end;

procedure TFormJogoDaVelha.pnTab3Click(Sender: TObject);
begin
 pnTab3.Caption := Jogada;
end;

procedure TFormJogoDaVelha.pnTab4Click(Sender: TObject);
begin
 pnTab4.Caption := Jogada;
end;

procedure TFormJogoDaVelha.pnTab5Click(Sender: TObject);
begin
 pnTab5.Caption := Jogada;
end;

procedure TFormJogoDaVelha.pnTab6Click(Sender: TObject);
begin
 pnTab6.Caption := Jogada;
end;

procedure TFormJogoDaVelha.pnTab7Click(Sender: TObject);
begin
 pnTab7.Caption := Jogada;
end;

procedure TFormJogoDaVelha.pnTab8Click(Sender: TObject);
begin
 pnTab8.Caption := Jogada;
end;

procedure TFormJogoDaVelha.pnTab9Click(Sender: TObject);
begin
 pnTab9.Caption := Jogada;
end;

end.