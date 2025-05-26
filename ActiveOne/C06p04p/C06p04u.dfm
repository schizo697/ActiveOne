object DaysInMonthForm: TDaysInMonthForm
  Left = 0
  Top = 0
  Caption = 'Number of days in a month'
  ClientHeight = 243
  ClientWidth = 261
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblMonthNumber: TLabel
    Left = 24
    Top = 32
    Width = 153
    Height = 15
    Caption = 'Enter a Month Number(1-12)'
  end
  object lblMessage: TLabel
    Left = 44
    Top = 152
    Width = 3
    Height = 15
  end
  object speMonthNumber: TSpinEdit
    Left = 183
    Top = 29
    Width = 50
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object btnDisplay: TButton
    Left = 48
    Top = 80
    Width = 145
    Height = 25
    Caption = '&Display number of days'
    TabOrder = 1
    OnClick = btnDisplayClick
  end
end
