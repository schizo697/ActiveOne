unit C12p06u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TStudyGroupsForm = class(TForm)
    gbGroup: TGroupBox;
    btnNext: TButton;
    lbGroup1: TListBox;
    lbGroup2: TListBox;
    lbGroup3: TListBox;
    lblGroup1: TLabel;
    lblGroup2: TLabel;
    lblGroup3: TLabel;
    lblSurname: TLabel;
    lblGoes: TLabel;
    lblGrpNo: TLabel;
    procedure btnNextClick(Sender: TObject);
  private
    procedure ShowGroup(GrpNo, Surname: String; GroupList: TListBox);
  public
    { Public declarations }
  end;

var
  StudyGroupsForm: TStudyGroupsForm;

implementation

{$R *.dfm}

procedure TStudyGroupsForm.ShowGroup(GrpNo: string; Surname: string;
  GroupList: TListBox);

begin
  if GrpNo = '1' then
  begin
    lblSurname.Caption := Surname;
    lblGrpNo.Caption := GrpNo;
  end
  else if GrpNo = '2' then
  begin
    lblSurname.Caption := Surname;
    lblGrpNo.Caption := GrpNo;
  end
  else if GrpNo = '3' then
  begin
    lblSurname.Caption := Surname;
    lblGrpNo.Caption := GrpNo;
  end
  else
  begin
    ShowMessage('Error');
  end;

  GroupList.Items.Add(Surname);
end;

procedure TStudyGroupsForm.btnNextClick(Sender: TObject);
var
  Surname: String;
begin
  Surname := InputBox('User input', 'Enter a surname', '');

  if Surname = '' then
  begin
    ShowMessage('Invalid input');
    Exit;
  end;

  case UpCase (Surname[1]) of
    'A'..'G': ShowGroup('1', Surname, lbGroup1);
    'H'..'O': ShowGroup('2', Surname, lbGroup2);
    'P'..'Z': ShowGroup('3', Surname, lbGroup3);
  end;
end;

end.
