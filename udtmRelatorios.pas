unit udtmRelatorios;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxDBSet,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportPDF,
  frxExportBaseDialog;

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
    fdqProdutosVendidosVALOR_TOT: TFMTBCDField;
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
    fdqPagamentosTipoCHEQUE_BALCAO: TFMTBCDField;
    fdqPagamentosTipoDINHEIRO_BALCAO: TFMTBCDField;
    fdqPagamentosTipoCREDITO_BALCAO: TFMTBCDField;
    fdqPagamentosTipoDEBITO_BALCAO: TFMTBCDField;
    fdqPagamentosTipoCHEQUE_CADERNO: TFMTBCDField;
    fdqPagamentosTipoDINHEIRO_CADERNO: TFMTBCDField;
    fdqPagamentosTipoCREDITO_CADERNO: TFMTBCDField;
    fdqPagamentosTipoDEBITO_CADERNO: TFMTBCDField;
    fdqExtratoClienteID_CADERNETA: TLargeintField;
    fdqExtratoClienteDTHR_LANCAMENTO: TSQLTimeStampField;
    fdqExtratoClienteFK_TEMPORADA: TLargeintField;
    fdqExtratoClienteID_CLIENTE: TLargeintField;
    fdqExtratoClienteFK_DEPENDENTE: TLargeintField;
    fdqExtratoClienteID_MOV_PRODUTO: TLargeintField;
    fdqExtratoClienteFKS: TStringField;
    fdqExtratoClienteQUANTIDADE: TBCDField;
    fdqExtratoClientePAGAMENTO: TBooleanField;
    fdqExtratoClienteVALOR_TOTAL: TFMTBCDField;
    fdqExtratoClienteEXCLUIDO: TBooleanField;
    fdqExtratoClienteSIGNATARIO: TStringField;
    fdqExtratoClienteSALDO: TFMTBCDField;
    fdqRelClientesNOME: TStringField;
    fdqRelClientesENDERECO: TStringField;
    fdqRelClientesCONTATO: TStringField;
    fdqRelClientesFK_TEMPORADA: TLargeintField;
    fdqRelClientesID_CLIENTE: TLargeintField;
    fdqRelClientesPERMITIR_SALDO_NEGATIVO: TBooleanField;
    fdqRelClientesVALOR_GASTO: TFMTBCDField;
    fdqRelClientesVALOR_PAGO: TFMTBCDField;
    fdqRelClientesSALDO: TFMTBCDField;
    fdqExtratoClienteProduto: TStringField;
    fdqDebitosAcom: TFDQuery;
    fdsDebitosAcom: TfrxDBDataset;
    frepDebitosAcom: TfrxReport;
    fdqExtratoDiarioID_CLIENTE: TLargeintField;
    fdqExtratoDiarioNOME: TStringField;
    fdqExtratoDiarioENDERECO: TStringField;
    fdqExtratoDiarioCONTATO: TStringField;
    fdqExtratoDiarioDATA_LANCAMENTO: TDateField;
    fdqExtratoDiarioANTERIOR: TFMTBCDField;
    fdqExtratoDiarioVENDAS: TFMTBCDField;
    fdqExtratoDiarioPAGAMENTOS: TFMTBCDField;
    fdqExtratoDiarioARECEBER: TFMTBCDField;
    fdqExtratoDiarioVENDAS_ACOM: TFMTBCDField;
    fdqExtratoDiarioCODIGO: TLargeintField;
    fdqIOS: TFDQuery;
    fdsIOS: TfrxDBDataset;
    frepIOS: TfrxReport;
    fdqIOSDATA: TDateField;
    fdqIOSENTRADA: TFMTBCDField;
    fdqIOSSAIDA: TFMTBCDField;
    fdqIOSPAGAMENTOS: TFMTBCDField;
    fdqIOSSALDO_CAIXA: TFMTBCDField;
    fdqIOSACOM: TFMTBCDField;
    fdqVendaTipos: TFDQuery;
    fdsVendaTipos: TfrxDBDataset;
    frepVendaTipos: TfrxReport;
    fdqVendaTiposDIA_MOV: TDateField;
    fdqVendaTiposVENDAS: TFMTBCDField;
    fdqVendaTiposBALCAO: TFMTBCDField;
    fdqVendaTiposCONTA: TFMTBCDField;
    fdqRelPedidos: TFDQuery;
    fdqrelPedidoProdutos: TFDQuery;
    dtsRelPedidos: TDataSource;
    fdqrelPedidoProdutosID_PEDIDO: TLargeintField;
    fdqrelPedidoProdutosCODIGO: TLargeintField;
    fdqrelPedidoProdutosNOME: TStringField;
    fdqrelPedidoProdutosQUANTIDADE: TBCDField;
    fdqrelPedidoProdutosPAGAMENTO: TBooleanField;
    fdqrelPedidoProdutosVALOR_TOTAL: TFMTBCDField;
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
    fdqRelPedidosPagtoVALOR_TOTAL: TFMTBCDField;
    dtsPedidoProdutos: TDataSource;
    dtsPedidoPagto: TDataSource;
    fdsRelPedidos: TfrxDBDataset;
    fdsPedidoPagto: TfrxDBDataset;
    fdsPedidoProdutos: TfrxDBDataset;
    frepRelPedidos: TfrxReport;
    fdqRelPedidosPagtoATIVO: TBooleanField;
    fdqDebitosAcomDIA_MOV: TDateField;
    fdqDebitosAcomANTERIOR: TFMTBCDField;
    fdqDebitosAcomVENDAS: TFMTBCDField;
    fdqDebitosAcomPAGAMENTOS: TFMTBCDField;
    fdqDebitosAcomARECEBER: TFMTBCDField;
    fdqDebitosAcomVENDAS_ACOM: TFMTBCDField;
    fdqRelPagamentosDIA: TDateField;
    fdqRelPagamentosCHEQUE: TFMTBCDField;
    fdqRelPagamentosDINHEIRO: TFMTBCDField;
    fdqRelPagamentosCARTAO_C: TFMTBCDField;
    fdqRelPagamentosCARTAO_D: TFMTBCDField;
    fdqRelPagamentosDESCONTO: TFMTBCDField;
    fdqSaldo: TFDQuery;
    fdsSaldo: TfrxDBDataset;
    frepSaldo: TfrxReport;
    fdqSaldoID_CLIENTE: TLargeintField;
    fdqSaldoCODIGO: TLargeintField;
    fdqSaldoNOME: TStringField;
    fdqSaldoENDERECO: TStringField;
    fdqSaldoCONTATO: TStringField;
    fdqSaldoGASTO: TFMTBCDField;
    fdqSaldoPAGO: TFMTBCDField;
    fdqSaldoSALDO: TFMTBCDField;
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
    fdqRelExluidoVALOR_TOTAL: TFMTBCDField;
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
      TFDQuery(self.Components[I]).ConnectionName:='Condominio';
    end;
  end;



end;

end.
