object WhoIsOlderForm: TWhoIsOlderForm
  Left = 0
  Top = 0
  Caption = 'Who is Older?'
  ClientHeight = 373
  ClientWidth = 260
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object gbPerson1: TGroupBox
    Left = 24
    Top = 40
    Width = 209
    Height = 129
    Caption = 'Person'
    TabOrder = 0
    object lblName: TLabel
      Left = 24
      Top = 32
      Width = 38
      Height = 15
      Caption = 'Name: '
    end
    object lblAge: TLabel
      Left = 24
      Top = 61
      Width = 27
      Height = 15
      Caption = 'Age: '
    end
    object edtPersonName: TEdit
      Left = 68
      Top = 29
      Width = 121
      Height = 23
      TabOrder = 0
      TextHint = 'Enter Name'
    end
    object spePersonAge: TSpinEdit
      Left = 68
      Top = 58
      Width = 121
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
  end
  object gbAnotherPerson: TGroupBox
    Left = 24
    Top = 175
    Width = 209
    Height = 129
    Caption = 'Another Person'
    TabOrder = 1
    object lblAnotherPersonName: TLabel
      Left = 24
      Top = 32
      Width = 38
      Height = 15
      Caption = 'Name: '
    end
    object lblAnotherPersonAge: TLabel
      Left = 24
      Top = 64
      Width = 27
      Height = 15
      Caption = 'Age: '
    end
    object edtAnotherPersonName: TEdit
      Left = 68
      Top = 32
      Width = 121
      Height = 23
      TabOrder = 0
      TextHint = 'Enter Name'
    end
    object speAnotherPersonAge: TSpinEdit
      Left = 68
      Top = 61
      Width = 121
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
  end
  object btnCheck: TButton
    Left = 64
    Top = 328
    Width = 121
    Height = 25
    Caption = 'Check Who is Older'
    TabOrder = 2
    OnClick = btnCheckClick
  end
end
