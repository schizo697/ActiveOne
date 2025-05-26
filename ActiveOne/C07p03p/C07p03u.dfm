object ASavingsAccountForm: TASavingsAccountForm
  Left = 0
  Top = 0
  Caption = 'A savings account'
  ClientHeight = 175
  ClientWidth = 307
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblAmount: TLabel
    Left = 40
    Top = 24
    Width = 216
    Height = 15
    Caption = 'Enter deposit amount (maximum 15,000)'
  end
  object lblYears: TLabel
    Left = 128
    Top = 128
    Width = 3
    Height = 15
  end
  object edtAmount: TEdit
    Left = 88
    Top = 45
    Width = 121
    Height = 23
    TabOrder = 0
    TextHint = 'Enter Amount'
  end
  object btnCalculate: TButton
    Left = 72
    Top = 88
    Width = 145
    Height = 25
    Caption = 'Calculate lifetime'
    TabOrder = 1
    OnClick = btnCalculateClick
  end
end
