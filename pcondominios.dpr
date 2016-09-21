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
  ufrmCadMesas in 'ufrmCadMesas.pas' {frmCadMesas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(Tdtmcon, dtmcon);
  Application.Run;
end.
