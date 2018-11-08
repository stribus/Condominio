unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  udtmCon, Vcl.ExtCtrls, Vcl.ComCtrls, JvExComCtrls, JvComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, JvExDBGrids, JvDBGrid,
  JvToolEdit, Vcl.Mask, JvExMask, JvMaskEdit, JvCheckedMaskEdit, ufrmCadProdutos,
  JvDatePickerEdit, JvDateTimePicker, UfrmCadTemporada, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, Vcl.DBCtrls, ufrmPagamento, frxClass, frxDBSet, udtmRelatorios,
  frxExportPDF, System.Actions, Vcl.ActnList, JvExExtCtrls, JvRadioGroup;

type
  TfrmMain = class(TForm)
    pgcMain: TJvPageControl;
    tsMesas: TTabSheet;
    tsClientes: TTabSheet;
    tsProdutos: TTabSheet;
    TabSheet4: TTabSheet;
    Panel1: TPanel;
    dbgrdMesas: TDBGrid;
    Panel2: TPanel;
    dbgrdClientes: TDBGrid;
    Panel3: TPanel;
    btnAbrirMesa: TButton;
    btn2: TButton;
    btnNovaMesa: TButton;
    btn4: TButton;
    fdqMesas: TFDQuery;
    dtsmesas: TDataSource;
    btn1: TButton;
    fdqMesasID_MESA: TLargeintField;
    fdqMesasCODIGO: TLargeintField;
    fdqMesasDESCRICAO: TStringField;
    fdqMesasID_PEDIDO: TLargeintField;
    fdqMesasDTHR_ABERTURA: TSQLTimeStampField;
    fdqMesasNOME: TStringField;
    fdqMesasCOD_CLIENTE: TLargeintField;
    fdqMesasTOTAL: TBCDField;
    chkMesasAtivas: TCheckBox;
    fdqProdutos: TFDQuery;
    dtsprodutos: TDataSource;
    fdqProdutosID_RODUTOS: TLargeintField;
    fdqProdutosFK_TEMPORADA: TLargeintField;
    btnAddProduto: TButton;
    btnEdtProduto: TButton;
    btnDelProduto: TButton;
    btnNovaTemporada: TButton;
    fdqConfiguracoes: TFDQuery;
    dtsConfiguracoes: TDataSource;
    fdqConfiguracoesID_TEMPORADAS: TLargeintField;
    fdqConfiguracoesCOD_TEMP: TSmallintField;
    fdqConfiguracoesPERIODO_INICIAL: TDateField;
    fdqConfiguracoesPERIODO_FINAL: TDateField;
    fdqConfiguracoesDESCRICAO: TStringField;
    fdqConfiguracoesATIVO: TBooleanField;
    dbgProdutos: TJvDBGrid;
    btnEditProdutoGrd: TButton;
    fdqProdutosCODIGO: TLargeintField;
    fdqProdutosNOME: TStringField;
    fdqProdutosVALOR_UNI: TBCDField;
    fdqConfiguracoesTEM_MOVIMENTACAO: TBooleanField;
    bdsdb1: TBindSourceDB;
    bdl1: TBindingsList;
    lpfVisible: TLinkPropertyToField;
    tsEntradasSaidas: TTabSheet;
    pnl1: TPanel;
    btn3: TButton;
    btn5: TButton;
    btn6: TButton;
    dbg1: TJvDBGrid;
    fdqClientes: TFDQuery;
    dtsClientes: TDataSource;
    fdqClientesID_CLIENTE: TLargeintField;
    fdqClientesCODIGO: TLargeintField;
    fdqClientesNOME: TStringField;
    fdqClientesENDERECO: TStringField;
    fdqClientesCONTATO: TStringField;
    fdqClientesATIVO: TStringField;
    fdqMesasATIVA: TBooleanField;
    fdqMesasFK_TEMPORADA: TLargeintField;
    fdqMesasDTHR_FEXAMENTO: TSQLTimeStampField;
    fdqMesasFK_DEPENDENTE: TLargeintField;
    fdqMesasDESCONTO: TBooleanField;
    fdqMesasVALOR_DESCONTO: TBCDField;
    fdqMesasPAGO: TBooleanField;
    fdqMesasNOME_DEPENDENTE: TStringField;
    fdqMesasANOTAR: TBooleanField;
    fdqMesasID_CLIENTE: TLargeintField;
    btnAddCliente: TButton;
    btnAlterCliente: TButton;
    btnCaderneta: TButton;
    frxPDFExport1: TfrxPDFExport;
    actlst1: TActionList;
    actGerenciaMesa: TAction;
    actFecharMesa: TAction;
    actConta: TAction;
    actAdicionarEntrada: TAction;
    grp1: TGroupBox;
    lbl3: TLabel;
    lbl4: TLabel;
    Edt_movimento_datai1: TJvDateEdit;
    Edt_movimento_dataf1: TJvDateEdit;
    btn_relVendas: TButton;
    rgTipoRelVendas: TJvRadioGroup;
    grp2: TGroupBox;
    btnDebitosClientes: TButton;
    rdgCliente: TJvRadioGroup;
    grp5: TGroupBox;
    btnDevedores: TButton;
    grp4: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    Edt_pg_datai1: TJvDateEdit;
    Edt_pg_dataf1: TJvDateEdit;
    btnRelPagmnto: TButton;
    procedure btnNovaMesaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure fdqMesasBeforeOpen(DataSet: TDataSet);
    procedure chkMesasAtivasClick(Sender: TObject);
    procedure btnNovaTemporadaClick(Sender: TObject);
    procedure fdqProdutosAfterInsert(DataSet: TDataSet);
    procedure fdqProdutosBeforePost(DataSet: TDataSet);
    procedure fdqProdutosError(ASender, AInitiator: TObject; var AException: Exception);
    procedure btnEditProdutoGrdClick(Sender: TObject);
    procedure dbgProdutosTitleClick(Column: TColumn);
    procedure btnAbrirMesaClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btnAddProdutoClick(Sender: TObject);
    procedure btnEdtProdutoClick(Sender: TObject);
    procedure btnDelProdutoClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure dbgrdMesasDblClick(Sender: TObject);
    procedure btnAddClienteClick(Sender: TObject);
    procedure btnAlterClienteClick(Sender: TObject);
    procedure btnRelatorioPgClick(Sender: TObject);
    procedure dbgrdMesasTitleClick(Column: TColumn);
    procedure tsMesasShow(Sender: TObject);
    procedure btnCadernetaClick(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure btn_relVendasClick(Sender: TObject);
  private
    { Private declarations }
    procedure atualizaDatasets;
    procedure carregaConfiguracoes;
    procedure habilitarEdicaoProdutosGrade(habilitar: Boolean);
    procedure Refresh(dataset: TFDQuery;field:string);
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  ufrmCadMesas, ufrmTemporada, UGeral, ufrmManutencaoMesa, ufrmCadClientes,uFrmConta;

{$R *.dfm}

procedure TfrmMain.atualizaDatasets;
begin
  Refresh(fdqMesas,'ID_MESA');
  Refresh(fdqClientes,'ID_CLIENTE');
  Refresh(fdqProdutos,'ID_RODUTOS');
end;

procedure TfrmMain.btn1Click(Sender: TObject);
begin
  TfrmCadMesas.editar(Self, fdqMesasID_MESA.AsInteger);
  atualizaDatasets;
end;

procedure TfrmMain.btn2Click(Sender: TObject);
begin
{} //   TfrmPagamento.Create(self);
  if(not fdqMesasID_PEDIDO.IsNull )then
  begin
     tfrmPagamento.FecharConta(Self,fdqMesasID_PEDIDO.AsInteger);
  end;
  Refresh(fdqMesas,'ID_MESA');
end;

procedure TfrmMain.btn3Click(Sender: TObject);
begin
{}
end;

procedure TfrmMain.btn4Click(Sender: TObject);
const
  SELECT = 'delete from pedido p' + sLineBreak + '  where p.id_pedido = %d';
var
  lSql: TStringBuilder;
begin

  if (not fdqMesasID_PEDIDO.IsNull) and (Application.MessageBox('Deseja deletar pedido?',
    'Confirma��o - Deseja cancelar', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2)
    = IDYES) then
  begin
    lSql := TStringBuilder.Create;
    try
      lSql.AppendFormat(SELECT, [fdqMesasID_PEDIDO.AsInteger]);
      dtmcon.conexao.ExecSQL(lSql.ToString);
      fdqMesas.Close;
      fdqMesas.Open();
    finally
      tryFreeAndNil(lSql);
    end;
  end;

end;

procedure TfrmMain.btn5Click(Sender: TObject);
begin
{}
end;

procedure TfrmMain.btn6Click(Sender: TObject);
begin
{}
end;

procedure TfrmMain.btnAbrirMesaClick(Sender: TObject);
begin
  TfrmManutencaoMesa.editar(self, fdqMesasID_MESA.AsInteger,
    fdqConfiguracoesID_TEMPORADAS.AsInteger, fdqMesasID_PEDIDO.AsInteger);
  Refresh(fdqMesas,'ID_MESA');
end;

procedure TfrmMain.btnAddClienteClick(Sender: TObject);
begin
  TfrmCadClientes.inserir(Self, 0);
  Refresh(fdqClientes,'ID_CLIENTE');
end;

procedure TfrmMain.btnAddProdutoClick(Sender: TObject);
begin
  TfrmCadProduto.inserir(Self, fdqConfiguracoesID_TEMPORADAS.AsInteger);
  Refresh(fdqProdutos,'ID_RODUTOS');
end;

procedure TfrmMain.btnAlterClienteClick(Sender: TObject);
begin
  TfrmCadClientes.editar(Self, fdqClientesID_CLIENTE.AsInteger);
  Refresh(fdqClientes,'ID_CLIENTE');
end;

procedure TfrmMain.btnCadernetaClick(Sender: TObject);
begin
  TfrmConta.Editar(Self,fdqClientesID_CLIENTE.AsInteger,fdqConfiguracoesID_TEMPORADAS.AsInteger)   ;
  Refresh(fdqClientes,'id_cliente');
end;

procedure TfrmMain.btnDelProdutoClick(Sender: TObject);
begin
//  if (not fdqProdutos.IsEmpty) and Application.MessageBox('Tem certesa que deseja excluir este produto?',
//    PChar('Exclus�o'), MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
//  begin
//    try
//      try
//        fdqProdutos.Delete;
//        fdqProdutos.ApplyUpdates(-1);
//      except
//        fdqProdutos.Cancel
//
//      end;
//
//    finally
//      atualizaDatasets;
//    end;
//  end;

end;

procedure TfrmMain.btnEditProdutoGrdClick(Sender: TObject);
begin
  habilitarEdicaoProdutosGrade(dbgProdutos.ReadOnly);
end;

procedure TfrmMain.btnEdtProdutoClick(Sender: TObject);
begin
  TfrmCadProduto.editar(Self, fdqProdutosID_RODUTOS.AsInteger);
  Refresh(fdqProdutos,'ID_RODUTOS');
end;

procedure TfrmMain.btnNovaMesaClick(Sender: TObject);
begin
  TfrmCadMesas.inserir(Self, fdqConfiguracoesID_TEMPORADAS.AsInteger);
  atualizaDatasets;
end;

procedure TfrmMain.btnNovaTemporadaClick(Sender: TObject);
begin
  TfrmCadTemporada.inserir(Self, fdqConfiguracoesID_TEMPORADAS.AsInteger);
  atualizaDatasets;
end;

procedure TfrmMain.btnRelatorioPgClick(Sender: TObject);
begin
  dtmRelatorios.fdqRelPagamentos.Close;
  dtmRelatorios.fdqRelPagamentos.ParamByName('DATAINI').Value := Edt_pg_datai1.Date;
  dtmRelatorios.fdqRelPagamentos.ParamByName('DATAFIM').Value := Edt_pg_dataf1.Date;
  dtmRelatorios.frepPagamentos.ShowReport(true);
end;

procedure TfrmMain.btn_relVendasClick(Sender: TObject);
begin
  if(rgTipoRelVendas.ItemIndex = 1)then
  begin
    dtmRelatorios.fdqProdutosVendidos.Close;
    dtmRelatorios.fdqProdutosVendidos.ParamByName('DATAINI').Value := Edt_movimento_datai1.Date;
    dtmRelatorios.fdqProdutosVendidos.ParamByName('DATAFIM').Value := Edt_movimento_dataf1.Date;
    dtmRelatorios.frepProdutosVendidos.ShowReport(true);
  end;

end;

procedure TfrmMain.carregaConfiguracoes;
begin
  fdqConfiguracoes.Close;
  fdqConfiguracoes.Open();
  Self.Caption := 'Condominio - Temporada: ' + fdqConfiguracoesDESCRICAO.AsString;
end;

procedure TfrmMain.chkMesasAtivasClick(Sender: TObject);
begin
  Refresh(fdqMesas,'ID_MESA');
end;

procedure TfrmMain.dbgProdutosTitleClick(Column: TColumn);
begin
  sortColumn(TFDQuery(dbgProdutos.DataSource.DataSet), Column);
end;

procedure TfrmMain.dbgrdMesasDblClick(Sender: TObject);
begin
  btnAbrirMesaClick(Sender);
end;

procedure TfrmMain.dbgrdMesasTitleClick(Column: TColumn);
begin
  sortColumn(fdqMesas,Column);
end;

procedure TfrmMain.fdqMesasBeforeOpen(DataSet: TDataSet);
begin
  fdqMesas.ParamByName('soativas').AsBoolean := chkMesasAtivas.Checked;
end;

procedure TfrmMain.fdqProdutosAfterInsert(DataSet: TDataSet);
begin
  fdqProdutosCODIGO.AsInteger := dtmcon.getNextCod('produtos', 'codigo',
    'fk_temporada=' + fdqConfiguracoesID_TEMPORADAS.AsString);
  fdqProdutosFK_TEMPORADA.AsLargeInt := fdqConfiguracoesID_TEMPORADAS.AsLargeInt;
  fdqProdutosID_RODUTOS.AsInteger := dtmcon.genNextId('gen_produto',1);
end;

procedure TfrmMain.fdqProdutosBeforePost(DataSet: TDataSet);
begin
  if fdqProdutosCODIGO.IsNull then
    Abort;
  if fdqProdutosNOME.IsNull then
    Abort;
  if fdqProdutosVALOR_UNI.IsNull then
    fdqProdutosVALOR_UNI.AsInteger := 0;
end;

procedure TfrmMain.fdqProdutosError(ASender, AInitiator: TObject; var AException:
  Exception);
begin
  if pos('UK_PRODUTO_TEMPORADA', AException.Message) > 0 then
  begin
    ShowMessage('O c�digo informado est� sendo usado por outro produto');
    AException := EAbort.Create('O c�digo informado est� sendo usado por outro produto');
    fdqProdutos.Cancel;
  end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  atualizaDatasets;
  tsMesas.Show;
  carregaConfiguracoes;
end;

procedure TfrmMain.habilitarEdicaoProdutosGrade(habilitar: Boolean);
begin
  fdqProdutos.Close;
  fdqProdutos.UpdateOptions.ReadOnly := not habilitar;
  dbgProdutos.AutoAppend := habilitar;
  dbgProdutos.CanDelete := habilitar;
  dbgProdutos.ReadOnly := not habilitar;
  if habilitar then
    dbgProdutos.Options := dbgProdutos.Options - [dgrowselect] + [dgediting]
  else
    dbgProdutos.Options := dbgProdutos.Options + [dgrowselect] - [dgediting];
  fdqProdutos.Open();
end;

procedure TfrmMain.Refresh(dataset: TFDQuery; field: string);
var
  vLocale:string;
begin
   vLocale := dataset.FieldByName(field).AsString;
   dataset.Close;
   dataset.Open;
   if vLocale <> '' then
    dataset.Locate(field,vLocale,[loCaseInsensitive, loPartialKey]);
end;



procedure TfrmMain.TabSheet4Show(Sender: TObject);
begin
  Edt_pg_datai1.Date := fdqConfiguracoesPERIODO_INICIAL.AsDateTime;
end;

procedure TfrmMain.tsMesasShow(Sender: TObject);
begin
  Refresh(fdqMesas, 'ID_MESA');
end;


initialization
finalization
end.

