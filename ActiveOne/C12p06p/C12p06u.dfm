object StudyGroupsForm: TStudyGroupsForm
  Left = 0
  Top = 0
  Caption = 'Study Group'
  ClientHeight = 230
  ClientWidth = 669
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblGroup1: TLabel
    Left = 264
    Top = 27
    Width = 42
    Height = 15
    Caption = 'Group 1'
  end
  object lblGroup2: TLabel
    Left = 408
    Top = 27
    Width = 42
    Height = 15
    Caption = 'Group 2'
  end
  object lblGroup3: TLabel
    Left = 552
    Top = 27
    Width = 42
    Height = 15
    Caption = 'Group 3'
  end
  object gbGroup: TGroupBox
    Left = 24
    Top = 40
    Width = 185
    Height = 138
    Caption = 'Groups'
    TabOrder = 0
    object lblSurname: TLabel
      Left = 59
      Top = 32
      Width = 47
      Height = 15
      Caption = 'Surname'
    end
    object lblGoes: TLabel
      Left = 48
      Top = 64
      Width = 75
      Height = 15
      Caption = 'Goes to group'
    end
    object lblGrpNo: TLabel
      Left = 83
      Top = 93
      Width = 7
      Height = 15
      Caption = '#'
    end
  end
  object btnNext: TButton
    Left = 72
    Top = 184
    Width = 75
    Height = 25
    Caption = '&Next Name'
    TabOrder = 1
    OnClick = btnNextClick
  end
  object lbGroup1: TListBox
    Left = 215
    Top = 48
    Width = 138
    Height = 161
    ItemHeight = 15
    TabOrder = 2
  end
  object lbGroup2: TListBox
    Left = 359
    Top = 48
    Width = 138
    Height = 161
    ItemHeight = 15
    TabOrder = 3
  end
  object lbGroup3: TListBox
    Left = 503
    Top = 48
    Width = 138
    Height = 161
    ItemHeight = 15
    TabOrder = 4
  end
end
