program APSim;

uses
  Forms,
  SHARED in 'SHARED.PAS',
  APSimMain in 'APSimMain.pas' {MainFrm},
  AtrialMyoCyteUnit in 'AtrialMyoCyteUnit.pas',
  nygren_atrial_model_1998_unit in 'nygren_atrial_model_1998_unit.pas',
  dokos_model_1996_unit in 'dokos_model_1996_unit.pas',
  hodgkin_huxley_squid_axon_model_1952_unit in 'hodgkin_huxley_squid_axon_model_1952_unit.pas',
  davies_isap_2012_unit in 'davies_isap_2012_unit.pas',
  inada_N_model_2009_unit in 'inada_N_model_2009_unit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Nerve Simulation';
  Application.HelpFile := 'C:\Program Files\Borland\Delphi7\Nerve Sim\NERVESIM.HLP';
  Application.CreateForm(TMainFrm, MainFrm);
  Application.Run;
end.
