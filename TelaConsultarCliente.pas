unit TelaConsultarCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls, Buttons, ADODB,
  Tabs, DockTabSet;

type
  TconsultarCliente = class(TForm)
    DBGrid1: TDBGrid;
    dsConsultaPF: TDataSource;
    edtPesquisaNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtPesquisaCpf: TEdit;
    DockTabSet1: TDockTabSet;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtPesquisaNomeChange(Sender: TObject);
    procedure edtPesquisaCpfChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  consultarCliente: TconsultarCliente;

implementation

uses TelaConexao, TelaCadastroCliente;

{$R *.dfm}

procedure TconsultarCliente.edtPesquisaCpfChange(Sender: TObject);
begin
    dmConexao.tbPessoaFisica.Locate('cpf', edtPesquisaCpf.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TconsultarCliente.edtPesquisaNomeChange(Sender: TObject);
begin
    dmConexao.tbPessoaFisica.Locate('nome', edtPesquisaNome.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TconsultarCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if (Application.MessageBox('Deseja realmente sair?', 'Aviso', 36)=6)then
    begin
       dmConexao.tbPessoaFisica.Close;
       cadastroCliente.Show;
       close;
    end
      else
        begin
            Abort;
        end;
end;

procedure TconsultarCliente.FormShow(Sender: TObject);
begin
    dmConexao.tbPessoaFisica.Open;
end;

end.
