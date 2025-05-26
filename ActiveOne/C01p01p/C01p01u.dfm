object ChangingSizeForm: TChangingSizeForm
  Left = 0
  Top = 0
  Caption = 'ChangingSizeForm'
  ClientHeight = 161
  ClientWidth = 184
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 48
    Top = 24
    Width = 75
    Height = 25
    Caption = '&Tall'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 48
    Top = 88
    Width = 75
    Height = 25
    Caption = '&Square'
    TabOrder = 1
    OnClick = Button2Click
  end
end
