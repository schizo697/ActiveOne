object ChangingDimensionForm: TChangingDimensionForm
  Left = 0
  Top = 0
  Caption = 'ChangingDimensionForm'
  ClientHeight = 161
  ClientWidth = 114
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnSmall: TButton
    Left = 24
    Top = 32
    Width = 75
    Height = 30
    Caption = '&Small'
    TabOrder = 0
    OnClick = btnSmallClick
  end
  object btnBig: TButton
    Left = 24
    Top = 104
    Width = 75
    Height = 30
    Caption = '&Big'
    TabOrder = 1
    OnClick = btnBigClick
  end
end
