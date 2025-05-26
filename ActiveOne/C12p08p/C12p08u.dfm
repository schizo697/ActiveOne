object SalespersonsCommission: TSalespersonsCommission
  Left = 0
  Top = 0
  Caption = 'SalespersonsCommission'
  ClientHeight = 292
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object gbSales: TGroupBox
    Left = 16
    Top = 24
    Width = 185
    Height = 97
    Caption = 'Sales'
    TabOrder = 0
    object edtSales: TEdit
      Left = 32
      Top = 40
      Width = 121
      Height = 23
      TabOrder = 0
      Text = 'Enter Sales'
      TextHint = 'Enter Sales'
    end
  end
  object gbCommission: TGroupBox
    Left = 215
    Top = 24
    Width = 185
    Height = 97
    Caption = 'Commission'
    TabOrder = 1
    object lblCommission: TLabel
      Left = 64
      Top = 43
      Width = 70
      Height = 15
      Caption = 'Commission:'
    end
  end
  object gbTotalSales: TGroupBox
    Left = 416
    Top = 24
    Width = 185
    Height = 97
    Caption = 'Total Sales'
    TabOrder = 2
    object lblTotalSales: TLabel
      Left = 80
      Top = 43
      Width = 60
      Height = 15
      Caption = 'Total Sales: '
    end
  end
  object gbStandard: TGroupBox
    Left = 16
    Top = 160
    Width = 185
    Height = 105
    Caption = 'Standard Sale'
    TabOrder = 3
    object btnStandard: TButton
      Left = 56
      Top = 32
      Width = 75
      Height = 25
      Caption = '+'
      TabOrder = 0
      OnClick = btnStandardClick
    end
    object btnStandardRefund: TButton
      Left = 56
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Refund'
      TabOrder = 1
      OnClick = btnStandardRefundClick
    end
  end
  object gbPromotional: TGroupBox
    Left = 215
    Top = 160
    Width = 185
    Height = 105
    Caption = 'Promotional Sale'
    TabOrder = 4
    object btnPromotional: TButton
      Left = 56
      Top = 32
      Width = 75
      Height = 25
      Caption = '+'
      TabOrder = 0
      OnClick = btnPromotionalClick
    end
    object btnPromotionalRefund: TButton
      Left = 56
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Refund'
      TabOrder = 1
      OnClick = btnPromotionalRefundClick
    end
  end
  object btnReset: TButton
    Left = 481
    Top = 216
    Width = 75
    Height = 25
    Caption = '&Reset'
    TabOrder = 5
    OnClick = btnResetClick
  end
end
