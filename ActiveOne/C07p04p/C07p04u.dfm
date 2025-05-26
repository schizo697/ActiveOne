object WordCounterForm: TWordCounterForm
  Left = 0
  Top = 0
  Caption = 'Word Counter'
  ClientHeight = 126
  ClientWidth = 396
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblSentence: TLabel
    Left = 32
    Top = 32
    Width = 51
    Height = 15
    Caption = 'Sentence:'
  end
  object edtSentence: TEdit
    Left = 89
    Top = 29
    Width = 272
    Height = 23
    TabOrder = 0
    TextHint = 'Enter a sentence'
  end
  object btnCount: TButton
    Left = 160
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 1
    OnClick = btnCountClick
  end
end
