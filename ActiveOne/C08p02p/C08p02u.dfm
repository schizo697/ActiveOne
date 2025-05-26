object TestResultsForm: TTestResultsForm
  Left = 0
  Top = 0
  Caption = 'Test Results'
  ClientHeight = 254
  ClientWidth = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblTotal: TLabel
    Left = 32
    Top = 32
    Width = 68
    Height = 15
    Caption = 'Total for test:'
  end
  object lblMarks: TLabel
    Left = 32
    Top = 80
    Width = 82
    Height = 15
    Caption = 'Enter the marks'
  end
  object edtTotal: TEdit
    Left = 106
    Top = 29
    Width = 121
    Height = 23
    TabOrder = 0
    TextHint = 'Total test'
  end
  object memMarks: TMemo
    Left = 32
    Top = 109
    Width = 121
    Height = 124
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object btnSummary: TButton
    Left = 184
    Top = 70
    Width = 153
    Height = 25
    Caption = 'Test &Summary'
    TabOrder = 2
    OnClick = btnSummaryClick
  end
  object gbSummary: TGroupBox
    Left = 159
    Top = 101
    Width = 185
    Height = 132
    Caption = 'Tests Summary'
    TabOrder = 3
    object lblHighest: TLabel
      Left = 25
      Top = 32
      Width = 109
      Height = 15
      Caption = 'Highest percentage: '
    end
    object lblAverage: TLabel
      Left = 25
      Top = 53
      Width = 111
      Height = 15
      Caption = 'Average percentage: '
    end
    object lblPassed: TLabel
      Left = 25
      Top = 74
      Width = 89
      Height = 15
      Caption = 'Number passed: '
    end
  end
end
