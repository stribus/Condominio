unit ufrmCadEntradasSaidas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadrao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox, JvExMask, JvToolEdit,
  JvBaseEdits, JvDBControls;

type
  TfrmEntradasSaidas = class(TfrmCadBase)
    fdqEdicaoID: TLargeintField;
    fdqEdicaoDESCRICAO: TStringField;
    fdqEdicaoVALOR: TBCDField;
    fdqEdicaoTIPO: TIntegerField;
    fdqEdicaoDATA_HORA: TSQLTimeStampField;
    fdqEdicaoEXCLUIDO: TBooleanField;
    fdqEdicaoUSER_DEL: TStringField;
    fdqEdicaoDATA_HORA_EXC: TSQLTimeStampField;
    dbcdtValor: TJvDBCalcEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    lbl3: TLabel;
    fdqEdicaoFK_TEMPORADA: TLargeintField;
    procedure dbcdtValorKeyPress(Sender: TObject; var Key: Char);
  private
  protected
    function verificaCampos: Boolean; override;
    { Private declarations }
  public
    class function inserir(Aowner: TComponent; AIdTemporada: Integer): Boolean; override;
    class function editar(Aowner: TComponent; AId: Int64): Boolean; override;
    { Public declarations }

  end;

var
  frmEntradasSaidas: TfrmEntradasSaidas;

implementation
   uses UGeral;
{$R *.dfm}

{ TfrmCadBase2 }

procedure TfrmEntradasSaidas.dbcdtValorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = '.' then
    Key :=  ',';
end;

class function TfrmEntradasSaidas.editar(Aowner: TComponent; AId: Int64): Boolean;
begin
  Result := false;
end;

class function TfrmEntradasSaidas.inserir(Aowner: TComponent; AIdTemporada: Integer): Boolean;
begin
  frmEntradasSaidas := TfrmEntradasSaidas.Create(Aowner);
  try
    with frmEntradasSaidas do
    begin
      fdqEdicao.Open();
      fdqEdicao.Insert;
      fdqEdicaoFK_TEMPORADA.AsInteger := AIdTemporada;
      if ShowModal= mrok then
      begin
        fdqEdicao.Post;
        fdqEdicao.ApplyUpdates();
      end;
    end;
  finally
    tryFreeAndNil(frmEntradasSaidas);
  end;
end;

function TfrmEntradasSaidas.verificaCampos: Boolean;
begin
  result := false;
   if (fdqEdicaoTIPO.AsInteger <> 1 ) and (fdqEdicaoTIPO.AsInteger <> -1 )then
   begin
     ShowMessage('Informe se é uma entrada ou saída.');
     exit;
   end;
   if fdqEdicaoVALOR.AsCurrency <= 0 then
   begin
     ShowMessage('Informe o valor da movimentação.');
     exit;
   end;
   if trim(fdqEdicaoDESCRICAO.AsString)='' then
   begin
     ShowMessage('Informe a descrição.');
     exit;
   end;
   Result := true;
end;

end.
