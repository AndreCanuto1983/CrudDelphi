unit TelaCadastroProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, DBCtrls, DB, ADODB, ExtCtrls;

type
  TcadastroProdutos = class(TForm)
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtCodigoProduto: TDBEdit;
    dsProdutos: TDataSource;
    Label2: TLabel;
    edtFornecedor: TDBEdit;
    Label3: TLabel;
    edtCadastro: TDBEdit;
    Label10: TLabel;
    edtProduto: TDBEdit;
    Label11: TLabel;
    edtTamanho: TDBEdit;
    Label12: TLabel;
    edtNumeracao: TDBEdit;
    Label13: TLabel;
    edtValorCompra: TDBEdit;
    Label14: TLabel;
    edtValorVenda: TDBEdit;
    Label15: TLabel;
    edtQuantidade: TDBEdit;
    Label16: TLabel;
    edtDescricao: TDBEdit;
    GroupBox2: TGroupBox;
    DBNavigator1: TDBNavigator;
    btPesquisar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCadastroChange(Sender: TObject);
    procedure edtCadastroKeyPress(Sender: TObject; var Key: Char);
    procedure btPesquisarClick(Sender: TObject);
    function Mascara(edt: String;str:String):string;
    procedure FormShow(Sender: TObject);
    procedure edtCodigoProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure edtTamanhoChange(Sender: TObject);
    procedure edtNumeracaoKeyPress(Sender: TObject; var Key: Char);
    procedure edtQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorCompraKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorVendaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadastroProdutos: TcadastroProdutos;

implementation

uses TelaCadastroCliente, TelaConexao, TelaConsultarProduto;

{$R *.dfm}

procedure TcadastroProdutos.btPesquisarClick(Sender: TObject);
begin
    cadastroProdutos.Hide;
    consultarProduto.ShowModal;
end;

procedure TcadastroProdutos.edtCadastroChange(Sender: TObject);
begin
    edtCadastro.Text := Mascara(edtCadastro.Text,'99/99/9999');
    edtCadastro.SelStart := Length(edtCadastro.Text);
end;

procedure TcadastroProdutos.edtCadastroKeyPress(Sender: TObject; var Key: Char);
begin
    if not (Key in ['0'..'9',#8]) then Abort;
end;

procedure TcadastroProdutos.edtCodigoProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not (Key in ['0'..'9',#8]) then Abort;
end;

procedure TcadastroProdutos.edtNumeracaoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not (Key in ['0'..'9',#8]) then Abort;
end;

procedure TcadastroProdutos.edtQuantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not (Key in ['0'..'9',#8]) then Abort;
end;

procedure TcadastroProdutos.edtTamanhoChange(Sender: TObject);
var Key: Char;
begin
    if not (Key in ['0'..'9',#8]) then Abort;
end;

procedure TcadastroProdutos.edtValorCompraKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not (Key in ['0'..'9',#8]) then Abort;
end;

procedure TcadastroProdutos.edtValorVendaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not (Key in ['0'..'9',#8]) then Abort;
end;

procedure TcadastroProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if (Application.MessageBox('Deseja realmente sair?', 'Aviso', 36)=6)then
    begin
        dmConexao.tbProdutos.Close;
        dmConexao.tbProdutos.Active := false;
        close;
    end
      else
        begin
            Abort;
        end;
end;

procedure TcadastroProdutos.FormShow(Sender: TObject);
begin
    dmConexao.tbProdutos.Active := true;
    dmConexao.tbProdutos.Open;
end;

function TcadastroProdutos.Mascara(edt, str: String): string;
  var i : integer;
begin
  for i := 1 to Length(edt) do
  begin
     if (str[i] = '9') and not (edt[i] in ['0'..'9']) and (Length(edt)=Length(str)+1) then
        delete(edt,i,1);
     if (str[i] <> '9') and (edt[i] in ['0'..'9']) then
        insert(str[i],edt, i);
  end;
  result := edt;
end;

end.
