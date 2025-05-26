object HidingForm: THidingForm
  Left = 0
  Top = 0
  Caption = 'Hiding a form'
  ClientHeight = 148
  ClientWidth = 282
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object btnHide: TButton
    Left = 24
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Hide'
    TabOrder = 0
    OnClick = btnHideClick
  end
  object tmTimer: TTimer
    OnTimer = tmTimerTimer
    Left = 128
    Top = 64
  end
end
