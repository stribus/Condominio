unit ufrmManutencaoMesa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  JvExButtons, JvBitBtn, Vcl.DBCtrls, Vcl.Mask, JvExMask, JvToolEdit,UGeral,
  JvBaseEdits, JvDBLookup, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components, Data.Bind.DBScope,
  JvExStdCtrls, JvMemo, System.Actions, Vcl.ActnList, Vcl.StdActns, JvExDBGrids,
  JvDBGrid, JvMaskEdit, JvDBFindEdit, frxClass, frxDBSet, JvGridPrinter;

type
  TfrmManutencaoMesa = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    fdqPedido: TFDQuery;
    dtsPedido: TDataSource;
    fdqMovProduto: TFDQuery;
    dtsMovProduto: TDataSource;
    fdqProdutoslookup: TFDQuery;
    dtsProdutoslookup: TDataSource;
    fdqMovProdutoID_MOV_PRODUTO: TLargeintField;
    fdqMovProdutoFK_PEDIDO: TLargeintField;
    fdqMovProdutoFK_PRODUTO: TLargeintField;
    fdqMovProdutoQUANTIDADE: TBCDField;
    fdqMovProdutoPAGAMENTO: TBooleanField;
    fdqMovProdutoFK_CADERNETA: TLargeintField;
    pnl3: TPanel;
    pnl4: TPanel;
    fdqMovProdutonomeProduto: TStringField;
    fdqMovProdutoVALOR_TOTAL: TBCDField;
    fdqMovProdutoVlr_uni: TCurrencyField;
    dbcbbCliente: TDBLookupComboBox;
    lbl1: TLabel;
    btnBuscaProduto: TJvBitBtn;
    fdqClientes: TFDQuery;
    dtsClientes: TDataSource;
    btnMoveMesa: TButton;
    lbl2: TLabel;
    dbedtMesa: TDBEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    btnPesqCliente: TJvBitBtn;
    btnExcluir: TJvBitBtn;
    btnAdicionar: TJvBitBtn;
    edtQtd: TJvCalcEdit;
    lbl5: TLabel;
    edtProduto: TEdit;
    lbl6: TLabel;
    fdqClientesID_CLIENTE: TLargeintField;
    fdqClientesCODIGO: TLargeintField;
    fdqClientesNOME: TStringField;
    fdqClientesENDERECO: TStringField;
    fdqClientesCONTATO: TStringField;
    fdqClientesOBS: TMemoField;
    fdqClientesPERMITIR_SALDO_NEGATIVO: TBooleanField;
    fdqClientesATIVO: TBooleanField;
    fdqPedidoID_MESA: TLargeintField;
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
    fdqPedidoID_CLIENTE: TLargeintField;
    fdqPedidoTOTAL: TBCDField;
    fdqPedidoDESCRICAO: TStringField;
    fdqProduto: TFDQuery;
    dtsProduto: TDataSource;
    fdqProdutoID_RODUTOS: TLargeintField;
    fdqProdutoCODIGO: TLargeintField;
    fdqProdutoFK_TEMPORADA: TLargeintField;
    fdqProdutoNOME: TStringField;
    fdqProdutoVALOR_UNI: TBCDField;
    fdqMovProdutoTotal: TAggregateField;
    lbl7: TLabel;
    dbedt_total: TDBEdit;
    fduPedidos: TFDUpdateSQL;
    fdqMovProdutoTIPO_PAGAMENTO: TIntegerField;
    fdqMovProdutoFKS: TStringField;
    fdqProdutoslookupID: TStringField;
    fdqProdutoslookupCODIGO: TLargeintField;
    fdqProdutoslookupFK_TEMPORADA: TLargeintField;
    fdqProdutoslookupNOME: TStringField;
    fdqProdutoslookupVALOR_UNI: TBCDField;
    bdsdb1: TBindSourceDB;
    bdl1: TBindingsList;
    edtCodigoCliente: TEdit;
    mmoOBS: TJvMemo;
    lbl8: TLabel;
    dbcbbAUTORIZADO: TDBLookupComboBox;
    fdqDependente: TFDQuery;
    dtsDependentes: TDataSource;
    fdqPedidoTP_PAGAMENTO: TIntegerField;
    actlst1: TActionList;
    actPesquisaProduto: TAction;
    pnl5: TPanel;
    btnOk: TButton;
    btnFechar: TButton;
    btnPagar: TButton;
    btnCancelar: TButton;
    pnlPesquisa: TPanel;
    dbfdtProduto: TJvDBFindEdit;
    dbgPesquisaProduto: TJvDBGrid;
    fdqPesqProduto: TFDQuery;
    dtsPesqProduto: TDataSource;
    fdqPesqProdutoID_RODUTOS: TLargeintField;
    fdqPesqProdutoCODIGO: TLargeintField;
    fdqPesqProdutoFK_TEMPORADA: TLargeintField;
    fdqPesqProdutoNOME: TStringField;
    fdqPesqProdutoVALOR_UNI: TBCDField;
    btnImprimir: TButton;
    frepRelMesa: TfrxReport;
    fdsMovProduto: TfrxDBDataset;
    fdsPedido: TfrxDBDataset;
    dbcbbFindMesa: TDBLookupComboBox;
    fdqPesqMesa: TFDQuery;
    dtsPesqMesa: TDataSource;
    dbedtRetirar: TDBEdit;
    fdqDependenteID_DEPENDENTES: TLargeintField;
    fdqDependenteCODIGO: TLargeintField;
    fdqDependenteNOME: TStringField;
    fdqDependenteFK_CLIENTE: TLargeintField;
    fdqDependenteFONE: TStringField;
    fdqDependenteOBS: TMemoField;
    fdqDependentePERMITIR_RETIRAR: TBooleanField;
    fdqMovProdutoPARCIAL: TBooleanField;
    fdqMovProdutototalMarcado: TAggregateField;
    fdqMovProdutovalorMarcado: TCurrencyField;
    dbedttotalSelecionado: TDBEdit;
    lbltotalSelecionado: TLabel;
    dbgrdMovProduto: TJvDBGrid;
    fduMovProduto: TFDUpdateSQL;
    procedure FormShow(Sender: TObject);
    procedure edtProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure btnAdicionarClick(Sender: TObject);
    procedure dbgrdMovProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnMoveMesaClick(Sender: TObject);
    procedure btnPesqClienteClick(Sender: TObject);
    procedure fdqMovProdutoBeforeOpen(DataSet: TDataSet);
    procedure btnPagarClick(Sender: TObject);
    procedure edtCodigoClienteExit(Sender: TObject);
    procedure dbcbbClienteExit(Sender: TObject);
    procedure btnBuscaProdutoClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure dbgPesquisaProdutoResize(Sender: TObject);
    procedure dbgPesquisaProdutoDblClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure fdqDependentePERMITIR_RETIRARGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure dbgrdMovProdutoTitleClick(Column: TColumn);
    procedure dbgrdMovProdutoDblClick(Sender: TObject);
    procedure dbgrdMovProdutoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure fdqMovProdutoCalcFields(DataSet: TDataSet);
    procedure fdqMovProdutoTotalGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure edtQtdKeyPress(Sender: TObject; var Key: Char);
    procedure fdqProdutoBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
    function getPedidoId: Integer;
  public
    class function Editar(Aowner: TComponent; AMesa: Integer; AIdTemporada:
      Integer; AIdPedido: Integer): Boolean;
  protected
    FId: Int64;
    function verificaCampos: Boolean;
  end;

