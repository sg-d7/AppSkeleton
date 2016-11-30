// általános ablak alap osztály
unit UfrmFormBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmFormBase = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrmFormBase.FormShow(Sender: TObject);
begin
  if Assigned(Self.ActiveControl) then
    Self.ActiveControl.SetFocus;
end;

end.
