object CharacterInAStringForm: TCharacterInAStringForm
  Left = 0
  Top = 0
  Caption = 'Count Character In A String'
  ClientHeight = 255
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblString: TLabel
    Left = 104
    Top = 24
    Width = 82
    Height = 15
    Caption = 'Enter any string'
  end
  object lblCharacter: TLabel
    Left = 104
    Top = 88
    Width = 83
    Height = 15
    Caption = 'And a character'
  end
  object lblOccurences: TLabel
    Left = 104
    Top = 208
    Width = 3
    Height = 15
  end
  object edtSentence: TEdit
    Left = 32
    Top = 45
    Width = 265
    Height = 23
    TabOrder = 0
    TextHint = 'Enter a String'
  end
  object edtCharacter: TEdit
    Left = 120
    Top = 109
    Width = 49
    Height = 23
    TabOrder = 1
  end
  object btnCount: TButton
    Left = 87
    Top = 154
    Width = 114
    Height = 25
    Caption = 'Count the characters'
    TabOrder = 2
    OnClick = btnCountClick
  end
end
