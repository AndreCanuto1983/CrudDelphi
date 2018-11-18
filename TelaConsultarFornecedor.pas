unit TelaConsultarFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB;

type
  TconsultarFornecedor = class(TForm)
    edtPesquisaNome: TEdit;
    edtPesquisaCpf: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    dsConsultaPJ: TDataSource;
    procedure edtPesquisaNomeChange(Sender: TObject);
    procedure edtPesquisaCpfChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  consultarFornecedor: TconsultarFornecedor;

implementation

uses TelaConexao, TelaCadastroFornecedores;

{$R *.dfm}

procedure TconsultarFornecedor.edtPesquisaCpfChange(Sender: TObject);
begin
    dmConexao.tbPessoaJuridica.Locate('cnpj', edtPesquisaCpf.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TconsultarFornecedor.edtPesquisaNomeChange(Sender: TObject);
begin
    dmConexao.tbPessoaJuridica.Locate('nomeFantasia', edtPesquisaNome.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TconsultarFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if (Application.MessageBox('Deseja realmente sair?', 'Aviso', 36)=6)then
    begin
       dmConexao.tbPessoaJuridica.Close;
       cadastroFornecedores.Show;
       close;
    end
      else
        begin
            Abort;
        end;
end;

procedure TconsultarFornecedor.FormShow(Sender: TObject);
begin
    dmConexao.tbPessoaJuridica.Open;
end;

end.
