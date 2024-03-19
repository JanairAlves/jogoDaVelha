object FormJogoDaVelha: TFormJogoDaVelha
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Jogo da velha'
  ClientHeight = 624
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object pnTodaArea: TPanel
    Left = 0
    Top = 0
    Width = 672
    Height = 624
    Align = alClient
    BevelEdges = [beTop]
    TabOrder = 0
    ExplicitWidth = 668
    ExplicitHeight = 623
    object pnTabuleiro: TPanel
      Left = 136
      Top = 88
      Width = 400
      Height = 400
      Color = clBtnShadow
      ParentBackground = False
      TabOrder = 0
      object pnTab1: TPanel
        Left = 1
        Top = 1
        Width = 125
        Height = 125
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -107
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        OnClick = pnTab1Click
      end
      object pnTab2: TPanel
        Left = 137
        Top = 1
        Width = 125
        Height = 125
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -107
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        OnClick = pnTab2Click
      end
      object pnTab3: TPanel
        Left = 274
        Top = 1
        Width = 125
        Height = 125
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -107
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        OnClick = pnTab3Click
      end
      object pnTab4: TPanel
        Left = 1
        Top = 137
        Width = 125
        Height = 125
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -107
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        OnClick = pnTab4Click
      end
      object pnTab5: TPanel
        Left = 137
        Top = 137
        Width = 125
        Height = 125
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -107
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 4
        OnClick = pnTab5Click
      end
      object pnTab6: TPanel
        Left = 274
        Top = 137
        Width = 125
        Height = 125
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -107
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 5
        OnClick = pnTab6Click
      end
      object pnTab7: TPanel
        Left = 1
        Top = 274
        Width = 125
        Height = 125
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -107
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 6
        OnClick = pnTab7Click
      end
      object pnTab8: TPanel
        Left = 137
        Top = 274
        Width = 125
        Height = 125
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -107
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 7
        OnClick = pnTab8Click
      end
      object pnTab9: TPanel
        Left = 274
        Top = 274
        Width = 125
        Height = 125
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -107
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 8
        OnClick = pnTab9Click
      end
    end
    object pnStatus: TPanel
      Left = 1
      Top = 1
      Width = 670
      Height = 64
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 666
      object pnStatusNome: TPanel
        Left = 0
        Top = 0
        Width = 224
        Height = 64
        Align = alLeft
        BevelEdges = [beRight]
        BevelOuter = bvNone
        TabOrder = 0
        object lbJogador1: TLabel
          Left = 16
          Top = 18
          Width = 69
          Height = 17
          Caption = 'Jogador 1: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbJogador2: TLabel
          Left = 16
          Top = 39
          Width = 69
          Height = 17
          Caption = 'Jogador 2: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbNomes: TLabel
          Left = 64
          Top = 2
          Width = 43
          Height = 17
          Caption = 'Nomes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbNomeJogador1: TLabel
          Left = 91
          Top = 20
          Width = 3
          Height = 15
        end
        object lbNomeJogador2: TLabel
          Left = 91
          Top = 41
          Width = 3
          Height = 15
        end
      end
      object pnStatusVitorias: TPanel
        Left = 224
        Top = 0
        Width = 215
        Height = 64
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 211
        object lbJog1: TLabel
          Left = 16
          Top = 18
          Width = 45
          Height = 17
          Caption = 'Jog. 1: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbJog2: TLabel
          Left = 16
          Top = 39
          Width = 45
          Height = 17
          Caption = 'Jog. 2: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbVitorias: TLabel
          Left = 88
          Top = 2
          Width = 48
          Height = 17
          Caption = 'Vit'#243'rias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbVitJog1: TLabel
          Left = 67
          Top = 20
          Width = 6
          Height = 15
          Caption = '0'
        end
        object lbVitJog2: TLabel
          Left = 67
          Top = 41
          Width = 6
          Height = 15
          Caption = '0'
        end
      end
      object pnStatusRodadas: TPanel
        Left = 439
        Top = 0
        Width = 231
        Height = 64
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitLeft = 435
        object Panel1: TPanel
          Left = 116
          Top = 0
          Width = 115
          Height = 64
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object lbJogadas: TLabel
            Left = 28
            Top = 2
            Width = 50
            Height = 17
            Caption = 'Jogadas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbPlacarJogadas: TLabel
            Left = 48
            Top = 23
            Width = 16
            Height = 37
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 115
          Height = 64
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object lbRodadas: TLabel
            Left = 28
            Top = 2
            Width = 52
            Height = 17
            Caption = 'Rodadas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbPlacarRodadas: TLabel
            Left = 44
            Top = 25
            Width = 16
            Height = 37
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object pnJogadas: TPanel
      Left = 1
      Top = 493
      Width = 670
      Height = 130
      Align = alBottom
      TabOrder = 2
      ExplicitTop = 492
      ExplicitWidth = 666
      object pnTituloJogadas: TPanel
        Left = 1
        Top = 1
        Width = 668
        Height = 24
        Align = alTop
        Caption = 'Jogadas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 664
      end
    end
  end
end
