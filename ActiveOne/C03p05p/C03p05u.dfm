object Concatenating: TConcatenating
  Left = 0
  Top = 0
  Caption = 'Concatenating'
  ClientHeight = 245
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblName: TLabel
    Left = 176
    Top = 200
    Width = 3
    Height = 15
  end
  object edtTitle: TEdit
    Left = 32
    Top = 80
    Width = 121
    Height = 23
    TabOrder = 0
    TextHint = 'Enter Title'
  end
  object edtInitial: TEdit
    Left = 176
    Top = 80
    Width = 121
    Height = 23
    TabOrder = 1
    TextHint = 'Enter Initial'
  end
  object edtSurname: TEdit
    Left = 320
    Top = 80
    Width = 121
    Height = 23
    TabOrder = 2
    TextHint = 'Enter Surname'
  end
  object btnConcate: TButton
    Left = 192
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Concate'
    TabOrder = 3
    OnClick = btnConcateClick
  end
end
