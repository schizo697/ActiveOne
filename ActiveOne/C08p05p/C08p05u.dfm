object RadioGroupOfColorsForm: TRadioGroupOfColorsForm
  Left = 0
  Top = 0
  Caption = 'Radio group of colors'
  ClientHeight = 324
  ClientWidth = 184
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object rgColors: TRadioGroup
    Left = 24
    Top = 24
    Width = 129
    Height = 281
    Caption = 'Select Colors'
    TabOrder = 0
    OnClick = rgColorsClick
  end
end
