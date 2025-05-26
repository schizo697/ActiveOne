object MultipleCurrenciesCalculator: TMultipleCurrenciesCalculator
  Left = 0
  Top = 0
  Caption = 'Multiple Currencies Calculator'
  ClientHeight = 262
  ClientWidth = 511
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblPesos: TLabel
    Left = 64
    Top = 35
    Width = 30
    Height = 15
    Caption = 'Pesos'
  end
  object lblCurrency: TLabel
    Left = 408
    Top = 35
    Width = 48
    Height = 15
    Caption = 'Currency'
  end
  object lblFee: TLabel
    Left = 205
    Top = 179
    Width = 100
    Height = 15
    Caption = '2% Conversion Fee'
  end
  object edtPesos: TEdit
    Left = 24
    Top = 56
    Width = 121
    Height = 23
    TabOrder = 0
    TextHint = 'Enter Pesos'
  end
  object gbConvert: TGroupBox
    Left = 168
    Top = 24
    Width = 185
    Height = 137
    Caption = 'Convert to:'
    TabOrder = 1
    object radEuro: TRadioButton
      Left = 24
      Top = 32
      Width = 113
      Height = 17
      Caption = 'Euro'
      TabOrder = 0
      OnClick = radEuroClick
    end
    object radBPound: TRadioButton
      Left = 24
      Top = 64
      Width = 113
      Height = 17
      Caption = 'British Pound'
      TabOrder = 1
      OnClick = radBPoundClick
    end
    object radADollar: TRadioButton
      Left = 24
      Top = 96
      Width = 113
      Height = 17
      Caption = 'Australian Dollar'
      TabOrder = 2
      OnClick = radADollarClick
    end
  end
  object edtCurrency: TEdit
    Left = 376
    Top = 56
    Width = 121
    Height = 23
    Enabled = False
    TabOrder = 2
  end
  object btnReset: TButton
    Left = 216
    Top = 208
    Width = 75
    Height = 25
    Caption = '&Reset'
    TabOrder = 3
    OnClick = btnResetClick
  end
end
