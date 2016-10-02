unit ufrmTemporada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, udtmCon,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin;

type
  TfrmTemporadas = class(TForm)
    fdqTemporadas: TFDQuery;
    pnl1: TPanel;
    btnOk: TButton;
    dbg1: TJvDBGrid;
    dtsTemporadas: TDataSource;
    fdqTemporadasID_TEMPORADAS: TLargeintField;
    fdqTemporadasCOD_TEMP: TSmallintField;
    fdqTemporadasPERIODO_INICIAL: TDateField;
    fdqTemporadasPERIODO_FINAL: TDateField;
    fdqTemporadasDESCRICAO: TStringField;
    fdqTemporadasATIVO: TBooleanField;
    tlb1: TToolBar;
    btnAdd: TToolButton;
    btnEdit: TToolButton;
    btnDel: TToolButton;
    il1: TImageList;
    btnAtivaDesativa: TToolButton;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnAtivaDesativaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTemporadas: TfrmTemporadas;

implementation

{$R *.dfm}

procedure TfrmTemporadas.btnAddClick(Sender: TObject);
begin
{}
end;

procedure TfrmTemporadas.btnAtivaDesativaClick(Sender: TObject);
begin
{}
end;

procedure TfrmTemporadas.btnDelClick(Sender: TObject);
begin
{}
end;

procedure TfrmTemporadas.btnEditClick(Sender: TObject);
begin
{}
end;

end.
