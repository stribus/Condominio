program pcondominios;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  ufrmMain in 'ufrmMain.pas' {frmMain},
  udtmCon in 'udtmCon.pas' {dtmcon: TDataModule},
  ufrmCadPadrao in 'ufrmCadPadrao.pas' {frmCadBase},
  UGeral in 'UGeral.pas',
  ufrmCadMesas in 'ufrmCadMesas.pas' {frmCadMesas},
  UConexao in 'UConexao.pas',
  ufrmTemporada in 'ufrmTemporada.pas' {frmTemporadas},
  UfrmCadTemporada in 'UfrmCadTemporada.pas' {frmCadTemporada},
  ufrmCadProdutos in 'ufrmCadProdutos.pas' {frmCadProduto},
  ufrmManutencaoMesa in 'ufrmManutencaoMesa.pas' {frmManutencaoMesa},
  ufrmPagamento in 'ufrmPagamento.pas' {frmPagamento},
  ufrmCadClientes in 'ufrmCadClientes.pas' {frmCadClientes},
  ufrmCadDependentes in 'ufrmCadDependentes.pas' {frmCadDependente},
  uFrmConta in 'uFrmConta.pas' {frmConta},
  ufrmAnotar in 'ufrmAnotar.pas' {frmAnotar},
  udtmRelatorios in 'udtmRelatorios.pas' {dtmRelatorios: TDataModule},
  ufrmCadUsuario in 'ufrmCadUsuario.pas' {frmCadUsuario},
  ufrmValidaUsuario in 'ufrmValidaUsuario.pas' {frmValidaUsuario},
  ufrmCadEntradasSaidas in 'ufrmCadEntradasSaidas.pas' {frmEntradasSaidas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdtmcon, dtmcon);
  Application.CreateForm(TdtmRelatorios, dtmRelatorios);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
