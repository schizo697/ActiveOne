object CalculateRoomArea: TCalculateRoomArea
  Left = 0
  Top = 0
  Caption = 'CalculateRoomArea'
  ClientHeight = 192
  ClientWidth = 230
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
    Left = 79
    Top = 96
    Width = 3
    Height = 15
  end
  object spnLength: TSpinEdit
    Left = 8
    Top = 45
    Width = 89
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object spnWidth: TSpinEdit
    Left = 128
    Top = 45
    Width = 89
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object btnCalculate: TButton
    Left = 22
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Calculate'
    TabOrder = 2
    OnClick = btnCalculateClick
  end
  object btnReset: TButton
    Left = 128
    Top = 136
    Width = 75
    Height = 25
    Caption = '&Reset'
    TabOrder = 3
    OnClick = btnResetClick
  end
end
