object PutsOnderWaterForm: TPutsOnderWaterForm
  Left = 0
  Top = 0
  Caption = 'Puts Onder Water'
  ClientHeight = 165
  ClientWidth = 264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblClassificationNumber: TLabel
    Left = 8
    Top = 40
    Width = 120
    Height = 15
    Caption = 'Classification Number:'
  end
  object lblMessage: TLabel
    Left = 46
    Top = 124
    Width = 3
    Height = 15
  end
  object speBookNumber: TSpinEdit
    Left = 134
    Top = 37
    Width = 121
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object btnFind: TButton
    Left = 88
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Find Book'
    TabOrder = 1
    OnClick = btnFindClick
  end
end
