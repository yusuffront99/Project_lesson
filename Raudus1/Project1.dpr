program Project1;

{$APPTYPE CONSOLE}

uses
  RaApplication,
  RaApplicationExe,
  RaConfig,
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  WriteLn('http://localhost:8080/ - open in browser');
  Application.Initialize;
  Application.Config.Port := 8080;
  Application.Config.WwwDiskDirectory := 'C:\Program Files (x86)\Borland\Raudus\www';
  Application.Config.SchedulerMode := rsmRunInSuperThread;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
