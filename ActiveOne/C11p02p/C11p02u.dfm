object UndoingChangesForm: TUndoingChangesForm
  Left = 0
  Top = 0
  Caption = 'Undoing Changes in memo'
  ClientHeight = 182
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object memText: TMemo
    Left = 8
    Top = 16
    Width = 281
    Height = 161
    TabOrder = 0
  end
  object btnCut: TButton
    Left = 295
    Top = 15
    Width = 75
    Height = 25
    Caption = 'Cut'
    TabOrder = 1
    OnClick = btnCutClick
  end
  object btnCopy: TButton
    Left = 295
    Top = 46
    Width = 75
    Height = 25
    Caption = 'Copy'
    TabOrder = 2
    OnClick = btnCopyClick
  end
  object btnPaste: TButton
    Left = 295
    Top = 77
    Width = 75
    Height = 25
    Caption = 'Paste'
    TabOrder = 3
    OnClick = btnPasteClick
  end
  object btnClear: TButton
    Left = 295
    Top = 108
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 4
    OnClick = btnClearClick
  end
  object btnUndo: TButton
    Left = 295
    Top = 139
    Width = 75
    Height = 25
    Caption = 'Undo'
    TabOrder = 5
    OnClick = btnUndoClick
  end
end
