unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, udtmCon,
  Vcl.ExtCtrls, Vcl.ComCtrls, JvExComCtrls, JvComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, JvExDBGrids, JvDBGrid,
  JvToolEdit, Vcl.Mask, JvExMask, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDateTimePicker, UfrmCadTemporada, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.DBScope, Vcl.DBCtrls;

type
  TfrmMain = class(TForm)
    JvPageControl1: TJvPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel1: TPanel;
    dbgrdMesas: TDBGrid;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    btnAbrir: TButton;
    btn2: TButton;
    btnNovaMesa: TButton;
    btn4: TButton;
    edt1: TEdit;
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
    procedure btnNovaMesaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure fdqMesasBeforeOpen(DataSet: TDataSet);
    procedure chkMesasAtivasClick(Sender: TObject);
    procedure btnNovaTemporadaClick(Sender: TObject);
    procedure fdqProdutosAfterInsert(DataSet: TDataSet);
    procedure fdqProdutosBeforePost(DataSet: TDataSet);
    procedure fdqProdutosError(ASender, AInitiator: TObject;
      var AException: Exception);
    procedure btnEditProdutoGrdClick(Sender: TObject);
    procedure dbgProdutosTitleClick(Column: TColumn);
  private
    { Private declarations }
    procedure atualizaDatasets;
    procedure carregaConfiguracoes;
    procedure habilitarEdicaoProdutosGrade(habilitar:Boolean);
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  ufrmCadMesas, ufrmTemporada, UGeral;

{$R *.dfm}

procedure TfrmMain.atualizaDatasets;
begin
  fdqMesas.Close;
  fdqMesas.Open();
  fdqProdutos.Close;
  fdqProdutos.Open();
end;

procedure TfrmMain.btn1Click(Sender: TObject);
begin
  TfrmCadMesas.editar(Self,fdqMesasID_MESA.AsInteger);
  atualizaDatasets;
end;

procedure TfrmMain.btnEditProdutoGrdClick(Sender: TObject);
begin
    habilitarEdicaoProdutosGrade(dbgProdutos.ReadOnly);
end;

procedure TfrmMain.btnNovaMesaClick(Sender: TObject);
begin
  TfrmCadMesas.inserir(Self, fdqConfiguracoesID_TEMPORADAS.AsInteger);
  atualizaDatasets;
end;

procedure TfrmMain.btnNovaTemporadaClick(Sender: TObject);
begin
  TfrmCadTemporada.inserir(Self, fdqConfiguracoesID_TEMPORADAS.AsInteger)
end;

procedure TfrmMain.carregaConfiguracoes;
begin
  fdqConfiguracoes.Close;
  fdqConfiguracoes.Open();
  Self.Caption := 'Condominio - Temporada: '+fdqConfiguracoesDESCRICAO.AsString;
end;

procedure TfrmMain.chkMesasAtivasClick(Sender: TObject);
begin
  atualizaDatasets;
end;

procedure TfrmMain.dbgProdutosTitleClick(Column: TColumn);
begin
  sortColumn(TFDQuery(dbgProdutos.DataSource.DataSet),Column);
end;

procedure TfrmMain.fdqMesasBeforeOpen(DataSet: TDataSet);
begin
  fdqMesas.ParamByName('soativas').AsBoolean:= chkMesasAtivas.Checked;
end;

procedure TfrmMain.fdqProdutosAfterInsert(DataSet: TDataSet);
begin
  fdqProdutosCODIGO.AsInteger := dtmcon.getNextCod('produtos','codigo','fk_temporada='+fdqConfiguracoesID_TEMPORADAS.AsString);
  fdqProdutosFK_TEMPORADA.AsLargeInt := fdqConfiguracoesID_TEMPORADAS.AsLargeInt;
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

procedure TfrmMain.fdqProdutosError(ASender, AInitiator: TObject;
  var AException: Exception);
begin
  if pos('UK_PRODUTO_TEMPORADA',AException.Message)> 0 then
  begin
    ShowMessage('O código informado está sendo usado por outro produto');
    AException := EAbort.Create('O código informado está sendo usado por outro produto');
    fdqProdutos.Cancel;
  end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  atualizaDatasets;
  carregaConfiguracoes;
end;

procedure TfrmMain.habilitarEdicaoProdutosGrade(habilitar: Boolean);
begin
  fdqProdutos.Close;
  fdqProdutos.UpdateOptions.ReadOnly := not habilitar;
  dbgProdutos.AutoAppend := habilitar;
  dbgProdutos.CanDelete:= habilitar;
  dbgProdutos.ReadOnly := not habilitar;
  if habilitar then
    dbgProdutos.Options := dbgProdutos.Options -[dgrowselect] + [dgediting]
  else
    dbgProdutos.Options := dbgProdutos.Options + [dgrowselect] - [dgediting];
  fdqProdutos.Open();
end;

end.
