unit ufrmCadMesas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, UGeral,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadMesas = class(TfrmCadBase)
    fdqEdicaoID_MESA: TLargeintField;
    fdqEdicaoCODIGO: TLargeintField;
    fdqEdicaoDESCRICAO: TStringField;
    fdqEdicaoATIVA: TBooleanField;
    dbchkATIVA: TDBCheckBox;
    lbl1: TLabel;
    lbl2: TLabel;
  private
  protected
    function verificaCampos: Boolean; override;
    { Private declarations }

  public
    class function inserir(Aowner: TComponent): Boolean; override;
    class function editar(Aowner: TComponent; AId: Int64): Boolean; override;

    { Public declarations }
  end;

//var
  //frmCadMesas: TfrmCadMesas;

implementation

uses
  udtmCon;

{$R *.dfm}

{ TfrmCadMesas }

class function TfrmCadMesas.editar(Aowner: TComponent; AId: Int64): Boolean;
var
  frmCadMesas: TfrmCadMesas;
begin
  frmCadMesas:= TfrmCadMesas.Create(Aowner);
  try
    frmCadMesas.FId := AId;
    frmCadMesas.fdqEdicao.Open();
    frmCadMesas.fdqEdicao.Edit;
    if frmCadMesas.ShowModal = mrOk then
    begin
      frmCadMesas.fdqEdicao.Post;
      frmCadMesas.fdqEdicao.ApplyUpdates(-1);
    end;
  finally
    tryFreeAndNil(frmCadMesas);
  end;
end;

class function TfrmCadMesas.inserir(Aowner: TComponent): Boolean;
var
  frmCadMesas: TfrmCadMesas;
begin
  frmCadMesas:= TfrmCadMesas.Create(Aowner);
  try
    frmCadMesas.FId := -1;
    frmCadMesas.fdqEdicao.Open();
    frmCadMesas.fdqEdicao.Insert;
    frmCadMesas.dbedtCodigo.Field.AsLargeInt :=  dtmcon.getNextCod('mesa','codigo');
    frmCadMesas.dbchkATIVA.Field.AsBoolean :=True;
    if frmCadMesas.ShowModal = mrOk then
    begin
      frmCadMesas.fdqEdicao.Post;
      frmCadMesas.fdqEdicao.ApplyUpdates(-1);
    end;
  finally
    tryFreeAndNil(frmCadMesas);
  end;
end;

function TfrmCadMesas.verificaCampos: Boolean;
begin
  ActiveControl := nil;
  Result := true;
  if dbedtDescricao.Text = EmptyStr then
  begin
    ShowMessage('Informe a descrição.');
    ActiveControl := dbedtDescricao;
    Result := False;
  end;

  if dbedtCodigo.Text = EmptyStr then
  begin
     dbedtCodigo.Field.AsLargeInt :=  dtmcon.getNextCod('mesa','codigo');
  end
  else
  if dtmcon.existsCod(fdqEdicaoID_MESA.Value, fdqEdicaoCODIGO.Value,'mesa'
    ,fdqEdicaoID_MESA.FieldName, fdqEdicaoCODIGO.FieldName) then
  begin
    ShowMessage('Código já cadastrado.');
    ActiveControl := dbedtDescricao;
    Result := False;
  end;

end;

end.
