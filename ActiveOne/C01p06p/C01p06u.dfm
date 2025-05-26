object ChangingWindowStateForm: TChangingWindowStateForm
  Left = 0
  Top = 0
  Caption = 'ChangingWindowStateForm'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnMinimize: TButton
    Left = 136
    Top = 184
    Width = 75
    Height = 25
    Caption = '&Minimize'
    TabOrder = 0
    OnClick = btnMinimizeClick
  end
  object btnNormal: TButton
    Left = 272
    Top = 184
    Width = 75
    Height = 25
    Caption = '&Normal'
    TabOrder = 1
    OnClick = btnNormalClick
  end
  object Button3: TButton
    Left = 400
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Ma&ximize'
    ImageName = 'btnMaximize'
    TabOrder = 2
    OnClick = Button3Click
  end
end
