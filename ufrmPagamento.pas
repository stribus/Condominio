unit ufrmPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  JvMemoryDataset, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, Vcl.DBCtrls,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, JvExComCtrls,
  JvComCtrls, Vcl.Buttons;

type
  TfrmPagamento = class(TForm)
    dtspag: TDataSource;
    fdqTipoPag: TFDQuery;
    fdqTipoPagID: TIntegerField;
    fdqTipoPagDESCRICAO: TStringField;
    fdqTipoPagATIVO: TBooleanField;
    pgc1: TJvPageControl;
    tsPagamento: TTabSheet;
    pnl2: TPanel;
    lbl2: TLabel;
    lbl1: TLabel;
    lbl3: TLabel;
    dbcbbTpPag: TDBLookupComboBox;
    edtPago: TJvCalcEdit;
    pnl3: TPanel;
    edtTotal: TJvCalcEdit;
    tsAnotar: TTabSheet;
    tsModoFechamento: TTabSheet;
    pnl1: TPanel;
    btnOk: TButton;
    btnCancelar: TButton;
    pnl4: TPanel;
    pnl5: TPanel;
    btn1: TButton;
    btn2: TButton;
    btnAnotar: TBitBtn;
    btnPagar: TBitBtn;
    lbl4: TLabel;
    edt1: TJvCalcEdit;
    fdqDependentes: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    BooleanField1: TBooleanField;
    dtsDependentes: TDataSource;
    dbcbb1: TDBLookupComboBox;
    procedure btnOkClick(Sender: TObject);

  private
     var
      FParcial:Boolean;

    { Private declarations }

  public
    class function pagar(Aowner: TComponent; AValorTotal:Currency; out OValorPago:Currency;out OTipoPag:integer): Boolean;
    class function FecharConta(Aowner: TComponent; AIdPedido:integer): Boolean;
  end;

var
  frmPagamento: TfrmPagamento;

implementation

{$R *.dfm}

procedure TfrmPagamento.btnOkClick(Sender: TObject);
begin
  if VarIsNull(dbcbbTpPag.KeyValue) then
  begin
    ShowMessage('Informe o Tipo de Pagamento.');
    Exit;
  end;

  if edtPago.Value <= 0 then
  begin
    ShowMessage('Valor pago invalido.');
    exit;
  end;

  if (not FParcial) and (edtPago.Value < edtTotal.Value) then
  begin
    ShowMessage('Valor n�o paga toda a conta');
    Exit ;
  end;

  ModalResult := mrOk;
end;

class function TfrmPagamento.FecharConta(Aowner: TComponent;
  AIdPedido: integer): Boolean;
begin

end;

class function TfrmPagamento.pagar(Aowner: TComponent; AValorTotal: Currency;
  out OValorPago: Currency; out OTipoPag:Integer): Boolean;
var
 frm :  TfrmPagamento;
begin
  Result := False;
  frm := TfrmPagamento.Create(Aowner);
  try
    frm.edtTotal.Value := AValorTotal;
    frm.fdqTipoPag.Filter := 'DESCRICAO <> ''ANOTAR''';
    frm.fdqTipoPag.Filtered := True;
    frm.fdqTipoPag.Open();
    frm.FParcial := True;
    frm.pgc1.ActivePage := frm.tsPagamento;
    if frm.ShowModal = mrOk then
    begin
      Result := True;
      OValorPago := frm.edtPago.Value;
      OTipoPag := frm.dbcbbTpPag.KeyValue;
    end;

  finally
    if Assigned(frm) then
      frm.Free;
  end;
end;

end.
