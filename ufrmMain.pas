unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, udtmCon,
  Vcl.ExtCtrls, Vcl.ComCtrls, JvExComCtrls, JvComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    JvPageControl1: TJvPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    DBGrid3: TDBGrid;
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
    procedure btnNovaMesaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  ufrmCadMesas;

{$R *.dfm}

procedure TfrmMain.atualizaDatasets;
begin
  fdqMesas.Close;
  fdqMesas.Open();
end;

procedure TfrmMain.btnNovaMesaClick(Sender: TObject);
begin
  TfrmCadMesas.inserir(Self);
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  atualizaDatasets; select
    m.id_mesa
    , m.codigo
    , m.descricao
    , m.ativa
from
    mesa m
Where
    m.id_mesa = :id_mesa


end;

end.
