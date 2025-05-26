object HeartRateForm: THeartRateForm
  Left = 0
  Top = 0
  Caption = 'Calculating Maximum Heart Rate'
  ClientHeight = 181
  ClientWidth = 174
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 56
    Top = 19
    Width = 21
    Height = 15
    Caption = 'Age'
  end
  object spnAge: TSpinEdit
    Left = 24
    Top = 40
    Width = 121
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object radMale: TRadioButton
    Left = 24
    Top = 88
    Width = 53
    Height = 17
    Caption = 'Male'
    TabOrder = 1
  end
  object radFemale: TRadioButton
    Left = 83
    Top = 88
    Width = 62
    Height = 17
    Caption = 'Female'
    TabOrder = 2
  end
  object btnCalculate: TButton
    Left = 48
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Calculate'
    TabOrder = 3
    OnClick = btnCalculateClick
  end
end
