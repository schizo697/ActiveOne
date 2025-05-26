object JoesAirlinesEmailForm: TJoesAirlinesEmailForm
  Left = 0
  Top = 0
  Caption = 'Joe'#39's Airlines Email'
  ClientHeight = 218
  ClientWidth = 451
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblEmail: TLabel
    Left = 128
    Top = 184
    Width = 73
    Height = 15
    Caption = 'Your Email is: '
  end
  object gbFirstname: TGroupBox
    Left = 32
    Top = 32
    Width = 185
    Height = 81
    Caption = 'First Name'
    TabOrder = 0
    object edtFirstName: TEdit
      Left = 32
      Top = 32
      Width = 121
      Height = 23
      TabOrder = 0
      TextHint = 'Enter First Name'
    end
  end
  object gbLastName: TGroupBox
    Left = 232
    Top = 32
    Width = 185
    Height = 81
    Caption = 'Last Name'
    TabOrder = 1
    object edtLastName: TEdit
      Left = 32
      Top = 32
      Width = 121
      Height = 23
      TabOrder = 0
      TextHint = 'Enter Last Name'
    end
  end
  object bbtnGenerate: TBitBtn
    Left = 72
    Top = 136
    Width = 97
    Height = 25
    Caption = '&Generate'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
    OnClick = bbtnGenerateClick
  end
  object bbtnReset: TBitBtn
    Left = 272
    Top = 136
    Width = 97
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 3
    OnClick = bbtnResetClick
  end
end
