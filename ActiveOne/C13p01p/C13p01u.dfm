object SafeSprayingEvaluationForm: TSafeSprayingEvaluationForm
  Left = 0
  Top = 0
  Caption = 'Safe Spraying Evaluation'
  ClientHeight = 164
  ClientWidth = 550
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblTemp: TLabel
    Left = 24
    Top = 36
    Width = 135
    Height = 15
    Caption = 'Temperature (Centigrade)'
  end
  object lblWind: TLabel
    Left = 24
    Top = 80
    Width = 94
    Height = 15
    Caption = 'Wind speed (Kph)'
  end
  object lblHumidity: TLabel
    Left = 24
    Top = 123
    Width = 120
    Height = 15
    Caption = 'Humidity (Percentage)'
  end
  object speTemp: TSpinEdit
    Left = 165
    Top = 33
    Width = 52
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object speWind: TSpinEdit
    Left = 165
    Top = 77
    Width = 52
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object speHumidity: TSpinEdit
    Left = 165
    Top = 120
    Width = 52
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object btnEvaluate: TButton
    Left = 256
    Top = 32
    Width = 75
    Height = 25
    Caption = '&Evaluate'
    TabOrder = 3
    OnClick = btnEvaluateClick
  end
  object bbtnReset: TBitBtn
    Left = 448
    Top = 32
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 4
    OnClick = bbtnResetClick
  end
  object gbDecision: TGroupBox
    Left = 256
    Top = 63
    Width = 267
    Height = 81
    Caption = 'Decision'
    TabOrder = 5
    object lblDecision: TLabel
      Left = 40
      Top = 24
      Width = 7
      Height = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Transparent = False
    end
  end
end
