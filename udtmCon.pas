unit udtmCon;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Comp.Client, Data.DB,
  Data.SqlExpr, FireDAC.Phys.IBBase, FireDAC.VCLUI.Wait, FireDAC.Comp.UI;

type
  Tdtmcon = class(TDataModule)
    conexao: TFDConnection;
    fblink1: TFDPhysFBDriverLink;
    wcs1: TFDGUIxWaitCursor;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmcon: Tdtmcon;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
