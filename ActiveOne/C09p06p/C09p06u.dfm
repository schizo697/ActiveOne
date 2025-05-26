object ActionListForm: TActionListForm
  Left = 0
  Top = 0
  Caption = 'Action list'
  ClientHeight = 207
  ClientWidth = 201
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu
  OnCreate = FormCreate
  TextHeight = 15
  object gbAnswer: TGroupBox
    Left = 32
    Top = 24
    Width = 145
    Height = 161
    Caption = 'What is the answer?'
    TabOrder = 0
    object lblSum1: TLabel
      Left = 54
      Top = 40
      Width = 24
      Height = 15
      Caption = 'Sum'
    end
    object lblSum2: TLabel
      Left = 54
      Top = 82
      Width = 24
      Height = 15
      Caption = 'Sum'
    end
    object Label1: TLabel
      Left = 54
      Top = 61
      Width = 8
      Height = 15
      Caption = '+'
    end
    object lblAnswer: TLabel
      Left = 14
      Top = 112
      Width = 45
      Height = 15
      Caption = 'Answer: '
    end
    object edtAnswer: TEdit
      Left = 65
      Top = 109
      Width = 56
      Height = 23
      TabOrder = 0
      TextHint = 'Answer'
    end
  end
  object MainMenu: TMainMenu
    Top = 64
    object Sum1: TMenuItem
      Caption = '&Sum'
      object mmNew: TMenuItem
        Caption = '&New'
        ShortCut = 16462
        OnClick = mmNewClick
      end
      object mmCheck: TMenuItem
        Caption = '&Check'
        ShortCut = 16451
        OnClick = mmCheckClick
      end
      object mmExit: TMenuItem
        Caption = '&Exit'
        ShortCut = 16453
        OnClick = mmExitClick
      end
    end
    object Level1: TMenuItem
      Caption = '&Level'
      object mm1D: TMenuItem
        Caption = '&1 Digit'
        ShortCut = 16496
        OnClick = mm1DClick
      end
      object mm2D: TMenuItem
        Caption = '&2 Digits'
        ShortCut = 16497
        OnClick = mm2DClick
      end
      object mm3D: TMenuItem
        Caption = '&3 Digits'
        ShortCut = 16498
        OnClick = mm3DClick
      end
      object mm4D: TMenuItem
        Caption = '&4 Digits'
        ShortCut = 16499
        OnClick = mm4DClick
      end
    end
  end
end
