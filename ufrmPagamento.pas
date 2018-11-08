unit ufrmPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  JvMemoryDataset, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, Vcl.DBCtrls, udtmCon,
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
    btnokAnota: TButton;
    btnCancelarAnotar: TButton;
    btnAnotar: TBitBtn;
    btnPagar: TBitBtn;
    lbl4: TLabel;
    edtTotalAnotar: TJvCalcEdit;
    fdqDependentes: TFDQuery;
    dtsDependentes: TDataSource;
    dbcbbNomeDependente: TDBLookupComboBox;
    fdqPedido: TFDQuery;
    dtsPedido: TDataSource;
    fdqPedidoID_MESA: TLargeintField;
    fdqPedidoCODIGO: TLargeintField;
    fdqPedidoDESCRICAO: TStringField;
    fdqPedidoATIVA: TBooleanField;
    fdqPedidoID_PEDIDO: TLargeintField;
    fdqPedidoFK_TEMPORADA: TLargeintField;
    fdqPedidoDTHR_ABERTURA: TSQLTimeStampField;
    fdqPedidoDTHR_FEXAMENTO: TSQLTimeStampField;
    fdqPedidoFK_DEPENDENTE: TLargeintField;
    fdqPedidoDESCONTO: TBooleanField;
    fdqPedidoVALOR_DESCONTO: TBCDField;
    fdqPedidoPAGO: TBooleanField;
    fdqPedidoNOME_DEPENDENTE: TStringField;
    fdqPedidoANOTAR: TBooleanField;
    fdqPedidoNOME: TStringField;
    fdqPedidoCOD_CLIENTE: TLargeintField;
    fdqPedidoID_CLIENTE: TLargeintField;
    fdqPedidoTP_PAGAMENTO: TIntegerField;
    fdqPedidoTOTAL: TBCDField;
    lbl5: TLabel;
    edtCodigoCliente: TEdit;
    dbcbbCliente: TDBLookupComboBox;
    fdqClientes: TFDQuery;
    fdqClientesID_CLIENTE: TLargeintField;
    fdqClientesCODIGO: TLargeintField;
    fdqClientesNOME: TStringField;
    fdqClientesENDERECO: TStringField;
    fdqClientesCONTATO: TStringField;
    fdqClientesOBS: TMemoField;
    fdqClientesPERMITIR_SALDO_NEGATIVO: TBooleanField;
    fdqClientesATIVO: TBooleanField;
    dtsClientes: TDataSource;
    fdqDependentesID_DEPENDENTES: TLargeintField;
    fdqDependentesCODIGO: TLargeintField;
    fdqDependentesNOME: TStringField;
    fdqDependentesFK_CLIENTE: TLargeintField;
    fdqDependentesFONE: TStringField;
    fdqDependentesOBS: TMemoField;
    fdqDependentesPERMITIR_RETIRAR: TBooleanField;
    fdqCaderneta: TFDQuery;
    fdqCadernetaID_CADERNETA: TLargeintField;
    fdqCadernetaDTHR_LANCAMENTO: TSQLTimeStampField;
    fdqCadernetaFK_CLIENTE: TLargeintField;
    fdqCadernetaFK_DEPENDENTE: TLargeintField;
    fdqCadernetaFK_PEDIDO: TLargeintField;
    fdqMovProduto: TFDQuery;
    fdqMovProdutoID_MOV_PRODUTO: TLargeintField;
    fdqMovProdutoFK_PEDIDO: TLargeintField;
    fdqMovProdutoQUANTIDADE: TBCDField;
    fdqMovProdutoPAGAMENTO: TBooleanField;
    fdqMovProdutoVALOR_TOTAL: TBCDField;
    fdqMovProdutoTIPO_PAGAMENTO: TIntegerField;
    fdspPagar: TFDStoredProc;
    fdspAnotar: TFDStoredProc;
    fdqTotais: TFDQuery;
    fdqTotaisFK_TEMPORADA: TLargeintField;
    fdqTotaisFK_CLIENTE: TLargeintField;
    fdqTotaisVALOR_GASTO: TBCDField;
    fdqTotaisVALOR_PAGO: TBCDField;
    fdqTotaisSALDO: TBCDField;
    fdqTotaisPERMITIR_SALDO_NEGATIVO: TBooleanField;
    procedure btnOkClick(Sender: TObject);
    procedure btnokAnotaClick(Sender: TObject);
    procedure btnAnotarClick(Sender: TObject);
    procedure btnPagarClick(Sender: TObject);
    procedure edtCodigoClienteExit(Sender: TObject);
    procedure dbcbbClienteExit(Sender: TObject);
    procedure edtPagoKeyPress(Sender: TObject; var Key: Char);
    procedure tsAnotarShow(Sender: TObject);
    procedure tsPagamentoShow(Sender: TObject);
    procedure fdqTotaisBeforeOpen(DataSet: TDataSet);

  private
  var
    FParcial: Boolean;

    { Private declarations }

  public
    class function pagar(Aowner: TComponent; AValorTotal: Currency; out OValorPago: Currency;
      out OTipoPag: integer): Boolean;
    class function FecharConta(Aowner: TComponent; AIdPedido: integer): Boolean;
  end;

