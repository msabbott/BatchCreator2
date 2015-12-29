unit Childwin;

interface

uses Windows, Classes, Graphics, Forms, Controls, ExtCtrls, StdCtrls, TB97,
  ComboBox97, Menus, AnimatedMenus98;

type
  TMDIChild = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    Panel2: TPanel;
    Panel3: TPanel;
    canvas: TPaintBox;
    Panel4: TPanel;
    canvas2: TPaintBox;
    Panel5: TPanel;
    ComboBox971: TComboBox97;
    ToolbarButton971: TToolbarButton97;
    ToolbarButton972: TToolbarButton97;
    Label1: TLabel;
    memopopup: TPopupMenu98;
    Undo1: TMenuItem;
    N1: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    Delete1: TMenuItem;
    N2: TMenuItem;
    SelectAll1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure canvasPaint(Sender: TObject);
    procedure canvas2Paint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}


procedure TMDIChild.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMDIChild.canvasPaint(Sender: TObject);
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

procedure TMDIChild.canvas2Paint(Sender: TObject);
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

end.
