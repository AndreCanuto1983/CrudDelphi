unit telaLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, pngimage, ExtCtrls, DB, DBCtrls, ADODB;

type
  TLogin = class(TForm)
    gbEntrarNoSistema: TGroupBox;
    btEntrar: TButton;
    GroupBox1: TGroupBox;
    lblSistemaComercial: TLabel;
    lblVersao: TLabel;
    Image2: TImage;
    Label3: TLabel;
    Label4: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    procedure btEntrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login: TLogin;

implementation

uses TelaPrincipal, TelaConexao;

{$R *.dfm}

procedure TLogin.btEntrarClick(Sender: TObject);
begin
   if (edtUsuario.Text = 'Andre') and (edtSenha.Text = '123') then
   begin
      Login.Hide;
      sistemaComercial.ShowModal;
   end
   else if (edtUsuario.Text = 'Andre') and (edtSenha.Text <> '123') then
   begin
      MessageDlg('Senha incorreta!', mtError, [mbOk],0);
      edtSenha.SetFocus;
   end
   else if (edtUsuario.Text <> 'Andre') and (edtSenha.Text = '123') then
   begin
      MessageDlg('Usu�rio incorreto!', mtError, [mbOk],0);
      edtUsuario.SetFocus;
   end
   else if (edtUsuario.Text = '') or (edtSenha.Text = '')then
     begin
         MessageDlg('Digite um usuario ou senha para entrar no sistema!', mtError, [mbOk],0);
         edtUsuario.SetFocus;
     end
     else if not(edtUsuario.Text = 'Andre') and not (edtSenha.Text = '123') then
   begin
      MessageDlg('Usuario e senha n�o existe!', mtError, [mbOk],0);
      edtUsuario.SetFocus;
   end

end;

procedure TLogin.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
    if not (Key in ['0'..'9',#8]) then
      begin
      application.MessageBox('N�o � permitido letras e caracteres especiais!','Aten��o');
      Abort;
      end;

    if Key = #8 then exit;
end;

procedure TLogin.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TLogin.FormShow(Sender: TObject);
begin
    dmConexao.ADOConnection.Connected := true;
    edtUsuario.SetFocus;
end;

end.

