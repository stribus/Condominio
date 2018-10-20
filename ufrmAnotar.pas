unit ufrmAnotar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvMaskEdit, JvDBFindEdit, JvExMask, JvToolEdit, JvBaseEdits, Vcl.ComCtrls,
  JvExComCtrls, JvDateTimePicker;

type
  TfrmAnotar = class(TForm)
    pnl2: TPanel;
    pnl1: TPanel;
    btnOk: TButton;
    btnCancelar: TButton;
    fdsp_lancamentos: TFDStoredProc;
    JvDateTimePicker1: TJvDateTimePicker;
    JvDateTimePicker2: TJvDateTimePicker;
    dbcbbAUTORIZADO: TDBLookupComboBox;
    lbl8: TLabel;
    lbl5: TLabel;
    edtQtd: TJvCalcEdit;
    lbl1: TLabel;
    lbl6: TLabel;
    edtProduto: TEdit;
    pnlPesquisa: TPanel;
    dbfdtProduto: TJvDBFindEdit;
    dbgPesquisaProduto: TJvDBGrid;
    fdqPesqProduto: TFDQuery;
    fdqPesqProdutoID_RODUTOS: TLargeintField;
    fdqPesqProdutoCODIGO: TLargeintField;
    fdqPesqProdutoFK_TEMPORADA: TLargeintField;
    fdqPesqProdutoNOME: TStringField;
    fdqPesqProdutoVALOR_UNI: TBCDField;
    dtsPesqProduto: TDataSource;
    fdqProduto: TFDQuery;
    fdqProdutoID_RODUTOS: TLargeintField;
    fdqProdutoCODIGO: TLargeintField;
    fdqProdutoFK_TEMPORADA: TLargeintField;
    fdqProdutoNOME: TStringField;
    fdqProdutoVALOR_UNI: TBCDField;
    dtsProduto: TDataSource;
    fdqDependente: TFDQuery;
    dtsDependentes: TDataSource;
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAnotar: TfrmAnotar;

implementation

{$R *.dfm}

procedure TfrmAnotar.btnOkClick(Sender: TObject);
begin
  if(Length(edtProduto.Text) = 0) and (fdqPesqProduto.Active)
    and (not fdqPesqProdutoCODIGO.IsNull)then
  begin
    edtProduto.Text := fdqPesqProdutoCODIGO.AsString;
    dbfdtProduto.Text := '';
  end;
  if (edtQtd.Value > 0) and (Length(edtProduto.Text) >= 1) then
  begin
    fdqProduto.Close;
    fdqProduto.Params[0].AsInteger := StrToIntDef(edtProduto.Text, 0);
    fdqProduto.Open();
    if fdqProduto.IsEmpty then
    begin
      Application.MessageBox('Produto não encontrado.', '', MB_OK + MB_ICONWARNING);
      Exit;
    end;

    fdsp_lancamentos.ParamByName('').Value := '';
    fdsp_lancamentos.ParamByName('').Value := '';
    fdsp_lancamentos.ParamByName('').Value := '';
    fdsp_lancamentos.ParamByName('').Value := '';
    fdsp_lancamentos.ParamByName('').Value := '';
    fdsp_lancamentos.ParamByName('').Value := '';
    ModalResult := mrOk;
  end
  else
  begin
      Application.MessageBox('Produto não encontrado.', '', MB_OK + MB_ICONWARNING);
      Exit;
    end;



end;

end.
