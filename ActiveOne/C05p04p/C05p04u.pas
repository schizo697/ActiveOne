unit C05p04u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TCourseResultForm = class(TForm)
    lblMark: TLabel;
    speMarkObtained: TSpinEdit;
    btnCheck: TButton;
    procedure btnCheckClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CourseResultForm: TCourseResultForm;

implementation

{$R *.dfm}

procedure TCourseResultForm.btnCheckClick(Sender: TObject);
var
  aMarkObtained: Integer;
  aMsg: string;
begin
  aMarkObtained := speMarkObtained.Value;

  if (aMarkObtained < 0) or (aMarkObtained > 100)  then
  begin
    aMsg := 'Error Invalid Marks';
    MessageDlg (aMsg, MtWarning, [mbOK], 0)
  end
  else if aMarkObtained >= 75 then
  begin
    aMsg := 'Distinction';
    MessageDlg (aMsg, mtInformation, [mbOK], 0)
  end
  else if (aMarkObtained > 50) and (aMarkObtained < 75) then
  begin
    aMsg := 'Pass';
    MessageDlg (aMsg, mtInformation, [mbOK], 0)
  end
  else if (aMarkObtained > 45) and (aMarkObtained <= 50) then
  begin
    aMsg := 'Supplementary';
    MessageDlg (aMsg, mtInformation, [mbOK], 0)
  end
  else
  begin
    aMsg := 'Fail';
    MessageDlg (aMsg, mtInformation, [mbOK], 0);
  end;
end;

end.
