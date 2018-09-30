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
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

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
    procedure fdqCadernetaBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    class function Editar(Aowner: TComponent; AId_Cliente: Integer; AIdTemporada:
      Integer): Boolean;
  protected
    FIdCliente, FIdTemporada: Int64;
  end;

var
  frmConta: TfrmConta;

implementation

{$R *.dfm}

{ TfrmConta }

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
    fdqCaderneta.Open();
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

end.
