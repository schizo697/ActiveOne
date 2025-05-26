object CurrencyConverterForm: TCurrencyConverterForm
  Left = 0
  Top = 0
  Caption = 'Curency Converter'
  ClientHeight = 199
  ClientWidth = 397
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblCommission: TLabel
    Left = 32
    Top = 130
    Width = 111
    Height = 15
    Caption = 'The commission is R '
  end
  object lblAmount: TLabel
    Left = 32
    Top = 155
    Width = 78
    Height = 15
    Caption = 'The amount is '
  end
  object gbRand: TGroupBox
    Left = 32
    Top = 40
    Width = 185
    Height = 65
    Caption = 'Rand'
    TabOrder = 0
    object edtRand: TEdit
      Left = 32
      Top = 24
      Width = 121
      Height = 23
      TabOrder = 0
      TextHint = 'Enter Rand'
    end
  end
  object rgConvert: TRadioGroup
    Left = 248
    Top = 40
    Width = 121
    Height = 105
    Caption = 'Convert to'
    Items.Strings = (
      'Mars'
      'Venus'
      'Jupiter')
    TabOrder = 1
    OnClick = rgConvertClick
  end
  object btnReset: TButton
    Left = 272
    Top = 155
    Width = 75
    Height = 25
    Caption = 'Reset'
    TabOrder = 2
    OnClick = btnResetClick
  end
end
