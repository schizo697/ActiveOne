unit C09p06u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TActionListForm = class(TForm)
    gbAnswer: TGroupBox;
    lblSum1: TLabel;
    lblSum2: TLabel;
    Label1: TLabel;
    lblAnswer: TLabel;
    edtAnswer: TEdit;
    btnNew: TButton;
    btnCheck: TButton;
    rgDifficultLevel: TRadioGroup;
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
    Menu1: TMenuItem;
    mmIncrease: TMenuItem;
    mmDecrease: TMenuItem;
    procedure btnNewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mmIncreaseClick(Sender: TObject);
    procedure mmDecreaseClick(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
    procedure mmNewClick(Sender: TObject);
    procedure mmCheckClick(Sender: TObject);
  private
    procedure GenerateNumbers;
    procedure SyncLevelToRadioGroup;
    procedure CheckNumbers;
  public
    { Public declarations }
  end;

var
  ActionListForm: TActionListForm;

implementation

{$R *.dfm}

var
  Level: Integer = 1;
  Total: Integer = 0;
  Num1: Integer;
  Num2: Integer;
  Answer: Integer;


procedure TActionListForm.btnCheckClick(Sender: TObject);
begin
  CheckNumbers;
end;

procedure TActionListForm.btnNewClick(Sender: TObject);
begin
  GenerateNumbers;
end;

procedure TActionListForm.CheckNumbers;
begin
  Answer := StrToInt(edtAnswer.Text);
  if Answer = Total then
  begin
  ShowMessage('Answer is correct')
  end
  else
  ShowMessage('Answer is incorrect');
end;

procedure TActionListForm.FormCreate(Sender: TObject);
begin
  Randomize;
end;

procedure TActionListForm.GenerateNumbers;
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

procedure TActionListForm.mmCheckClick(Sender: TObject);
begin
  CheckNumbers;
end;

procedure TActionListForm.mmDecreaseClick(Sender: TObject);
begin
  if Level > 1 then
    Dec(Level);

  SyncLevelToRadioGroup;
end;

procedure TActionListForm.mmIncreaseClick(Sender: TObject);
begin
  if Level < 4 then
    Inc(Level);

  SyncLevelToRadioGroup;
end;

procedure TActionListForm.mmNewClick(Sender: TObject);
begin
  GenerateNumbers;
end;

procedure TActionListForm.SyncLevelToRadioGroup;
begin
  rgDifficultLevel.ItemIndex := Level - 1;
end;

end.
