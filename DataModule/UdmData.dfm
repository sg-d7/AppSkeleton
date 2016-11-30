object dmData: TdmData
  OldCreateOrder = False
  Height = 244
  Width = 264
  object cdsPartnerMaster: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 104
    Top = 72
    object cdsPartnerMasterNév: TStringField
      DisplayLabel = 'N'#233'v'
      FieldName = 'Nev'
    end
    object cdsPartnerMasterIRSZ: TIntegerField
      FieldName = 'IRSZ'
    end
    object cdsPartnerMasterTelepules: TStringField
      DisplayLabel = 'Telep'#252'les'
      FieldName = 'Telepules'
    end
    object cdsPartnerMasterCim: TStringField
      DisplayLabel = 'C'#237'm'
      FieldName = 'Cim'
    end
    object cdsPartnerMasterTelefon: TStringField
      FieldName = 'Telefon'
    end
  end
  object dsrPartnerMaster: TDataSource
    AutoEdit = False
    DataSet = cdsPartnerMaster
    Left = 104
    Top = 24
  end
end
