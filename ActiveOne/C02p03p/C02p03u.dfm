object SixpenceJoesFamilySupermarket: TSixpenceJoesFamilySupermarket
  Left = 0
  Top = 0
  Caption = 'Sixpence Joe'#39's Family Supermarket'
  ClientHeight = 155
  ClientWidth = 389
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblPrice: TLabel
    Left = 142
    Top = 112
    Width = 3
    Height = 15
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 16
    Width = 321
    Height = 73
    Caption = 'Product'
    TabOrder = 0
    object radFlour: TRadioButton
      Left = 16
      Top = 32
      Width = 65
      Height = 17
      Caption = 'Flour'
      TabOrder = 0
      OnClick = radFlourClick
    end
    object radRice: TRadioButton
      Left = 87
      Top = 32
      Width = 50
      Height = 17
      Caption = 'Rice'
      TabOrder = 1
      OnClick = radRiceClick
    end
    object radSugar: TRadioButton
      Left = 143
      Top = 32
      Width = 58
      Height = 17
      Caption = 'Sugar'
      TabOrder = 2
      OnClick = radSugarClick
    end
    object radMeal: TRadioButton
      Left = 207
      Top = 32
      Width = 113
      Height = 17
      Caption = 'Mealie Meal'
      TabOrder = 3
      OnClick = radMealClick
    end
  end
end
