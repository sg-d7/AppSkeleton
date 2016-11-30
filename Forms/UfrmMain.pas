unit UfrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, System.Actions,
  Vcl.ActnList, Vcl.ToolWin, Vcl.ImgList;

type
  TfrmMain = class(TForm)
    mnuMain: TMainMenu;
    mniFile: TMenuItem;
    mniMasterData: TMenuItem;
    mniHelp: TMenuItem;
    N1: TMenuItem;
    sbrStatus: TStatusBar;
    alCommands: TActionList;
    acSettings: TAction;
    acExit: TAction;
    mniSettings: TMenuItem;
    N2: TMenuItem;
    mniExit: TMenuItem;
    tbrToolbar: TToolBar;
    ToolButton1: TToolButton;
    acPartnerMaster: TAction;
    mniPartnerMaster: TMenuItem;
    ilIcons: TImageList;
    acAbout: TAction;
    mniVersion: TMenuItem;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    procedure acExitExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acSettingsExecute(Sender: TObject);
    procedure acPartnerMasterExecute(Sender: TObject);
    procedure acAboutExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  UfrmSettingsDialog, UfrmPartnerMaster;

const
  MSG_VERSION = 'Teszt alkalmazás'#13'v1.0';
  TITLE_VERSION = 'Program verzió';

{$R *.dfm}

procedure TfrmMain.acAboutExecute(Sender: TObject);
begin
  MessageBox(Self.Handle, PChar(MSG_VERSION), PChar(TITLE_VERSION), MB_OK or MB_ICONINFORMATION);
end;

procedure TfrmMain.acExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.acPartnerMasterExecute(Sender: TObject);
begin
  frmPartnerMaster.ShowModal;
end;

procedure TfrmMain.acSettingsExecute(Sender: TObject);
begin
  frmSettingsDialog.ShowModal;
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  iRes  : Integer;
begin
  //iRes := MessageBox(Self.Handle, PChar('Valóban bezárja a programot?'), PChar('Megerõsítés'), MB_YESNO or MB_ICONQUESTION);
  //CanClose := (iRes = ID_YES);
  CanClose := True;
end;

end.
