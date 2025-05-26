program C09p02p;

uses
  Vcl.Forms,
  C09p02u in 'C09p02u.pas' {FontMenuItemForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFontMenuItemForm, FontMenuItemForm);
  Application.Run;
end.
