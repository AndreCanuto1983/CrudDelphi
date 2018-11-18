object consultarFornecedor: TconsultarFornecedor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Consultar Fornecedores'
  ClientHeight = 453
  ClientWidth = 773
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 72
    Height = 13
    Caption = 'Consultar CPF:'
  end
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 99
    Height = 13
    Caption = 'Consultar por Nome:'
  end
  object edtPesquisaNome: TEdit
    Left = 113
    Top = 13
    Width = 304
    Height = 21
    TabOrder = 0
    OnChange = edtPesquisaNomeChange
  end
  object edtPesquisaCpf: TEdit
    Left = 113
    Top = 53
    Width = 176
    Height = 21
    TabOrder = 1
    OnChange = edtPesquisaCpfChange
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 91
    Width = 753
    Height = 344
    DataSource = dsConsultaPJ
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cnpj'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomeFantasia'
        Width = 228
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'celular'
        Width = 75
        Visible = True
      end>
  end
  object dsConsultaPJ: TDataSource
    DataSet = dmConexao.tbPessoaJuridica
    Left = 592
    Top = 8
  end
end
