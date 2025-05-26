object PalindromeForm: TPalindromeForm
  Left = 0
  Top = 0
  Caption = 'Is it a palindrome'
  ClientHeight = 120
  ClientWidth = 285
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblWord: TLabel
    Left = 8
    Top = 32
    Width = 72
    Height = 15
    Caption = 'Enter  a word:'
  end
  object edtWord: TEdit
    Left = 86
    Top = 29
    Width = 191
    Height = 23
    TabOrder = 0
    TextHint = 'Enter a word'
  end
  object btnCheck: TButton
    Left = 86
    Top = 72
    Width = 121
    Height = 25
    Caption = '&Check if palindrome'
    TabOrder = 1
    OnClick = btnCheckClick
  end
end
