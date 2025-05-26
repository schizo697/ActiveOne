object BursarySchemeForm: TBursarySchemeForm
  Left = 0
  Top = 0
  Caption = 'BursarySchemeForm'
  ClientHeight = 315
  ClientWidth = 212
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblAmount: TLabel
    Left = 40
    Top = 272
    Width = 3
    Height = 15
  end
  object rgAverageScore: TRadioGroup
    Left = 16
    Top = 32
    Width = 177
    Height = 73
    Caption = 'Average Score'
    TabOrder = 0
  end
  object rbNine: TRadioButton
    Left = 40
    Top = 64
    Width = 41
    Height = 17
    Caption = '90'
    TabOrder = 1
  end
  object rbSeven: TRadioButton
    Left = 87
    Top = 64
    Width = 41
    Height = 17
    Caption = '75'
    TabOrder = 2
  end
  object rbSix: TRadioButton
    Left = 134
    Top = 64
    Width = 41
    Height = 17
    Caption = '60'
    TabOrder = 3
  end
  object gbSubjectPassed: TGroupBox
    Left = 16
    Top = 111
    Width = 177
    Height = 81
    Caption = 'Subject Passed'
    TabOrder = 4
  end
  object chkAccounting: TCheckBox
    Left = 56
    Top = 136
    Width = 97
    Height = 17
    Caption = 'Accounting'
    TabOrder = 5
  end
  object chkEconomics: TCheckBox
    Left = 56
    Top = 159
    Width = 97
    Height = 17
    Caption = 'Economics'
    TabOrder = 6
  end
  object btnEvaluate: TButton
    Left = 64
    Top = 216
    Width = 75
    Height = 25
    Caption = '&Evaluate'
    TabOrder = 7
    OnClick = btnEvaluateClick
  end
end
