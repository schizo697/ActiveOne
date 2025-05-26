object DeleteNamesForm: TDeleteNamesForm
  Left = 0
  Top = 0
  Caption = 'Delete names using a menu'
  ClientHeight = 261
  ClientWidth = 238
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
        OnClick = mmLoadClick
      end
      object mmSave: TMenuItem
        Caption = '&Save'
        OnClick = mmSaveClick
      end
      object mmReset: TMenuItem
        Caption = '&Reset'
        OnClick = mmResetClick
      end
      object mmExit: TMenuItem
        Caption = '&Exit'
        OnClick = mmExitClick
      end
      object Exit2: TMenuItem
      end
    end
    object Settings1: TMenuItem
      Caption = '&Settings'
      object mmDelete: TMenuItem
        Caption = '&Delete'
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
