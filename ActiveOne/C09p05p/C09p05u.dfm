object ActionListForm: TActionListForm
  Left = 0
  Top = 0
  Caption = 'Action list'
  ClientHeight = 259
  ClientWidth = 226
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mmMenu
  TextHeight = 15
  object lbNames: TListBox
    Left = 32
    Top = 24
    Width = 169
    Height = 209
    ItemHeight = 15
    TabOrder = 0
  end
  object mmMenu: TMainMenu
    Left = 65520
    Top = 32
    object File1: TMenuItem
      Caption = '&File'
      object mmLoad: TMenuItem
        Caption = '&Load'
        ShortCut = 16460
        OnClick = mmLoadClick
      end
      object mmSave: TMenuItem
        Caption = '&Save'
        ShortCut = 16467
        OnClick = mmSaveClick
      end
      object mmReset: TMenuItem
        Caption = '&Reset'
        ShortCut = 16466
        OnClick = mmResetClick
      end
      object mmExit: TMenuItem
        Caption = '&Exit'
        ShortCut = 16453
        OnClick = mmExitClick
      end
      object Exit2: TMenuItem
      end
    end
    object Settings1: TMenuItem
      Caption = '&Settings'
      object mmDelete: TMenuItem
        Caption = '&Delete'
        ShortCut = 16452
        OnClick = mmDeleteClick
      end
    end
  end
  object OpenDialog: TOpenDialog
    Left = 65520
    Top = 88
  end
  object SaveDialog: TSaveDialog
    Left = 65520
    Top = 144
  end
end
