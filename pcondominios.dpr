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
  ufrmManutencaoMesa in 'ufrmManutencaoMesa.pas' {frmManutencaoMesa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(Tdtmcon, dtmcon);
  Application.CreateForm(TfrmTemporadas, frmTemporadas);
  Application.CreateForm(TfrmCadTemporada, frmCadTemporada);
  Application.CreateForm(TfrmCadProduto, frmCadProduto);
  Application.Run;
end.
