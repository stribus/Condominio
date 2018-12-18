unit uFrmConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.GIFImg, JvExControls, JvXPCore, JvXPButtons,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ufrmPagamento, ufrmAnotar, frxClass, frxDBSet;

type
  TfrmConta = class(TForm)
    jvpnl1: TJvPanel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl1: TLabel;
    dbedt_nome: TDBEdit;
    dbedt_endereco: TDBEdit;
    dbedt_Telefone: TDBEdit;
    jvpnl2: TJvPanel;
    dbgjvdbgrd1: TJvDBGrid;
    jvpnl3: TJvPanel;
    btn_incluir: TJvXPButton;
    btn_excluir: TJvXPButton;
    jvpnl4: TJvPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    dbedt_consumido: TDBEdit;
    dbedt_pago: TDBEdit;
    dbedt_total: TDBEdit;
    jvpnl6: TJvPanel;
    jvpnl5: TJvPanel;
    btn_ok: TButton;
    btn_relatorio: TButton;
    btn_pagar: TButton;
    fdqCliente: TFDQuery;
    dtsCliente: TDataSource;
    fdqTotais: TFDQuery;
    dtsTotais: TDataSource;
    fdqCaderneta: TFDQuery;
    dtsCaderneta: TDataSource;
    fdqCadernetaID_CADERNETA: TLargeintField;
    fdqCadernetaDTHR_LANCAMENTO: TSQLTimeStampField;
    fdqCadernetaFK_TEMPORADA: TLargeintField;
    fdqCadernetaFK_CLIENTE: TLargeintField;
    fdqCadernetaFK_DEPENDENTE: TLargeintField;
    fdqCadernetaID_MOV_PRODUTO: TLargeintField;
    fdqCadernetaFKS: TStringField;
    fdqCadernetaQUANTIDADE: TBCDField;
    fdqCadernetaPAGAMENTO: TBooleanField;
    fdqCadernetaVALOR_TOTAL: TBCDField;
    fdqCadernetaSALDO: TBCDField;
    fdqProdutoslookup: TFDQuery;
    fdqProdutoslookupID: TStringField;
    fdqProdutoslookupCODIGO: TLargeintField;
    fdqProdutoslookupFK_TEMPORADA: TLargeintField;
    fdqProdutoslookupNOME: TStringField;
    fdqProdutoslookupVALOR_UNI: TBCDField;
    dtsProdutoslookup: TDataSource;
    fdqCadernetaNomeProduto: TStringField;
    fdqTotaisFK_TEMPORADA: TLargeintField;
    fdqTotaisFK_CLIENTE: TLargeintField;
    fdqTotaisVALOR_GASTO: TBCDField;
    fdqTotaisVALOR_PAGO: TBCDField;
    fdqTotaisSALDO: TBCDField;
    fdspPagar: TFDStoredProc;
    frepConta: TfrxReport;
    fdsCaderneta: TfrxDBDataset;
    fdsCliente: TfrxDBDataset;
    dtsDependente: TDataSource;
    fdqDependente: TFDQuery;
    fdqDependenteID_DEPENDENTES: TLargeintField;
    fdqDependenteCODIGO: TLargeintField;
    fdqDependenteNOME: TStringField;
    fdqDependenteFK_CLIENTE: TLargeintField;
    fdqDependenteFONE: TStringField;
    fdqDependentePERMITIR_RETIRAR: TBooleanField;
    fdqDependenteOBS: TMemoField;
    fdqClienteID_CLIENTE: TLargeintField;
    fdqClienteCODIGO: TLargeintField;
    fdqClienteNOME: TStringField;
    fdqClienteENDERECO: TStringField;
    fdqClienteCONTATO: TStringField;
    fdqClienteOBS: TMemoField;
    fdqClientePERMITIR_SALDO_NEGATIVO: TBooleanField;
    fdqClienteATIVO: TBooleanField;
    fdqCadernetaSignatario: TStringField;
    procedure fdqCadernetaBeforeOpen(DataSet: TDataSet);
    procedure fdqTotaisBeforeOpen(DataSet: TDataSet);
    procedure btn_pagarClick(Sender: TObject);
    procedure btn_incluirClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_relatorioClick(Sender: TObject);
  private
    { Private declarations }
    procedure refreshConta();
  public
    class function Editar(Aowner: TComponent; AId_Cliente: Integer; AIdTemporada:
      Integer): Boolean;
  protected
    FIdCliente, FIdTemporada: Int64;
  end;

