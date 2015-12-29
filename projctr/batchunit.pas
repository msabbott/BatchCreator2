unit batchunit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  Tbatchform = class(TForm)
    batch: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  batchform: Tbatchform;

implementation

{$R *.DFM}

end.
