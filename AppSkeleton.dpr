program AppSkeleton;

uses
  Vcl.Forms,
  UfrmMain in 'Forms\UfrmMain.pas' {frmMain},
  Vcl.Themes,
  Vcl.Styles,
  UfrmFormBase in 'Forms\UfrmFormBase.pas' {frmFormBase},
  UfrmDialogBase in 'Forms\UfrmDialogBase.pas' {frmDialogBase},
  UfrmSettingsDialog in 'Forms\UfrmSettingsDialog.pas' {frmSettingsDialog},
  UfrmMasterBase in 'Forms\UfrmMasterBase.pas' {frmMasterBase},
  UfrmPartnerMaster in 'Forms\UfrmPartnerMaster.pas' {frmPartnerMaster},
  UdmData in 'DataModule\UdmData.pas' {dmData: TDataModule},
  UfrmPartnerEdit in 'Forms\UfrmPartnerEdit.pas' {frmPartnerEdit},
  UTypes in 'Types\UTypes.pas';

{$R *.res}

begin
  //ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sapphire Kamri');
  Application.Title := 'TestApp2';
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmSettingsDialog, frmSettingsDialog);
  Application.CreateForm(TfrmPartnerMaster, frmPartnerMaster);
  Application.CreateForm(TdmData, dmData);
  Application.Run;
end.
