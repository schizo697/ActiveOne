object ActionListForm: TActionListForm
  Left = 0
  Top = 0
  Caption = 'Action list'
  ClientHeight = 271
  ClientWidth = 348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu
  TextHeight = 15
  object btnYellow: TButton
    Left = 128
    Top = 136
    Width = 75
    Height = 25
    Caption = '&Yellow'
    TabOrder = 0
  end
  object btnPurple: TButton
    Left = 128
    Top = 105
    Width = 75
    Height = 25
    Caption = '&Purple'
    TabOrder = 1
  end
  object MainMenu: TMainMenu
    Top = 72
    object Colors1: TMenuItem
      Caption = '&Colors'
      object mmPurple: TMenuItem
        Caption = '&Purple'
        ShortCut = 16464
        OnClick = mmPurpleClick
      end
      object mmYellow: TMenuItem
        Caption = '&Yellow'
        ShortCut = 16473
        OnClick = mmYellowClick
      end
    end
  end
end
