object CircusAdmissionPriceCalculator2: TCircusAdmissionPriceCalculator2
  Left = 0
  Top = 0
  Caption = 'Jolly Joe'#39's Family Circus admission price calculator 2'
  ClientHeight = 165
  ClientWidth = 258
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblAdults: TLabel
    Left = 56
    Top = 19
    Width = 34
    Height = 15
    Caption = 'Adults'
  end
  object lblChildren: TLabel
    Left = 168
    Top = 19
    Width = 45
    Height = 15
    Caption = 'Children'
  end
  object lblPrice: TLabel
    Left = 67
    Top = 80
    Width = 3
    Height = 15
  end
  object spnAdults: TSpinEdit
    Left = 32
    Top = 40
    Width = 81
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object spnChildren: TSpinEdit
    Left = 144
    Top = 40
    Width = 81
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object btnOk: TButton
    Left = 32
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 2
    OnClick = btnOkClick
  end
  object btnReset: TButton
    Left = 150
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Reset'
    TabOrder = 3
    OnClick = btnResetClick
  end
end
