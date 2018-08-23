unit ufrmCadClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, udtmCon, Vcl.Buttons,
  JvExDBGrids, JvDBGrid;

type
  TfrmCadClientes = class(TfrmCadBase)
    pnl4: TPanel;
    pnl3: TPanel;
    btn_Add: TButton;
    btn_Remove: TButton;
    pnl5: TPanel;
    pnl6: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    dbedt_nome: TDBEdit;
    dbedt_endereco: TDBEdit;
    dbedt_Telefone: TDBEdit;
    dbmmoOBSERVACAO: TDBMemo;
    dbedtCODIGO1: TDBEdit;
    fdqDependente: TFDQuery;
    dtsDependente: TDataSource;
    btn1: TButton;
    fdqDependenteID_DEPENDENTES: TLargeintField;
    fdqDependenteCODIGO: TLargeintField;
    fdqDependenteNOME: TStringField;
    fdqDependenteFK_CLIENTE: TLargeintField;
    fdqDependenteFONE: TStringField;
    fdqDependenteOBS: TMemoField;
    fdqDependentePERMITIR_RETIRAR: TBooleanField;
    fdqEdicaoID_CLIENTE: TLargeintField;
    fdqEdicaoCODIGO: TLargeintField;
    fdqEdicaoNOME: TStringField;
    fdqEdicaoENDERECO: TStringField;
    fdqEdicaoCONTATO: TStringField;
    fdqEdicaoOBS: TMemoField;
    fdqEdicaoPERMITIR_SALDO_NEGATIVO: TBooleanField;
    fdqEdicaoATIVO: TBooleanField;
    dbchkATIVO: TDBCheckBox;
    dbchkPERMITIR_SALDO_NEGATIVO: TDBCheckBox;
    fduedicao: TFDUpdateSQL;
    dbgrd_Dependetes: TJvDBGrid;
    procedure fdqDependenteBeforeOpen(DataSet: TDataSet);
    procedure dbgrd_DependetesDblClick(Sender: TObject);
  private
    { Private declarations }
 protected
    function verificaCampos: Boolean; override;
    { Private declarations }
  public
    { Public declarations }
    class function inserir(Aowner: TComponent; AIdTemporada: Integer): Boolean; override;
    class function editar(Aowner: TComponent; AId: Int64): Boolean; override;
  end;

var
  frmCadClientes: TfrmCadClientes;

implementation

uses
  UGeral;

{$R *.dfm}

{ TfrmCadBase2 }

procedure TfrmCadClientes.dbgrd_DependetesDblClick(Sender: TObject);
begin
  inherited;
  if(fdqDependente.Active and not fdqDependente.IsEmpty) then
  begin
     fdqDependente.Edit;
     fdqDependentePERMITIR_RETIRAR.AsBoolean := not fdqDependentePERMITIR_RETIRAR.AsBoolean;
  end;
end;

class function TfrmCadClientes.editar(Aowner: TComponent; AId: Int64): Boolean;
begin
   try
     frmCadClientes := TfrmCadClientes.Create(Aowner);
     with frmCadClientes do
    begin
      FId := AId;
      fdqEdicao.Open();
      fdqDependente.Open();
      if ShowModal = mrOk then
      begin
        fdqEdicao.Post;
        fdqDependente.ApplyUpdates(-1);
        fdqEdicao.ApplyUpdates(-1);
        //        fdqDependente.Post;
      end
      else
      begin
        fdqDependente.Cancel;
        fdqEdicao.Cancel;
      end;
    end;
  finally
    tryFreeAndNil(frmCadClientes);
  end;
end;

procedure TfrmCadClientes.fdqDependenteBeforeOpen(DataSet: TDataSet);
begin
  inherited;
   if FId >= 0 then
      fdqDependente.ParamByName('FK_CLIENTE').AsLargeInt := FId
    else
      fdqDependente.ParamByName('FK_CLIENTE').Clear;

end;

class function TfrmCadClientes.inserir(Aowner: TComponent;  AIdTemporada: Integer): Boolean;
begin
   try
     frmCadClientes := TfrmCadClientes.Create(Aowner);
     with frmCadClientes do
    begin
      FId := dtmcon.genNextId(fdqEdicao.UpdateOptions.GeneratorName,1);
      fdqEdicao.Open();
      fdqEdicao.Insert;
      fdqEdicaoID_CLIENTE.AsInteger :=FId;
      fdqEdicaoCODIGO.AsLargeInt := dtmcon.getNextCod('CLIENTE','codigo');
      fdqEdicaoNOME.AsString :='';
      fdqEdicaoATIVO.AsBoolean := True;
      fdqEdicaoPERMITIR_SALDO_NEGATIVO.AsBoolean:= True;
      fdqDependente.Open();
      if ShowModal = mrOk then
      begin
        fdqEdicao.Post;
        fdqEdicao.ApplyUpdates(-1);
//        fdqDependente.Post;
        fdqDependente.ApplyUpdates(-1);
      end
      else
      begin
        fdqDependente.Cancel;
        fdqEdicao.Cancel;
        fdqEdicao.Delete;
        fdqEdicao.ApplyUpdates(-1);
      end;
      fdqEdicao.Close;
    end;
   finally
       tryFreeAndNil(frmCadClientes);
   end;
end;

function TfrmCadClientes.verificaCampos: Boolean;
function exists(AValId: Largeint; ANomeCol,AValCol:string): Boolean;
  const
      SELECT =
      '  select' + sLineBreak +
      '      first 1 1' + sLineBreak +
      '  from' + sLineBreak +
      '    CLIENTE  x' + sLineBreak +
      '  where' + sLineBreak +
      '      x.%s = ''%s''' + sLineBreak +
      '      and x.ID_CLIENTE <> %d'      + sLineBreak +
      '       '    ;
  var
    lSql: TStringBuilder;
  begin
    lSql := TStringBuilder.Create;
    with dtmcon do
    try
      fdqCons.Close;
      lSql.AppendFormat(SELECT, [AnomeCol,AValCol, AValId]);
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

  if(Trim(fdqEdicaoNOME.AsString)='') then
  begin
    ShowMessage('Nome não informado');
    Result := False;
  end;

  if exists(fdqEdicaoID_CLIENTE.AsInteger
    ,'nome'
    ,fdqEdicaoNOME.AsString) then
  begin
    ShowMessage('Cliente já cadastrado');
    Result := False;
  end;

end;

end.
