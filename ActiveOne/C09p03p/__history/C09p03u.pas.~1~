unit C09p03u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TAdditionTesterForm = class(TForm)
    MainMenu: TMainMenu;
    Sum1: TMenuItem;
    mmNew: TMenuItem;
    mmCheck: TMenuItem;
    mmExit: TMenuItem;
    Level1: TMenuItem;
    mm1D: TMenuItem;
    mm2D: TMenuItem;
    mm3D: TMenuItem;
    mm4D: TMenuItem;
    gbAnswer: TGroupBox;
    lblSum1: TLabel;
    lblSum2: TLabel;
    Label1: TLabel;
    lblAnswer: TLabel;
    edtAnswer: TEdit;
    btnNew: TButton;
    btnCheck: TButton;
    rgDifficultLevel: TRadioGroup;
    procedure mmNewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mm1DClick(Sender: TObject);
    procedure mm2DClick(Sender: TObject);
    procedure mm3DClick(Sender: TObject);
    procedure mm4DClick(Sender: TObject);
    procedure mmCheckClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdditionTesterForm: TAdditionTesterForm;
  Level: Integer = 1;
  Total: Integer = 0;
  Num1: Integer;
  Num2: Integer;

implementation

{$R *.dfm}

procedure TAdditionTesterForm.FormCreate(Sender: TObject);
begin
  Randomize;
end;

procedure TAdditionTesterForm.btnCheckClick(Sender: TObject);
var
  Answer: Integer;
begin
  Answer := StrToInt(edtAnswer.Text);
  if Answer = Total then
  begin
    ShowMessage('Answer is correct')
  end
  else
  begin
    ShowMessage('Answer is incorrect');
  end;
end;

procedure TAdditionTesterForm.btnNewClick(Sender: TObject);
begin
  case rgDifficultLevel.ItemIndex of
    0:
    begin
      Num1 := Random(9) + 1;
      Num2 := Random(9) + 1;
    end;
    1:
    begin
      Num1 := Random(90) + 10;
      Num2 := Random(90) + 10;
    end;
    2:
    begin
      Num1 := Random(900) + 100;
      Num2 := Random(900) + 100;
    end;
    3:
    begin
      Num1 := Random(9000) + 1000;
      Num2 := Random(9000) + 1000;
    end;
  end;
  Total := Num1 + Num2;
  lblSum1.Caption := IntToStr(Num1);
  lblSum2.Caption := IntToStr(Num2);
end;

procedure TAdditionTesterForm.mm1DClick(Sender: TObject);
begin
  Level := 1;
end;

procedure TAdditionTesterForm.mm2DClick(Sender: TObject);
begin
  Level := 2;
end;

procedure TAdditionTesterForm.mm3DClick(Sender: TObject);
begin
  Level := 3;
end;

procedure TAdditionTesterForm.mm4DClick(Sender: TObject);
begin
  Level := 4;
end;

procedure TAdditionTesterForm.mmCheckClick(Sender: TObject);
var
  Answer: integer;
begin
  Answer := StrToInt(edtAnswer.Text);
  if Answer = Total then
  begin
  ShowMessage('Answer is correct')
  end
  else
  ShowMessage('Answer is incorrect');
end;

procedure TAdditionTesterForm.mmNewClick(Sender: TObject);
begin
  case Level of
    1:
    begin
      Num1 := Random(9) + 1;
      Num2 := Random(9) + 1;
    end;
    2:
    begin
      Num1 := Random(90) + 10;
      Num2 := Random(90) + 10;
    end;
    3:
    begin
      Num1 := Random(900) + 100;
      Num2 := Random(900) + 100;
    end;
    4:
    begin
      Num1 := Random(9000) + 1000;
      Num2 := Random(9000) + 1000;
    end;
  end;
  Total := Num1 + Num2;
  lblSum1.Caption := IntToStr(Num1);
  lblSum2.Caption := IntToStr(Num2);
end;

end.
