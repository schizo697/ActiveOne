object CarpetingCostForm: TCarpetingCostForm
  Left = 0
  Top = 0
  Caption = 'Calculate Carpenting Cost'
  ClientHeight = 268
  ClientWidth = 245
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblLength: TLabel
    Left = 32
    Top = 24
    Width = 37
    Height = 15
    Caption = 'Length'
  end
  object lblWidth: TLabel
    Left = 160
    Top = 24
    Width = 32
    Height = 15
    Caption = 'Width'
  end
  object lblArea: TLabel
    Left = 87
    Top = 142
    Width = 3
    Height = 15
  end
  object lblPrice: TLabel
    Left = 87
    Top = 171
    Width = 3
    Height = 15
  end
  object lblPricePerSquareMetter: TLabel
    Left = 63
    Top = 75
    Width = 118
    Height = 15
    Caption = 'Price per square meter'
  end
  object btnCalculate: TButton
    Left = 22
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Calculate'
    TabOrder = 0
    OnClick = btnCalculateClick
  end
  object btnReset: TButton
    Left = 128
    Top = 208
    Width = 75
    Height = 25
    Caption = '&Reset'
    TabOrder = 1
    OnClick = btnResetClick
  end
  object edtLength: TEdit
    Left = 22
    Top = 45
    Width = 75
    Height = 23
    TabOrder = 2
    TextHint = 'Enter Length'
  end
  object edtWidth: TEdit
    Left = 142
    Top = 45
    Width = 75
    Height = 23
    TabOrder = 3
    TextHint = 'Enter Width'
  end
  object edtPricePerSquareMeter: TEdit
    Left = 87
    Top = 96
    Width = 75
    Height = 23
    TabOrder = 4
    TextHint = 'Price per square meter'
  end
end
