unit ufrmAnotar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvMaskEdit, JvDBFindEdit, JvExMask, JvToolEdit, JvBaseEdits, Vcl.ComCtrls,
  JvExComCtrls, JvDateTimePicker;

type
  TfrmAnotar = class(TForm)
    pnl2: TPanel;
    pnl1: TPanel;
    btnOk: TButton;
    btnCancelar: TButton;
    fdsp_lancamentos: TFDStoredProc;
    edtData: TJvDateTimePicker;
    edtHota: TJvDateTimePicker;
    dbcbbAUTORIZADO: TDBLookupComboBox;
    lbl8: TLabel;
    lbl5: TLabel;
    edtQtd: TJvCalcEdit;
    lbl1: TLabel;
    lbl6: TLabel;
    edtProduto: TEdit;
    pnlPesquisa: TPanel;
    dbfdtProduto: TJvDBFindEdit;
    dbgPesquisaProduto: TJvDBGrid;
    fdqPesqProduto: TFDQuery;
    fdqPesqProdutoID_RODUTOS: TLargeintField;
    fdqPesqProdutoCODIGO: TLargeintField;
    fdqPesqProdutoFK_TEMPORADA: TLargeintField;
    fdqPesqProdutoNOME: TStringField;
    fdqPesqProdutoVALOR_UNI: TBCDField;
    dtsPesqProduto: TDataSource;
    fdqProduto: TFDQuery;
    fdqProdutoID_RODUTOS: TLargeintField;
    fdqProdutoCODIGO: TLargeintField;
    fdqProdutoFK_TEMPORADA: TLargeintField;
    fdqProdutoNOME: TStringField;
    fdqProdutoVALOR_UNI: TBCDField;
    dtsProduto: TDataSource;
    fdqDependente: TFDQuery;
    dtsDependentes: TDataSource;
    fdqDependenteID_DEPENDENTES: TLargeintField;
    fdqDependenteCODIGO: TLargeintField;
    fdqDependenteNOME: TStringField;
    fdqDependenteFK_CLIENTE: TLargeintField;
    fdqDependenteFONE: TStringField;
    fdqDependenteOBS: TMemoField;
    fdqDependentePERMITIR_RETIRAR: TBooleanField;
    fdqTotais: TFDQuery;
    fdqTotaisFK_TEMPORADA: TLargeintField;
    fdqTotaisFK_CLIENTE: TLargeintField;
    fdqTotaisVALOR_GASTO: TBCDField;
    fdqTotaisVALOR_PAGO: TBCDField;
    fdqTotaisSALDO: TBCDField;
    fdqTotaisPERMITIR_SALDO_NEGATIVO: TBooleanField;
    procedure btnOkClick(Sender: TObject);
    procedure fdqDependenteBeforeOpen(DataSet: TDataSet);
    procedure dbgPesquisaProdutoDblClick(Sender: TObject);
    procedure fdqTotaisBeforeOpen(DataSet: TDataSet);
    procedure edtQtdKeyPress(Sender: TObject; var Key: Char);
    procedure edtProdutoKeyPress(Sender: TObject; var Key: Char);
  private
    FidCliente: Integer;
    FidTemporada: Integer;
    { Private declarations }
  public
    { Public declarations }
    class function anotar(Aowner: TComponent; AIdCliente, ATemporada: Integer): Boolean;
  end;

var
  frmAnotar: TfrmAnotar;

implementation

uses
  udtmCon, UGeral;

{$R *.dfm}

class function TfrmAnotar.anotar(Aowner: TComponent; AIdCliente, ATemporada: Integer): Boolean;
begin
  try
    frmAnotar := TfrmAnotar.Create(Aowner);
    with frmAnotar do
    begin
      FidTemporada := ATemporada;
      FidCliente := AIdCliente;
      edtData.DateTime := now;
      edtHota.DateTime := now;
      fdqPesqProduto.Open();
      fdqDependente.Open();
      fdqTotais.Open();
      ShowModal;
    end;
  finally
    tryFreeAndNil(frmAnotar);
  end;