//   TAggregateHelper=Class Helper for TAggregate
//  private
//    function GetCurrency: Currency;
//  published
//    Property asCurrency:Currency read GetCurrency;
//  End;

  TAggregateFieldHelper = class Helper for TAggregateField
  private
    function GetCurrency: Currency;
  published
    property asCurrency: Currency read GetCurrency;
  end;

var
  frmManutencaoMesa: TfrmManutencaoMesa;

implementation

uses
  udtmCon, System.SysUtils, ufrmPagamento;

{$R *.dfm}

procedure TfrmManutencaoMesa.edtCodigoClienteExit(Sender: TObject);
begin
  if (edtCodigoCliente.Text <> '') and fdqClientes.Locate('CODIGO', VarArrayOf([edtCodigoCliente.Text]),
    [loCaseInsensitive]) then
  begin
    dbcbbCliente.Field.AsLargeInt := fdqClientesID_CLIENTE.AsLargeInt;
  end
  else
  begin
    edtCodigoCliente.Text := '';
    dbcbbCliente.Field.Clear;
    dbcbbAUTORIZADO.KeyValue := null;
    dbedtRetirar.Repaint;
  end;
//  dbmmoOBS.Visible:=  not dbcbbCliente.Field.IsNull;
end;

procedure TfrmManutencaoMesa.edtProdutoKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmManutencaoMesa.edtQtdKeyPress(Sender: TObject; var Key: Char);
begin
if Key = '.' then
    Key := ',';
