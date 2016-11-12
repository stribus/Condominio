unit ufrmCadProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, udtmCon;

type
  TfrmCadProduto = class(TfrmCadBase)
    fdqEdicaoID_RODUTOS: TLargeintField;
    fdqEdicaoCODIGO: TLargeintField;
    fdqEdicaoFK_TEMPORADA: TLargeintField;
    fdqEdicaoNOME: TStringField;
    fdqEdicaoVALOR_UNI: TBCDField;
    lbl1: TLabel;
    dbedtVALOR_UNI: TDBEdit;
    lbl2: TLabel;
    lbl3: TLabel;
  private
  protected
    function verificaCampos: Boolean; override;
    { Private declarations }
  public
    { Public declarations }
    class function inserir(Aowner: TComponent; AIdTemporada: Integer): Boolean; override;
    class function editar(Aowner: TComponent; AId: Int64): Boolean; override;
  end;

var
  frmCadProduto: TfrmCadProduto;

implementation

{$R *.dfm}

uses UGeral;

{ TfrmCadProduto }

class function TfrmCadProduto.editar(Aowner: TComponent; AId: Int64): Boolean;
var
  cadProduto:TfrmCadProduto;
begin
  try
    cadProduto:=TfrmCadProduto.Create(Aowner);
    with cadProduto do
    begin
      FId := AId;
      fdqEdicao.Open();
      fdqEdicao.Edit;
      if ShowModal = mrOk then
      begin
        fdqEdicao.Post;
        fdqEdicao.ApplyUpdates(-1);
      end
      else
        fdqEdicao.Cancel;
      fdqEdicao.Close;
    end;
  finally
    tryFreeAndNil(cadProduto);
  end;
end;

class function TfrmCadProduto.inserir(Aowner: TComponent; AIdTemporada: Integer): Boolean;
var
  cadProduto:TfrmCadProduto;
begin
  try
    cadProduto:=TfrmCadProduto.Create(Aowner);
    with cadProduto do
    begin
      FId := -1;
      fdqEdicao.Open();
      fdqEdicao.Insert;
      fdqEdicaoCODIGO.AsLargeInt := dtmcon.getNextCod('mesa','codigo',
                          'p.fk_temporada = '+inttoStr(AIdTemporada));
      fdqEdicaoFK_TEMPORADA.AsInteger := AIdTemporada;
      if ShowModal = mrOk then
      begin
        fdqEdicao.Post;
        fdqEdicao.ApplyUpdates(-1);
      end
      else
        fdqEdicao.Cancel;
      fdqEdicao.Close;
    end;
  finally
    tryFreeAndNil(cadProduto);
  end;
end;

function TfrmCadProduto.verificaCampos: Boolean;
  function exists(AValId, AIdTemporada: Largeint; ANomeCol,AValCol:string): Boolean;
  const
      SELECT =
      '  select' + sLineBreak +
      '      first 1 1' + sLineBreak +
      '  from' + sLineBreak +
      '    produtos  x' + sLineBreak +
      '  where' + sLineBreak +
      '      x.%s = ''%s''' + sLineBreak +
      '      and x.id_rodutos <> %d'      + sLineBreak +
      '      and x.fk_temporada = %d '    ;
  var
    lSql: TStringBuilder;
  begin
    lSql := TStringBuilder.Create;
    with dtmcon do
    try
      fdqCons.Close;
      lSql.AppendFormat(SELECT, [AnomeCol,AValCol, AValId,AIdTemporada]);
      fdqCons.Open(lSql.ToString);
      Result := not fdqCons.IsEmpty;
      fdqCons.Close;
    finally
      tryFreeAndNil(lsql);
    end;
  end;

begin
  ActiveControl := nil;
  Result := True;
  if exists(fdqEdicaoID_RODUTOS.AsInteger
    ,fdqEdicaoFK_TEMPORADA.AsInteger
    ,'codigo'
    ,fdqEdicaoCODIGO.AsString) then
  begin
    ShowMessage('Código já cadastado em outro produto');
    Result := False;
  end;

  if exists(fdqEdicaoID_RODUTOS.AsInteger
    ,fdqEdicaoFK_TEMPORADA.AsInteger
    ,'nome'
    ,fdqEdicaoNOME.AsString) then
  begin
    ShowMessage('Produto já cadastrado');
    Result := False;
  end;

  if fdqEdicaoVALOR_UNI.IsNull then
    fdqEdicaoVALOR_UNI.AsCurrency := 0
  else if fdqEdicaoVALOR_UNI.AsCurrency < 0 then
       case
         Application.MessageBox('O valor unitário informado é um valor negativo.'
         + #13#10 + 'Deseja CORRIGIR o valor?',
         'Confirmação - Valor unitario negativo', MB_YESNOCANCEL +
         MB_ICONQUESTION + MB_DEFBUTTON3) of
         IDCANCEL:
           begin
            Result := False;
           end;
         IDYES:
           begin
             Result := False;
           end;
       end;
end;

end.
