object UsingParameterForm: TUsingParameterForm
  Left = 0
  Top = 0
  Caption = 'Using parameters'
  ClientHeight = 195
  ClientWidth = 293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object lblTimer: TLabel
    Left = 88
    Top = 80
    Width = 36
    Height = 15
    Caption = 'Timer: '
  end
  object tmTimer: TTimer
    Interval = 5000
    OnTimer = tmTimerTimer
    Left = 24
    Top = 24
  end
end
