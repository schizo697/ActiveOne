object StatusPanelForm: TStatusPanelForm
  Left = 0
  Top = 0
  Caption = 'A simple status panel'
  ClientHeight = 196
  ClientWidth = 309
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnMouseMove = FormMouseMove
  TextHeight = 15
  object pnlCentral: TPanel
    Left = 32
    Top = 32
    Width = 241
    Height = 81
    BevelOuter = bvLowered
    Caption = 'Central Panel'
    TabOrder = 0
    OnMouseMove = pnlCentralMouseMove
  end
  object pnlStatus: TPanel
    Left = 0
    Top = 155
    Width = 309
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    Caption = 'Status Panel'
    TabOrder = 1
    OnMouseMove = pnlStatusMouseMove
  end
end
