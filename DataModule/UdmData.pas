unit UdmData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TdmData = class(TDataModule)
    cdsPartnerMaster: TClientDataSet;
    cdsPartnerMasterNév: TStringField;
    cdsPartnerMasterIRSZ: TIntegerField;
    cdsPartnerMasterTelepules: TStringField;
    cdsPartnerMasterCim: TStringField;
    cdsPartnerMasterTelefon: TStringField;
    dsrPartnerMaster: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  dmData: TdmData;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmData }

constructor TdmData.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  cdsPartnerMaster.CreateDataSet;
  cdsPartnerMaster.Open;
end;

destructor TdmData.Destroy;
begin
  cdsPartnerMaster.Close;
  inherited Destroy;
end;

end.
