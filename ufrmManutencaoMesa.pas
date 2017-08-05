unit ufrmManutencaoMesa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  JvExButtons, JvBitBtn, Vcl.DBCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  JvBaseEdits;

type
  TfrmManutencaoMesa = class(TForm)
    pnl1: TPanel;
    btnOk: TButton;
    btnCancelar: TButton;
    pnl2: TPanel;
    fdqPedido: TFDQuery;
    dtsPedido: TDataSource;
    fdqMovProduto: TFDQuery;
    dtsMovProduto: TDataSource;
    fdqProdutoslookup: TFDQuery;
    dtsProdutoslookup: TDataSource;
    fdqProdutoslookupID_RODUTOS: TLargeintField;
    fdqProdutoslookupCODIGO: TLargeintField;
    fdqProdutoslookupFK_TEMPORADA: TLargeintField;
    fdqProdutoslookupNOME: TStringField;
    fdqProdutoslookupVALOR_UNI: TBCDField;
    fdqMovProdutoID_MOV_PRODUTO: TLargeintField;
    fdqMovProdutoFK_PEDIDO: TLargeintField;
    fdqMovProdutoFK_PRODUTO: TLargeintField;
    fdqMovProdutoQUANTIDADE: TBCDField;
    fdqMovProdutoPAGAMENTO: TBooleanField;
    fdqMovProdutoFK_CADERNETA: TLargeintField;
    btn1: TButton;
    pnl3: TPanel;
    pnl4: TPanel;
    dbgrd1: TDBGrid;
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
    btn2: TJvBitBtn;
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
    fdqMovProdutoTIPO_PAGAMENTO: TStringField;
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
    procedure FormShow(Sender: TObject);
    procedure edtProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure btnAdicionarClick(Sender: TObject);
    procedure dbgrd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnMoveMesaClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure fdqMovProdutoBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    function getPedidoId:Integer;
  public
    class function Editar(Aowner: TComponent; AMesa: Integer; AIdTemporada: Integer;AIdPedido:integer): Boolean;
  protected
    FId: Int64;
    function verificaCampos: Boolean;
  end;

var
  frmManutencaoMesa: TfrmManutencaoMesa;

implementation

uses
  udtmCon, System.SysUtils;

{$R *.dfm}

procedure TfrmManutencaoMesa.edtProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['x', 'X', '*'] then
  begin
    key := #0;
    edtQtd.Text := edtProduto.Text;
    edtProduto.Clear;
  end;
  if not (key in ['0'..'9', #8, ',', #9]) then
    key := #0;

end;

procedure TfrmManutencaoMesa.fdqMovProdutoBeforeOpen(DataSet: TDataSet);
begin
  fdqMovProduto.ParamByName('pedido').AsInteger := fdqPedidoID_PEDIDO.AsInteger;
end;

procedure TfrmManutencaoMesa.FormShow(Sender: TObject);
begin
  if not fdqClientes.Active then
    fdqClientes.Open();
  if not fdqProdutoslookup.Active then
    fdqProdutoslookup.Open();
  if not fdqPedido.Active then
    fdqPedido.Open();
  if not fdqMovProduto.Active then
    fdqMovProduto.Open();

end;

function TfrmManutencaoMesa.getPedidoId: Integer;
begin
   if fdqPedidoID_PEDIDO.IsNull then
   begin
     if not( fdqPedido.State in dsEditModes) then
       fdqPedido.Edit;
     fdqPedidoID_PEDIDO.AsInteger :=dtmCon.genNextId('gen_pedido');
   end;
   Result := fdqPedidoID_PEDIDO.AsInteger;
end;

procedure TfrmManutencaoMesa.btnExcluirClick(Sender: TObject);
begin
  if not fdqMovProduto.IsEmpty then
     fdqMovProduto.Delete;
end;

procedure TfrmManutencaoMesa.btnMoveMesaClick(Sender: TObject);
begin
{}
end;

procedure TfrmManutencaoMesa.dbgrd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DELETE then
    btnExcluirClick(Sender);
end;

procedure TfrmManutencaoMesa.btn2Click(Sender: TObject);
begin
{}
end;

procedure TfrmManutencaoMesa.btnAdicionarClick(Sender: TObject);
begin
  edtProduto.SetFocus;
  if (edtQtd.Value > 0) and (Length(edtProduto.Text)>=1)then
  begin
    fdqProduto.Close;
    fdqProduto.Params[0].AsInteger := strToIntdef( edtProduto.Text,0);
    fdqProduto.Open();
    if fdqProduto.IsEmpty then
    begin
      Application.MessageBox('Produto não encontrado.', '', MB_OK + MB_ICONWARNING);
      Exit;
    end;


    fdqMovProduto.Append;
    fdqMovProdutoFK_PEDIDO.AsInteger := getPedidoId;
    fdqMovProdutoFK_PRODUTO.AsInteger := fdqProdutoID_RODUTOS.AsInteger;
    fdqMovProdutoQUANTIDADE.AsFloat := edtQtd.Value;
    fdqMovProdutoPAGAMENTO.AsBoolean := False;
    fdqMovProdutoVALOR_TOTAL.AsFloat :=  edtQtd.Value * fdqProdutoVALOR_UNI.AsFloat;
    fdqMovProduto.Post;
    edtQtd.Value:=1;
    edtProduto.Clear;
  end;

end;

class function TfrmManutencaoMesa.Editar(Aowner: TComponent; AMesa, AIdTemporada,AIdPedido: Integer): Boolean;
var
  frm: TfrmManutencaoMesa;
begin

  frm := TfrmManutencaoMesa.Create(Aowner);
  with frm do
  try
    FId := AMesa;
    fdqPedido.ParamByName('ID_MESA').AsLargeInt := AMesa;
    if AIdPedido > 0 then
      fdqPedido.ParamByName('ID_PEDIDO').AsLargeInt := AIdPedido
    else
      fdqPedido.ParamByName('ID_PEDIDO').Clear();
    fdqPedido.Open();
    fdqPedido.Edit;
    fdqPedidoANOTAR.AsBoolean := False;
    fdqPedidoPAGO.AsBoolean := False;
    fdqPedidoDESCONTO.AsBoolean := False;
    fdqPedidoVALOR_DESCONTO.AsInteger := 0;

    if frm.ShowModal = mrOk then
    begin
      fdqPedidoFK_TEMPORADA.AsInteger := AIdTemporada;
      fdqPedido.ApplyUpdates();
      fdqMovProduto.ApplyUpdates();
    end;

  finally
    if Assigned(frm) then
      frm.Free;
  end;

end;

function TfrmManutencaoMesa.verificaCampos: Boolean;
begin

end;

end.

