object sistemaComercial: TsistemaComercial
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Sistema Comercial'
  ClientHeight = 676
  ClientWidth = 1385
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -5
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 6
  object StatusBar1: TStatusBar
    Left = 0
    Top = 659
    Width = 1385
    Height = 17
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Panels = <
      item
        Width = 900
      end
      item
        Width = 200
      end
      item
        Width = 200
      end>
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 1352
    Top = 448
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 40
    object Cadastros1: TMenuItem
      Caption = 'Cadastrar'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
      object Fornecedores1: TMenuItem
        Caption = 'Fornecedores'
        OnClick = Fornecedores1Click
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
        OnClick = Produtos1Click
      end
      object Vendas1: TMenuItem
        Caption = 'Vendas'
        OnClick = Vendas1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Produtos2: TMenuItem
        Caption = 'Produtos'
      end
      object Vendas2: TMenuItem
        Caption = 'Vendas'
      end
    end
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
    end
  end
end
