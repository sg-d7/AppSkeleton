unit UfrmPartnerMaster;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmMasterBase, Vcl.ToolWin,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, System.Actions, Vcl.ActnList,
  Vcl.ImgList;

type
  TfrmPartnerMaster = class(TfrmMasterBase)
    btnNew: TToolButton;
    btnEdit: TToolButton;
    btnDelete: TToolButton;
    ToolButton4: TToolButton;
    btnExit: TToolButton;
    dbgPartnerList: TDBGrid;
    acNew: TAction;
    acEdit: TAction;
    acDelete: TAction;
    acClose: TAction;
    ilIcons: TImageList;
    procedure acCloseExecute(Sender: TObject);
    procedure acNewExecute(Sender: TObject);
    procedure acEditExecute(Sender: TObject);
    procedure acEditUpdate(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure acDeleteUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPartnerMaster: TfrmPartnerMaster;

implementation

{$R *.dfm}

uses
  UdmData, UfrmPartnerEdit, UTypes;

const
  MSG_CONFIRM_PARTNER_DELETE  = 'Törli a kiválasztott rekordot?';
  TITLE_CONFIRM_PARTNER_DELETE  = 'Törlés megerõsítés';

procedure TfrmPartnerMaster.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmPartnerMaster.acDeleteExecute(Sender: TObject);
begin
  inherited;
  if (MessageBox(Self.Handle, PChar(MSG_CONFIRM_PARTNER_DELETE), PChar(TITLE_CONFIRM_PARTNER_DELETE), MB_YESNO or MB_ICONQUESTION) = ID_YES) then
    begin
      // torolni kell
      dmData.cdsPartnerMaster.Delete;
    end;
end;

procedure TfrmPartnerMaster.acDeleteUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled := (dmData.cdsPartnerMaster.RecordCount > 0);
end;

procedure TfrmPartnerMaster.acEditExecute(Sender: TObject);
var
  dlg   : TfrmPartnerEdit;
  rData : TPartner;
begin
  try
    dlg := TfrmPartnerEdit.Create(Self);
    dlg.FormMode := fmEdit;

    rData.Nev := dmData.cdsPartnerMasterNév.AsString;
    rData.IRSZ := dmData.cdsPartnerMasterIRSZ.AsInteger;
    rData.Telepules := dmData.cdsPartnerMasterTelepules.AsString;
    rData.Cim := dmData.cdsPartnerMasterCim.AsString;
    rData.Telefon := dmData.cdsPartnerMasterTelefon.AsString;

    dlg.PartnerData := rData;
    if dlg.ShowModal = mrOk then
      begin
        rData := dlg.PartnerData;
        with dmData do
          begin
            cdsPartnerMaster.Edit;
            cdsPartnerMasterNév.AsString := rData.Nev;
            cdsPartnerMasterIRSZ.AsInteger := rData.IRSZ;
            cdsPartnerMasterTelepules.AsString := rData.Telepules;
            cdsPartnerMasterCim.AsString := rData.Cim;
            cdsPartnerMasterTelefon.AsString := rData.Telefon;
            cdsPartnerMaster.Post;
          end;
      end;
  finally
    dlg.Release;
  end;
end;

procedure TfrmPartnerMaster.acEditUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled := (dmData.cdsPartnerMaster.RecordCount > 0);
end;

procedure TfrmPartnerMaster.acNewExecute(Sender: TObject);
var
  dlg   : TfrmPartnerEdit;
  rData : TPartner;
begin
  try
    dlg := TfrmPartnerEdit.Create(Self);
    dlg.FormMode := fmInsert;

    if dlg.ShowModal = mrOk then
      begin
        rData := dlg.PartnerData;
        with dmData do
          begin
            cdsPartnerMaster.Insert;
            cdsPartnerMasterNév.AsString := rData.Nev;
            cdsPartnerMasterIRSZ.AsInteger := rData.IRSZ;
            cdsPartnerMasterTelepules.AsString := rData.Telepules;
            cdsPartnerMasterCim.AsString := rData.Cim;
            cdsPartnerMasterTelefon.AsString := rData.Telefon;
            cdsPartnerMaster.Post;
          end;
      end;
  finally
    dlg.Release;
  end;
end;

end.
