unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,udtmCon, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmCadBase = class(TForm)
    fdqEdicao: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    class function Inserir(Aowner: TObject):Boolean;virtual;
    class function Editar(AId:Largeint):Boolean;virtual;
  end;

implementation

{$R *.dfm}

{ TfrmCadBase }

class function TfrmCadBase.Editar(AId: Largeint): Boolean;
var
  frmCadBase: TfrmCadBase;
begin
  frmCadBase := TfrmCadBase.Create();
end;

class function TfrmCadBase.Inserir(Aowner: TObject): Boolean;
var
  frmCadBase: TfrmCadBase;
begin

end;

end.
