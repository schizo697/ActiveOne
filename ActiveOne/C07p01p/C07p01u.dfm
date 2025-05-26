object PredictingPopulationForm: TPredictingPopulationForm
  Left = 0
  Top = 0
  Caption = 'Predicting Population Growth'
  ClientHeight = 229
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblPopulation: TLabel
    Left = 64
    Top = 32
    Width = 58
    Height = 15
    Caption = 'Population'
  end
  object lblGrowth: TLabel
    Left = 48
    Top = 82
    Width = 84
    Height = 15
    Caption = 'Growth per year'
  end
  object edtPopulation: TEdit
    Left = 32
    Top = 53
    Width = 121
    Height = 23
    TabOrder = 0
    TextHint = 'Enter population'
  end
  object edtGrowth: TEdit
    Left = 32
    Top = 103
    Width = 121
    Height = 23
    TabOrder = 1
    TextHint = 'Growth per year'
  end
  object bbtnCalculate: TBitBtn
    Left = 56
    Top = 184
    Width = 97
    Height = 25
    Caption = 'Calculate'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
    OnClick = bbtnCalculateClick
  end
  object lbGrowth: TListBox
    Left = 176
    Top = 29
    Width = 153
    Height = 180
    ItemHeight = 15
    ScrollWidth = 1
    TabOrder = 3
  end
end
