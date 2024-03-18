object FormJogoDaVelha: TFormJogoDaVelha
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Jogo da velha'
  ClientHeight = 633
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnMouseActivate = FormMouseActivate
  OnShow = FormShow
  TextHeight = 15
  object pnTodaArea: TPanel
    Left = 0
    Top = 0
    Width = 678
    Height = 633
    Align = alClient
    BevelEdges = [beTop]
    TabOrder = 0
    ExplicitWidth = 684
    ExplicitHeight = 642
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
        object pnCS1: TPanel
          Left = 0
          Top = -1
          Width = 30
          Height = 30
          Caption = 'CS1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
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
        object pnCS2: TPanel
          Left = 0
          Top = 0
          Width = 30
          Height = 30
          Caption = 'CS2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
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
        object pnCS3: TPanel
          Left = 0
          Top = 0
          Width = 30
          Height = 30
          Caption = 'CS3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
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
        object pnCS4: TPanel
          Left = 0
          Top = 0
          Width = 30
          Height = 30
          Caption = 'CS4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
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
        object pnCS5: TPanel
          Left = 0
          Top = 0
          Width = 30
          Height = 30
          Caption = 'CS5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
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
        object pnCS6: TPanel
          Left = 0
          Top = 0
          Width = 30
          Height = 30
          Caption = 'CS6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
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
        object pnCS7: TPanel
          Left = -1
          Top = 0
          Width = 30
          Height = 30
          Caption = 'CS7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
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
        object pnCS8: TPanel
          Left = 0
          Top = 0
          Width = 30
          Height = 30
          Caption = 'CS8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
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
        object pnCS9: TPanel
          Left = 0
          Top = 0
          Width = 30
          Height = 30
          Caption = 'CS9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object pnStatus: TPanel
      Left = 1
      Top = 1
      Width = 686
      Height = 64
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 682
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
        Width = 231
        Height = 64
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 227
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
          Width = 3
          Height = 15
        end
        object lbVitJog2: TLabel
          Left = 67
          Top = 41
          Width = 3
          Height = 15
        end
      end
      object pnStatusRodadas: TPanel
        Left = 455
        Top = 0
        Width = 231
        Height = 64
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitLeft = 451
        object lbRodadas: TLabel
          Left = 98
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
        object lbContRodadas: TLabel
          Left = 115
          Top = 19
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
    object pnJogadas: TPanel
      Left = 1
      Top = 512
      Width = 686
      Height = 130
      Align = alBottom
      TabOrder = 2
      ExplicitTop = 511
      ExplicitWidth = 682
      object pnTituloJogadas: TPanel
        Left = 1
        Top = 1
        Width = 684
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
        ExplicitWidth = 680
      end
    end
  end
end
