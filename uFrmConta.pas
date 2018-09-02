unit uFrmConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.GIFImg, JvExControls, JvXPCore, JvXPButtons,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConta: TfrmConta;

implementation

{$R *.dfm}

end.
