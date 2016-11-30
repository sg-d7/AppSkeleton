inherited frmPartnerEdit: TfrmPartnerEdit
  ActiveControl = edNev
  Caption = 'frmPartnerEdit'
  ClientHeight = 265
  ClientWidth = 368
  ExplicitWidth = 374
  ExplicitHeight = 293
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlButtonContainer: TPanel
    Top = 224
    Width = 368
    ExplicitTop = 263
    ExplicitWidth = 368
    inherited btnOK: TBitBtn
      Left = 198
      OnClick = btnOKClick
      ExplicitLeft = 198
    end
    inherited btnCancel: TBitBtn
      Left = 279
      ExplicitLeft = 279
    end
  end
  inherited pnlClientContainer: TPanel
    Width = 368
    Height = 224
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 368
    ExplicitHeight = 263
    object lblNev: TLabel
      Left = 52
      Top = 21
      Width = 19
      Height = 13
      Caption = 'N'#233'v'
    end
    object lblIRSZ: TLabel
      Left = 52
      Top = 64
      Width = 23
      Height = 13
      Caption = 'IRSZ'
    end
    object lblTelepules: TLabel
      Left = 119
      Top = 64
      Width = 45
      Height = 13
      Caption = 'Telepules'
    end
    object lblCim: TLabel
      Left = 52
      Top = 110
      Width = 17
      Height = 13
      Caption = 'Cim'
    end
    object lblTelefon: TLabel
      Left = 52
      Top = 156
      Width = 36
      Height = 13
      Caption = 'Telefon'
    end
    object edNev: TEdit
      Left = 52
      Top = 37
      Width = 264
      Height = 21
      TabOrder = 0
      Text = 'edNev'
    end
    object edIRSZ: TEdit
      Left = 52
      Top = 83
      Width = 61
      Height = 21
      TabOrder = 1
      Text = 'edIRSZ'
    end
    object edTelepules: TEdit
      Left = 119
      Top = 83
      Width = 197
      Height = 21
      TabOrder = 2
      Text = 'edTelepules'
    end
    object edCim: TEdit
      Left = 52
      Top = 129
      Width = 264
      Height = 21
      TabOrder = 3
      Text = 'edCim'
    end
    object edTelefon: TEdit
      Left = 52
      Top = 175
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'edTelefon'
    end
  end
end
