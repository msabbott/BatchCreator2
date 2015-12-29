program about;

uses
  Forms,
  main in 'main.pas' {Form1},
  eggunit in 'eggunit.pas' {eggform};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'About Batch Creator Suite';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Teggform, eggform);
  Application.Run;
end.
