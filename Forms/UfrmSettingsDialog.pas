unit UfrmSettingsDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmDialogBase, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.ValEdit;

type
  TfrmSettingsDialog = class(TfrmDialogBase)
    ValueListEditor1: TValueListEditor;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettingsDialog: TfrmSettingsDialog;

implementation

{$R *.dfm}

end.
