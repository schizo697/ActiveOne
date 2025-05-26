object ProcedureFunctionCriteriaForm: TProcedureFunctionCriteriaForm
  Left = 0
  Top = 0
  Caption = 'Procedure Function Criteria'
  ClientHeight = 176
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblLoan: TLabel
    Left = 24
    Top = 104
    Width = 26
    Height = 15
    Caption = 'Loan'
  end
  object lblMonthly: TLabel
    Left = 231
    Top = 104
    Width = 129
    Height = 15
    Caption = 'Monthly repayment is R '
  end
  object rgCategory: TRadioGroup
    Left = 24
    Top = 24
    Width = 201
    Height = 57
    Caption = 'Category'
    Columns = 2
    Items.Strings = (
      'Merit'
      'Standard')
    TabOrder = 0
  end
  object rgPeriod: TRadioGroup
    Left = 231
    Top = 24
    Width = 218
    Height = 57
    Caption = 'Period'
    Columns = 2
    Items.Strings = (
      'Two Years'
      'Three Years')
    TabOrder = 1
  end
  object edtLoan: TEdit
    Left = 56
    Top = 101
    Width = 169
    Height = 23
    TabOrder = 2
    TextHint = 'Enter Loan'
  end
  object btnCalculate: TButton
    Left = 88
    Top = 136
    Width = 75
    Height = 25
    Caption = '&Calculate'
    TabOrder = 3
    OnClick = btnCalculateClick
  end
  object btnReset: TButton
    Left = 296
    Top = 136
    Width = 75
    Height = 25
    Caption = '&Reset'
    TabOrder = 4
    OnClick = btnResetClick
  end
end
