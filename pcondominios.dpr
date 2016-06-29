program pcondominios;

uses
  Vcl.Forms,
  ufrmMain in 'ufrmMain.pas' {frmMain},
  udtmCon in 'udtmCon.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
