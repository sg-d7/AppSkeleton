inherited frmDialogBase: TfrmDialogBase
  BorderStyle = bsDialog
  Caption = 'frmDialogBase'
  ClientHeight = 318
  ClientWidth = 457
  Position = poMainFormCenter
  ExplicitHeight = 346
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtonContainer: TPanel
    Left = 0
    Top = 277
    Width = 457
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 88
    ExplicitTop = 232
    ExplicitWidth = 185
    DesignSize = (
      457
      41)
    object btnOK: TBitBtn
      Left = 287
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      TabOrder = 0
    end
    object btnCancel: TBitBtn
      Left = 368
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'M'#233'gsem'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object pnlClientContainer: TPanel
    Left = 0
    Top = 0
    Width = 457
    Height = 277
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    ExplicitLeft = 296
    ExplicitTop = 168
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
end