end;

procedure TfrmAnotar.btnOkClick(Sender: TObject);
var
  Total: Currency;
begin
  if (Length(edtProduto.Text) = 0) and (fdqPesqProduto.Active) and (not fdqPesqProdutoCODIGO.IsNull) then
  begin
    edtProduto.Text := fdqPesqProdutoCODIGO.AsString;
    dbfdtProduto.Text := '';
  end;
  if (edtQtd.Value > 0) and (Length(edtProduto.Text) >= 1) then
  begin
    fdqProduto.Close;
    fdqProduto.Params[0].AsInteger := StrToIntDef(edtProduto.Text, 0);
    fdqProduto.Open();
    if fdqProduto.IsEmpty then
    begin
      Application.MessageBox('Produto não encontrado.', '', MB_OK + MB_ICONWARNING);
      Exit;
    end;

    if VarIsNull(dbcbbAUTORIZADO.KeyValue) then
    begin
      Application.MessageBox('Não Permitido retirada.', '', MB_OK + MB_ICONWARNING);
      Exit;
    end;

    Total := edtQtd.Value * fdqProdutoVALOR_UNI.AsCurrency;
    if (not fdqTotaisPERMITIR_SALDO_NEGATIVO.AsBoolean) and
      ((varToCurrDef(fdqTotaisSALDO.AsVariant, 0) + Total) > 0) then
    begin
      Application.MessageBox('Saldo indisponivel.', '', MB_OK + MB_ICONWARNING);
      Exit;
    end;

    fdsp_lancamentos.ParamByName('IN_DTHR_LANCAMENTO').Value := DateToStr(edtData.date) +' '+ timetostr(edtHota.time);
    fdsp_lancamentos.ParamByName('IN_CLIENTE').Value := FidCliente;
    fdsp_lancamentos.ParamByName('IN_DEPENDENTE').Value := dbcbbAUTORIZADO.KeyValue;
    fdsp_lancamentos.ParamByName('IN_DESC_DEPENDENTE').Value := dbcbbAUTORIZADO.Text;
    fdsp_lancamentos.ParamByName('IN_TEMPORADA').Value := FidTemporada;
    fdsp_lancamentos.ParamByName('IN_PRODUTO').Value := fdqProdutoID_RODUTOS.AsInteger;
    fdsp_lancamentos.ParamByName('IN_QUANT').Value := edtQtd.Value;
    fdsp_lancamentos.ParamByName('IN_VALOR_TOTAL').Value := edtQtd.Value * fdqProdutoVALOR_UNI.AsCurrency;
    fdsp_lancamentos.Prepare;
    fdsp_lancamentos.ExecProc;
    ModalResult := mrOk;
  end
  else
  begin
    Application.MessageBox('Produto não encontrado.', '', MB_OK + MB_ICONWARNING);
    Exit;
  end;
end;

procedure TfrmAnotar.dbgPesquisaProdutoDblClick(Sender: TObject);
begin
  edtProduto.Text := fdqPesqProdutoCODIGO.AsString;
end;

procedure TfrmAnotar.edtProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['x', 'X', '*'] then
  begin
    Key := #0;
    edtQtd.Text := edtProduto.Text;
    edtProduto.Clear;
  end;
  if Key = '.' then
    Key := ',';
  if not (Key in ['0'..'9', #8, ',', #9]) then
    Key := #0;
end;

procedure TfrmAnotar.edtQtdKeyPress(Sender: TObject; var Key: Char);
begin
if Key = '.' then
    Key := ',';
end;

procedure TfrmAnotar.fdqDependenteBeforeOpen(DataSet: TDataSet);
begin
  fdqDependente.ParamByName('id_cliente').AsInteger := FidCliente;
end;

procedure TfrmAnotar.fdqTotaisBeforeOpen(DataSet: TDataSet);
begin
  fdqTotais.ParamByName('id_cliente').AsInteger := FidCliente;
  fdqTotais.ParamByName('id_temporada').AsInteger := FidTemporada;
end;

initialization

finalization

end.
