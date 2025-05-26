object SupaDupaSalesForm: TSupaDupaSalesForm
  Left = 0
  Top = 0
  Caption = 'SupaDula Sales'
  ClientHeight = 156
  ClientWidth = 269
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblPrice: TLabel
    Left = 48
    Top = 32
    Width = 39
    Height = 15
    Caption = 'Price: R'
  end
  object lblDiscount: TLabel
    Left = 94
    Top = 105
    Width = 60
    Height = 15
    Caption = 'Discount: R'
  end
  object lblAmountDue: TLabel
    Left = 24
    Top = 126
    Width = 130
    Height = 15
    Caption = 'Amount Due (tax inc.): R'
  end
  object lblDiscountPrice: TLabel
    Left = 163
    Top = 105
    Width = 3
    Height = 15
  end
  object lblAmountPrice: TLabel
    Left = 163
    Top = 126
    Width = 3
    Height = 15
  end
  object edtPrice: TEdit
    Left = 93
    Top = 29
    Width = 121
    Height = 23
    TabOrder = 0
    TextHint = 'Enter Price'
  end
  object btnDiscount: TButton
    Left = 102
    Top = 58
    Width = 75
    Height = 25
    Caption = '&Discount'
    TabOrder = 1
    OnClick = btnDiscountClick
  end
end
