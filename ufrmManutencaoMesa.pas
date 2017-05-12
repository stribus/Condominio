unit ufrmManutencaoMesa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons,
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
    fdqProdutos: TFDQuery;
    dtsProdutos: TDataSource;
    fdqProdutosID_RODUTOS: TLargeintField;
    fdqProdutosCODIGO: TLargeintField;
    fdqProdutosFK_TEMPORADA: TLargeintField;
    fdqProdutosNOME: TStringField;
    fdqProdutosVALOR_UNI: TBCDField;
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
    btn3: TJvBitBtn;
    btnAdicionar: TJvBitBtn;
    lbledt2: TJvCalcEdit;
    lbl5: TLabel;
    edtlbledt3: TEdit;
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
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    class function inserir(Aowner: TComponent; AIdTemporada: Integer): Boolean;
  protected
    FId: Int64;
    function verificaCampos: Boolean;
  end;

var
  frmManutencaoMesa: TfrmManutencaoMesa;

implementation

{$R *.dfm}

procedure TfrmManutencaoMesa.FormShow(Sender: TObject);
begin
  if not fdqClientes.Active then
    fdqClientes.Open();
  if not fdqProdutos.Active then
    fdqProdutos.Open();
  if not fdqMovProduto.Active then
    fdqMovProduto.Open();
  if not fdqPedido.Active then
    fdqPedido.Open();
end;

end.
