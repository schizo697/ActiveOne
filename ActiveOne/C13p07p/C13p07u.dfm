object PriceCalculatorForm: TPriceCalculatorForm
  Left = 0
  Top = 0
  Caption = 'JollyJoe'#39'sPriceCalculator'
  ClientHeight = 188
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object gbWholesale: TGroupBox
    Left = 24
    Top = 24
    Width = 185
    Height = 81
    Caption = 'Wholesale Price'
    TabOrder = 0
    object edtWPrice: TEdit
      Left = 32
      Top = 32
      Width = 121
      Height = 23
      TabOrder = 0
      TextHint = 'Wholesale Price'
    end
  end
  object gbMarkup: TGroupBox
    Left = 224
    Top = 24
    Width = 249
    Height = 81
    Caption = 'Markup'
    TabOrder = 1
    object sbMark15: TSpeedButton
      Left = 48
      Top = 32
      Width = 49
      Height = 23
      Caption = '15%'
      OnClick = sbMark15Click
    end
    object sbMark20: TSpeedButton
      Left = 96
      Top = 32
      Width = 49
      Height = 23
      Caption = '20%'
      OnClick = sbMark20Click
    end
    object sbMark25: TSpeedButton
      Left = 144
      Top = 32
      Width = 49
      Height = 23
      Caption = '25%'
      OnClick = sbMark25Click
    end
  end
  object gbSellingPrice: TGroupBox
    Left = 488
    Top = 24
    Width = 185
    Height = 81
    Caption = 'Selling Price'
    TabOrder = 2
    object lblPrice: TLabel
      Left = 72
      Top = 35
      Width = 10
      Height = 15
      Caption = 'R '
    end
  end
  object bbtnReset: TBitBtn
    Left = 310
    Top = 136
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 3
    OnClick = bbtnResetClick
  end
end
