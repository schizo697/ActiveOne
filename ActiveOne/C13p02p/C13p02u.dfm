object BondApplicationAssessmentForm: TBondApplicationAssessmentForm
  Left = 0
  Top = 0
  Caption = 'Bond Application Assessment'
  ClientHeight = 178
  ClientWidth = 652
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object gbAnnual: TGroupBox
    Left = 24
    Top = 24
    Width = 185
    Height = 81
    Caption = 'Annual Income'
    TabOrder = 0
    object speAnual: TSpinEdit
      Left = 32
      Top = 32
      Width = 121
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
  end
  object gbAge: TGroupBox
    Left = 224
    Top = 24
    Width = 185
    Height = 81
    Caption = 'Age'
    TabOrder = 1
    object speAge: TSpinEdit
      Left = 32
      Top = 32
      Width = 121
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
  end
  object gbOutcome: TGroupBox
    Left = 424
    Top = 24
    Width = 185
    Height = 81
    Caption = 'Outcome'
    TabOrder = 2
    object lblOutcome: TLabel
      Left = 64
      Top = 35
      Width = 50
      Height = 15
      Caption = 'Outcome'
    end
  end
  object bbtnEvaluate: TBitBtn
    Left = 134
    Top = 136
    Width = 75
    Height = 25
    Caption = '&Evaluate'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 3
    OnClick = bbtnEvaluateClick
  end
  object bbtnReset: TBitBtn
    Left = 424
    Top = 136
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 4
    OnClick = bbtnResetClick
  end
end
