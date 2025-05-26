object Redone: TRedone
  Left = 0
  Top = 0
  Caption = 'Redone'
  ClientHeight = 272
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblBoy: TLabel
    Left = 80
    Top = 43
    Width = 58
    Height = 15
    Caption = 'Boy Name:'
  end
  object Label1: TLabel
    Left = 82
    Top = 72
    Width = 56
    Height = 15
    Caption = 'Girl Name:'
  end
  object lblBoyList: TLabel
    Left = 64
    Top = 139
    Width = 41
    Height = 15
    Caption = 'Boy List'
  end
  object lblGirlList: TLabel
    Left = 208
    Top = 139
    Width = 39
    Height = 15
    Caption = 'Girl List'
  end
  object lblCoupleList: TLabel
    Left = 352
    Top = 139
    Width = 59
    Height = 15
    Caption = 'Couple List'
  end
  object lbBoys: TListBox
    Left = 24
    Top = 160
    Width = 121
    Height = 97
    ItemHeight = 15
    TabOrder = 0
  end
  object lbGirls: TListBox
    Left = 168
    Top = 160
    Width = 121
    Height = 97
    ItemHeight = 15
    TabOrder = 1
  end
  object lbCouples: TListBox
    Left = 312
    Top = 160
    Width = 121
    Height = 97
    ItemHeight = 15
    TabOrder = 2
  end
  object edtBoy: TEdit
    Left = 144
    Top = 40
    Width = 169
    Height = 23
    TabOrder = 3
    TextHint = 'Enter Boy'
  end
  object edtGirl: TEdit
    Left = 144
    Top = 69
    Width = 169
    Height = 23
    TabOrder = 4
    TextHint = 'Enter Girl'
  end
  object btnAdd: TButton
    Left = 192
    Top = 98
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 5
    OnClick = btnAddClick
  end
end
