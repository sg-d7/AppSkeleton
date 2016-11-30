inherited frmSettingsDialog: TfrmSettingsDialog
  Caption = 'Be'#225'll'#237't'#225'sok'
  ClientWidth = 459
  ExplicitWidth = 465
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlButtonContainer: TPanel
    Width = 459
    ExplicitWidth = 459
    inherited btnOK: TBitBtn
      Left = 293
      ModalResult = 1
      ExplicitLeft = 293
    end
    inherited btnCancel: TBitBtn
      Left = 374
      ExplicitLeft = 374
    end
  end
  inherited pnlClientContainer: TPanel
    Width = 459
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 459
    ExplicitHeight = 277
    object ValueListEditor1: TValueListEditor
      Left = 1
      Top = 1
      Width = 457
      Height = 275
      Align = alClient
      Strings.Strings = (
        'Kulcs1=1'
        'Kulcs2=2'
        'Kulcs3=3')
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 449
      ExplicitHeight = 271
      ColWidths = (
        150
        301)
    end
  end
end
