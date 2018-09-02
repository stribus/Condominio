unit ufrmCadDependentes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, JvDBCheckBox;

type
  TfrmCadDependente = class(TfrmCadBase)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    chkPERMITIR_RETIRAR: TJvDBCheckBox;
    dbmmoOBS: TDBMemo;
  private
    { Private declarations }
  protected
    function verificaCampos: Boolean; override;
    { Private declarations }
  public
    { Public declarations }
    class function inserir(Aowner: TComponent; AIdTemporada: Integer): Boolean; override;
    class function editar(Aowner: TComponent; AId: Int64): Boolean; override;
  end;

var
  frmCadDependente: TfrmCadDependente;

implementation

uses
  ugeral;

{$R *.dfm}
{ TfrmCadDependente }

class function TfrmCadDependente.editar(Aowner: TComponent; AId: Int64): Boolean;
begin
  try
    frmCadDependente := TfrmCadDependente.Create(Aowner);
    Result := frmCadDependente.ShowModal = mrOk;
  finally
    tryFreeAndNil(frmCadDependente);
  end;
end;

class function TfrmCadDependente.inserir(Aowner: TComponent; AIdTemporada: Integer): Boolean;
begin
  try
    frmCadDependente := TfrmCadDependente.Create(Aowner);
    Result := frmCadDependente.ShowModal = mrOk;
  finally
    tryFreeAndNil(frmCadDependente);
  end;
end;

function TfrmCadDependente.verificaCampos: Boolean;
begin
  ActiveControl := nil;
  Result := True;
  if chkPERMITIR_RETIRAR.Field.IsNull then
  begin
    chkPERMITIR_RETIRAR.Field.AsBoolean := True;
  end;
  if Trim(dbedtDescricao.Text) = '' then
  begin
    Application.MessageBox('Informe o Nome', 'Warning', MB_OK + MB_ICONWARNING + MB_DEFBUTTON2);
    ActiveControl := dbedtDescricao;
    Result := false;
  end;

end;

end.