var
  frmPagamento: TfrmPagamento;

implementation

uses
  UGeral;

{$R *.dfm}

procedure TfrmPagamento.btnAnotarClick(Sender: TObject);
begin

  edtTotalAnotar.Value := fdqPedidoTOTAL.AsCurrency;
  fdqClientes.Open();
  fdqDependentes.Open();
  if (dbcbbCliente.Field.IsNull) then
  begin
    edtCodigoCliente.Text := '';
  end
  else
  begin
    edtCodigoCliente.Text := fdqClientesCODIGO.AsString;
  end;

  pgc1.ActivePage := tsAnotar;
end;

procedure TfrmPagamento.btnokAnotaClick(Sender: TObject);
var
  Total: Currency;
begin
  if VarIsNull(dbcbbNomeDependente.KeyValue) then
  begin
    ShowMessage('Informe o Dependente.');
    Exit;
  end;

  Total := fdqPedidoTOTAL.AsCurrency;
  if (not fdqTotaisPERMITIR_SALDO_NEGATIVO.AsBoolean) and
    ((varToCurrDef(fdqTotaisSALDO.AsVariant, 0) + Total) > 0) then
  begin
    Application.MessageBox('Saldo indisponivel.', '', MB_OK + MB_ICONWARNING);
    Exit;
  end;

  fdspAnotar.ParamByName('IN_PEDIDO').Value := fdqPedidoID_PEDIDO.AsInteger;
  fdspAnotar.ParamByName('IN_CLIENTE').Value := fdqPedidoID_CLIENTE.AsInteger;
  fdspAnotar.ParamByName('IN_DEPENDENTE').Value := fdqPedidoFK_DEPENDENTE.AsInteger;
  fdspAnotar.ParamByName('IN_DESC_DEPENDENTE').AsString := dbcbbNomeDependente.Text;
  fdspAnotar.Prepare;
  fdspAnotar.ExecProc;
  // fdqPedidoTP_PAGAMENTO.AsInteger := 1;
  // fdqPedidoANOTAR.AsBoolean := True;
  // fdqPedidoNOME_DEPENDENTE.AsString := dbcbbNomeDependente.Text;
  //
  // fdqCaderneta.Open();
  // fdqCaderneta.Insert;
  // fdqCadernetaDTHR_LANCAMENTO.AsDateTime := Now;
  // fdqCadernetaFK_CLIENTE.AsInteger := fdqPedidoID_CLIENTE.AsInteger;
  // fdqCadernetaFK_DEPENDENTE.AsInteger := fdqPedidoFK_DEPENDENTE.AsInteger;
  // fdqCadernetaFK_PEDIDO.AsInteger := fdqPedidoID_PEDIDO.AsInteger;
  // fdqCaderneta.Post;
  ModalResult := mrOk;
end;

procedure TfrmPagamento.btnOkClick(Sender: TObject);
var
  troco: Currency;
begin
  if VarIsNull(dbcbbTpPag.KeyValue) then
  begin
    ShowMessage('Informe o Tipo de Pagamento.');
    Exit;
  end;

  if edtPago.Value < 0 then
  begin
    ShowMessage('Valor pago invalido.');
    Exit;
  end;

  if (not FParcial) and (edtPago.Value < edtTotal.Value) then
  begin
    ShowMessage('Valor não paga toda a conta');
    Exit;
  end;

  if (not FParcial) then
  begin
    if (edtPago.Value > edtTotal.Value) then
    begin
      troco := (edtTotal.Value - edtPago.Value) * (-1);
      ShowMessage('Troco : R$ ' + FormatCurr('0.00', troco));
    end;
    fdspPagar.ParamByName('IN_PEDIDO').AsInteger := fdqPedidoID_PEDIDO.AsInteger;
    fdspPagar.ParamByName('IN_VALOR').Value := edtTotal.Value;
    fdspPagar.ParamByName('IN_TP_PAGAMENTO').AsInteger := fdqPedidoTP_PAGAMENTO.AsInteger;
    fdspPagar.Prepare;
    fdspPagar.ExecProc;
    // fdqPedidoANOTAR.AsBoolean :=  False;
    // fdqPedidoTP_PAGAMENTO.AsInteger :=  dbcbbTpPag.KeyValue;
    // fdqMovProduto.Open();
    // fdqMovProduto.Append;
    // fdqMovProdutoID_MOV_PRODUTO.AsInteger := dtmcon.genNextId('GEN_MOV_PRODUTO');
    // fdqMovProdutoFK_PEDIDO.AsInteger := fdqPedidoID_PEDIDO.AsInteger;
    // fdqMovProdutoPAGAMENTO.AsBoolean := True;
    // fdqMovProdutoTIPO_PAGAMENTO.AsInteger := fdqPedidoTP_PAGAMENTO.AsInteger;
    // fdqMovProdutoQUANTIDADE.AsInteger := 1;
    // fdqMovProdutoVALOR_TOTAL.AsCurrency := -1 * edtTotal.Value;
    // fdqMovProduto.Post;
    /// /    fdqMovProduto.ApplyUpdates();
    // fdqMovProduto.Close;

  end;

  ModalResult := mrOk;
