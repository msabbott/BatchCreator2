program projctr;

uses
  Forms,
  main in 'main.pas' {MainForm},
  batchunit in 'batchunit.pas' {batchform};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Project Creator';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(Tbatchform, batchform);
  Application.Run;
end.