var
  frmConta: TfrmConta;

implementation

uses
  UGeral,ufrmvalidaUsuario,udtmCon;

{$R *.dfm}

{ TfrmConta }

procedure TfrmConta.btn_excluirClick(Sender: TObject);
const
   Update =
    '  update' + #13#10 +
    '    mov_produto mp' + #13#10 +
    '  set' + #13#10 +
    '    mp.excluido = true' + #13#10 +
    '    ,mp.user_del = ''%s'' ' + #13#10 +
    '    ,mp.data_hora_exc = current_timestamp' + #13#10 +
    '  where' + #13#10 +
    '    mp.id_mov_produto = %d ';
var
  lSql: TStringBuilder;
  usuario:string;
begin
  if not fdqCaderneta.IsEmpty then
  begin
    usuario := TfrmValidaUsuario.confirmaUsuario(self);
    if (usuario <> '') and (fdqCadernetaID_MOV_PRODUTO.AsInteger > 0) then
    begin
      try
        lSql := TStringBuilder.Create;
        lSql.AppendFormat(Update, [usuario, fdqCadernetaID_MOV_PRODUTO.AsInteger]);
        dtmcon.conexao.ExecSQL(lSql.ToString);
      finally
        tryFreeAndNil(lSql);
      end;
    end;
  end;
  refreshConta;
end;

procedure TfrmConta.btn_incluirClick(Sender: TObject);
begin
  tfrmAnotar.anotar(Self,FIdCliente,FIdTemporada);
  refreshConta;
end;

procedure TfrmConta.btn_pagarClick(Sender: TObject);
var
  valortotal: Currency;
  valorPago: Currency;
  tipoPag: Integer;
begin
  valortotal := varToCurrDef(fdqTotaisSALDO.AsVariant, 0);
  if TfrmPagamento.pagar(Self, valortotal, valorPago, tipoPag) then
  begin
    if (valorPago > 0) then
    begin
      fdspPagar.ParamByName('IN_DTHR_LANCAMENTO').Value := now;
      fdspPagar.ParamByName('IN_CLIENTE').Value := FIdCliente;
      fdspPagar.ParamByName('IN_TP_PAGAMENTO').Value := tipoPag;
      fdspPagar.ParamByName('IN_TEMPORADA').Value := FIdTemporada;
      fdspPagar.ParamByName('IN_VALOR_TOTAL').Value := valorPago;
      fdspPagar.Prepare;
      fdspPagar.ExecProc;
    end;

    end;
    refreshConta;
end;

procedure TfrmConta.btn_relatorioClick(Sender: TObject);
begin
  refreshConta;
  fdqCaderneta.First;
  frepConta.ShowReport(true);
end;

class function TfrmConta.Editar(Aowner: TComponent; AId_Cliente,
  AIdTemporada: Integer): Boolean;

var
  frm: TfrmConta;
begin

  frm := TfrmConta.Create(Aowner);
  with frm do
  try
    FIdCliente := AId_Cliente;
    FIdTemporada := AIdTemporada;
    fdqCliente.ParamByName('ID_CLIENTE').AsLargeInt := FIdCliente;
    fdqCliente.Open();
    fdqDependente.Open();
    refreshConta;
    if (frm.ShowModal = mrOk) then
    begin

    end;

  finally
    if Assigned(frm) then
      frm.Free;
  end;

end;

procedure TfrmConta.fdqCadernetaBeforeOpen(DataSet: TDataSet);
begin
  fdqCaderneta.ParamByName('ID_CLIENTE').AsInteger := FIdCliente;
  fdqCaderneta.ParamByName('id_temporada').AsInteger := FIdTemporada;
end;

procedure TfrmConta.fdqTotaisBeforeOpen(DataSet: TDataSet);
begin
  fdqTotais.ParamByName('ID_CLIENTE').AsInteger := FIdCliente;
  fdqTotais.ParamByName('id_temporada').AsInteger := FIdTemporada;
end;

procedure TfrmConta.refreshConta;
begin
  fdqCaderneta.Close;
  fdqCaderneta.Open();
  fdqTotais.Close;
  fdqTotais.Open();
  fdqCaderneta.Last;
end;


initialization
finalization
end.
