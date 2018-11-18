program ProjetoSistemaComercial;

uses
  Forms,
  TelaLogin in 'TelaLogin.pas' {Login},
  TelaPrincipal in 'TelaPrincipal.pas' {sistemaComercial},
  TelaCadastroCliente in 'TelaCadastroCliente.pas' {cadastroCliente},
  TelaCadastroProdutos in 'TelaCadastroProdutos.pas' {cadastroProdutos},
  TelaCadastroFornecedores in 'TelaCadastroFornecedores.pas' {cadastroFornecedores},
  TelaVendas in 'TelaVendas.pas' {cadastroVendas},
  TelaConexao in 'TelaConexao.pas' {dmConexao: TDataModule},
  TelaConsultarCliente in 'TelaConsultarCliente.pas' {consultarCliente},
  TelaConsultarFornecedor in 'TelaConsultarFornecedor.pas' {consultarFornecedor},
  TelaConsultarProduto in 'TelaConsultarProduto.pas' {consultarProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TLogin, Login);
  Application.CreateForm(TsistemaComercial, sistemaComercial);
  Application.CreateForm(TcadastroCliente, cadastroCliente);
  Application.CreateForm(TcadastroProdutos, cadastroProdutos);
  Application.CreateForm(TcadastroFornecedores, cadastroFornecedores);
  Application.CreateForm(TcadastroVendas, cadastroVendas);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TconsultarCliente, consultarCliente);
  Application.CreateForm(TconsultarFornecedor, consultarFornecedor);
  Application.CreateForm(TconsultarProduto, consultarProduto);
  Application.Run;
end.
