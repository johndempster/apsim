program NerveSim;

uses
  Forms,
  SHARED in 'SHARED.PAS',
  NerveSimMain in 'NerveSimMain.pas' {MainFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Nerve Simulation';
  Application.HelpFile := 'C:\Program Files\Borland\Delphi7\Nerve Sim\NERVESIM.HLP';
  Application.CreateForm(TMainFrm, MainFrm);
  Application.Run;
end.
