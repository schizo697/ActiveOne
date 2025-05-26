object ValidationForm: TValidationForm
  Left = 0
  Top = 0
  Caption = 'Validation'
  ClientHeight = 150
  ClientWidth = 240
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblCode: TLabel
    Left = 32
    Top = 40
    Width = 58
    Height = 15
    Caption = 'Enter Code'
  end
  object lblResult: TLabel
    Left = 86
    Top = 105
    Width = 5
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Transparent = False
  end
  object edtCode: TEdit
    Left = 96
    Top = 37
    Width = 121
    Height = 23
    TabOrder = 0
    TextHint = 'Code'
  end
  object bbtnOk: TBitBtn
    Left = 32
    Top = 74
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = bbtnOkClick
  end
  object bbtnClear: TBitBtn
    Left = 134
    Top = 74
    Width = 75
    Height = 25
    Caption = '&Cancel'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
    OnClick = bbtnClearClick
  end
end
