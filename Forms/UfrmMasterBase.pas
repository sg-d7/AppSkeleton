// törzs adatokat megjelenito alaposztály
unit UfrmMasterBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmFormBase, Vcl.ToolWin, Vcl.ComCtrls,
  System.Actions, Vcl.ActnList;

type
  TfrmMasterBase = class(TfrmFormBase)
    tbrMasterButtons: TToolBar;
    alCommands: TActionList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

procedure TfrmMasterBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caHide;
end;

procedure TfrmMasterBase.FormShow(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
end;

end.