end;

procedure TfrmPagamento.btnPagarClick(Sender: TObject);
begin
  dbcbbTpPag.DataSource := dtsPedido;
  dbcbbTpPag.DataField := 'TP_PAGAMENTO';
  edtTotal.Value := fdqPedidoTOTAL.AsExtended;
  btnOk.Default := True;
  pgc1.ActivePage := tsPagamento;
end;

procedure TfrmPagamento.dbcbbClienteExit(Sender: TObject);
begin
  { }
  if (dbcbbCliente.Field.IsNull) then
  begin
    edtCodigoCliente.Text := '';
  end
  else
  begin
    edtCodigoCliente.Text := fdqClientesCODIGO.AsString;
  end;
end;

procedure TfrmPagamento.edtCodigoClienteExit(Sender: TObject);
begin
  { }
  if (edtCodigoCliente.Text <> '') and fdqClientes.Locate('CODIGO', VarArrayOf([edtCodigoCliente.Text]),
    [loCaseInsensitive]) then
  begin
    dbcbbCliente.Field.AsLargeInt := fdqClientesID_CLIENTE.AsLargeInt;
  end
  else
  begin
    edtCodigoCliente.Text := '';
    dbcbbCliente.Field.Clear;
  end;
end;

procedure TfrmPagamento.edtPagoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = '.' then
    Key := ',';
end;

procedure TfrmPagamento.fdqTotaisBeforeOpen(DataSet: TDataSet);
begin
  fdqTotais.ParamByName('id_cliente').AsInteger := fdqClientesID_CLIENTE.AsInteger;
end;

class function TfrmPagamento.FecharConta(Aowner: TComponent; AIdPedido: integer): Boolean;
var
  frm: TfrmPagamento;
begin
  Result := False;
  frm := TfrmPagamento.Create(Aowner);
  try
    frm.fdqPedido.ParamByName('ID_PEDIDO').AsInteger := AIdPedido;
    frm.fdqPedido.Open();
    frm.fdqPedido.Edit;
    frm.fdqTipoPag.Filter := 'DESCRICAO <> ''ANOTAR''';
    frm.fdqTipoPag.Filtered := True;
    frm.fdqTipoPag.Open();
    frm.FParcial := False;
    frm.pgc1.ActivePage := frm.tsModoFechamento;
    if frm.ShowModal = mrOk then
    begin
      // frm.fdqPedidoDTHR_FEXAMENTO.AsDateTime := Now;
      Result := True;
      // frm.fdqPedido.Post();
      frm.fdqPedido.Close;
    end;

  finally
    if Assigned(frm) then
      frm.Free;
  end;
end;

class function TfrmPagamento.pagar(Aowner: TComponent; AValorTotal: Currency; out OValorPago: Currency;
  out OTipoPag: integer): Boolean;
var
  frm: TfrmPagamento;
begin
  Result := False;
  frm := TfrmPagamento.Create(Aowner);
  try
    frm.edtTotal.Value := AValorTotal;
    frm.fdqTipoPag.Filter := 'DESCRICAO <> ''ANOTAR''';
    frm.fdqTipoPag.Filtered := True;
    frm.fdqTipoPag.Open();
    frm.FParcial := True;
    frm.tsModoFechamento.Enabled := False;
    frm.tsAnotar.Enabled := False;
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

procedure TfrmPagamento.tsAnotarShow(Sender: TObject);
begin
  btnokAnota.Caption := '&OK';
  btnCancelarAnotar.Caption := '&Cancelar';
end;

procedure TfrmPagamento.tsPagamentoShow(Sender: TObject);
begin
  btnOk.Caption := '&OK';
  btnCancelar.Caption := '&Cancelar';
end;

initialization

finalization

end.
