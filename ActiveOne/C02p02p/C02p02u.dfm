object MultipleTextDisplays: TMultipleTextDisplays
  Left = 0
  Top = 0
  Caption = 'Multiple Text Displays'
  ClientHeight = 319
  ClientWidth = 282
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblName: TLabel
    Left = 136
    Top = 92
    Width = 32
    Height = 15
    Caption = 'Name'
  end
  object lblDep: TLabel
    Left = 136
    Top = 123
    Width = 63
    Height = 15
    Caption = 'Department'
  end
  object lblBirth: TLabel
    Left = 136
    Top = 154
    Width = 52
    Height = 15
    Caption = 'Birth Date'
  end
  object edtName: TEdit
    Left = 40
    Top = 40
    Width = 177
    Height = 23
    TabOrder = 0
    TextHint = 'Enter Name'
  end
  object btnName: TButton
    Left = 40
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Name'
    TabOrder = 1
    OnClick = btnNameClick
  end
  object btnDep: TButton
    Left = 40
    Top = 119
    Width = 75
    Height = 25
    Caption = 'Department'
    TabOrder = 2
    OnClick = btnDepClick
  end
  object btnBirth: TButton
    Left = 40
    Top = 150
    Width = 75
    Height = 25
    Caption = 'Birth Date'
    TabOrder = 3
    OnClick = btnBirthClick
  end
  object btnClear: TButton
    Left = 40
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Clear All'
    TabOrder = 4
    OnClick = btnClearClick
  end
end
