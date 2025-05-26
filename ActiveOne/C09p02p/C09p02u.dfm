object FontMenuItemForm: TFontMenuItemForm
  Left = 0
  Top = 0
  Caption = 'Font menu item'
  ClientHeight = 256
  ClientWidth = 223
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mmFont
  TextHeight = 15
  object lbNames: TListBox
    Left = 24
    Top = 24
    Width = 169
    Height = 209
    ItemHeight = 15
    TabOrder = 0
  end
  object mmFont: TMainMenu
    Top = 24
    object mmFiles: TMenuItem
      Caption = 'Files'
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
    end
    object mmMenu: TMenuItem
      Caption = '&Menu'
      object mmFonts: TMenuItem
        Caption = 'Fon&ts'
        OnClick = mmFontsClick
      end
    end
  end
  object OpenDialog: TOpenDialog
    Top = 80
  end
  object SaveDialog: TSaveDialog
    Top = 136
  end
  object FontDialog: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Top = 192
  end
end
