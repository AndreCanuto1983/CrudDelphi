object cadastroProdutos: TcadastroProdutos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Produtos'
  ClientHeight = 448
  ClientWidth = 754
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
  object Label4: TLabel
    Left = 160
    Top = 752
    Width = 89
    Height = 13
    Caption = 'Data do Cadastro:'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 160
    Top = 792
    Width = 28
    Height = 13
    Caption = 'Email:'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 160
    Top = 832
    Width = 50
    Height = 13
    Caption = 'Descri'#231#227'o:'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 160
    Top = 872
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 160
    Top = 912
    Width = 46
    Height = 13
    Caption = 'Telefone:'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 160
    Top = 952
    Width = 42
    Height = 13
    Caption = 'Produto:'
    FocusControl = DBEdit9
  end
  object DBEdit4: TDBEdit
    Left = 160
    Top = 768
    Width = 134
    Height = 21
    DataField = 'dtCadastro'
    TabOrder = 0
  end
  object DBEdit5: TDBEdit
    Left = 160
    Top = 808
    Width = 394
    Height = 21
    DataField = 'email'
    TabOrder = 1
  end
  object DBEdit6: TDBEdit
    Left = 160
    Top = 848
    Width = 1304
    Height = 21
    DataField = 'descricao'
    TabOrder = 2
  end
  object DBEdit7: TDBEdit
    Left = 160
    Top = 888
    Width = 199
    Height = 21
    DataField = 'idEndereco'
    TabOrder = 3
  end
  object DBEdit8: TDBEdit
    Left = 160
    Top = 928
    Width = 199
    Height = 21
    DataField = 'idTelefone'
    TabOrder = 4
  end
  object DBEdit9: TDBEdit
    Left = 160
    Top = 968
    Width = 199
    Height = 21
    DataField = 'idProduto'
    TabOrder = 5
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 24
    Width = 705
    Height = 305
    Caption = 'DADOS DOS PRODUTOS'
    TabOrder = 6
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 93
      Height = 13
      Caption = 'C'#243'digo do Produto:'
      FocusControl = edtCodigoProduto
    end
    object Label2: TLabel
      Left = 24
      Top = 72
      Width = 59
      Height = 13
      Caption = 'Fornecedor:'
      FocusControl = edtFornecedor
    end
    object Label3: TLabel
      Left = 296
      Top = 24
      Width = 89
      Height = 13
      Caption = 'Data do Cadastro:'
      FocusControl = edtCadastro
    end
    object Label10: TLabel
      Left = 24
      Top = 120
      Width = 42
      Height = 13
      Caption = 'Produto:'
      FocusControl = edtProduto
    end
    object Label11: TLabel
      Left = 24
      Top = 168
      Width = 48
      Height = 13
      Caption = 'Tamanho:'
      FocusControl = edtTamanho
    end
    object Label12: TLabel
      Left = 132
      Top = 168
      Width = 58
      Height = 13
      Caption = 'Numera'#231#227'o:'
      FocusControl = edtNumeracao
    end
    object Label13: TLabel
      Left = 384
      Top = 168
      Width = 83
      Height = 13
      Caption = 'Valor de Compra:'
      FocusControl = edtValorCompra
    end
    object Label14: TLabel
      Left = 544
      Top = 168
      Width = 76
      Height = 13
      Caption = 'Valor de Venda:'
      FocusControl = edtValorVenda
    end
    object Label15: TLabel
      Left = 256
      Top = 168
      Width = 60
      Height = 13
      Caption = 'Quantidade:'
      FocusControl = edtQuantidade
    end
    object Label16: TLabel
      Left = 24
      Top = 216
      Width = 50
      Height = 13
      Caption = 'Descric'#227'o:'
      FocusControl = edtDescricao
    end
    object edtCodigoProduto: TDBEdit
      Left = 24
      Top = 40
      Width = 199
      Height = 21
      DataField = 'idProduto'
      DataSource = dsProdutos
      Enabled = False
      TabOrder = 0
      OnKeyPress = edtCodigoProdutoKeyPress
    end
    object edtFornecedor: TDBEdit
      Left = 24
      Top = 88
      Width = 654
      Height = 21
      CharCase = ecUpperCase
      DataField = 'nomeFornecedor'
      DataSource = dsProdutos
      TabOrder = 2
    end
    object edtCadastro: TDBEdit
      Left = 296
      Top = 40
      Width = 134
      Height = 21
      DataField = 'data'
      DataSource = dsProdutos
      TabOrder = 1
      OnChange = edtCadastroChange
      OnKeyPress = edtCadastroKeyPress
    end
    object edtProduto: TDBEdit
      Left = 24
      Top = 136
      Width = 654
      Height = 21
      CharCase = ecUpperCase
      DataField = 'produto'
      DataSource = dsProdutos
      TabOrder = 3
    end
    object edtTamanho: TDBEdit
      Left = 24
      Top = 184
      Width = 48
      Height = 21
      CharCase = ecUpperCase
      DataField = 'tamanho'
      DataSource = dsProdutos
      TabOrder = 4
      OnChange = edtTamanhoChange
    end
    object edtNumeracao: TDBEdit
      Left = 132
      Top = 184
      Width = 58
      Height = 21
      DataField = 'numeracao'
      DataSource = dsProdutos
      TabOrder = 5
      OnKeyPress = edtNumeracaoKeyPress
    end
    object edtValorCompra: TDBEdit
      Left = 384
      Top = 184
      Width = 134
      Height = 21
      DataField = 'valorCompra'
      DataSource = dsProdutos
      TabOrder = 7
      OnKeyPress = edtValorCompraKeyPress
    end
    object edtValorVenda: TDBEdit
      Left = 544
      Top = 184
      Width = 134
      Height = 21
      DataField = 'valorVenda'
      DataSource = dsProdutos
      TabOrder = 8
      OnKeyPress = edtValorVendaKeyPress
    end
    object edtQuantidade: TDBEdit
      Left = 256
      Top = 184
      Width = 54
      Height = 21
      DataField = 'quantidade'
      DataSource = dsProdutos
      TabOrder = 6
      OnKeyPress = edtQuantidadeKeyPress
    end
    object edtDescricao: TDBEdit
      Left = 24
      Top = 232
      Width = 654
      Height = 57
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'descricao'
      DataSource = dsProdutos
      TabOrder = 9
    end
  end
  object GroupBox2: TGroupBox
    Left = 24
    Top = 335
    Width = 705
    Height = 65
    TabOrder = 7
    object DBNavigator1: TDBNavigator
      Left = 24
      Top = 3
      Width = 488
      Height = 49
      DataSource = dsProdutos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      TabOrder = 0
    end
    object btPesquisar: TBitBtn
      Left = 574
      Top = 3
      Width = 75
      Height = 46
      Caption = 'Pesquisar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btPesquisarClick
    end
  end
  object dsProdutos: TDataSource
    DataSet = dmConexao.tbProdutos
    Left = 688
    Top = 8
  end
end
