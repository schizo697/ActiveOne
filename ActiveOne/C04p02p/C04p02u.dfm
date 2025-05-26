object CircusAdmissionPriceCalculator1: TCircusAdmissionPriceCalculator1
  Left = 0
  Top = 0
  Caption = 'Jolly Joe'#39's Family Circus admission price calculator'
  ClientHeight = 208
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblAdult: TLabel
    Left = 89
    Top = 32
    Width = 34
    Height = 15
    Caption = 'Adults'
  end
  object lblChildren: TLabel
    Left = 202
    Top = 32
    Width = 45
    Height = 15
    Caption = 'Children'
  end
  object lblPrice: TLabel
    Left = 93
    Top = 104
    Width = 3
    Height = 15
  end
  object spnAdult: TSpinEdit
    Left = 32
    Top = 53
    Width = 121
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object spnChildren: TSpinEdit
    Left = 168
    Top = 53
    Width = 121
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object btnOkay: TButton
    Left = 48
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 2
    OnClick = btnOkayClick
  end
  object btnReset: TButton
    Left = 202
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Reset'
    TabOrder = 3
    OnClick = btnResetClick
  end
end
