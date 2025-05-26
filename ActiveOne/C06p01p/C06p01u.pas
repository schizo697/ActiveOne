unit C06p01u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TWhoIsOlderForm = class(TForm)
    gbPerson1: TGroupBox;
    lblName: TLabel;
    lblAge: TLabel;
    edtPersonName: TEdit;
    spePersonAge: TSpinEdit;
    gbAnotherPerson: TGroupBox;
    lblAnotherPersonName: TLabel;
    lblAnotherPersonAge: TLabel;
    edtAnotherPersonName: TEdit;
    speAnotherPersonAge: TSpinEdit;
    btnCheck: TButton;
    procedure btnCheckClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WhoIsOlderForm: TWhoIsOlderForm;

implementation

{$R *.dfm}

procedure TWhoIsOlderForm.btnCheckClick(Sender: TObject);
var
  PersonName: string;
  PersonAge: Integer;
  AnotherPersonName: string;
  AnotherPersonAge: Integer;
  Msg: string;
begin
  PersonName := edtPersonName.Text;
  PersonAge := spePersonAge.Value;
  AnotherPersonName := edtAnotherPersonName.Text;
  AnotherPersonAge := speAnotherPersonAge.Value;

  if (PersonAge <= 17) or (AnotherPersonAge <= 17) then
    begin
      Msg := 'Ages fall in a sensible range';
      Messagedlg(Msg, mtInformation, [mbOK], 0);
    end
  else if PersonAge > AnotherPersonAge then
    begin
      Msg := PersonName + ' is Older than ' + AnotherPersonName;
      MessageDlg(Msg, mtInformation, [mbOK], 0)
    end
  else if AnotherPersonAge > PersonAge then
    begin
      Msg := AnotherPersonName + ' is Older than ' + PersonName;
      MessageDlg(Msg, mtInformation, [mbOK], 0);
    end
  else
    begin
      Msg := PersonName + ' and ' + AnotherPersonName + ' has the same age';
      MessageDlg(Msg, mtInformation, [mbOK], 0);
    end;
end;

end.
