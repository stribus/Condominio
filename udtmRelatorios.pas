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
    frepProdutosVendidos: TfrxReport;
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
    fdqDebitosAcomDIA_MOV: TDateField;
    fdqDebitosAcomANTERIOR: TBCDField;
    fdqDebitosAcomVENDAS: TBCDField;
    fdqDebitosAcomPAGAMENTOS: TBCDField;
    fdqDebitosAcomARECEBER: TBCDField;
    fdqDebitosAcomVENDAS_ACOM: TBCDField;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmRelatorios: TdtmRelatorios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
