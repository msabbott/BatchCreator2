program batch;

uses
  Forms,
  Main in 'MAIN.PAS' {MainForm},
  Childwin in 'CHILDWIN.PAS' {MDIChild},
  sublist in 'sublist.pas' {sublistform},
  optunit in 'optunit.pas' {options},
  choiceunit in 'choiceunit.pas' {choice},
  printedunit in 'printedunit.pas' {printed},
  splash in 'splash.pas' {SplashForm},
  remunit in 'remunit.pas' {remform},
  comp in 'comp.pas' {compform},
  subunit in 'subunit.pas' {subform},
  project in 'project.pas' {proj},
  tasks in 'tasks.pas' {taskform},
  about in 'about.pas' {aboutform},
  exeunit in 'exeunit.pas' {execute},
  ifunit in 'ifunit.pas' {ifform};

{$R *.RES}

begin
  Application.Title := 'Batch Creator';
  Application.HelpFile := 'Batch.hlp';
  SplashForm := TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.update; {To paint the splash screen}
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(Tsublistform, sublistform);
  Application.CreateForm(Toptions, options);
  Application.CreateForm(Tchoice, choice);
  Application.CreateForm(Tprinted, printed);
  Application.CreateForm(Tremform, remform);
  Application.CreateForm(Tcompform, compform);
  Application.CreateForm(Tsubform, subform);
  Application.CreateForm(Tproj, proj);
  Application.CreateForm(Ttaskform, taskform);
  Application.CreateForm(Taboutform, aboutform);
  Application.CreateForm(Texecute, execute);
  Application.CreateForm(Tifform, ifform);
  SplashForm.Close;
  SplashForm.Free;
  Application.Run;
end.
