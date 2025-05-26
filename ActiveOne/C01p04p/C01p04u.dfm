object EnableDisableForm: TEnableDisableForm
  Left = 0
  Top = 0
  Caption = 'EnableDisableForm'
  ClientHeight = 178
  ClientWidth = 330
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnFirst: TButton
    Left = 40
    Top = 64
    Width = 75
    Height = 25
    Caption = 'First'
    TabOrder = 0
    OnClick = btnFirstClick
  end
  object btnSecond: TButton
    Left = 184
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Second'
    Enabled = False
    TabOrder = 1
    OnClick = btnSecondClick
  end
end