end;

procedure TfrmManutencaoMesa.fdqDependentePERMITIR_RETIRARGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
    if Sender.IsNull or VarIsNull(dbcbbAUTORIZADO.KeyValue) then
    begin
      Text :='';
      DisplayText := False;
    end
    else
    begin
      DisplayText := True;
      if Sender.AsBoolean then
      begin
        Text := 'Permitido Anotar';
      end
      else
      begin
        Text := 'Bloqueado Anotar';
      end;
    end;

end;

procedure TfrmManutencaoMesa.fdqMovProdutoBeforeOpen(DataSet: TDataSet);
begin
  fdqMovProduto.ParamByName('pedido').AsInteger := fdqPedidoID_PEDIDO.AsInteger;
end;

procedure TfrmManutencaoMesa.fdqMovProdutoCalcFields(DataSet: TDataSet);
begin
  if DataSet.State = dsCalcFields then
  begin
    if fdqMovProdutoPARCIAL.AsBoolean then
    begin
      fdqMovProdutovalorMarcado.AsCurrency := fdqMovProdutoVALOR_TOTAL.AsCurrency;
    end
    else
    begin
      fdqMovProdutovalorMarcado.AsCurrency := 0;
    end;

  end;

end;

procedure TfrmManutencaoMesa.fdqMovProdutoTotalGetText(Sender: TField;
var Text:  string; DisplayText: Boolean);
begin
  if (not fdqMovProdutototalMarcado.isnull) and (varToCurrDef(fdqMovProdutototalMarcado.AsVariant,
    0) <> 0) then
  begin
    dbedttotalSelecionado.Visible := True;
    lbltotalSelecionado.Visible := True;
  end
  else
  begin
    dbedttotalSelecionado.Visible := False;
    lbltotalSelecionado.Visible := False;
  end;
  if Sender.IsNull then
  begin
    DisplayText := False;
  end
  else
  begin
    try
      Text := FormatCurr('R$ 0.,00', varToCurrDef(Sender.AsVariant, 0));
    except
      Text := 'R$ 0,00';
    end;
  end;

end;

procedure TfrmManutencaoMesa.fdqProdutoBeforeInsert(DataSet: TDataSet);
begin
  if fdqMovProdutoID_MOV_PRODUTO.IsNull then
  begin
     fdqMovProdutoID_MOV_PRODUTO.AsInteger:=dtmcon.genNextId('GEN_PRODUTO');
  end;
end;

procedure TfrmManutencaoMesa.FormShow(Sender: TObject);
begin
  if not fdqClientes.Active then
    fdqClientes.Open();
    fdqDependente.Open();
  if not fdqProdutoslookup.Active then
    fdqProdutoslookup.Open();
  if not fdqPedido.Active then
    fdqPedido.Open();
  if not fdqMovProduto.Active then
    fdqMovProduto.Open();
  edtProduto.SetFocus;
//  dbmmoOBS.Visible := not dbcbbCliente.Field.IsNull;
  if (dbcbbCliente.Field.IsNull) then
  begin
    edtCodigoCliente.Text := '';

  end
  else
  begin
    edtCodigoCliente.Text := fdqClientesCODIGO.AsString;
  end;
end;

function TfrmManutencaoMesa.getPedidoId: Integer;
begin
  if fdqPedidoID_PEDIDO.IsNull then
  begin
    if not (fdqPedido.State in dsEditModes) then
      fdqPedido.Edit;
    fdqPedidoID_PEDIDO.AsInteger := dtmcon.genNextId('gen_pedido');
  end;
  Result := fdqPedidoID_PEDIDO.AsInteger;
end;

procedure TfrmManutencaoMesa.btnExcluirClick(Sender: TObject);
begin
  if not fdqMovProduto.IsEmpty then
    fdqMovProduto.Delete;
end;

procedure TfrmManutencaoMesa.btnFecharClick(Sender: TObject);
var
  pedidoId: Largeint;
