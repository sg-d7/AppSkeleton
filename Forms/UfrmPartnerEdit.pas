unit UfrmPartnerEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmDialogBase, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Data.DB, Vcl.Mask, Vcl.DBCtrls, UTypes;

type
  TfrmPartnerEdit = class(TfrmDialogBase)
    lblNev: TLabel;
    lblIRSZ: TLabel;
    lblTelepules: TLabel;
    lblCim: TLabel;
    lblTelefon: TLabel;
    edNev: TEdit;
    edIRSZ: TEdit;
    edTelepules: TEdit;
    edCim: TEdit;
    edTelefon: TEdit;
    procedure btnOKClick(Sender: TObject);
  private
    FFormMode: TFormMode;
    { Private declarations }
    procedure EmptyFields;
    procedure UpdateFormCaption;
    function GetPartnerData: TPartner;
    procedure SetPartnerData(const Value: TPartner);
    procedure SetFormMode(const Value: TFormMode);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;

    property PartnerData : TPartner read GetPartnerData write SetPartnerData;
    property FormMode : TFormMode read FFormMode write SetFormMode;
  end;

implementation

const
  CAP_INSERT_MODE = 'Új partner...';
  CAP_EDIT_MODE   = 'Parner szerkesztése...';

{$R *.dfm}

{ TfrmPartnerEdit }

procedure TfrmPartnerEdit.btnOKClick(Sender: TObject);
begin
  inherited;
  if (edNev.Text <> '') then
    ModalResult := mrOk
  else
    MessageBox(Self.Handle, PChar('Kérem töltse ki a Név mezõt'), PChar('Hiba'), MB_OK or MB_ICONWARNING);
end;

constructor TfrmPartnerEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FFormMode := fmInsert;
  EmptyFields;
  UpdateFormCaption;
end;

procedure TfrmPartnerEdit.EmptyFields;
begin
  edNev.Text := '';
  edIRSZ.Text := '';
  edTelepules.Text := '';
  edCim.Text := '';
  edTelefon.Text := '';
end;

function TfrmPartnerEdit.GetPartnerData: TPartner;
begin
  Result.Nev := edNev.Text;
  Result.IRSZ := StrToIntDef(edIRSZ.Text, 0);
  Result.Telepules := edTelepules.Text;
  Result.Cim := edCim.Text;
  Result.Telefon := edTelefon.Text;
end;

procedure TfrmPartnerEdit.SetFormMode(const Value: TFormMode);
begin
  if FFormMode <> Value then
    begin
      FFormMode := Value;
      UpdateFormCaption;
    end;
end;

procedure TfrmPartnerEdit.SetPartnerData(const Value: TPartner);
begin
  edNev.Text := Value.Nev;
  edIRSZ.Text := IntToStr(Value.IRSZ);
  edTelepules.Text := Value.Telepules;
  edCim.Text := Value.Cim;
  edTelefon.Text := Value.Telefon;
end;

procedure TfrmPartnerEdit.UpdateFormCaption;
begin
  case FFormMode of
    fmInsert: Self.Caption := CAP_INSERT_MODE;
    fmEdit: Self.Caption := CAP_EDIT_MODE;
  end;

end;

end.
