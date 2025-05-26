object JollyJoesFamilySupermarket: TJollyJoesFamilySupermarket
  Left = 0
  Top = 0
  Caption = 'Jolly Joe'#39's Family Supermarket'
  ClientHeight = 346
  ClientWidth = 479
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 32
    Top = 40
    Width = 409
    Height = 257
    Caption = 'Delivery Charge'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 40
      Width = 45
      Height = 15
      Caption = 'Distance'
    end
    object Label2: TLabel
      Left = 224
      Top = 40
      Width = 83
      Height = 15
      Caption = 'Delivery Charge'
    end
    object lbl5km: TLabel
      Left = 224
      Top = 80
      Width = 3
      Height = 15
    end
    object lbl510: TLabel
      Left = 224
      Top = 120
      Width = 3
      Height = 15
    end
    object lbl1020: TLabel
      Left = 224
      Top = 160
      Width = 3
      Height = 15
    end
    object lbl20: TLabel
      Left = 224
      Top = 200
      Width = 3
      Height = 15
    end
    object rad5km: TRadioButton
      Left = 16
      Top = 80
      Width = 89
      Height = 17
      Caption = '5 km or less'
      TabOrder = 0
      OnClick = rad5kmClick
    end
    object rad510: TRadioButton
      Left = 16
      Top = 120
      Width = 74
      Height = 17
      Caption = '5-10 km'
      TabOrder = 1
      OnClick = rad510Click
    end
    object rad1020: TRadioButton
      Left = 16
      Top = 160
      Width = 74
      Height = 17
      Caption = '10-20 km'
      TabOrder = 2
      OnClick = rad1020Click
    end
    object rad20: TRadioButton
      Left = 16
      Top = 200
      Width = 113
      Height = 17
      Caption = 'More than 20 km'
      TabOrder = 3
      OnClick = rad20Click
    end
  end
end
