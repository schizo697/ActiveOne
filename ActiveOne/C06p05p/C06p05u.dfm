object MarsSpeakForm: TMarsSpeakForm
  Left = 0
  Top = 0
  Caption = 'Mars Speak'
  ClientHeight = 131
  ClientWidth = 230
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnTranslate: TButton
    Left = 72
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Translate'
    TabOrder = 0
    OnClick = btnTranslateClick
  end
  object edtWord: TEdit
    Left = 56
    Top = 40
    Width = 121
    Height = 23
    TabOrder = 1
    TextHint = 'Enter a Word'
  end
end
