unit ufrmCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadrao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, System.Hash,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, UGeral;

type
  TfrmCadUsuario = class(TfrmCadBase)
    fdqEdicaoID: TLargeintField;
    fdqEdicaoNOME: TStringField;
    fdqEdicaoPWD: TStringField;
    lbl1: TLabel;
    lbl2: TLabel;
    edtPassword: TEdit;
    lbl3: TLabel;
    edtRePassword: TEdit;
    lbl4: TLabel;
    edtPasswordAdm: TEdit;
  private

  protected
    function verificaCampos: Boolean; override;
  public
    class function inserir(Aowner: TComponent; AIdTemporada: Integer): Boolean; override;
    class function editar(Aowner: TComponent; AId: Int64): Boolean; override;
    { Public declarations }

  end;

var
  frmCadUsuario: TfrmCadUsuario;

implementation

{$R *.dfm}
{ TfrmCadUsuario }

class function TfrmCadUsuario.editar(Aowner: TComponent; AId: Int64): Boolean;
begin
  Result := False;
end;

class function TfrmCadUsuario.inserir(Aowner: TComponent; AIdTemporada: Integer): Boolean;
begin
  frmCadUsuario := TfrmCadUsuario.Create(Aowner);
  try
    try
      frmCadUsuario.fdqEdicao.Open();
      frmCadUsuario.fdqEdicao.Insert;
      if frmCadUsuario.ShowModal = mrOk then
      begin
        frmCadUsuario.fdqEdicao.Post;

      end

    except
      ShowMessage('Usuário já cadastrado');
    end;
  finally
    tryFreeAndNil(frmCadUsuario);
  end;
end;

function TfrmCadUsuario.verificaCampos: Boolean;
var
  md5senha: string;
begin
  Result := False;
  if Trim(fdqEdicaoNOME.AsString) = '' then
  begin
    ShowMessage('Informe o Nome do Usuário.');
    Exit;
  end;
  if Trim(edtPassword.Text) = '' then
  begin
    ShowMessage('Informe a  Senha.');
    Exit;
  end;
  if edtPassword.Text <> edtRePassword.Text then
  begin
    ShowMessage('Senha e Confirmação da Senha não conferem.');
    Exit;
  end;
  if edtPasswordAdm.Text <> 'xcontrole1983' then
  begin
    ShowMessage('Senha de Administrador não confere.');
    Exit;
  end;
  md5senha := THashMD5.GetHashString(edtPassword.Text);
  fdqEdicaoPWD.AsString = md5senha;
  Result := true;
end;

initialization

finalization

end.
