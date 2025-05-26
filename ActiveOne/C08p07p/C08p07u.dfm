object PlayLottoForm: TPlayLottoForm
  Left = 0
  Top = 0
  Caption = 'Play Lotto'
  ClientHeight = 259
  ClientWidth = 406
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnPlay: TButton
    Left = 24
    Top = 119
    Width = 73
    Height = 25
    Caption = '&Play Lotto'
    TabOrder = 0
    OnClick = btnPlayClick
  end
  object btnReset: TButton
    Left = 24
    Top = 160
    Width = 73
    Height = 25
    Caption = '&Reset'
    TabOrder = 1
    OnClick = btnResetClick
  end
  object gbResult: TGroupBox
    Left = 103
    Top = 103
    Width = 245
    Height = 137
    Caption = 'Results'
    TabOrder = 2
    object lblResult: TLabel
      Left = 21
      Top = 40
      Width = 3
      Height = 15
    end
    object lblPayout: TLabel
      Left = 21
      Top = 80
      Width = 43
      Height = 15
      Caption = 'Payout: '
    end
  end
  object gbNumbers: TGroupBox
    Left = 24
    Top = 32
    Width = 353
    Height = 65
    Caption = 'Enter any 6 numbers 1 - 20'
    TabOrder = 3
    object speNum1: TSpinEdit
      Left = 16
      Top = 24
      Width = 49
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
    object speNum2: TSpinEdit
      Left = 71
      Top = 24
      Width = 49
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
    object speNum3: TSpinEdit
      Left = 126
      Top = 24
      Width = 49
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
    object speNum4: TSpinEdit
      Left = 181
      Top = 24
      Width = 49
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 3
      Value = 0
    end
    object speNum5: TSpinEdit
      Left = 236
      Top = 24
      Width = 49
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 4
      Value = 0
    end
    object speNum6: TSpinEdit
      Left = 291
      Top = 24
      Width = 49
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 5
      Value = 0
    end
  end
end
