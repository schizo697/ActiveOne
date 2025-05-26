object ComboBoxOfColorsForm: TComboBoxOfColorsForm
  Left = 0
  Top = 0
  Caption = 'Combo box of colors'
  ClientHeight = 175
  ClientWidth = 235
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object lblColors: TLabel
    Left = 8
    Top = 72
    Width = 66
    Height = 15
    Caption = 'Select Color:'
  end
  object cbColors: TComboBox
    Left = 80
    Top = 69
    Width = 145
    Height = 23
    TabOrder = 0
    OnChange = cbColorsChange
  end
end
