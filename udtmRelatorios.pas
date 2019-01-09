unit udtmRelatorios;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxDBSet,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportPDF;

type
  TdtmRelatorios = class(TDataModule)
    fdqRelPagamentos: TFDQuery;
    fdsRelPagamentos: TfrxDBDataset;
    frepPagamentos: TfrxReport;
    fdqProdutosVendidos: TFDQuery;
    fdsProdutosVendidos: TfrxDBDataset;
    frepProdutosGrpProd: TfrxReport;
    fdqProdutosVendidosDIA: TDateField;
    fdqProdutosVendidosID_RODUTOS: TLargeintField;
    fdqProdutosVendidosCODIGO: TLargeintField;
    fdqProdutosVendidosNOME: TStringField;
    fdqProdutosVendidosQUANT_TOTAL: TBCDField;
    fdqProdutosVendidosVALOR_TOT: TBCDField;
    frxPDFExport1: TfrxPDFExport;
    frepExtratoCaderno: TfrxReport;
    fdqRelClientes: TFDQuery;
    fdsRelClientes: TfrxDBDataset;
    fdsExtratoCliente: TfrxDBDataset;
    fdqExtratoCliente: TFDQuery;
    fdqProdutoslookup: TFDQuery;
    fdqProdutoslookupID: TStringField;
    fdqProdutoslookupCODIGO: TLargeintField;
    fdqProdutoslookupFK_TEMPORADA: TLargeintField;
    fdqProdutoslookupNOME: TStringField;
    fdqProdutoslookupVALOR_UNI: TBCDField;
    dtsRelClientes: TDataSource;
    frepExtratoDiarioCaderno: TfrxReport;
    fdsExtratoDiario: TfrxDBDataset;
    fdqExtratoDiario: TFDQuery;
    frepPagtoTipo: TfrxReport;
    fdqPagamentosTipo: TFDQuery;
    fdsPagamentosTipo: TfrxDBDataset;
    fdqPagamentosTipoDATA: TDateField;
    fdqPagamentosTipoCHEQUE_BALCAO: TBCDField;
    fdqPagamentosTipoDINHEIRO_BALCAO: TBCDField;
    fdqPagamentosTipoCREDITO_BALCAO: TBCDField;
    fdqPagamentosTipoDEBITO_BALCAO: TBCDField;
    fdqPagamentosTipoCHEQUE_CADERNO: TBCDField;
    fdqPagamentosTipoDINHEIRO_CADERNO: TBCDField;
    fdqPagamentosTipoCREDITO_CADERNO: TBCDField;
    fdqPagamentosTipoDEBITO_CADERNO: TBCDField;
    fdqExtratoClienteID_CADERNETA: TLargeintField;
    fdqExtratoClienteDTHR_LANCAMENTO: TSQLTimeStampField;
    fdqExtratoClienteFK_TEMPORADA: TLargeintField;
    fdqExtratoClienteID_CLIENTE: TLargeintField;
    fdqExtratoClienteFK_DEPENDENTE: TLargeintField;
    fdqExtratoClienteID_MOV_PRODUTO: TLargeintField;
    fdqExtratoClienteFKS: TStringField;
    fdqExtratoClienteQUANTIDADE: TBCDField;
    fdqExtratoClientePAGAMENTO: TBooleanField;
    fdqExtratoClienteVALOR_TOTAL: TBCDField;
    fdqExtratoClienteEXCLUIDO: TBooleanField;
    fdqExtratoClienteSIGNATARIO: TStringField;
    fdqExtratoClienteSALDO: TBCDField;
    fdqRelClientesNOME: TStringField;
    fdqRelClientesENDERECO: TStringField;
    fdqRelClientesCONTATO: TStringField;
    fdqRelClientesFK_TEMPORADA: TLargeintField;
    fdqRelClientesID_CLIENTE: TLargeintField;
    fdqRelClientesPERMITIR_SALDO_NEGATIVO: TBooleanField;
    fdqRelClientesVALOR_GASTO: TBCDField;
    fdqRelClientesVALOR_PAGO: TBCDField;
    fdqRelClientesSALDO: TBCDField;
    fdqExtratoClienteProduto: TStringField;
    fdqDebitosAcom: TFDQuery;
    fdsDebitosAcom: TfrxDBDataset;
    frepDebitosAcom: TfrxReport;
    fdqExtratoDiarioID_CLIENTE: TLargeintField;
    fdqExtratoDiarioNOME: TStringField;
    fdqExtratoDiarioENDERECO: TStringField;
    fdqExtratoDiarioCONTATO: TStringField;
    fdqExtratoDiarioDATA_LANCAMENTO: TDateField;
    fdqExtratoDiarioANTERIOR: TBCDField;
    fdqExtratoDiarioVENDAS: TBCDField;
    fdqExtratoDiarioPAGAMENTOS: TBCDField;
    fdqExtratoDiarioARECEBER: TBCDField;
    fdqExtratoDiarioVENDAS_ACOM: TBCDField;
    fdqExtratoDiarioCODIGO: TLargeintField;
    fdqIOS: TFDQuery;
    fdsIOS: TfrxDBDataset;
    frepIOS: TfrxReport;
    fdqIOSDATA: TDateField;
    fdqIOSENTRADA: TBCDField;
    fdqIOSSAIDA: TBCDField;
    fdqIOSPAGAMENTOS: TBCDField;
    fdqIOSSALDO_CAIXA: TBCDField;
    fdqIOSACOM: TBCDField;
    fdqVendaTipos: TFDQuery;
    fdsVendaTipos: TfrxDBDataset;
    frepVendaTipos: TfrxReport;
    fdqVendaTiposDIA_MOV: TDateField;
    fdqVendaTiposVENDAS: TBCDField;
    fdqVendaTiposBALCAO: TBCDField;
    fdqVendaTiposCONTA: TBCDField;
    fdqRelPedidos: TFDQuery;
    fdqrelPedidoProdutos: TFDQuery;
    dtsRelPedidos: TDataSource;
    fdqrelPedidoProdutosID_PEDIDO: TLargeintField;
    fdqrelPedidoProdutosCODIGO: TLargeintField;
    fdqrelPedidoProdutosNOME: TStringField;
    fdqrelPedidoProdutosQUANTIDADE: TBCDField;
    fdqrelPedidoProdutosPAGAMENTO: TBooleanField;
    fdqrelPedidoProdutosVALOR_TOTAL: TBCDField;
    fdqRelPedidosID_MESA: TLargeintField;
    fdqRelPedidosCODIGO: TLargeintField;
    fdqRelPedidosDESCRICAO: TStringField;
    fdqRelPedidosATIVA: TBooleanField;
    fdqRelPedidosID_PEDIDO: TLargeintField;
    fdqRelPedidosFK_TEMPORADA: TLargeintField;
    fdqRelPedidosDTHR_ABERTURA: TSQLTimeStampField;
    fdqRelPedidosDTHR_FEXAMENTO: TSQLTimeStampField;
    fdqRelPedidosFK_DEPENDENTE: TLargeintField;
    fdqRelPedidosPAGO: TBooleanField;
    fdqRelPedidosNOME_DEPENDENTE: TStringField;
    fdqRelPedidosANOTAR: TBooleanField;
    fdqRelPedidosNOME: TStringField;
    fdqRelPedidosCOD_CLIENTE: TLargeintField;
    fdqRelPedidosID_CLIENTE: TLargeintField;
    fdqRelPedidosTP_PAGAMENTO: TIntegerField;
    fdqRelPedidosPagto: TFDQuery;
    fdqRelPedidosPagtoDATA_HORA: TSQLTimeStampField;
    fdqRelPedidosPagtoID_PEDIDO: TLargeintField;
    fdqRelPedidosPagtoDESCRICAO: TStringField;
    fdqRelPedidosPagtoPAGAMENTO: TBooleanField;
    fdqRelPedidosPagtoVALOR_TOTAL: TBCDField;
    dtsPedidoProdutos: TDataSource;
    dtsPedidoPagto: TDataSource;
    fdsRelPedidos: TfrxDBDataset;
    fdsPedidoPagto: TfrxDBDataset;
    fdsPedidoProdutos: TfrxDBDataset;
    frepRelPedidos: TfrxReport;
    fdqRelPedidosPagtoATIVO: TBooleanField;
    fdqDebitosAcomDIA_MOV: TDateField;
    fdqDebitosAcomANTERIOR: TBCDField;
    fdqDebitosAcomVENDAS: TBCDField;
    fdqDebitosAcomPAGAMENTOS: TBCDField;
    fdqDebitosAcomARECEBER: TBCDField;
    fdqDebitosAcomVENDAS_ACOM: TBCDField;
    fdqRelPagamentosDIA: TDateField;
    fdqRelPagamentosCHEQUE: TBCDField;
    fdqRelPagamentosDINHEIRO: TBCDField;
    fdqRelPagamentosCARTAO_C: TBCDField;
    fdqRelPagamentosCARTAO_D: TBCDField;
    fdqRelPagamentosDESCONTO: TBCDField;
    fdqSaldo: TFDQuery;
    fdsSaldo: TfrxDBDataset;
    frepSaldo: TfrxReport;
    fdqSaldoID_CLIENTE: TLargeintField;
    fdqSaldoCODIGO: TLargeintField;
    fdqSaldoNOME: TStringField;
    fdqSaldoENDERECO: TStringField;
    fdqSaldoCONTATO: TStringField;
    fdqSaldoGASTO: TBCDField;
    fdqSaldoPAGO: TBCDField;
    fdqSaldoSALDO: TBCDField;
    fdqRelExluido: TFDQuery;
    fdsRelExcluidos: TfrxDBDataset;
    frepRelExcluido: TfrxReport;
    fdqRelExluidoCODIGO: TLargeintField;
    fdqRelExluidoNOME: TStringField;
    fdqRelExluidoDESCRICAO: TStringField;
    fdqRelExluidoTIPO: TStringField;
    fdqRelExluidoDATA_HORA: TSQLTimeStampField;
    fdqRelExluidoDATA_HORA_EXC: TSQLTimeStampField;
    fdqRelExluidoQUANTIDADE: TBCDField;
    fdqRelExluidoVALOR_TOTAL: TBCDField;
    fdqRelExluidoUSER_DEL: TStringField;
    frepProdutosGrpDia: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure fechaTodosDataSets();
  end;

var
  dtmRelatorios: TdtmRelatorios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdtmRelatorios }

procedure TdtmRelatorios.fechaTodosDataSets;
var
  I: Integer;
begin
  for I := 0 to self.ComponentCount-1 do
  begin
    if self.Components[i] is TFDQuery then
    begin
      TFDQuery(self.Components[I]).Close;
    end;
  end;



end;

end.
