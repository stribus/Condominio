unit ufrmCadPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udtmCon, FireDAC.Stan.Intf,
  UGeral, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadBase = class(TForm)
    fdqEdicao: TFDQuery;
    pnl1: TPanel;
    btnOk: TButton;
    btnCancelar: TButton;
    pnl2: TPanel;
    dbedtCodigo: TDBEdit;
    dbedtDescricao: TDBEdit;
    procedure fdqEdicaoBeforeOpen(DataSet: TDataSet);
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class function inserir(Aowner: TComponent): Boolean; virtual; abstract;
    class function editar(Aowner: TComponent; AId: Int64): Boolean; virtual; abstract;
  protected
    FId: Int64;
    function verificaCampos:Boolean;virtual;abstract;

  end;

implementation

{$R *.dfm}

{ TfrmCadBase }

procedure TfrmCadBase.btnOkClick(Sender: TObject);
begin
  if verificaCampos then
    ModalResult := mrOk;
end;

procedure TfrmCadBase.fdqEdicaoBeforeOpen(DataSet: TDataSet);
begin
  if (fdqEdicao.ParamCount > 0)
    and (fdqEdicao.UpdateOptions.KeyFields <> '') then
  begin
    if FId >= 0 then
      fdqEdicao.ParamByName(fdqEdicao.UpdateOptions.KeyFields).AsLargeInt := FId
    else
      fdqEdicao.ParamByName(fdqEdicao.UpdateOptions.KeyFields).Clear;
  end;
end;


procedure TfrmCadBase.FormShow(Sender: TObject);
begin
  if not fdqEdicao.Active then
    fdqEdicao.Open;
end;

end.

