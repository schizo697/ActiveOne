object RaceHistoryForm: TRaceHistoryForm
  Left = 0
  Top = 0
  Caption = 'Race history'
  ClientHeight = 398
  ClientWidth = 352
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblHistory: TLabel
    Left = 32
    Top = 32
    Width = 66
    Height = 15
    Caption = 'Race History'
  end
  object memHistory: TMemo
    Left = 24
    Top = 53
    Width = 217
    Height = 164
    TabOrder = 0
  end
  object btnLoad: TButton
    Left = 247
    Top = 52
    Width = 75
    Height = 25
    Caption = '&Load'
    TabOrder = 1
    OnClick = btnLoadClick
  end
  object btnSave: TButton
    Left = 247
    Top = 83
    Width = 75
    Height = 25
    Caption = '&Save'
    TabOrder = 2
    OnClick = btnSaveClick
  end
  object btnReset: TButton
    Left = 247
    Top = 114
    Width = 75
    Height = 25
    Caption = '&Reset'
    TabOrder = 3
    OnClick = btnResetClick
  end
  object btnClose: TButton
    Left = 247
    Top = 145
    Width = 75
    Height = 25
    Caption = '&Close'
    TabOrder = 4
    OnClick = btnCloseClick
  end
  object gbSummary: TGroupBox
    Left = 24
    Top = 232
    Width = 298
    Height = 137
    Caption = 'Summary'
    TabOrder = 5
    object lblBest: TLabel
      Left = 12
      Top = 75
      Width = 55
      Height = 15
      Caption = 'Best time: '
    end
    object lblTotal: TLabel
      Left = 12
      Top = 96
      Width = 78
      Height = 15
      Caption = 'Total distance: '
    end
    object btnCalculate: TButton
      Left = 12
      Top = 32
      Width = 75
      Height = 25
      Caption = '&Calculate'
      TabOrder = 0
      OnClick = btnCalculateClick
    end
  end
  object OpenDialog: TOpenDialog
    Left = 24
    Top = 48
  end
  object SaveDialog: TSaveDialog
    Left = 24
    Top = 104
  end
end
