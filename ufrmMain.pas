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
  JvDatePickerEdit, JvDateTimePicker, UfrmCadTemporada;

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
    fdqProdutosCODIGO: TLargeintField;
    fdqProdutosFK_TEMPORADA: TLargeintField;
    fdqProdutosNOME: TStringField;
    fdqProdutosVALOR_UNI: TBCDField;
    dbgProdutos: TJvDBGrid;
    btnAddProduto: TButton;
    btnEdtProduto: TButton;
    btnDelProduto: TButton;
    btnNovaTemporada: TButton;
    procedure btnNovaMesaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure fdqMesasBeforeOpen(DataSet: TDataSet);
    procedure chkMesasAtivasClick(Sender: TObject);
    procedure btnNovaTemporadaClick(Sender: TObject);
  private
    { Private declarations }
    procedure atualizaDatasets;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  ufrmCadMesas, ufrmTemporada;

{$R *.dfm}

procedure TfrmMain.atualizaDatasets;
begin
  fdqMesas.Close;
  fdqMesas.Open();
end;

procedure TfrmMain.btn1Click(Sender: TObject);
begin
  TfrmCadMesas.editar(Self,fdqMesasID_MESA.AsInteger);
  atualizaDatasets;
end;

procedure TfrmMain.btnNovaMesaClick(Sender: TObject);
begin
  TfrmCadMesas.inserir(Self);
  atualizaDatasets;
end;

procedure TfrmMain.btnNovaTemporadaClick(Sender: TObject);
begin
  TfrmCadTemporada.inserir(Self)
end;

procedure TfrmMain.chkMesasAtivasClick(Sender: TObject);
begin
  atualizaDatasets;
end;

procedure TfrmMain.fdqMesasBeforeOpen(DataSet: TDataSet);
begin
  fdqMesas.ParamByName('soativas').AsBoolean:= chkMesasAtivas.Checked;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  atualizaDatasets;
end;

end.
