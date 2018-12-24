unit udtmCon;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Comp.Client, Data.DB, UGeral, Data.SqlExpr, FireDAC.Phys.IBBase,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Moni.Base, FireDAC.Moni.RemoteClient;

type
  Tdtmcon = class(TDataModule)
    wcs1: TFDGUIxWaitCursor;
    fdqCons: TFDQuery;
    fdmConfigIni: TFDManager;
    conexao: TFDConnection;
    fdpdl1: TFDPhysFBDriverLink;
    fdtrans1: TFDTransaction;
    fdmnrmtclntlnk1: TFDMoniRemoteClientLink;
    procedure DataModuleCreate(Sender: TObject);
    procedure con1BeforeConnect(Sender: TObject);
    procedure fdmConfigIniBeforeLoadConnectionDefFile(Sender: TObject);
  private


    { Private declarations }
  public
    function getNextCod(ATabela, ACampo: string; AWhere: string = ''): Int64;
    function existsCod(AValId, AValCod: Largeint; ATabela: string; ANomeId: string = 'id'; ANomeCod: string = 'codigo'): Boolean;
    function genNextId(AGenerator: string; Aincremento: Integer = 1): Integer;
  end;

var
  dtmcon: Tdtmcon;

implementation

uses
  UConexao, Vcl.Dialogs;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdtmcon.con1BeforeConnect(Sender: TObject);
var
  conexaoClass: TConexao;
  Conexao: TFDConnection;
begin
//mudado para  connectionsdefs
//  try
//    conexaoClass := TConexao.Create(ExtractFilePath(ParamStr(0)) + 'Config.ini', 'Conexao');
//    conexaoClass.LeINI;
//    Conexao := TFDConnection(Sender);
//    Conexao.LoginPrompt := false;
//    Conexao.Params.Clear;
//    Conexao.Params.Add('hostname=' + conexaoClass.Servidor);
//    Conexao.Params.Add('user_name=' + conexaoClass.Usuario);
//    Conexao.Params.Add('password=' + conexaoClass.Senha);
//    Conexao.Params.Add('port=' + IntToStr(conexaoClass.Porta));
//    Conexao.Params.Add('Database=' + conexaoClass.Database);
//    Conexao.Params.Add('DriverID=' + conexaoClass.Driver);
//  except
//    on E: Exception do
//      ShowMessage('Erro ao carregar parâmetros de conexão!'#13#10 + E.Message);
//  end;
end;

procedure Tdtmcon.DataModuleCreate(Sender: TObject);
begin
  if (DebugHook = 0) then
  begin
      //fdpdl1.Embedded := True;
//    FDPhysFBDriverLink1 := TFDPhysFBDriverLink.Create(Self);
//
//    with FDPhysFBDriverLink1 do
//    begin
//      Name := 'FDPhysFBDriverLink1';
//      Embedded := True;
//      VendorLib := 'C:\condominio_novo\Fb3_0_embeded\fbclient.dll';
//    end;

  end;

  if not fdmConfigIni.Active then
    fdmConfigIni.Active := True;
//  ShowMessage(conexao.Params.Database);
  if not conexao.Connected then
 //   conexao.Connected := True;
end;

function Tdtmcon.existsCod(AValId, AValCod: Largeint; ATabela, ANomeId, ANomeCod: string): Boolean;
const
  SELECT =
    '  select' + sLineBreak +
    '      first 1 1' + sLineBreak +
    '  from' + sLineBreak +
    '    %s  x' + sLineBreak +
    '  where' + sLineBreak +
    '      x.%s = %d' + sLineBreak +
    '      and x.%s <> %d' ;
var
  lSql: TStringBuilder;
begin
  lSql := TStringBuilder.Create;
  try
    fdqCons.Close;
    lSql.AppendFormat(SELECT, [Atabela, ANomeCod, AValCod, ANomeId, AValId]);
    fdqCons.Open(lSql.ToString);
    Result := not fdqCons.IsEmpty;
    fdqCons.Close;
  finally
    tryFreeAndNil(lsql);
  end;
end;

procedure Tdtmcon.fdmConfigIniBeforeLoadConnectionDefFile(Sender: TObject);
begin
  //fdmConfigIni.ConnectionDefFileName := ExtractFilePath(ParamStr(0)) + 'config.ini';
end;

function Tdtmcon.genNextId(AGenerator: string; Aincremento: Integer): Integer;
const
  SELECT = 'select gen_id(%s, %d) from rdb$database';
var
  lSql: TStringBuilder;
begin
    lSql := TStringBuilder.Create;
  try
    lSql.AppendFormat(SELECT, [AGenerator, Aincremento]);
    Result := conexao.ExecSQLScalar(lSql.ToString);
  finally
    tryFreeAndNil(lsql);
  end;
end;

function Tdtmcon.getNextCod(ATabela, ACampo: string; AWhere: string = ''): Int64;
const
   SELECT =
          ' select' +
          '   COALESCE(MAX(%s),0) %s' +
          ' from' +
          '   %s';
var
  lSql: TStringBuilder;
begin
  lSql := TStringBuilder.Create;
  try
    //fdqCons.Close;
    lSql.AppendFormat(SELECT, [Acampo,Acampo, Atabela]);
    if AWhere <> '' then
      lSql.AppendLine.Append(' where ').AppendLine.Append(AWhere);
    //fdqCons.Open(lSql.ToString);
    //result:=fdqCons.FieldByName('max').AsInteger+1;
    //fdqCons.Close;
    Result := conexao.ExecSQLScalar(lSql.ToString) + 1;
  finally
    tryFreeAndNil(lsql);
  end;
end;


initialization
finalization

end.

