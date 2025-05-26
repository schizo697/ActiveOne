object SettingColoursForm: TSettingColoursForm
  Left = 0
  Top = 0
  Caption = 'Setting Colours'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnColour: TButton
    Left = 256
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Color'
    TabOrder = 0
    OnClick = btnColourClick
  end
  object cdColorDemo: TColorDialog
    Left = 280
    Top = 176
  end
end
