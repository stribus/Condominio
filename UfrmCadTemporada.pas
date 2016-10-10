unit UfrmCadTemporada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, JvExMask, JvToolEdit, JvMaskEdit, UGeral,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit;

type
  TfrmCadTemporada = class(TfrmCadBase)
    fdqEdicaoID_TEMPORADAS: TLargeintField;
    fdqEdicaoCOD_TEMP: TSmallintField;
    fdqEdicaoPERIODO_INICIAL: TDateField;
    fdqEdicaoPERIODO_FINAL: TDateField;
    fdqEdicaoDESCRICAO: TStringField;
    fdqEdicaoATIVO: TBooleanField;
    dbchkATIVO: TDBCheckBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    dbedtPERIODO_INICIAL: TJvDBDatePickerEdit;
    dbedtPERIODO_FINAL: TJvDBDatePickerEdit;
  private
    procedure desativaOutrasTemporadas(idTemporada: Integer);
  protected
    function verificaCampos: Boolean; override;
    { Private declarations }
  public
    class function inserir(Aowner: TComponent): Boolean; override;
    class function editar(Aowner: TComponent; AId: Int64): Boolean; override;
  end;

var
  frmCadTemporada: TfrmCadTemporada;

implementation

uses
  udtmCon;

{$R *.dfm}

{ TfrmCadTemporada }

class function TfrmCadTemporada.editar(Aowner: TComponent; AId: Int64): Boolean;
var
  frmCadtemporada: TfrmCadTemporada;
begin
  result := False;
  frmCadtemporada:= TfrmCadTemporada.Create(Aowner);
  try
    frmCadtemporada.FId := AId;
    frmCadtemporada.fdqEdicao.Open();
    frmCadtemporada.fdqEdicao.Edit;
    if frmCadtemporada.ShowModal = mrOk then
    begin
      frmCadtemporada.fdqEdicao.Post;
      frmCadtemporada.fdqEdicao.ApplyUpdates(-1);
      Result := True;
    end;
  finally
    tryFreeAndNil(frmCadtemporada);
  end;
end;

procedure TfrmCadTemporada.desativaOutrasTemporadas(idTemporada: Integer);
//const
//  DESATIVA_TEMPORADAS =
//    '  update temporadas t' + sLineBreak +
//    '  set' + sLineBreak +
//    '    t.ativo = false' + sLineBreak +
//    '  where' + sLineBreak +
//    '    T.ativo' + sLineBreak +
//    '    and t.id_temporadas <> :id_temporadas';
//var
//  tipes:array[1..1] of TFieldType;
begin
// transferido para trigger
//  tipes[1]:= ftInteger;
//  dtmcon.conexao.ExecSQL(DESATIVA_TEMPORADAS, [idTemporada],tipes );
end;


class function TfrmCadTemporada.inserir(Aowner: TComponent): Boolean;
//Const
//  FINALIZA_TEMPORADA =
//    '  update temporadas t' + sLineBreak +
//    '  set' + sLineBreak +
//    '    t.periodo_final = dateadd(day,-1,Cast(:data_inicio as date))' + sLineBreak +
//    '  where' + sLineBreak +
//    '    T.periodo_final is null' + sLineBreak +
//    '    and t.periodo_inicial < dateadd(day,-1,cast(:data_inicio as date))';

var
  frmCadTemporada: TfrmCadTemporada;
  inTransection:Boolean;

begin
  Result := False;
  frmCadTemporada:= TfrmCadTemporada.Create(Aowner);
  try
    frmCadTemporada.FId := -1;
    frmCadTemporada.fdqEdicao.Open();
    frmCadTemporada.fdqEdicao.Insert;
    frmCadTemporada.dbedtCodigo.Field.AsInteger := dtmcon.getNextCod('temporadas','cod_temp');
    frmCadTemporada.dbedtDescricao.Field.AsInteger := CurrentYear;
    frmCadTemporada.dbchkATIVO.Field.AsBoolean :=True;
    frmCadTemporada.dbedtPERIODO_INICIAL.Field.AsDateTime := Now;
    if frmCadTemporada.ShowModal = mrOk then
    begin
      inTransection := dtmcon.conexao.InTransaction;
      try
        if not inTransection then
          dtmcon.conexao.StartTransaction;
        if frmCadTemporada.fdqEdicaoATIVO.AsBoolean then
          frmCadTemporada.desativaOutrasTemporadas(0);
//  inserido em trigger
//        dtmcon.conexao.ExecSQL(FINALIZA_TEMPORADA,
//            [frmCadTemporada.fdqEdicaoPERIODO_INICIAL.AsDateTime]
//            , [ftDate]);

        frmCadTemporada.fdqEdicao.Post;
        frmCadTemporada.fdqEdicao.ApplyUpdates(-1);
        if (not inTransection) and dtmcon.conexao.InTransaction then
          dtmcon.conexao.Commit;
        Result:= True;
      Except
         if (not inTransection) and dtmcon.conexao.InTransaction then
            dtmcon.conexao.Rollback;
      end;

    end;
  finally
    tryFreeAndNil(frmCadTemporada);
  end;
end;

function TfrmCadTemporada.verificaCampos: Boolean;
begin
  ActiveControl := nil;
  Result:= True;
  if dbedtCodigo.Field.IsNull then
  begin
    ShowMessage('Código deve ser preenchido');
    Result := False;
  end;

  if dbedtDescricao.Field.IsNull then
  begin
    ShowMessage('Descrição deve ser preenchido');
    Result := False;
  end;

  if dbedtPERIODO_INICIAL.Field.IsNull then
  begin
    ShowMessage('Data inicial da temporada deve ser preenchido');
    Result := False;
  end;

end;

end.
