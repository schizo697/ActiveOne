object IfStatementForm: TIfStatementForm
  Left = 0
  Top = 0
  Caption = 'If Statement'
  ClientHeight = 269
  ClientWidth = 366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object IfStatement: TGroupBox
    Left = 8
    Top = 8
    Width = 345
    Height = 249
    Caption = 'IfStatement'
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Top = 43
      Width = 21
      Height = 15
      Caption = 'Age'
    end
    object Label2: TLabel
      Left = 240
      Top = 43
      Width = 42
      Height = 15
      Caption = 'Mileage'
    end
    object lblMessage: TLabel
      Left = 200
      Top = 136
      Width = 3
      Height = 15
    end
    object lblServiceDue: TLabel
      Left = 200
      Top = 157
      Width = 3
      Height = 15
    end
    object lblWarning: TLabel
      Left = 200
      Top = 194
      Width = 3
      Height = 15
    end
    object spnAge: TSpinEdit
      Left = 24
      Top = 64
      Width = 121
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
    object spnMileage: TSpinEdit
      Left = 200
      Top = 64
      Width = 121
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
    object radHealthy: TRadioButton
      Left = 72
      Top = 104
      Width = 73
      Height = 17
      Caption = 'Healthy'
      TabOrder = 2
    end
    object radNot: TRadioButton
      Left = 200
      Top = 104
      Width = 113
      Height = 17
      Caption = 'Not'
      TabOrder = 3
    end
    object btnCheck: TButton
      Left = 24
      Top = 169
      Width = 75
      Height = 25
      Caption = '&Check'
      TabOrder = 4
      OnClick = btnCheckClick
    end
  end
end
