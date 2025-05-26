unit C02p02u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMultipleTextDisplays = class(TForm)
    edtName: TEdit;
    btnName: TButton;
    btnDep: TButton;
    btnBirth: TButton;
    btnClear: TButton;
    lblName: TLabel;
    lblDep: TLabel;
    lblBirth: TLabel;
    procedure btnNameClick(Sender: TObject);
    procedure btnDepClick(Sender: TObject);
    procedure btnBirthClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MultipleTextDisplays: TMultipleTextDisplays;

implementation

{$R *.dfm}

procedure TMultipleTextDisplays.btnBirthClick(Sender: TObject);
var AName: string;
begin
  aName := edtName.Text;
  lblBirth.Caption := aName;
  edtName.Clear;
  edtName.SetFocus;
end;

procedure TMultipleTextDisplays.btnClearClick(Sender: TObject);
begin
  lblName.Caption := '';
  lblDep.Caption := '';
  lblBirth.Caption := '';
  edtName.SetFocus;
end;

procedure TMultipleTextDisplays.btnDepClick(Sender: TObject);
var AName: string;
begin
  AName := edtName.Text;
  lblDep.Caption := aName;
  edtName.Clear;
  edtName.SetFocus;
end;

procedure TMultipleTextDisplays.btnNameClick(Sender: TObject);
var AName: string;
begin
  AName := edtName.Text;
  lblName.Caption := aName;
  edtName.Clear;
end;

end.
