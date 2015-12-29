unit Childwin;

interface

uses Windows, Messages, Classes, Graphics, Forms, Controls, ExtCtrls, StdCtrls,
  Dialogs, Cbevel, TitleBar, Label3dB, TB97, ComboBox97, Menus,
  AnimatedMenus98, Printers, SysUtils;

type
  TMDIChild = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Shape1: TShape;
    canvas: TPaintBox;
    memo: TMemo;
    Subs: TListBox;
    Project: TListBox;
    commands: TPanel;
    Panel4: TPanel;
    MinPanel: TPanel;
    commandstitle: TLabel3DBorder;
    canvas2: TPaintBox;
    page: TNotebook;
    choice: TToolbarButton97;
    printed: TToolbarButton97;
    rem: TToolbarButton97;
    exe: TToolbarButton97;
    pause: TToolbarButton97;
    ifstat: TToolbarButton97;
    cls: TToolbarButton97;
    Label5: TLabel;
    echo: TComboBox97;
    time: TToolbarButton97;
    date: TToolbarButton97;
    diskspace: TToolbarButton97;
    doswind: TToolbarButton97;
    findbut: TToolbarButton97;
    Task: TListBox;
    Panel3: TPanel;
    Panel5: TPanel;
    memopopup: TPopupMenu98;
    Undo: TMenuItem;
    N01: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    SelectAll1: TMenuItem;
    Label1: TToolbarButton97;
    Label2: TToolbarButton97;
    Label3: TToolbarButton97;
    Label4: TToolbarButton97;
    fav1: TToolbarButton97;
    fav2: TToolbarButton97;
    fav3: TToolbarButton97;
    fav4: TToolbarButton97;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure canvasPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure canvasDblClick(Sender: TObject);
    procedure canvas2Paint(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure MinPanelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pauseClick(Sender: TObject);
    procedure clsClick(Sender: TObject);
    procedure echoChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UndoClick(Sender: TObject);
    procedure choiceClick(Sender: TObject);
    procedure printedClick(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure SelectAll1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure remClick(Sender: TObject);
    procedure memoChange(Sender: TObject);
    procedure timeClick(Sender: TObject);
    procedure dateClick(Sender: TObject);
    procedure exeClick(Sender: TObject);
    procedure ifstatClick(Sender: TObject);
    procedure fav1Click(Sender: TObject);
    procedure fav2Click(Sender: TObject);
    procedure fav3Click(Sender: TObject);
    procedure fav4Click(Sender: TObject);
  private
    { Private declarations }
    active : integer;

    procedure Dots;
    procedure Dots2;
    procedure MakeActive;

  public
    { Public declarations }
    maximized : boolean;
    modi : boolean;
    prevsave : boolean;

    projname : string;

    procedure Add(Line : String);
    procedure Open(FileName : String);
    procedure DocPrint;
    procedure Save(FileName : String);
    procedure SetProjectName(Name : String);
  end;

implementation

{$R *.DFM}
uses Main, choiceunit;

procedure TMDIChild.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMDIChild.FormPaint(Sender: TObject);
begin
Dots;
fav1.Caption := MainForm.AutoCommand.ReadString('favourite1');
fav2.Caption := MainForm.AutoCommand.ReadString('favourite2');
fav3.Caption := MainForm.AutoCommand.ReadString('favourite3');
fav4.Caption := MainForm.AutoCommand.ReadString('favourite4');
end;

procedure TMDIChild.Dots;
var
   loop : integer;
   count : integer;
   x : integer;
begin
with canvas do
 begin


 //Light Dots
      //Top Line
      Canvas.Pen.Color := $00CF6060; //$00602F2F;
      Canvas.MoveTo(3,4);
      Canvas.LineTo(Width-4,4);

      //Middle Line
      Canvas.MoveTo(3,10);
      Canvas.LineTo(Width-4,10);

      //Bottom Line
      Canvas.MoveTo(3,16);
      Canvas.LineTo(Width-4,16);

      //Make Dots
      Canvas.Pen.Color := clBtnFace;
      Canvas.MoveTo(4,4);
      x := 4;

      for loop := 4 to Width-4 do
          begin
          Canvas.MoveTo(x,3);
          Canvas.LineTo(x,17);
          Canvas.MoveTo(x+1,3);
          Canvas.LineTo(x+1,17);
          Canvas.MoveTo(x+2,3);
          Canvas.LineTo(x+2,17);
          Canvas.MoveTo(x+3,3);
          Canvas.LineTo(x+3,17);

          x := x + 5;
          end;

 //Dark Dots
 //Top Line
      Canvas.Pen.Color := $00602F2F;
      Canvas.MoveTo(4,5);
      Canvas.LineTo(Width-3,5);

      //Middle Line
      Canvas.MoveTo(4,11);
      Canvas.LineTo(Width-3,11);

      //Bottom Line
      Canvas.MoveTo(4,17);
      Canvas.LineTo(Width-3,17);

       //Make Dots
      Canvas.Pen.Color := clBtnFace;
      Canvas.MoveTo(5,5);
      x := 5;

      for loop := 5 to Width-4 do
          begin
{**********************************
* NOTE:
*      Because of the second dot being offset, it is easier to repeat the process
* three times in each for loop. This makes the source code longer but is easier
* write and to read again after.
* -----------------------------------------------------------------------------
* If this code is working properly, do not play.
***********************************}
          Canvas.MoveTo(x,5);
          Canvas.LineTo(x,6);
          Canvas.MoveTo(x+1,5);
          Canvas.LineTo(x+1,6);
          Canvas.MoveTo(x+2,5);
          Canvas.LineTo(x+2,6);
          Canvas.MoveTo(x+3,5);
          Canvas.LineTo(x+3,6);


          Canvas.MoveTo(x,11);
          Canvas.LineTo(x,13);
          Canvas.MoveTo(x+1,11);
          Canvas.LineTo(x+1,13);
          Canvas.MoveTo(x+2,11);
          Canvas.LineTo(x+2,13);
          Canvas.MoveTo(x+3,11);
          Canvas.LineTo(x+3,13);

          Canvas.MoveTo(x,17);
          Canvas.LineTo(x,19);
          Canvas.MoveTo(x+1,17);
          Canvas.LineTo(x+1,19);
          Canvas.MoveTo(x+2,17);
          Canvas.LineTo(x+2,19);
          Canvas.MoveTo(x+3,17);
          Canvas.LineTo(x+3,19);



          x := x + 5;
          end;

{******************************
* NOTE:
*      The Border is drawn last because of the way that the dots are drawn.
* When placed at the front of the code, lines appear in the far border.
* This can be avoided by painting the border after the dots hence it's postion
******************************}
//Funky Border!
      Canvas.Pen.Color := clBtnHighlight;
      Canvas.MoveTo(0,0);
      Canvas.LineTo(0,Height-1);
      Canvas.MoveTo(0,0);
      Canvas.LineTo(Width-1,0);

      Canvas.Pen.Color := clBtnShadow;
      Canvas.MoveTo(0,Height-1);
      Canvas.LineTo(Width-1,Height-1);
      Canvas.LineTo(Width-1,-1);

end; //End of WITH statement
end;

procedure TMDIChild.canvasPaint(Sender: TObject);
begin
Dots;
end;

procedure TMDIChild.MakeActive;
begin
MainForm.Title.Caption :=' Batch Creator - '+Caption+' ';
end;

procedure TMDIChild.FormResize(Sender: TObject);
begin
if(WindowState = wsMaximized)then
begin

MakeActive;
end;
end;

procedure TMDIChild.canvasDblClick(Sender: TObject);
begin
if(WindowState = wsNormal) then
    Begin
    WindowState := wsMaximized;
    end

    else
    Begin
    WindowState :=wsNormal;
    end;
end;

procedure TMDIChild.Dots2;
var
   loop : integer;
   count : integer;
   x : integer;
begin
with canvas2 do
 begin


 //Light Dots
      //Top Line
      Canvas.Pen.Color := $00CF6060; //$00602F2F;
      Canvas.MoveTo(3,4);
      Canvas.LineTo(Width-4,4);

      //Middle Line
      Canvas.MoveTo(3,10);
      Canvas.LineTo(Width-4,10);

      //Bottom Line
      Canvas.MoveTo(3,16);
      Canvas.LineTo(Width-4,16);

      //Make Dots
      Canvas.Pen.Color := clBtnFace;
      Canvas.MoveTo(4,4);
      x := 4;

      for loop := 4 to Width-4 do
          begin
          Canvas.MoveTo(x,3);
          Canvas.LineTo(x,17);
          Canvas.MoveTo(x+1,3);
          Canvas.LineTo(x+1,17);
          Canvas.MoveTo(x+2,3);
          Canvas.LineTo(x+2,17);
          Canvas.MoveTo(x+3,3);
          Canvas.LineTo(x+3,17);

          x := x + 5;
          end;

 //Dark Dots
 //Top Line
      Canvas.Pen.Color := $00602F2F;
      Canvas.MoveTo(4,5);
      Canvas.LineTo(Width-3,5);

      //Middle Line
      Canvas.MoveTo(4,11);
      Canvas.LineTo(Width-3,11);

      //Bottom Line
      Canvas.MoveTo(4,17);
      Canvas.LineTo(Width-3,17);

       //Make Dots
      Canvas.Pen.Color := clBtnFace;
      Canvas.MoveTo(5,5);
      x := 5;

      for loop := 5 to Width-4 do
          begin
{**********************************
* NOTE:
*      Because of the second dot being offset, it is easier to repeat the process
* three times in each for loop. This makes the source code longer but is easier
* write and to read again after.
* -----------------------------------------------------------------------------
* If this code is working properly, do not play.
***********************************}
          Canvas.MoveTo(x,5);
          Canvas.LineTo(x,6);
          Canvas.MoveTo(x+1,5);
          Canvas.LineTo(x+1,6);
          Canvas.MoveTo(x+2,5);
          Canvas.LineTo(x+2,6);
          Canvas.MoveTo(x+3,5);
          Canvas.LineTo(x+3,6);


          Canvas.MoveTo(x,11);
          Canvas.LineTo(x,13);
          Canvas.MoveTo(x+1,11);
          Canvas.LineTo(x+1,13);
          Canvas.MoveTo(x+2,11);
          Canvas.LineTo(x+2,13);
          Canvas.MoveTo(x+3,11);
          Canvas.LineTo(x+3,13);

          Canvas.MoveTo(x,17);
          Canvas.LineTo(x,19);
          Canvas.MoveTo(x+1,17);
          Canvas.LineTo(x+1,19);
          Canvas.MoveTo(x+2,17);
          Canvas.LineTo(x+2,19);
          Canvas.MoveTo(x+3,17);
          Canvas.LineTo(x+3,19);



          x := x + 5;
          end;

{******************************
* NOTE:
*      The Border is drawn last because of the way that the dots are drawn.
* When placed at the front of the code, lines appear in the far border.
* This can be avoided by painting the border after the dots hence it's postion
******************************}
//Funky Border!
      Canvas.Pen.Color := clBtnHighlight;
      Canvas.MoveTo(0,0);
      Canvas.LineTo(0,Height-1);
      Canvas.MoveTo(0,0);
      Canvas.LineTo(Width-1,0);

      Canvas.Pen.Color := clBtnShadow;
      Canvas.MoveTo(0,Height-1);
      Canvas.LineTo(Width-1,Height-1);
      Canvas.LineTo(Width-1,-1);

end; //End of WITH statement
end;

procedure TMDIChild.canvas2Paint(Sender: TObject);
begin
Dots2;
end;

procedure TMDIChild.Label1Click(Sender: TObject);
begin
commands.Visible := True;
commandstitle.Caption := 'Commands';
page.ActivePage := 'Commands';
if(maximized = false) then MinPanelClick(Label1);
end;

procedure TMDIChild.Label2Click(Sender: TObject);
begin
commands.Visible := True;
commandstitle.Caption := 'Accessories';
page.ActivePage := 'Accessories';
if(maximized = false) then MinPanelClick(Label2);
end;

procedure TMDIChild.Label3Click(Sender: TObject);
begin
commands.Visible := True;
commandstitle.Caption := 'AutoCommands';
page.ActivePage := 'AutoCommands';
if(maximized = false) then MinPanelClick(Label3);
end;

procedure TMDIChild.Label4Click(Sender: TObject);
begin
commands.Visible := True;
commandstitle.Caption := 'Tasks';
page.ActivePage := 'Tasks';
if(maximized = false) then MinPanelClick(Label4);
end;

procedure TMDIChild.MinPanelClick(Sender: TObject);
var
   i : integer;
   k : integer;
begin

if (maximized = true) then begin
//Minimize
for i := commands.Width downto MinPanel.Width+71 do
 begin

 //Hide All Stuff
 Canvas2.Visible := false;
 page.Visible := false;

 //Animation!!!!
 k := i-70;
 commands.Width := k;

 //Change Caption
 MinPanel.Caption := '8';

 maximized := false;
 end;

end
else begin

//Maximize
for i := commands.Width to 145-70 do
begin


 //Animation!!!!
 k := i+70;
 commands.Width := k;

 //Change Caption
 MinPanel.Caption := '3';

 maximized := true;
 end;
 //Show All Stuff
 Canvas2.Visible := true;
 page.Visible := true;

 end;
end;

procedure TMDIChild.FormCreate(Sender: TObject);
begin
MakeActive;
maximized := true;
prevsave := false;

fav1.Caption := MainForm.AutoCommand.ReadString('favourite1');
fav2.Caption := MainForm.AutoCommand.ReadString('favourite2');
fav3.Caption := MainForm.AutoCommand.ReadString('favourite3');
fav4.Caption := MainForm.AutoCommand.ReadString('favourite4');
end;

procedure TMDIChild.Add(Line : String);
var
   result : integer;
begin
result := SendMessage(memo.Handle, EM_LINEFROMCHAR, memo.SelStart,0);

memo.Lines.Insert(result, Line);
end;
procedure TMDIChild.pauseClick(Sender: TObject);
begin
Add('Pause');
modi := true;
end;

procedure TMDIChild.clsClick(Sender: TObject);
begin
Add('Cls');
modi := true;
end;

procedure TMDIChild.echoChange(Sender: TObject);
begin
Add(echo.Text);
modi := true;
end;

procedure TMDIChild.FormActivate(Sender: TObject);
begin
MainForm.Child := self;
MainForm.subs.Items.Clear;
MainForm.subs.Items.AddStrings(Subs.Items);
MakeActive;
end;

procedure TMDIChild.FormShow(Sender: TObject);
begin
MakeActive;
MainForm.Child := self;

fav1.Caption := MainForm.AutoCommand.ReadString('favourite1');
fav2.Caption := MainForm.AutoCommand.ReadString('favourite2');
fav3.Caption := MainForm.AutoCommand.ReadString('favourite3');
fav4.Caption := MainForm.AutoCommand.ReadString('favourite4');
end;

procedure TMDIChild.Open(FileName : String);
begin
Project.Items.LoadFromFile(FileName);
if(Project.Items.Strings[0] = 'xxx') then
    Begin
    memo.Lines.LoadFromFile(Project.Items.Strings[2]);
    Subs.Items.LoadFromFile(Project.Items.Strings[3]);
    Task.Items.LoadFromFile(Project.Items.Strings[4]);
    FormActivate(self);
    prevsave := True;
    projname := FileName;
    end
else
    Begin
    MessageDlg('This is not a valid Batch Creator Project. Please try another file',mtError,[mbOK],0);
    Close;
    end;
end;

procedure TMDIChild.UndoClick(Sender: TObject);
begin
SendMessage(memo.Handle,EM_UNDO,0,0);
end;

procedure TMDIChild.choiceClick(Sender: TObject);
begin
MainForm.Choice1Click(self);
end;

procedure TMDIChild.printedClick(Sender: TObject);
begin
MainForm.Printed1Click(self);
end;

procedure TMDIChild.Cut1Click(Sender: TObject);
begin
memo.CutToClipboard;
end;

procedure TMDIChild.Copy1Click(Sender: TObject);
begin
memo.CopyToClipboard;
end;

procedure TMDIChild.Paste1Click(Sender: TObject);
begin
memo.PasteFromClipboard;
end;

procedure TMDIChild.SelectAll1Click(Sender: TObject);
begin
memo.SelectAll;
end;

procedure TMDIChild.N1Click(Sender: TObject);
var
   result : integer;
begin
result := SendMessage(memo.Handle, EM_LINEFROMCHAR, memo.SelStart,0);

memo.Lines.Delete(result);

end;

procedure TMDIChild.remClick(Sender: TObject);
begin
MainForm.REMLine1Click(self);
end;

procedure TMDIChild.DocPrint;
var
   Printer : TPrinter;
   y,lines,maxlines : integer;
begin
//Init Printer
Printer := TPrinter.Create;
Printer.BeginDoc;

//Set Font For and Print Title
With Printer.Canvas Do
     begin
          //Set Title Font
          Font.Name := 'Arial';
          Font.Size := 16;
          Font.Style := [fsBold];
          //Print Title
          TextOut(80,80,Caption);
          y := 80 + TextHeight(Caption) + 100;
     end;
//Set Font For Normal Printing.
With Printer.Canvas Do
     begin
          Font.Name := 'Arial';
          Font.Size := 12;
          Font.Style := [];
     end;

//Do Printing
maxlines := memo.Lines.Count;
   for lines := 0 to maxlines do
     begin
     y := (Printer.Canvas.TextHeight('Hi There!')*lines) +10;
     Printer.Canvas.TextOut(80,y,memo.Lines.Strings[lines]);
     end;


end;

procedure TMDIChild.Save(FileName : String);
var
temp : string;
begin

     if(prevsave = false)then
     begin
     temp := Project.Items.Strings[1];

     Project.Items.Clear;
     Project.Items.Add('xxx');
     Project.Items.Add(temp);
     Project.Items.Add(FileName+'.bcf');
     Project.Items.Add(FileName+'.sub');
     Project.Items.Add(FileName+'.tas');
     end
     else
     begin
     FileName := projname;
     end;

     Project.Items.SaveToFile(FileName);
     memo.Lines.SaveToFile(Project.Items.Strings[2]);
     Subs.Items.SaveToFile(Project.Items.Strings[3]);
     Task.Items.SaveToFile(Project.Items.Strings[4]);

     Caption := ExtractFileName(FileName);
     FormActivate(self);
     prevsave := True;
     projname := FileName;
end;

procedure TMDIChild.SetProjectName(Name : String);
begin
Project.Items.Strings[1] := Name;
end;

procedure TMDIChild.memoChange(Sender: TObject);
begin
modi := memo.Modified;
end;

procedure TMDIChild.timeClick(Sender: TObject);
begin
Add('call gettime.exe');
modi := true;
end;

procedure TMDIChild.dateClick(Sender: TObject);
begin
Add('call getdate.exe');
modi := true;
end;

procedure TMDIChild.exeClick(Sender: TObject);
begin
MainForm.Execut1Click(self);
end;

procedure TMDIChild.ifstatClick(Sender: TObject);
begin
MainForm.IfStatement1Click(self);
end;

procedure TMDIChild.fav1Click(Sender: TObject);
begin
MainForm.autofav1Click(fav1);
end;

procedure TMDIChild.fav2Click(Sender: TObject);
begin
MainForm.autofav2Click(fav2);
end;

procedure TMDIChild.fav3Click(Sender: TObject);
begin
MainForm.autofav3Click(fav3);
end;

procedure TMDIChild.fav4Click(Sender: TObject);
begin
MainForm.autofav4Click(fav4);
end;

end.
