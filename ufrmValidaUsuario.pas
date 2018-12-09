unit ufrmValidaUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmValidaUsuario = class(TForm)
    pnl2: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    edtPassword: TEdit;
    pnl1: TPanel;
    btnOk: TButton;
    btnCancelar: TButton;
    fdqUsuario: TFDQuery;
    fdqUsuarioID: TLargeintField;
    fdqUsuarioNOME: TStringField;
    fdqUsuarioPWD: TStringField;
    dtsUsuario: TDataSource;
    fdqUsuarioHABILITADO: TBooleanField;
    dbcbbUsuario: TDBLookupComboBox;
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class function confirmaUsuario(Aowner: TComponent): String;
  end;

var
  frmValidaUsuario: TfrmValidaUsuario;

implementation

uses System.Hash,ugeral;
{$R *.dfm}

procedure TfrmValidaUsuario.btnOkClick(Sender: TObject);
var
  md5senha: string;
begin
  if edtPassword.Text = '' then
  begin
    ShowMessage('Informe a  Senha.');
    Exit;
  end;
   if (fdqUsuarioNOME.AsString = '') or (dbcbbUsuario.KeyValue= '') then
  begin
    ShowMessage('Informe o usuario.');
    Exit;
  end;
  md5senha := THashMD5.GetHashString(edtPassword.Text);
  if md5senha <> fdqUsuarioPWD.AsString then
  begin
    ShowMessage('Senha não confere.');
    Exit;
  end;
  ModalResult := mrok;
end;

class function TfrmValidaUsuario.confirmaUsuario(Aowner: TComponent): String;
begin
  Result :='';
  frmValidaUsuario := TfrmValidaUsuario.Create(Aowner);
  try
     frmValidaUsuario.fdqUsuario.Open();
     if frmValidaUsuario.ShowModal = mrok then
     begin
       Result := frmValidaUsuario.fdqUsuarioNOME.AsString;
     end;
  finally
    tryFreeAndNil(frmValidaUsuario);
  end;
end;



initialization
finalization
end.
