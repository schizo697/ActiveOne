object ProcedureToFunctionForm: TProcedureToFunctionForm
  Left = 0
  Top = 0
  Caption = 'Procedure To Function'
  ClientHeight = 135
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblAdults: TLabel
    Left = 48
    Top = 24
    Width = 34
    Height = 15
    Caption = 'Adults'
  end
  object lblChildren: TLabel
    Left = 152
    Top = 24
    Width = 38
    Height = 15
    Caption = 'Chilren'
  end
  object lblPrice: TLabel
    Left = 240
    Top = 48
    Width = 91
    Height = 15
    Caption = 'Admission price: '
  end
  object speAdults: TSpinEdit
    Left = 24
    Top = 45
    Width = 81
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object speChildren: TSpinEdit
    Left = 136
    Top = 45
    Width = 81
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object btnWeekDays: TButton
    Left = 24
    Top = 88
    Width = 81
    Height = 25
    Caption = 'Week Days'
    TabOrder = 2
    OnClick = btnWeekDaysClick
  end
  object btnWeekEnd: TButton
    Left = 136
    Top = 88
    Width = 81
    Height = 25
    Caption = 'Weekend'
    TabOrder = 3
    OnClick = btnWeekEndClick
  end
  object btnReset: TButton
    Left = 240
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Reset'
    TabOrder = 4
    OnClick = btnResetClick
  end
end
