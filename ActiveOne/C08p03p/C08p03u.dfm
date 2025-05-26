object AddingCitiesForm: TAddingCitiesForm
  Left = 0
  Top = 0
  Caption = 'Adding Cities'
  ClientHeight = 179
  ClientWidth = 243
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object lblFrom: TLabel
    Left = 32
    Top = 24
    Width = 28
    Height = 15
    Caption = 'From'
  end
  object lblTo: TLabel
    Left = 32
    Top = 64
    Width = 12
    Height = 15
    Caption = 'To'
  end
  object lblDistance: TLabel
    Left = 96
    Top = 141
    Width = 18
    Height = 15
    Caption = 'Km'
  end
  object cbFrom: TComboBox
    Left = 66
    Top = 21
    Width = 145
    Height = 23
    TabOrder = 0
  end
  object cbTo: TComboBox
    Left = 66
    Top = 61
    Width = 145
    Height = 23
    TabOrder = 1
  end
  object btnShow: TButton
    Left = 74
    Top = 102
    Width = 105
    Height = 25
    Caption = '&Show Distance'
    TabOrder = 2
    OnClick = btnShowClick
  end
end
