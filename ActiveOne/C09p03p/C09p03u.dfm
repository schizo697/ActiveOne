object AdditionTesterForm: TAdditionTesterForm
  Left = 0
  Top = 0
  Caption = 'Addition tester'
  ClientHeight = 210
  ClientWidth = 433
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
    Width = 265
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
    object btnNew: TButton
      Left = 168
      Top = 72
      Width = 75
      Height = 25
      Caption = '&New Sum'
      TabOrder = 1
      OnClick = btnNewClick
    end
    object btnCheck: TButton
      Left = 168
      Top = 108
      Width = 75
      Height = 25
      Caption = '&Check'
      TabOrder = 2
      OnClick = btnCheckClick
    end
  end
  object rgDifficultLevel: TRadioGroup
    Left = 303
    Top = 24
    Width = 106
    Height = 161
    Caption = 'Difficulty Level'
    Items.Strings = (
      '1 Digit'
      '2 Digits'
      '3 Digits'
      '4 Digits')
    TabOrder = 1
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
        OnClick = mmCheckClick
      end
      object mmExit: TMenuItem
        Caption = '&Exit'
      end
    end
    object Level1: TMenuItem
      Caption = '&Level'
      object mm1D: TMenuItem
        Caption = '&1 Digit'
      end
      object mm2D: TMenuItem
        Caption = '&2 Digits'
      end
      object mm3D: TMenuItem
        Caption = '&3 Digits'
      end
      object mm4D: TMenuItem
        Caption = '&4 Digits'
      end
    end
    object Menu1: TMenuItem
      Caption = 'Menu'
      object mmIncrease: TMenuItem
        Caption = 'Increase'
        OnClick = mmIncreaseClick
      end
      object mmDecrease: TMenuItem
        Caption = 'Decrease'
        OnClick = mmDecreaseClick
      end
    end
  end
end
