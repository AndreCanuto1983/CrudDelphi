object consultarCliente: TconsultarCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisar Clientes'
  ClientHeight = 479
  ClientWidth = 769
  Color = clBtnFace
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
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 99
    Height = 13
    Caption = 'Consultar por Nome:'
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 72
    Height = 13
    Caption = 'Consultar CPF:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 96
    Width = 753
    Height = 344
    DataSource = dsConsultaPF
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cpf'
        Title.Caption = 'CPF'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Width = 289
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtNascimento'
        Title.Caption = 'Nascimento'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = 'Cadastro'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Title.Caption = 'Telefone'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'celular'
        Title.Caption = 'Celular'
        Width = 99
        Visible = True
      end>
  end
  object edtPesquisaNome: TEdit
    Left = 113
    Top = 13
    Width = 304
    Height = 21
    TabOrder = 1
    OnChange = edtPesquisaNomeChange
  end
  object edtPesquisaCpf: TEdit
    Left = 113
    Top = 53
    Width = 176
    Height = 21
    TabOrder = 2
    OnChange = edtPesquisaCpfChange
  end
  object DockTabSet1: TDockTabSet
    Left = 584
    Top = 200
    Width = 1
    Height = 57
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object dsConsultaPF: TDataSource
    DataSet = dmConexao.tbPessoaFisica
    Left = 544
    Top = 8
  end
end
