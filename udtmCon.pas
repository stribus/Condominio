unit udtmCon;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Comp.Client, Data.DB,UGeral,
  Data.SqlExpr, FireDAC.Phys.IBBase, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  Tdtmcon = class(TDataModule)
    conexao: TFDConnection;
    wcs1: TFDGUIxWaitCursor;
    fdqCons: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure con1BeforeConnect(Sender: TObject);
  private


    { Private declarations }
  public
    function getNextCod(ATabela, ACampo: String; AWhere: String = ''): Int64;
    function existsCod(AValId,AValCod:Largeint;ATabela:string;ANomeId:string='id';
          ANomeCod:string='codigo'):Boolean;
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
  Conexao :TFDConnection;
begin
  try
    conexaoClass := TConexao.Create(ExtractFilePath(ParamStr(0)) + 'Config.ini', 'Conexao');
    conexaoClass.LeINI;
    Conexao := TFDConnection(Sender);
    Conexao.LoginPrompt := false;
    Conexao.Params.Clear;
    Conexao.Params.Add('hostname=' + conexaoClass.Servidor);
    Conexao.Params.Add('user_name=' + conexaoClass.Usuario);
    Conexao.Params.Add('password=' + conexaoClass.Senha);
    Conexao.Params.Add('port=' + IntToStr(conexaoClass.Porta));
    Conexao.Params.Add('Database=' + conexaoClass.Database);
    Conexao.Params.Add('DriverID=' + conexaoClass.Driver);
  except
    on E: Exception do
      ShowMessage('Erro ao carregar par�metros de conex�o!'#13#10 + E.Message);
  end;
end;

procedure Tdtmcon.DataModuleCreate(Sender: TObject);
begin
  if not conexao.Connected then
     conexao.Connected := True;
end;


function Tdtmcon.existsCod(AValId, AValCod: Largeint; ATabela, ANomeId,
  ANomeCod: string): Boolean;
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
  lSql:TStringBuilder;
begin
  lSql := TStringBuilder.Create;
  try
    fdqCons.Close;
    lSql.AppendFormat(SELECT,[Atabela,ANomeCod,AValCod,ANomeId,AValId]);
    fdqCons.Open(lSql.ToString);
    Result := not fdqCons.IsEmpty;
    fdqCons.Close;
  finally
    tryFreeAndNil(lsql);
  end;
end;

function Tdtmcon.getNextCod(ATabela, ACampo: String; AWhere: String=''): Int64;
const
  SELECT =
          ' select' +
          '   max(%s)' +
          ' from' +
          '   %s';
var
  lSql:TStringBuilder;
begin
  lSql := TStringBuilder.Create;
  try
    fdqCons.Close;
    lSql.AppendFormat(SELECT,[Acampo,Atabela]);
    if AWhere <> '' then
      lSql.AppendLine.Append(' where ').AppendLine.Append(AWhere);
    fdqCons.Open(lSql.ToString);
    result:=fdqCons.FieldByName('max').AsInteger+1;
    fdqCons.Close;
  finally
    tryFreeAndNil(lsql);
  end;
end;


end.