unit PrintUnit;
// ---------------------------
// Print displayed chart trace
// ---------------------------


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Printers ;

type
  TPrintFrm = class(TForm)
    GroupBox6: TGroupBox;
    bPrinterSetup: TButton;
    edPrinterName: TEdit;
    bOK: TButton;
    bCancel: TButton;
    procedure FormShow(Sender: TObject);
    procedure bPrinterSetupClick(Sender: TObject);
  private
    { Private declarations }
    DeviceName : Array[0..100] of Char ;
    DeviceDriver : Array[0..100] of Char ;
    Port : Array[0..100] of Char ;
    DeviceMode : Cardinal ;
  public
    { Public declarations }
  end;

var
  PrintFrm: TPrintFrm;

implementation

uses NerveSimMain;

{$R *.dfm}

procedure TPrintFrm.FormShow(Sender: TObject);
// ---------------------------------------
// Initialise controls when form displayed
// ---------------------------------------
begin
     Printer.GetPrinter( DeviceName, DeviceDriver,Port,DeviceMode);
     edPrinterName.Text := String(DeviceName) ;
     end;

procedure TPrintFrm.bPrinterSetupClick(Sender: TObject);
// --------------------------------
// Display printer setup dialog box
// --------------------------------
begin
     MainFrm.PrinterSetupDialog.Execute ;
     Printer.GetPrinter( DeviceName, DeviceDriver,Port,DeviceMode);
     edPrinterName.Text := String(DeviceName) ;
     end;

end.
