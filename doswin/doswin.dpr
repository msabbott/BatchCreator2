program doswin;

uses
  Forms,
  main in 'main.pas' {MainForm},
  Childwin in 'CHILDWIN.PAS' {MDIChild};

{$R *.RES}

begin
  Application.Title := 'Dos Windows';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
