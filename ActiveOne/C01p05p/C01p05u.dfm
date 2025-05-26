object AnotherEnableDisableForm: TAnotherEnableDisableForm
  Left = 0
  Top = 0
  Caption = 'AnotherEnableDisableForm'
  ClientHeight = 195
  ClientWidth = 311
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnClick: TButton
    Left = 40
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Click me'
    TabOrder = 0
    OnClick = btnClickClick
  end
  object btnNot: TButton
    Left = 184
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Not me'
    Enabled = False
    TabOrder = 1
    OnClick = btnNotClick
  end
  object btnNor: TButton
    Left = 112
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Nor me'
    Enabled = False
    TabOrder = 2
    OnClick = btnNorClick
  end
end
