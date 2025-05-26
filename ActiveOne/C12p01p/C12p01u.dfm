object AddingMethodCallsForm: TAddingMethodCallsForm
  Left = 0
  Top = 0
  Caption = 'Adding method calls'
  ClientHeight = 186
  ClientWidth = 411
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblPrice: TLabel
    Left = 96
    Top = 152
    Width = 32
    Height = 15
    Caption = 'Price: '
  end
  object rgProducts: TRadioGroup
    Left = 24
    Top = 24
    Width = 361
    Height = 105
    Caption = 'Products'
    Columns = 2
    Items.Strings = (
      'Flour'
      'Rice'
      'Sugar'
      'Mealie Meal'
      'Salt'
      'Oats Porridge')
    TabOrder = 0
    OnClick = rgProductsClick
  end
end