begin
  pedidoId := getPedidoId;
  fdqPedido.ApplyUpdates();
  fdqMovProduto.ApplyUpdates();
  if ((not fdqMovProdutoTotal.IsNull) and (tfrmPagamento.FecharConta(Self,
    pedidoId))) then
  begin
    ModalResult := mrClose;
  end
  else
  begin
    fdqPedido.Close();
    fdqMovProduto.Close();
    fdqPedido.ParamByName('ID_PEDIDO').AsLargeInt := pedidoId;
    fdqPedido.Open();
    fdqPedido.Edit;
    fdqMovProduto.Open();
  end;
end;

procedure TfrmManutencaoMesa.btnImprimirClick(Sender: TObject);
begin
  frepRelMesa.ShowReport(true);
end;

procedure TfrmManutencaoMesa.btnMoveMesaClick(Sender: TObject);
begin

  if(not dbcbbFindMesa.Visible)then
  begin
    fdqPesqMesa.Close;
    fdqPesqMesa.Open();
    dbcbbFindMesa.DataSource := dtsPedido;
    dbcbbFindMesa.Visible:= True;
    dbedtMesa.Visible := false ;
  end
  else  if not fdqPedidoID_MESA.IsNull then
  begin
    dbcbbFindMesa.Visible:= false;
    dbedtMesa.Visible := true ;
    fdqPedidoDESCRICAO.AsString := dbcbbFindMesa.Text;
    dbcbbFindMesa.DataSource := nil;
    fdqPesqMesa.Close;
  end;
  btnFechar.Enabled := dbedtMesa.Visible;
  btnPagar.Enabled := dbedtMesa.Visible;
  btnOk.Enabled := dbedtMesa.Visible;
end;

procedure TfrmManutencaoMesa.btnPagarClick(Sender: TObject);
var
  tipoPag: Integer;
  valorPago: Currency;
  valortotal: Currency;
begin
  if (not fdqMovProdutoTotal.IsNull) then
  begin
    if fdqMovProdutototalMarcado.asCurrency <> 0 then
    begin
      valortotal := fdqMovProdutototalMarcado.asCurrency;
    end
    else
      valortotal := fdqMovProdutoTotal.asCurrency;


    if TfrmPagamento.pagar(Self, valortotal, valorPago, tipoPag) then
    begin
      fdqMovProduto.Append;
      fdqMovProdutoFKS.AsString := 'T' + IntToStr(tipoPag);
      fdqMovProdutoFK_PEDIDO.AsInteger := getPedidoId;
      fdqMovProdutoPAGAMENTO.AsBoolean := True;
      fdqMovProdutoTIPO_PAGAMENTO.AsInteger := tipoPag;
      fdqMovProdutoQUANTIDADE.AsInteger := 1;
      fdqMovProdutoVALOR_TOTAL.AsCurrency := -1 * valorPago;
      fdqMovProduto.Post;
    end;
  end;
end;

procedure TfrmManutencaoMesa.dbcbbClienteExit(Sender: TObject);
begin
  if (dbcbbCliente.Field.IsNull) then
  begin
    edtCodigoCliente.Text := '';
    dbcbbAUTORIZADO.KeyValue := null;
    dbedtRetirar.Repaint;
  end
  else
  begin
    edtCodigoCliente.Text := fdqClientesCODIGO.AsString;
  end;
//  mmoOBS.Visible:=  not dbcbbCliente.Field.IsNull;
end;

procedure TfrmManutencaoMesa.dbgPesquisaProdutoDblClick(Sender: TObject);
begin
  if not(fdqPesqProduto.IsEmpty) then
  begin
    edtProduto.Text := fdqPesqProdutoCODIGO.AsString;
    btnAdicionarClick(Sender);
  end;
end;

procedure TfrmManutencaoMesa.dbgPesquisaProdutoResize(Sender: TObject);
var
  tamanho : Integer;
begin
  tamanho := dbgPesquisaProduto.Width - 220;
  if(tamanho < 150)then
    tamanho := 150;
  dbgPesquisaProduto.Columns[1].Width := tamanho;
end;

procedure TfrmManutencaoMesa.dbgrdMovProdutoDblClick(Sender: TObject);
begin
  if (not fdqMovProduto.IsEmpty)  then
  begin
    fdqMovProduto.Edit;
    fdqMovProdutoPARCIAL.AsBoolean := not fdqMovProdutoPARCIAL.AsBoolean;
    fdqMovProduto.Post;
  end;
end;

