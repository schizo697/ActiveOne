object Captions: TCaptions
  Left = 0
  Top = 0
  Caption = 'Captions'
  ClientHeight = 296
  ClientWidth = 354
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object grpSelectCaption: TGroupBox
    Left = 32
    Top = 24
    Width = 289
    Height = 129
    Caption = 'Select Caption'
    TabOrder = 0
    object radCaption1: TRadioButton
      Left = 24
      Top = 40
      Width = 113
      Height = 17
      Caption = 'Caption 1'
      TabOrder = 0
      OnClick = radCaption1Click
    end
    object radCaption2: TRadioButton
      Left = 143
      Top = 40
      Width = 113
      Height = 17
      Caption = 'Caption 2'
      TabOrder = 1
      OnClick = radCaption2Click
    end
    object radCaption3: TRadioButton
      Left = 24
      Top = 80
      Width = 113
      Height = 17
      Caption = 'Caption 3'
      TabOrder = 2
      OnClick = radCaption3Click
    end
    object radCaption4: TRadioButton
      Left = 143
      Top = 80
      Width = 113
      Height = 17
      Caption = 'Caption 4'
      TabOrder = 3
      OnClick = radCaption4Click
    end
  end
  object grpShowCaption: TGroupBox
    Left = 32
    Top = 168
    Width = 289
    Height = 105
    Caption = 'Show Caption'
    TabOrder = 1
    object lblCaption: TLabel
      Left = 24
      Top = 48
      Width = 3
      Height = 15
    end
  end
end
