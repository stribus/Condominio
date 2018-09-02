unit ufrmPesqProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,UGeral,udtmCon,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmPesqProduto = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    btn1: TButton;
    dbgrdProduto: TDBGrid;
    fdqProdutos: TFDQuery;
    dtsProdutos: TDataSource;
    fdqProdutosID_RODUTOS: TLargeintField;
    fdqProdutosCODIGO: TLargeintField;
    fdqProdutosFK_TEMPORADA: TLargeintField;
    fdqProdutosNOME: TStringField;
    fdqProdutosVALOR_UNI: TBCDField;
   private
    localiza:string;
    procedure dbgrdProdutoDblClick(Sender: TObject);
    procedure dbgrdProdutoEndDock(Sender, Target: TObject; X, Y: Integer);
    procedure dbgrdProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrdProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrdProdutoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgrdProdutoMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure dbgrdProdutoTitleClick(Column: TColumn);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

  public
    function pesquisa: string;
  end;

var
  frmPesqProduto: TfrmPesqProduto;

implementation

{$R *.dfm}



procedure TfrmPesqProduto.dbgrdProdutoDblClick(Sender: TObject);
begin
    Self.ModalResult:=mrOk;
end;

procedure TfrmPesqProduto.dbgrdProdutoEndDock(Sender, Target: TObject; X, Y: Integer);
begin
    localiza:= ''   ;
end;

procedure TfrmPesqProduto.dbgrdProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if ( Key in [38,29,40] )then
       localiza:='';
end;

procedure TfrmPesqProduto.dbgrdProdutoKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #8 then
       localiza:= Copy(localiza,1,Length(localiza) -1 )
    else if Key = #$D then
         Self.ModalResult:= mrOk
    else localiza:=localiza+key;
    lbl1.Caption:=localiza;
    fdqProdutos.Locate('descricao',localiza,[loCaseInsensitive, loPartialKey]);
end;

procedure TfrmPesqProduto.dbgrdProdutoMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    localiza:='';
end;

procedure TfrmPesqProduto.dbgrdProdutoMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
{}
end;

procedure TfrmPesqProduto.dbgrdProdutoTitleClick(Column: TColumn);
begin
    sortColumn(fdqProdutos,Column);
end;




procedure TfrmPesqProduto.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

end;

function TfrmPesqProduto.pesquisa: string;
begin
    fdqProdutos.Close;
    fdqProdutos.Open;
    pesquisa:='';
    if (Self.ShowModal = mrOk) then
        Result := fdqProdutosCODIGO.AsString
    else Result := '';
    fdqProdutos.Close;
end;
end.