procedure TfrmManutencaoMesa.dbgrdMovProdutoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if fdqMovProdutoPARCIAL.AsBoolean then
  begin
    if gdselected in State then
    begin
       dbgrdMovProduto.Canvas.Brush.Color := RGBToColor(13, 186, 137);
    end
    else
    begin
      dbgrdMovProduto.Canvas.Brush.Color := RGBToColor(38, 224, 171);
    end;

  end;
  dbgrdMovProduto.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmManutencaoMesa.dbgrdMovProdutoKeyDown(Sender: TObject; var Key: Word; Shift:
  TShiftState);
begin
  if Key = VK_DELETE then
    btnExcluirClick(Sender);
end;

procedure TfrmManutencaoMesa.dbgrdMovProdutoTitleClick(Column: TColumn);
begin
//sortColumn(fdqMovProduto,Column);
end;

procedure TfrmManutencaoMesa.btnPesqClienteClick(Sender: TObject);
begin
{}
end;

procedure TfrmManutencaoMesa.btnAdicionarClick(Sender: TObject);
begin
  edtProduto.SetFocus;
  if(Length(edtProduto.Text) = 0) and (fdqPesqProduto.Active)
    and (not fdqPesqProdutoCODIGO.IsNull)then
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

    fdqMovProduto.Append;
    fdqMovProdutoFK_PEDIDO.AsInteger := getPedidoId;
    fdqMovProdutoFK_PRODUTO.AsInteger := fdqProdutoID_RODUTOS.AsInteger;
    fdqMovProdutoFKS.AsInteger := fdqProdutoID_RODUTOS.AsInteger;
    fdqMovProdutoQUANTIDADE.AsFloat := edtQtd.Value;
    fdqMovProdutoPAGAMENTO.AsBoolean := False;
    fdqMovProdutoVALOR_TOTAL.AsFloat := edtQtd.Value * fdqProdutoVALOR_UNI.AsFloat;
    fdqMovProduto.Post;
    edtQtd.Value := 1;
    edtProduto.Clear;
  end;

end;

procedure TfrmManutencaoMesa.btnBuscaProdutoClick(Sender: TObject);
begin
  fdqPesqProduto.Close;
  if(not pnlPesquisa.Visible) then
  begin
    dbfdtProduto.Text := '';
    fdqPesqProduto.Open();
  end  ;
  pnlPesquisa.Visible := not pnlPesquisa.Visible;
  if(dbfdtProduto.CanFocus)then
    dbfdtProduto.SetFocus;
end;

class function TfrmManutencaoMesa.Editar(Aowner: TComponent; AMesa, AIdTemporada,
  AIdPedido: Integer): Boolean;
var
  frm: TfrmManutencaoMesa;
begin

  frm := TfrmManutencaoMesa.Create(Aowner);
  with frm do
  try
    FId := AMesa;
    dtmcon.fdtrans1.StartTransaction;
    fdqPedido.ParamByName('ID_MESA').AsLargeInt := AMesa;
    if AIdPedido > 0 then
      fdqPedido.ParamByName('ID_PEDIDO').AsLargeInt := AIdPedido
    else
      fdqPedido.ParamByName('ID_PEDIDO').Clear();
    fdqPedido.Open();
    fdqPedido.Edit;
    fdqPedidoFK_TEMPORADA.AsInteger := AIdTemporada;
    fdqPedidoANOTAR.AsBoolean := False;
    fdqPedidoPAGO.AsBoolean := False;
    fdqPedidoDESCONTO.AsBoolean := False;
    fdqPedidoVALOR_DESCONTO.AsInteger := 0;
    Caption := 'Mesa: '+fdqPedidoDESCRICAO.AsString;
    if (frm.ShowModal = mrOk) and (not fdqPedidoID_PEDIDO.IsNull) then
    try
      fdqPedido.ApplyUpdates();
      fdqMovProduto.ApplyUpdates();
      dtmcon.fdtrans1.Commit;
    except

    end;


  finally
   if dtmcon.fdtrans1.Active then
        dtmcon.fdtrans1.Rollback;
    if Assigned(frm) then
      frm.Free;
  end;

end;

function TfrmManutencaoMesa.verificaCampos: Boolean;
begin

end;

{ TAggregateFieldHelper }

function TAggregateFieldHelper.GetCurrency: Currency;
begin
  if not VarIsNull(Value) then
    Result := StrToCurrDef(Value, 0)
  else
    Result := Value;
end;



initialization
finalization
end.

