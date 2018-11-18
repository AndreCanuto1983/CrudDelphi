unit TelaPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, ExtCtrls, pngimage, jpeg, StdCtrls, Buttons;

type
  TsistemaComercial = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Produtos1: TMenuItem;
    Fornecedores1: TMenuItem;
    Vendas1: TMenuItem;
    Relatrios1: TMenuItem;
    Produtos2: TMenuItem;
    Vendas2: TMenuItem;
    Imprimir1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure btcadastroClientesClick(Sender: TObject);
    procedure btcadastroProdutosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btFornecedoresClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Venda1Click(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  sistemaComercial: TsistemaComercial;

implementation

uses TelaLogin, TelaCadastroCliente, TelaCadastroProdutos,
  TelaCadastroFornecedores, TelaVendas, TelaConexao, TelaConsultarCliente;

{$R *.dfm}

procedure TsistemaComercial.BitBtn1Click(Sender: TObject);
begin
    cadastroVendas.ShowModal;
end;

procedure TsistemaComercial.btcadastroClientesClick(Sender: TObject);
begin
    cadastroCliente.ShowModal;

end;

procedure TsistemaComercial.btcadastroProdutosClick(Sender: TObject);
begin
    cadastroProdutos.ShowModal;
end;

procedure TsistemaComercial.btFornecedoresClick(Sender: TObject);
begin
    cadastroFornecedores.ShowModal;
end;

procedure TsistemaComercial.Cliente1Click(Sender: TObject);
begin
    cadastroCliente.ShowModal;
end;

procedure TsistemaComercial.Clientes1Click(Sender: TObject);
begin
    cadastroCliente.ShowModal;
end;

procedure TsistemaComercial.Clientes2Click(Sender: TObject);
begin
    consultarCliente.ShowModal;
end;

procedure TsistemaComercial.Exit1Click(Sender: TObject);
begin
    if (Application.MessageBox('Deseja realmente sair?', 'Aviso', 36)=6)then
  begin
     Application.Terminate;
  end
 else
  begin
    Abort;
  end;
end;

procedure TsistemaComercial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if (Application.MessageBox('Deseja realmente sair?', 'Aviso', 36)=6)then
  begin
     dmConexao.ADOConnection.Connected := false;
     Application.Terminate;
  end
 else
  begin
    Abort;
  end;
end;

procedure TsistemaComercial.Fornecedor1Click(Sender: TObject);
begin
    cadastroFornecedores.ShowModal;
end;

procedure TsistemaComercial.Fornecedores1Click(Sender: TObject);
begin
  cadastroFornecedores.ShowModal;
end;

procedure TsistemaComercial.Produto1Click(Sender: TObject);
begin
    cadastroProdutos.ShowModal;
end;

procedure TsistemaComercial.Produtos1Click(Sender: TObject);
begin
  cadastroProdutos.ShowModal;
end;

procedure TsistemaComercial.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := ' Vers�o 1.1';
  StatusBar1.Panels[1].Text := 'Usu�rio: ' + Login.edtUsuario.Text;
  StatusBar1.Panels[2].Text := ' ' + FormatDateTime ('dddd", "dd" de "mmmm" de "yyyy',now);
end;

procedure TsistemaComercial.Venda1Click(Sender: TObject);
begin
    cadastroVendas.ShowModal;
end;

procedure TsistemaComercial.Vendas1Click(Sender: TObject);
begin
    cadastroVendas.ShowModal;
end;

end.
