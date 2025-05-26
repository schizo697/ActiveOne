object CourseResultForm: TCourseResultForm
  Left = 0
  Top = 0
  Caption = 'Course Result'
  ClientHeight = 131
  ClientWidth = 262
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblMark: TLabel
    Left = 24
    Top = 32
    Width = 82
    Height = 15
    Caption = 'Mark Obtained:'
  end
  object speMarkObtained: TSpinEdit
    Left = 112
    Top = 29
    Width = 121
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object btnCheck: TButton
    Left = 88
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Check'
    TabOrder = 1
    OnClick = btnCheckClick
  end
end
