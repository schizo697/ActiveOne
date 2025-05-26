object RepeatUntilLoopForm: TRepeatUntilLoopForm
  Left = 0
  Top = 0
  Caption = 'Repeat until loop'
  ClientHeight = 253
  ClientWidth = 293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblTimes: TLabel
    Left = 16
    Top = 40
    Width = 177
    Height = 15
    Caption = 'How many times should we play?'
  end
  object speTimes: TSpinEdit
    Left = 199
    Top = 37
    Width = 58
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object gbPayouts: TGroupBox
    Left = 16
    Top = 61
    Width = 145
    Height = 172
    Caption = 'List of payouts'
    TabOrder = 1
    object lbPayouts: TListBox
      Left = 11
      Top = 24
      Width = 121
      Height = 137
      ItemHeight = 15
      TabOrder = 0
    end
  end
  object btnStart: TButton
    Left = 167
    Top = 85
    Width = 108
    Height = 25
    Caption = '&Start'
    TabOrder = 2
    OnClick = btnStartClick
  end
  object gbAverage: TGroupBox
    Left = 167
    Top = 116
    Width = 108
    Height = 117
    Caption = 'Average Payouts'
    TabOrder = 3
    object lblAverage: TLabel
      Left = 16
      Top = 56
      Width = 3
      Height = 15
    end
  end
end
