program C04p11p;

uses
  Vcl.Forms,
  C04p11u in 'C04p11u.pas' {CalculateRoomArea};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCalculateRoomArea, CalculateRoomArea);
  Application.Run;
end.
