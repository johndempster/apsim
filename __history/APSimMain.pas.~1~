unit APSimMain;
// -----------------------------------------------
// Action Potential Simulation
// (c) J. Dempster, University of Strathclyde 2015
// -----------------------------------------------
// V1.0.0
// V1.0.

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ScopeDisplay, ValidatedEdit, math, Menus, ExtCtrls,UITypes,
  HTMLLabel, StrUtils, shared, ComCtrls, htmlhelpviewer, shellapi,AtrialMyoCyteUnit,mmsystem,
  nygren_atrial_model_1998_unit,
  davies_isap_2012_unit,
  dokos_model_1996_unit,
  inada_N_model_2009_unit,
  hodgkin_huxley_squid_axon_model_1952_unit ;

const
    MaxPoints = 10000000 ;
    MaxChannels = 2 ;
    //MaxDisplayPoints = 5000 ;
    MaxDrugs = 100 ;
    MaxMarkers = 500 ;
    FileHeaderSize = 8192 ;
    DataFileExtension = '.APS' ;

type

  TDrug = record
          Name : String ;
          ShortName : String ;
          FinalBathConcentration : single ;
          BathConcentration : single ;
          EC50_GNa : Single ;
          EC50_GK : Single ;
          EC50_GCaL : Single ;
          EC50_BetaADR : Single ;
          Antagonist : Boolean ;
          end ;

TIon = record
     CIn : Single ;
     COut : Single ;
     FinalCOut : Single ;
     Standard : Single ;
     New : Single ;
     G : Single ;
     GMAX : Single ;
     VRev : single ;
     I : Single ;
     m : single ;
     n : single ;
     h : single ;
     end ;

TStimulus = record
          Start : single ;
          Amplitude : single ;
          Duration : single ;
          I : single ;
          NumStimDone : Integer ;
          end ;

TCell = record
      Temperature : single ;
      rtf : single ;
      Length : single ;
      Radius : single ;
      Area : single ;
      cm : single ;
      c : single ;
      Noise : single ;
      Na : TIon ;
      K : TIon ;
      Cl : TIon ;
      Ca : TIon ;
      Mg : TIon ;
      DAP : TDrug ;
      TTX : TDrug ;
      LIG : TDrug ;
      Stim : TStimulus ;
      Vm : Single ;
      Im : Single ;
      t : Single ;
      dt : single ;
      Step : Integer ;
      NumStepsPerDisplayPoint : Integer ;
      end ;

  TMainFrm = class(TForm)
    ControlsGrp: TGroupBox;
    TissueGrp: TGroupBox;
    GroupBox5: TGroupBox;
    edNaConc: TValidatedEdit;
    Label2: TLabel;
    bNewSaltSoln: TButton;
    AntagonistGrp: TGroupBox;
    cbDrug: TComboBox;
    edDrugConc: TValidatedEdit;
    bAddDrug: TButton;
    Label4: TLabel;
    bNewExperiment: TButton;
    GroupBox6: TGroupBox;
    bStimulusOn: TButton;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    mnLoadExperiment: TMenuItem;
    mnSaveExperiment: TMenuItem;
    N1: TMenuItem;
    mnExit: TMenuItem;
    Timer: TTimer;
    mnEdit: TMenuItem;
    mnCopyData: TMenuItem;
    mnCopyImage: TMenuItem;
    N2: TMenuItem;
    mnPrint: TMenuItem;
    PrinterSetupDialog: TPrinterSetupDialog;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    DisplayGrp: TGroupBox;
    DisplayPage: TPageControl;
    ChartPage: TTabSheet;
    ExperimentPage: TTabSheet;
    sbDisplay: TScrollBar;
    ExptSetup: TImage;
    mnHelp: TMenuItem;
    mnContents: TMenuItem;
    Label6: TLabel;
    edKConc: TValidatedEdit;
    bStandardSaltSoln: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    edStimulusCurrent: TValidatedEdit;
    Label3: TLabel;
    edStimulusDuration: TValidatedEdit;
    rbSingleStimulus: TRadioButton;
    rbRepeatedStimulus: TRadioButton;
    RatePanel: TPanel;
    Label1: TLabel;
    edStimulusInterval: TValidatedEdit;
    bStimulusOff: TButton;
    scDisplay: TScopeDisplay;
    mnPrinterSetup: TMenuItem;
    rbPairedStimulus: TRadioButton;
    pnDisplayWindow: TPanel;
    bTDisplayHalf: TButton;
    edDisplayWindow: TValidatedEdit;
    bTDisplayDouble: TButton;
    mnSnapDisplay: TMenuItem;
    mnClearSnap: TMenuItem;
    ckVm: TCheckBox;
    ckDvDt: TCheckBox;
    ckIm: TCheckBox;
    ckINa: TCheckBox;
    ckICaL: TCheckBox;
    ckIK: TCheckBox;
    Label7: TLabel;
    cbCellType: TComboBox;
    pnRecord: TPanel;
    edStartAt: TValidatedEdit;
    bRecord: TButton;
    bStop: TButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edCaConc: TValidatedEdit;
    procedure FormShow(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure bRecordClick(Sender: TObject);
    procedure bStopClick(Sender: TObject);
    procedure bNewSaltSolnClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure mnExitClick(Sender: TObject);
    procedure mnCopyDataClick(Sender: TObject);
    procedure mnPrintClick(Sender: TObject);
    procedure mnCopyImageClick(Sender: TObject);
    procedure mnLoadExperimentClick(Sender: TObject);
    procedure bStimulusOnClick(Sender: TObject);
    procedure bStimulationOffClick(Sender: TObject);
    procedure bNewExperimentClick(Sender: TObject);
    procedure mnSaveExperimentClick(Sender: TObject);
    procedure mnContentsClick(Sender: TObject);
    procedure rbSingleStimulusClick(Sender: TObject);
    procedure rbRepeatedStimulusClick(Sender: TObject);
    procedure bStimulusOffClick(Sender: TObject);
    procedure bAddDrugClick(Sender: TObject);
    procedure bStandardSaltSolnClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure mnPrinterSetupClick(Sender: TObject);
    procedure edDisplayWindowKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bTDisplayHalfClick(Sender: TObject);
    procedure bTDisplayDoubleClick(Sender: TObject);
    procedure mnSnapDisplayClick(Sender: TObject);
    procedure mnClearSnapClick(Sender: TObject);
    procedure ckDvDtClick(Sender: TObject);
    procedure scDisplayCursorChange(Sender: TObject);
    procedure edStartAtKeyPress(Sender: TObject; var Key: Char);
    procedure edStimulusCurrentKeyPress(Sender: TObject; var Key: Char);
    procedure edStimulusDurationKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    CellType : Integer ;
    ADC : Array[0..MaxPoints*MaxChannels-1] of SmallInt ;
    NumPointsInBuf : Integer ;   // No. of data points in buffer
    StartPoint : Integer ;
    NumPointsDisplayed : Integer ;

    // Nerve stimulus
    Cell : TCell ;
    Drugs : Array[0..MaxDrugs-1] of TDrug ;    // Drug properties array
    NumDrugs : Integer ;                     // No. of drugs available
    GNa_Available : Single ;                // Fraction Na conductance unblocked
    GK_Available : Single ;                 // Fraction K Channels unblocked
    GCaL_Available : Single ;                 // Fraction K Channels unblocked
    BetaADR_Active : single ;               // Fraction of beta adrenoceptors active

    MarkerList : TStringList ;   // Chart annotation list

    UnsavedData : Boolean ;  // Un-saved data flag

    VOI : Double ;
    CONSTANTS : array[0..1000] of Double ;
    RATES : array[0..1000] of Double ;
    STATES : array[0..1000] of Double ;
    ALGEBRAIC : array[0..1000] of Double ;


    procedure NewExperiment ;
    procedure UpdateDisplay(
              var States : Array of Single ;
              nStates : Integer ) ;
    procedure UpdateIonConcentrations ;
    procedure UpdateDrugConcentrations ;
    procedure AddChartAnnotations ;
    procedure AddDrugMarker( ChartAnnotation : String ) ;
    procedure LoadFromFile( FileName : String ) ;
    procedure SaveToFile( FileName : String ) ;
    function DoNerveSimulationStep : Single ;
    procedure DoAtrialMyocyteStep(
              var States : Array of Single ;
              nStates : Integer ) ;
    procedure UpdateDisplayWindow ;
    procedure SnapDisplayWindow ;
  public
    { Public declarations }
    nygren_atrial_model_1998 : Tnygren_atrial_model_1998 ;
   davies_isap_2012 : Tdavies_isap_2012 ;
    dokos_model_1996 : Tdokos_model_1996 ;
    inada_N_model_2009 : Tinada_N_model_2009 ;
    hodgkin_huxley_squid_axon_model_1952 : Thodgkin_huxley_squid_axon_model_1952 ;
  end;

var
  MainFrm: TMainFrm;

implementation

{$R *.dfm}


const
    MaxADCValue = 2047 ;
    MinADCValue = -2048 ;
    NoiseStDev = 10 ;
    MaxVm = 150.0 ;
    MaxIM = 3000.0 ;
    BackgroundNoiseStDev = 0.1 ;  // Background noise (gms)
    MixingRate = 2000.0 ;
    VentricularMyocyte = 0 ;
    AtrialMyocyte = 1 ;
    SANodeMyocyte = 2 ;
    AVNodeMyocyte = 3 ;
    SquidAxon = 4 ;

procedure TMainFrm.FormShow(Sender: TObject);
// ------------------------------------------------
// Initialise controls when form is first displayed
// ------------------------------------------------
var
    FileName : String ;
   TempPath : Array[0..255] of Char ;
   LocalHelpFile : string ;
   ch : Integer ;
begin

     // Find help file

     // Copy help file to temp folder
     GetTempPath( High(TempPath), TempPath ) ;
     LocalHelpFile := String(TempPath) + 'nervesim.chm' ;
     CopyFile( Pchar(ExtractFilePath(ParamStr(0)) + 'nervesim.chm'),
               Pchar(LocalHelpFile),
               false ) ;
     Application.HelpFile := LocalHelpFile ;

     // Create annotation list
     MarkerList := TStringList.Create ;

     { Setup chart display }
     scDisplay.MaxADCValue :=  MaxADCValue ;
     scDisplay.MinADCValue := MinADCValue ;
     scDisplay.DisplayGrid := True ;

     scDisplay.NumPoints := 0 ;
     scDisplay.NumChannels := 6 ;

     { Membrane potential channel }

     scDisplay.ChanOffsets[0] := 0 ;
     scDisplay.ChanUnits[0] := 'mV' ;
     scDisplay.ChanName[0] := 'Vm' ;
     scDisplay.ChanScale[0] := MaxVm / MaxADCValue ;
     scDisplay.yMin[0] := MinADCValue ;
     scDisplay.yMax[0] := (2*MaxADCValue) div 3 ;
     scDisplay.ChanVisible[0] := True ;
     ckVm.Tag := 0 ;
     ckVm.Checked := True ;

     { Rate of change channel }
     scDisplay.ChanOffsets[1] := 1 ;
     scDisplay.ChanUnits[1] := 'mV/ms' ;
     scDisplay.ChanName[1] := 'dV/dt' ;
     scDisplay.ChanScale[1] := (MaxVm*2.0) / MaxADCValue ;
     scDisplay.yMin[1] := MinADCValue div 2 ;
     scDisplay.yMax[1] := MaxADCValue ;
     scDisplay.ChanVisible[1] := True ;
     ckdVdt.Tag := 1 ;
     ckdVdt.Checked := TRue ;

     { Membrane current channel }
     scDisplay.ChanOffsets[2] := 2 ;
     scDisplay.ChanUnits[2] := 'pA' ;
     scDisplay.ChanName[2] := 'Im' ;
     scDisplay.ChanScale[2] := (MaxIm*5.0) / MaxADCValue ;
     scDisplay.yMin[2] := MinADCValue ;
     scDisplay.yMax[2] := MaxADCValue ;
     scDisplay.ChanVisible[2] := False ;
     ckIm.Tag := 2 ;
     ckIm.Checked := False ;

     { Na current channel }
     scDisplay.ChanOffsets[3] := 3 ;
     scDisplay.ChanUnits[3] := 'pA' ;
     scDisplay.ChanName[3] := 'I.Na' ;
     scDisplay.ChanScale[3] := (MaxIm*5.0) / MaxADCValue ;
     scDisplay.yMin[3] := MinADCValue ;
     scDisplay.yMax[3] := MaxADCValue ;
     scDisplay.ChanVisible[3] := False ;
     ckINa.Tag := 3 ;
     ckIm.Checked := False ;

     { Ca current channel }
     scDisplay.ChanOffsets[4] := 4 ;
     scDisplay.ChanUnits[4] := 'pA' ;
     scDisplay.ChanName[4] := 'I.CaL' ;
     scDisplay.ChanScale[4] := (MaxIm) / MaxADCValue ;
     scDisplay.yMin[4] := MinADCValue ;
     scDisplay.yMax[4] := MaxADCValue ;
     scDisplay.ChanVisible[4] := False ;
     ckICaL.Tag := 4 ;
     ckICaL.Checked := False ;

     { K current channel }
     scDisplay.ChanOffsets[5] := 5 ;
     scDisplay.ChanUnits[5] := 'pA' ;
     scDisplay.ChanName[5] := 'I.K' ;
     scDisplay.ChanScale[5] := (MaxIm*0.1) / MaxADCValue ;
     scDisplay.yMin[5] := MinADCValue ;
     scDisplay.yMax[5] := MaxADCValue ;
     scDisplay.ChanVisible[5] := False ;
     ckIK.Tag := 5 ;
     ckIK.Checked := False ;

     scDisplay.TUnits := 's' ;
     edStartAt.Units := scDisplay.TUnits ;
     edDisplayWindow.Units := scDisplay.TUnits ;

     scDisplay.xMin := 0 ;
     scDisplay.xMax := scDisplay.MaxPoints-1 ;
     scDisplay.xOffset := 0 ;

     { Create a set of zero level cursors }
     scDisplay.ClearHorizontalCursors ;
     for ch  := 0 to scDisplay.NumChannels-1 do begin
        scDisplay.AddHorizontalCursor( ch, clRed, True, '' ) ;
        scDisplay.HorizontalCursors[ch] := 0 ;
        end;

     // Vertical readout cursor
     scDisplay.ClearVerticalCursors ;
     scDisplay.AddVerticalCursor(-1,clGreen, 't0') ;
     scDisplay.AddVerticalCursor(-1,clGreen, '?t0?y') ;
     scDisplay.VerticalCursors[0] := scDisplay.MaxPoints div 20 ;
     scDisplay.VerticalCursors[1] := scDisplay.MaxPoints div 2 ;

     cbCellType.Clear ;
     cbCellType.Items.Add('Ventricular myocyte');
     cbCellType.Items.Add('Atrial myocyte');
     cbCellType.Items.Add('Sino-atrial node myocyte');
     cbCellType.Items.Add('Atrio-ventricular node myocyte');
     cbCellType.Items.Add('Squid Axon (nerve)');
     cbCellType.ItemIndex := 0 ;
     CellType := cbCellType.ItemIndex ;

     // Start new experiment
     NewExperiment ;

     // Load experiment if file name in parameter string
     FileName := ParamStr(1) ;
     if LowerCase(ExtractFileExt(FileName)) = '.nvs' then begin
        if FileExists(FileName) then LoadFromFile( FileName ) ;
        end ;


     Timer.Enabled := True ;

     end;


procedure TMainFrm.NewExperiment ;
// ------------------------------------
// Start new experiment with new tissue
// ------------------------------------
var
    i : Integer ;
begin

    CellType := cbCellType.ItemIndex ;
    case CellType of
        AtrialMyocyte,VentricularMyocyte,SANodeMyocyte : begin
          edStimulusCurrent.HiLimit := 5E-9 ;
          edStimulusCurrent.LoLimit := -5E-9 ;
          end ;
        end;

     // Create list of drugs
     // --------------------

     // Initialise all EC50's to inneffective
     for I := 0 to High(Drugs) do begin
         Drugs[i].EC50_GNa := 1E3 ;
         Drugs[i].EC50_GK := 1E3 ;
         Drugs[i].EC50_GCaL := 1E3 ;
         Drugs[i].EC50_BetaADR := 1E3 ;
         end;

     NumDrugs := 0 ;

     Drugs[NumDrugs].Name := 'Tetrodotoxin' ;
     Drugs[NumDrugs].ShortName := 'TTX' ;
     Drugs[NumDrugs].FinalBathConcentration := 0.0 ;
     Drugs[NumDrugs].BathConcentration := 0.0 ;
     Drugs[NumDrugs].EC50_GNa := 1E-7 ;
     Drugs[NumDrugs].Antagonist := True ;
     Inc(NumDrugs) ;

     Drugs[NumDrugs].Name := '4-aminopyridine' ;
     Drugs[NumDrugs].ShortName := '4AP' ;
     Drugs[NumDrugs].FinalBathConcentration := 0.0 ;
     Drugs[NumDrugs].BathConcentration := 0.0 ;
     Drugs[NumDrugs].EC50_GK := 1E-6 ;
     Drugs[NumDrugs].Antagonist := True ;
     Inc(NumDrugs) ;

     Drugs[NumDrugs].Name := 'Flecainide' ;
     Drugs[NumDrugs].ShortName := 'FLE' ;
     Drugs[NumDrugs].FinalBathConcentration := 0.0 ;
     Drugs[NumDrugs].BathConcentration := 0.0 ;
     Drugs[NumDrugs].EC50_GNa := 1E-5 ;
     Drugs[NumDrugs].Antagonist := True ;
     Inc(NumDrugs) ;

{     Drugs[NumDrugs].Name := 'Dofetilide' ;
     Drugs[NumDrugs].ShortName := 'DOF' ;
     Drugs[NumDrugs].FinalBathConcentration := 0.0 ;
     Drugs[NumDrugs].BathConcentration := 0.0 ;
     Drugs[NumDrugs].EC50_GK := 1E-8 ;
     Drugs[NumDrugs].Antagonist := True ;
     Inc(NumDrugs) ;}

     Drugs[NumDrugs].Name := 'Verapamil' ;
     Drugs[NumDrugs].ShortName := 'VER' ;
     Drugs[NumDrugs].FinalBathConcentration := 0.0 ;
     Drugs[NumDrugs].BathConcentration := 0.0 ;
     Drugs[NumDrugs].EC50_GCaL := 1E-6 ;
     Drugs[NumDrugs].Antagonist := True ;
     Inc(NumDrugs) ;

     Drugs[NumDrugs].Name := 'Noradrenaline' ;
     Drugs[NumDrugs].ShortName := 'NOR' ;
     Drugs[NumDrugs].FinalBathConcentration := 0.0 ;
     Drugs[NumDrugs].BathConcentration := 0.0 ;
     Drugs[NumDrugs].EC50_BetaADR := 2E-7 ;          // From Christ etal Circ Res 2004
     Drugs[NumDrugs].Antagonist := False ;
     Inc(NumDrugs) ;

     Drugs[NumDrugs].Name := 'Metoprolol' ;
     Drugs[NumDrugs].ShortName := 'MET' ;
     Drugs[NumDrugs].FinalBathConcentration := 0.0 ;
     Drugs[NumDrugs].BathConcentration := 0.0 ;
     Drugs[NumDrugs].EC50_BetaADR := 1E-7 ;        // Flesch et al Differential effects of carvedilol and metoprolol on
     Drugs[NumDrugs].Antagonist := True ;          //isoprenaline-induced changes in beta-adrenoceptor density and systolic function in rat cardiac myocytes
     Inc(NumDrugs) ;

     Drugs[NumDrugs].Name := 'Sotalol' ;
     Drugs[NumDrugs].ShortName := 'SOT' ;
     Drugs[NumDrugs].FinalBathConcentration := 0.0 ;
     Drugs[NumDrugs].BathConcentration := 0.0 ;
     Drugs[NumDrugs].EC50_BetaADR := 1E-7 ;      // To ensure beta block at concs used
     Drugs[NumDrugs].EC50_GK := 1E-6 ;
     Drugs[NumDrugs].Antagonist := True ;
     Inc(NumDrugs) ;

     Drugs[NumDrugs].Name := 'Amiodarone' ;
     Drugs[NumDrugs].ShortName := 'AMI' ;
     Drugs[NumDrugs].FinalBathConcentration := 0.0 ;
     Drugs[NumDrugs].BathConcentration := 0.0 ;
     Drugs[NumDrugs].EC50_GK := 5E-6 ;              // Kodama etal 1997 Cellular electropharmacology of amiodarone
     Drugs[NumDrugs].EC50_GNa := 5E-6 ;
     Drugs[NumDrugs].Antagonist := True ;
     Inc(NumDrugs) ;

     // Create list of agonists
     cbDrug.Clear ;
     for i := 0 to NumDrugs-1 do
         cbDrug.Items.AddObject( Drugs[i].Name, TObject(i)) ;
     cbDrug.ItemIndex := 0 ;

     Cell.dt := 2E-5 ;

     { Define constant simulation parameters }
     Cell.Temperature := 20.0 ;
     Cell.rtf := 0.02354*(Cell.Temperature + 273.0)/273.0 ;
     Cell.Length := 50.0*1E-4 ;  { cm }
     Cell.Radius := 20.0*1E-4 ; { cm }
     Cell.Area := 2.*PI*Cell.Radius*Cell.Length ;
     Cell.Cm := 1E-6 ; {* Specific membrane capacity F/cm2 }
     Cell.C := Cell.Cm*Cell.Area ;

     { Define initial drug/ion concentrations }
     Cell.Na.Cin := 12. ;                  { Internal [Na] mM }
     Cell.Na.Cout := 145. ;
     Cell.Na.FinalCout := Cell.Na.Cout ;

     Cell.K.Cin := 140. ;         { Internal [K] mM }
     Cell.K.Cout := 5. ;
     Cell.K.FinalCout := Cell.K.Cout ;

     Cell.Cl.Cout := 110.0 ;
     Cell.Cl.Cin := 4.0 ;
     Cell.K.VRev := Cell.rtf * ln( Cell.K.Cout / Cell.K.Cin ) ;
     Cell.Vm := Cell.K.VRev ;              { Set resting potential to K reversal pot. }

     Cell.Ca.Cout := 2.0 ;
     Cell.Ca.FinalCout := Cell.Ca.Cout ;

     Cell.Mg.Cout := 1. ;
     Cell.Stim.Amplitude := -2E-9 ;
     Cell.Stim.Duration := 1E-3 ;

     Cell.NumStepsPerDisplayPoint := 10 ;
     Cell.Step := 0 ;

     { Clear buffer  }
     for i := 0 to MaxPoints*MaxChannels-1 do ADC[i] := 0 ;
     StartPoint :=  0 ;
     scDisplay.SetDataBuf( @ADC[StartPoint] ) ;
     scDisplay.TScale := Cell.dt*Cell.NumStepsPerDisplayPoint ;
     edStartAt.Scale := scDisplay.TScale ;
     scDisplay.MaxPoints := Round(edDisplayWindow.Value/(Cell.dt*Cell.NumStepsPerDisplayPoint));
     scDisplay.xMin := 0 ;
     scDisplay.xMax := scDisplay.MaxPoints-1 ;
     scDisplay.xOffset := 0 ;
     scDisplay.ClearLines ;
     scDisplay.ClearMarkers ;

     NumPointsDisplayed := 0 ;
     NumPointsInBuf := 0 ;

     // Clear chart annotation
     MarkerList.Clear ;

     bRecord.Enabled := True ;
     bStop.Enabled := False ;

     sbDisplay.Enabled := False ;
     sbDisplay.Position := 0 ;

     // Initialise model
     case CellType of
          AtrialMyocyte : begin
            nygren_atrial_model_1998.Init ;
            Cell.Na.Cin := nygren_atrial_model_1998.Y[22] ;{ Internal [Na] mM }
            Cell.Na.Cout := nygren_atrial_model_1998.Y[12] ;
            Cell.K.Cin := nygren_atrial_model_1998.Y[21] ;         { Internal [K] mM }
            Cell.K.Cout := nygren_atrial_model_1998.Y[11] ;
            end;
          VentricularMyocyte : begin
            davies_isap_2012.Init ;
            Cell.Na.Cin := davies_isap_2012.Y[27] ;{ Internal [Na] mM }
            Cell.Na.Cout := davies_isap_2012.Na_o ;
            Cell.K.Cin := davies_isap_2012.Y[26] ;         { Internal [K] mM }
            Cell.K.Cout := davies_isap_2012.K_o ;
            Cell.Ca.Cin := davies_isap_2012.Y[0] ;         { Internal [K] mM }
            Cell.Ca.Cout := davies_isap_2012.Ca_o ;
            end;

          SANodeMyocyte : begin
            dokos_model_1996.Init ;
            Cell.Na.Cin := dokos_model_1996.Y[15] ;{ Internal [Na] mM }
            Cell.Na.Cout := dokos_model_1996.y[16] ;
            Cell.K.Cin := dokos_model_1996.Y[13] ;         { Internal [K] mM }
            Cell.K.Cout := dokos_model_1996.Y[14] ;
            end;

          AVNodeMyocyte : begin
            inada_N_model_2009.Init ;
            Cell.Na.Cin :=inada_N_model_2009.Nai ;{ Internal [Na] mM }
            Cell.Na.Cout :=inada_N_model_2009.Nao ;
            Cell.K.Cin := inada_N_model_2009.Ki ;         { Internal [K] mM }
            Cell.K.Cout := inada_N_model_2009.Kc ;
            end;


          SquidAxon : begin
            hodgkin_huxley_squid_axon_model_1952.Init ;
//            Cell.Na.Cin := hodgkin_huxley_squid_axon_model_1952.Y[15] ;{ Internal [Na] mM }
//            Cell.Na.Cout := hodgkin_huxley_squid_axon_model_1952.y[16] ;
//            Cell.K.Cin := hodgkin_huxley_squid_axon_model_1952.Y[13] ;         { Internal [K] mM }
//            Cell.K.Cout := hodgkin_huxley_squid_axon_model_1952.Y[14] ;
            end;

         end;
     Cell.Na.FinalCout := Cell.Na.Cout ;
     Cell.Na.Standard := Cell.Na.Cout ;
     edNaConc.Value := Cell.Na.Cout ;

     Cell.K.FinalCout := Cell.K.Cout ;
     Cell.K.Standard := Cell.K.Cout ;
     edKConc.Value := Cell.K.Cout ;

     Cell.Ca.FinalCout := Cell.Ca.Cout ;
     Cell.Ca.Standard := Cell.Ca.Cout ;
     edCaConc.Value := Cell.Ca.Cout ;

     Cell.Cl.Cout := 110.0 ;
     Cell.Cl.Cin := 4.0 ;

     bStop.Click ;

     UnSavedData := False ;

     UpdateDisplayWindow ;

     end ;


procedure TMainFrm.TimerTimer(Sender: TObject);
// ---------------------
// Timed event scheduler
// ---------------------
var
    NewPoint,V,dVdt : Single ;
    i,nStates : Integer ;
    States : Array[0..20] of Single ;
begin

     if not bRecord.Enabled then begin
        for i := 0 to 150 do begin
          UpdateIonConcentrations ;
          UpdateDrugConcentrations ;
          DoAtrialMyocyteStep(States,nStates) ;
          UpdateDisplay(States,nStates) ;
          end;

        end
     else begin
        // Display
        if scDisplay.XOffset <> sbDisplay.Position then begin
           scDisplay.XOffset := sbDisplay.Position ;
           edStartAt.Scale := scDisplay.TScale ;
           edStartAt.Value := scDisplay.XOffset ;
           scDisplay.SetDataBuf( @ADC[sbDisplay.Position*scDisplay.NumChannels] ) ;
           scDisplay.NumPoints := Min( scDisplay.MaxPoints,
                                       NumPointsInBuf - sbDisplay.Position) ;
           // Add annotations to chart
           AddChartAnnotations ;
           scDisplay.Invalidate ;
           end ;
        end ;

     end;


procedure TMainFrm.AddChartAnnotations ;
// -------------------------------------
// Add drug annotations to chart display
// -------------------------------------
var
    i : Integer ;
    MarkerPosition : Integer ;
begin

     scDisplay.ClearMarkers ;
     for i := 0 to MarkerList.Count-1 do begin
         MarkerPosition := Integer(MarkerList.Objects[i]) - scDisplay.XOffset ;
         if (MarkerPosition > 0) and (MarkerPosition < scDisplay.MaxPoints) then begin
            scDisplay.AddMarker( MarkerPosition, MarkerList.Strings[i] ) ;
            end ;
         end ;
     end ;


function TMainFrm.DoNerveSimulationStep : Single ;
{ --------------------------------------
  Run nerve action potential simulation
  --------------------------------------}
type
    TRate = record
          m : single ;
          n : single ;
          h : single ;
          end ;
var
   Alpha,Beta : TRate ;
   dm,dn,dh,dv,mInf,hInf : single ;
   nSteps : Integer ;
   Block : Single ;
   i : Integer ;
   dConc : Single ;
   Sum : Single ;
begin

    { Initialisations at start of simulated sweep }
    if Cell.Step = 0 then begin

       Cell.t := 0. ;
       { Simulation time step }
       //Cell.dt := 2E-5 ;
       Cell.Noise := 5E-10 ;

       { Na channels }
       Cell.Na.GMax := 0.12*Cell.Area ; { Max. Na conductance }
       Cell.Na.VRev := Cell.rtf * ln( Cell.Na.Cout / Cell.Na.Cin ) ;

       { K channels }
       Cell.K.VRev := Cell.rtf * ln( Cell.K.Cout / Cell.K.Cin ) ;
       Cell.K.GMax := 0.036*Cell.Area ; { Max. K conductance }

       { Cl channels }
       Cell.Cl.GMax := 0.005*Cell.Area ;    { Chloride conductance }
       { Note. Internal Cl concentration passively determined by
         potassium reversal membrane potential. }
       Cell.Cl.Cin := Cell.Cl.Cout / exp(-Cell.K.Vrev/Cell.rtf) ;
       Cell.Cl.VRev := -Cell.rtf * ln( Cell.Cl.Cout / Cell.Cl.Cin ) ;

       { Nerve Stimulation }

       { Direct current stimulation }
       Cell.Stim.Start := cell.dt*5 ;
       Cell.Stim.Amplitude := 0.0 ;
       Cell.Stim.Duration := 1E-4 ;

       end ;

    dConc := (Cell.Na.FinalCout - Cell.Na.Cout)*MixingRate*Cell.dt ;
    Cell.Na.Cout := Cell.Na.Cout + dConc ;
    Cell.Na.VRev := Cell.rtf * ln( Cell.Na.Cout / Cell.Na.Cin ) ;

    dConc := (Cell.K.FinalCout - Cell.K.Cout)*MixingRate*Cell.dt ;
    Cell.K.Cout := Cell.K.Cout + dConc ;
    Cell.K.VRev := Cell.rtf * ln( Cell.K.Cout / Cell.K.Cin ) ;

    dConc := (Cell.Ca.FinalCout - Cell.Ca.Cout)*MixingRate*Cell.dt ;
    Cell.Ca.Cout := Cell.Ca.Cout + dConc ;
    Cell.Ca.VRev := Cell.rtf * ln( Cell.Ca.Cout / Cell.Ca.Cin ) ;

    Cell.Cl.Cin := Cell.Cl.Cout / exp(-Cell.K.Vrev/Cell.rtf) + 1.0 ;
    Cell.Cl.VRev := -Cell.rtf * ln( Cell.Cl.Cout / Cell.Cl.Cin ) ;

    // Update drug bath concentrations
    for i := 0 to NumDrugs-1 do begin
         dConc := (Drugs[i].FinalBathConcentration - Drugs[i].BathConcentration)
                  *MixingRate*Cell.dt ;
         Drugs[i].BathConcentration := Drugs[i].BathConcentration + dConc ;
         end ;

    nSteps := Cell.NumStepsPerDisplayPoint ;
    while nSteps > 0 do begin

           { Na current }

           { Activation parameter (m) }
            if( abs( -Cell.Vm - 0.050 ) > 1E-4 ) then begin
                Alpha.m := 1E5*( -Cell.Vm-0.050)/( exp((-Cell.Vm-0.050)/0.01) -1.0) ;
                end
            else begin
                Alpha.m := 5.0*( 1.0/( exp((1E-4)/0.01) -1.0)
                                 + 1.0/( exp((-1E-4)/0.01) -1.0) ) ;
                end ;

            Beta.m := 4E3*exp( -(Cell.Vm + 0.06)/0.018 ) ;
            if Cell.Step = 0 then Cell.Na.m := Alpha.m / ( Alpha.m + Beta.m ) ;
            dm := ( Alpha.m*(1.0 - Cell.Na.m) - Beta.m*Cell.Na.m )*Cell.dt ;
            Cell.Na.m := Cell.Na.m + dm ;

            { Inactivation parameter (h) }
            Alpha.h := 70.0*exp( -(Cell.Vm + 0.06)/0.02) ;
            Beta.h := 1E3/( exp((-Cell.Vm - 0.03)/0.01) + 1.0) ;
            if Cell.Step = 0 then Cell.Na.h := Alpha.h / ( Alpha.h + Beta.h ) ;

            dh := ( Alpha.h*(1.0 - Cell.Na.h) - Beta.h*Cell.Na.h )*Cell.dt ;
            Cell.Na.h := Cell.Na.h + dh ;

            { TTX dissociation constant 5nM (from Hille, Ionic Channels ..) }

            // Fractional Na channel block
            Sum := 0.0 ;
            for i := 0 to NumDrugs-1 do begin
                Sum := Sum + (Drugs[i].BathConcentration/Drugs[i].EC50_GNa) ;
                end ;

//            outputdebugString(PChar(format('%.4g',[sum]))) ;
            Block := 1.0 / (1.0 + Sum ) ;
            Cell.Na.G := Cell.Na.m*Cell.Na.m*Cell.Na.m*Cell.Na.h*Cell.Na.GMax*Block ;
            Cell.Na.I := Cell.Na.g*( Cell.Vm - Cell.Na.VRev ) ;

            { Potassium current }

            { Activation parameter (n) }
            if abs(-Cell.Vm - 0.05) > 1E-4  then begin
                Alpha.n := 1E4*(-Cell.Vm - 0.05)/( exp((-Cell.Vm - 0.05)/0.01) -1.0) ;
                end
            else begin
                Alpha.n := 0.5*( 1.0/( exp(1E-2) -1.0) -1.0/( exp(-1E-2) -1.0) );
                end ;
            Beta.n := 125.0*exp( (-Cell.Vm - 0.06)/0.08 ) ;
            if Cell.Step = 0 then Cell.K.n := Alpha.n / ( Alpha.n + Beta.n ) ;

            dn := ( Alpha.n*(1.0 - Cell.K.n) - Beta.n*Cell.K.n )*Cell.dt ;
            Cell.K.n := Cell.K.n + dn ;

            // Fractional K channel block
            Sum := 0.0 ;
            for i := 0 to NumDrugs-1 do begin
                Sum := Sum + (Drugs[i].BathConcentration/Drugs[i].EC50_GK) ;
                end ;
            Block := 1.0 / (1.0 + Sum ) ;

            Cell.K.G := Cell.K.n*Cell.K.n*Cell.K.n*Cell.K.n*Cell.K.gMax*Block ;
            Cell.K.I := Cell.K.g * (Cell.Vm - Cell.K.VRev ) ;

            { Leak current (chloride) }

            Cell.Cl.I := Cell.Cl.GMAX * (Cell.Vm - Cell.Cl.VRev ) ;

            { Direct muscle stimulation }
            if not bStimulusOn.Enabled then begin
               if Cell.t >= Cell.Stim.Start then begin
                  Cell.Stim.I := Cell.Stim.Amplitude ;
                  end ;
               if Cell.t >= (Cell.Stim.Start + Cell.Stim.Duration) then begin
                  Cell.Stim.I := 0. ;
                  if rbSingleStimulus.Checked then begin
                     // Single stim.
                     bStimulusOn.Enabled := True ;
                     bStimulusOff.Enabled := False ;
                     end
                  else begin
                     // Paired and repeated stim.
                     Inc(Cell.Stim.NumStimDone) ;
                     if rbPairedStimulus.Checked and (Cell.Stim.NumStimDone >= 2) then begin
                        bStimulusOn.Enabled := True ;
                        bStimulusOff.Enabled := False ;
                        end
                     else begin
                        Cell.Stim.Start := Cell.Stim.Start + edStimulusInterval.Value ;
                        Cell.Stim.I := Cell.Stim.Amplitude ;
                        end;
                     end ;
                  end ;
               end
            else begin
               Cell.Stim.I := 0. ;
               end ;

            { Compute membrane current }
            Cell.Im := Cell.Na.I + Cell.K.I + Cell.Cl.I - Cell.Stim.I
                       + (random - 0.5)*Cell.Noise ;

            { Compute change in membrane potential }

            dv := ( -Cell.Im ) * Cell.dt/Cell.C ;
            Cell.Vm := Cell.Vm + dv ;

            Inc(Cell.Step) ;
            Cell.t := Cell.t + Cell.dt ;
            Dec(nSteps) ;

            end ;

     Result := Cell.Vm ;

     end ;

procedure TMainFrm.UpdateIonConcentrations ;
// ---------------------------------
// Update ion concentrations in bath
// ---------------------------------
var
       dConc : Single ;
begin

    dConc := (Cell.Na.FinalCout - Cell.Na.Cout)*MixingRate*Cell.dt ;
    Cell.Na.Cout := Cell.Na.Cout + dConc ;
    Cell.Na.VRev := Cell.rtf * ln( Cell.Na.Cout / Cell.Na.Cin ) ;

    dConc := (Cell.K.FinalCout - Cell.K.Cout)*MixingRate*Cell.dt ;
    Cell.K.Cout := Cell.K.Cout + dConc ;
    Cell.K.VRev := Cell.rtf * ln( Cell.K.Cout / Cell.K.Cin ) ;

    dConc := (Cell.Ca.FinalCout - Cell.Ca.Cout)*MixingRate*Cell.dt ;
    Cell.Ca.Cout := Cell.Ca.Cout + dConc ;
    Cell.Ca.VRev := Cell.rtf * ln( Cell.Ca.Cout / Cell.Ca.Cin ) ;

    Cell.Cl.Cin := Cell.Cl.Cout / exp(-Cell.K.Vrev/Cell.rtf) + 1.0 ;
    Cell.Cl.VRev := -Cell.rtf * ln( Cell.Cl.Cout / Cell.Cl.Cin ) ;

    end ;

procedure TMainFrm.UpdateDrugConcentrations ;
// ---------------------------------
// Update drug concentrations in bath
// ---------------------------------
var
       Sum,dConc,Occupancy,Efficacy : Single ;
       i : Integer ;
begin

    // Update drug bath concentrations
    for i := 0 to NumDrugs-1 do begin
         dConc := (Drugs[i].FinalBathConcentration - Drugs[i].BathConcentration)
                  *MixingRate*Cell.dt ;
         Drugs[i].BathConcentration := Drugs[i].BathConcentration + dConc ;
         end ;

    // Fraction of Na channels unblocked
    Sum := 0.0 ;
    for i := 0 to NumDrugs-1 do begin
        Sum := Sum + (Drugs[i].BathConcentration/Drugs[i].EC50_GNa) ;
        end ;
    GNa_Available := 1.0 / (1.0 + Sum ) ;

    // Fraction of K channels unblocked
    Sum := 0.0 ;
    for i := 0 to NumDrugs-1 do begin
        Sum := Sum + (Drugs[i].BathConcentration/Drugs[i].EC50_GK) ;
        end ;
    GK_Available := 1.0 / (1.0 + Sum ) ;

    // Fraction of CaL channels unblocked
    Sum := 0.0 ;
    for i := 0 to NumDrugs-1 do begin
        Sum := Sum + (Drugs[i].BathConcentration/Drugs[i].EC50_GCaL) ;
        end ;
    GCaL_Available := 1.0 / (1.0 + Sum ) ;

    // Beta-adrenoceptor activation
    Sum := 0.0 ;
    for i := 0 to NumDrugs-1 do begin
        Sum := Sum + Drugs[i].BathConcentration/Drugs[i].EC50_BetaADR ;
        end ;
    Occupancy := Sum / ( 1. + Sum ) ;

    Efficacy := 0.0 ;
    for i := 0 to NumDrugs-1 do if not Drugs[i].Antagonist then begin
        Efficacy := Efficacy + Drugs[i].BathConcentration/Drugs[i].EC50_BetaADR ;
        end ;
    Efficacy := Efficacy / ( Sum + 0.001 ) ;
    BetaADR_Active :=  Efficacy*Occupancy ;


    end ;

procedure TMainFrm.DoAtrialMyocyteStep(
              var States : Array of Single ;
              nStates : Integer ) ;
var
     i,nSteps : Integer ;
     VPrevious,IScale : single ;
     MicroA_per_microF_To_pA,A_to_microA_per_microF,CellCapacity_microF : double ;
begin

//    nSteps := Cell.NumStepsPerDisplayPoint ;
//    while nSteps > 0 do begin

       if Cell.Step = 0 then begin
          Cell.Stim.Start := 0.0 ;
          Cell.Stim.Amplitude := 0.0 ;
          Cell.Stim.Duration := 1E-4 ;
          VPrevious := States[0] ;
          end ;

       { Direct muscle stimulation }
       if not bStimulusOn.Enabled then begin
          if Cell.t >= Cell.Stim.Start then begin
             Cell.Stim.I := Cell.Stim.Amplitude ;
             end ;
          if Cell.t >= (Cell.Stim.Start + Cell.Stim.Duration) then begin
             Cell.Stim.I := 0. ;
             if rbSingleStimulus.Checked then begin
                // Single stim.
                bStimulusOn.Enabled := True ;
                bStimulusOff.Enabled := False ;
                end
             else begin
                // Paired and repeated stim.
                Inc(Cell.Stim.NumStimDone) ;
                if rbPairedStimulus.Checked and (Cell.Stim.NumStimDone >= 2) then begin
                   bStimulusOn.Enabled := True ;
                   bStimulusOff.Enabled := False ;
                   end
                else begin
                   Cell.Stim.Start := Cell.Stim.Start + edStimulusInterval.Value ;
                   end;
                end ;
             end
          end
       else begin
          Cell.Stim.I := 0. ;
          end ;

       case CellType of

          AtrialMyocyte : begin
             nygren_atrial_model_1998.i_Stim := -Cell.Stim.I*1E12 ;
             nygren_atrial_model_1998.Y[12] := Cell.Na.Cout ;
             nygren_atrial_model_1998.Y[11] := Cell.K.Cout ;
             nygren_atrial_model_1998.GNa_available := GNa_Available ;
             nygren_atrial_model_1998.GK_available := GK_Available ;
             nygren_atrial_model_1998.GCaL_available := GCaL_Available ;
             nygren_atrial_model_1998.BetaADR_Active := BetaADR_Active ;
             for i := 1 to Cell.NumStepsPerDisplayPoint do begin
                VPrevious := nygren_atrial_model_1998.Y[23] ;
                Inc(Cell.Step) ;
                Cell.t := Cell.t + Cell.dt ;
                nygren_atrial_model_1998.Compute(0.0) ;
                nygren_atrial_model_1998.UpdateStates(Cell.dt) ;
                end;
             States[0] := nygren_atrial_model_1998.Y[23] ;
             States[1] := ((States[0]-VPrevious)*1E-3)/Cell.dt ;

             States[3] := nygren_atrial_model_1998.I_Na ;
             States[4] := nygren_atrial_model_1998.i_Ca_L ;
             States[5] := nygren_atrial_model_1998.i_Kr +
                          nygren_atrial_model_1998.i_Ks ;
//                 nygren_atrial_model_1998.i_K1 ;
             States[2] := States[3] + States[4] + States[5] ;
             end;

          VentricularMyocyte : begin
             CellCapacity_microF := 1E-4 ;
             A_to_microA_per_microF := 1E6/CellCapacity_microF ;   // Amps -> uA/uF scaling
             davies_isap_2012.i_stim := -Cell.Stim.I*A_to_microA_per_microF ;
             davies_isap_2012.Na_o := Cell.Na.Cout ;
             davies_isap_2012.K_o := Cell.K.Cout ;
             davies_isap_2012.Ca_o := Cell.Ca.Cout ;
             davies_isap_2012.GNa_available := GNa_Available ;
             davies_isap_2012.GK_available := GK_Available ;
             davies_isap_2012.GCaL_available := GCaL_Available ;
             davies_isap_2012.BetaADR_Active := BetaADR_Active ;
             for i := 1 to Cell.NumStepsPerDisplayPoint do begin
                VPrevious := davies_isap_2012.Y[28] ;
                Inc(Cell.Step) ;
                Cell.t := Cell.t + Cell.dt ;
                davies_isap_2012.Compute(0.0) ;
                davies_isap_2012.UpdateStates(Cell.dt) ;
                end;
             States[0] := davies_isap_2012.Y[28] ;
             States[1] := ((States[0]-VPrevious)*1E-3)/Cell.dt ;

             MicroA_per_microF_To_pA := 1E6*CellCapacity_microF ;
             States[3] := davies_isap_2012.INa*MicroA_per_microF_To_pA ;
             States[4] := davies_isap_2012.iCaL*MicroA_per_microF_To_pA ;
             States[5] := davies_isap_2012.iKr*MicroA_per_microF_To_pA +
                          davies_isap_2012.iKs*MicroA_per_microF_To_pA ;
//                 davies_isap_2012.i_K1 ;
             States[2] := States[3] + States[4] + States[5] ;
             end;

          SANodeMyocyte : begin
             //dokos_model_1996.i_ext := -Cell.Stim.I*1E12 ;
             dokos_model_1996.Y[16] := Cell.Na.Cout ;
             dokos_model_1996.Y[14] := Cell.K.Cout ;
             dokos_model_1996.GNa_available := GNa_Available ;
             dokos_model_1996.GK_available := GK_Available ;
             dokos_model_1996.GCaL_available := GCaL_Available ;
             dokos_model_1996.BetaADR_Active := BetaADR_Active ;
             for i := 1 to Cell.NumStepsPerDisplayPoint do begin
                VPrevious := dokos_model_1996.Y[17] ;
                Inc(Cell.Step) ;
                Cell.t := Cell.t + Cell.dt ;
                dokos_model_1996.Compute(0.0) ;
                dokos_model_1996.UpdateStates(Cell.dt) ;
                end;
             States[0] := dokos_model_1996.Y[17] ;
             States[1] := ((States[0]-VPrevious)*1E-3)/Cell.dt ;

             States[3] := dokos_model_1996.I_Na ;
             States[4] := dokos_model_1996.i_CaL ;
             States[5] := dokos_model_1996.i_K +
                          dokos_model_1996.i_KK ;
//                 dokos_model_1996.i_K1 ;
             States[2] := States[3] + States[4] + States[5] ;
             end;

          AVNodeMyocyte : begin
             //inada_N_model_2009.i_ext := -Cell.Stim.I*1E12 ;
             inada_N_model_2009.Nao := Cell.Na.Cout ;
             inada_N_model_2009.Nai := Cell.K.Cout ;
             inada_N_model_2009.GNa_available := GNa_Available ;
             inada_N_model_2009.GK_available := GK_Available ;
             inada_N_model_2009.GCaL_available := GCaL_Available ;
             inada_N_model_2009.BetaADR_Active := BetaADR_Active ;
             for i := 1 to Cell.NumStepsPerDisplayPoint do begin
                VPrevious := inada_N_model_2009.Y[20] ;
                Inc(Cell.Step) ;
                Cell.t := Cell.t + Cell.dt ;
                inada_N_model_2009.Compute(0.0) ;
                inada_N_model_2009.UpdateStates(Cell.dt) ;
                end;
             States[0] := inada_N_model_2009.Y[20] ;
             States[1] := ((States[0]-VPrevious)*1E-3)/Cell.dt ;

             States[3] := 1000*inada_N_model_2009.I_Na ;
             States[4] := 1000*inada_N_model_2009.i_CaL ;
             States[5] := 1000*inada_N_model_2009.i_Kr ;
             States[2] := States[3] + States[4] + States[5] ;
             end;

          SquidAxon : begin
             hodgkin_huxley_squid_axon_model_1952.i_stim := -Cell.Stim.I*1E12 ;
 //            hodgkin_huxley_squid_axon_model_1952.Y[16] := Cell.Na.Cout ;
 //            hodgkin_huxley_squid_axon_model_1952.Y[14] := Cell.K.Cout ;
             hodgkin_huxley_squid_axon_model_1952.GNa_available := GNa_Available ;
             hodgkin_huxley_squid_axon_model_1952.GK_available := GK_Available ;
             hodgkin_huxley_squid_axon_model_1952.GCaL_available := GCaL_Available ;
             hodgkin_huxley_squid_axon_model_1952.BetaADR_Active := BetaADR_Active ;
             for i := 1 to Cell.NumStepsPerDisplayPoint do begin
                VPrevious := hodgkin_huxley_squid_axon_model_1952.Y[0] ;
                Inc(Cell.Step) ;
                Cell.t := Cell.t + Cell.dt ;
                hodgkin_huxley_squid_axon_model_1952.Compute(0.0) ;
                hodgkin_huxley_squid_axon_model_1952.UpdateStates(Cell.dt) ;
                end;
             States[0] := hodgkin_huxley_squid_axon_model_1952.Y[0] ;
             States[1] := ((States[0]-VPrevious)*1E-3)/Cell.dt ;

             States[3] := hodgkin_huxley_squid_axon_model_1952.I_Na ;
             States[4] := 0.0 ;
             States[5] := hodgkin_huxley_squid_axon_model_1952.i_K ;
             States[2] := States[3] + States[4] + States[5] ;
             end;

          end;

    end;


procedure TMainFrm.UpdateDisplay(
              var States : Array of Single ;
              nStates : Integer ) ;
// -------------------
// Update chart display
// -------------------
var
    StartPoints,ch,i : Integer ;
begin

    if NumPointsDisplayed >= scDisplay.MaxPoints then begin
       StartPoints := scDisplay.MaxPoints div 10 ;
       scDisplay.XOffset := scDisplay.XOffset + scDisplay.MaxPoints -  StartPoints ;
       sbDisplay.Max := sbDisplay.Max + scDisplay.MaxPoints ;
       sbDisplay.LargeChange := Max(scDisplay.MaxPoints div 100,1) ;
       NumPointsDisplayed := StartPoints ;
       sbDisplay.Position := scDisplay.XOffset ;
       scDisplay.SetDataBuf( @ADC[scDisplay.XOffset*scDisplay.NumChannels] ) ;
       // Add annotations to chart
       AddChartAnnotations ;
       end ;

    i := NumPointsInBuf*scDisplay.NumChannels ;
    for ch := 0 to scDisplay.NumChannels-1 do begin
        ADC[i] := Round(States[ch]/scDisplay.ChanScale[ch]) ;
        Inc(i) ;
        end;
    Inc(NumPointsDisplayed) ;
    Inc(NumPointsInBuf) ;
    scDisplay.DisplayNewPoints( NumPointsDisplayed {- scDisplay.XOffset} ) ;
    scDisplay.Invalidate ;

    end ;


procedure TMainFrm.bRecordClick(Sender: TObject);
// ----------------
// Start simulation
// ----------------
begin
     bRecord.Enabled := False ;
     bStop.Enabled := True ;
     sbDisplay.Enabled := False ;
     bNewExperiment.Enabled := False ;
     TissueGrp.Enabled := False ;
     bStimulusOff.Enabled := False ;
     bStimulusOn.Enabled := True ;

     UnSavedData := True ;

     NumPointsDisplayed := 0 ;
     sbDisplay.Position := NumPointsInBuf + 1 ;
     scDisplay.XOffset := sbDisplay.Position ;
     scDisplay.SetDataBuf( @ADC[sbDisplay.Position*scDisplay.NumChannels] ) ;
     sbDisplay.Max := sbDisplay.Max + scDisplay.MaxPoints ;
     // Add annotations to chart
     AddChartAnnotations ;

     Cell.Stim.Start := Cell.dt*5 ;
     end;


procedure TMainFrm.bStopClick(Sender: TObject);
// ----------------
// Stop simulation
// ----------------
begin
     bRecord.Enabled := True ;
     bStop.Enabled := False ;
     sbDisplay.Enabled := True ;
     bNewExperiment.Enabled := True ;
     TissueGrp.Enabled := True ;
     bStimulusOn.Enabled := False ;
     bStimulusOff.Enabled := False ;

     end;


procedure TMainFrm.bTDisplayDoubleClick(Sender: TObject);
// ------------------------------------------------
// Increase the duration of the display window by 25%
// ------------------------------------------------
begin
     edDisplayWindow.Value := edDisplayWindow.Value*1.25 ;
     UpdateDisplayWindow ;
     end;


procedure TMainFrm.bTDisplayHalfClick(Sender: TObject);
// ------------------------------------------------
// Reduce the duration of the display window by 25%
// ------------------------------------------------
begin
     edDisplayWindow.Value := edDisplayWindow.Value*0.75 ;
     UpdateDisplayWindow ;
     end;

procedure TMainFrm.bNewSaltSolnClick(Sender: TObject);
// -------------------------------------
// Change concentration of ions in bath
// -------------------------------------
var
     ChartAnnotation : String ;
begin

     Cell.Na.FinalCout := edNaConc.Value ;
     Cell.K.FinalCout := edKConc.Value ;
     Cell.Ca.FinalCout := edCaConc.Value ;

     // Add chart annotation
     ChartAnnotation := format('[Na]=%.3g,[K]=%.3g,,[Ca]=%.3g mM',
                        [Cell.Na.FinalCout,Cell.K.FinalCout,Cell.Ca.FinalCout]) ;
     AddDrugMarker( ChartAnnotation ) ;

     end;


procedure TMainFrm.FormResize(Sender: TObject);
// ------------------------------------------------------
// Set control size/locations when program window resized
// ------------------------------------------------------
begin

     ControlsGrp.Height := Max( ClientHeight - ControlsGrp.Top - 10,2 ) ; ;

     DisplayGrp.Height := Max( ClientHeight - DisplayGrp.Top - 10,2) ;
     DisplayGrp.Width := Max( ClientWidth - DisplayGrp.Left - 10,2) ;

     DisplayPage.Height := DisplayGrp.ClientHeight - DisplayPage.Top - 10 ;
     DisplayPage.Width := DisplayGrp.ClientWidth - DisplayPage.Left - 10 ;

     pnRecord.Top := ChartPage.ClientHeight - pnRecord.Height - 5 ;
     pnRecord.Left := sbDisplay.Left ;

     sbDisplay.Top := pnRecord.Top -  sbDisplay.Height - 2 ;
     sbDisplay.Width := Max( ChartPage.ClientWidth - sbDisplay.Left - 10,2) ;
     pnDisplayWindow.Top := pnRecord.Top ;
     pnDisplayWindow.Left := sbDisplay.Left + sbDisplay.Width - pnDisplayWindow.Width ;

     scDisplay.Height := Max( sbDisplay.Top - scDisplay.Top,2) ;
     scDisplay.Width := Max( ChartPage.ClientWidth - scDisplay.Left - 10,2) ;

     // Centre experiment setup pictures on page

     ExptSetup.Left := Max( (ExperimentPage.ClientWidth - ExptSetup.Width) div 2,4) ;
     ExptSetup.Top := Max( (ExperimentPage.ClientHeight - ExptSetup.Height) div 2,4) ;

     end;


procedure TMainFrm.AddDrugMarker(
          ChartAnnotation : String
          ) ;
// ------------------------------
// Add drug addition/wash marker
// ------------------------------
begin
     if MarkerList.Count < MaxMarkers then begin
        ChartAnnotation := AnsiReplaceStr( ChartAnnotation, '-00', '-' ) ;
        ChartAnnotation := AnsiReplaceStr( ChartAnnotation, '00E', '0E' ) ;
        MarkerList.AddObject( ChartAnnotation, TObject(NumPointsInBuf) ) ;
        scDisplay.AddMarker( NumPointsInBuf - scDisplay.XOffset, ChartAnnotation ) ;
        end ;
     end ;


procedure TMainFrm.mnCopyDataClick(Sender: TObject);
// ----------------------------------------------------
// Copy sample values of displayed signals to clipboard
// ----------------------------------------------------
begin
     scDisplay.CopyDataToClipboard ;
     end;


procedure TMainFrm.mnPrintClick(Sender: TObject);
// ---------------------------
// Print displayed chart trace
// ---------------------------
begin
    scDisplay.PrinterLeftMargin := 25 ;
    scDisplay.PrinterRightMargin := 25 ;
    scDisplay.PrinterTopMargin := 25 ;
    scDisplay.PrinterBottomMargin := 25 ;
    scDisplay.TCalBar := 1.0 / scDisplay.TScale ;
    scDisplay.ChanCalBar[0] := 10.0 ;
    scDisplay.Print ;
    end;


procedure TMainFrm.mnPrinterSetupClick(Sender: TObject);
// -------------
// Setup printer
// -------------
begin
     PrinterSetupDialog.Execute ;
     end;

procedure TMainFrm.SaveToFile(
          FileName : String
          ) ;
// ----------------------------
// Save chart recording to file
// ----------------------------
var
   Header : array[1..FileHeaderSize] of ansichar ;
   i : Integer ;
   FileHandle : Integer ;
begin

     FileHandle := FileCreate( FileName ) ;
     if FileHandle < 0 then Exit ;

     { Initialise empty header buffer with zero bytes }
     for i := 1 to sizeof(Header) do Header[i] := chr(0) ;

     AppendInt( Header, 'NPOINTS=', NumPointsInBuf ) ;

     AppendInt( Header, 'NMARKERS=', MarkerList.Count ) ;
     for i := 0 to MarkerList.Count-1 do begin
         AppendInt( Header, format('MKPOINT%d=',[i]), Integer(MarkerList.Objects[i])) ;
         AppendString( Header, format('MKTEXT%d=',[i]), MarkerList.Strings[i] ) ;
         end ;

     // Write header
     FileWrite( FileHandle, Header, SizeOf(Header)) ;
     // Write chart data
     FileWrite( FileHandle, ADC, NumPointsInBuf*scDisplay.NumChannels*2 ) ;
     // Close file
     FileClose( FileHandle ) ;

     UnSavedData := False ;
     end ;



procedure TMainFrm.scDisplayCursorChange(Sender: TObject);
var
    ch : Integer ;
begin
    if not scDisplay.ChanVisible[0] then scDisplay.ChanVisible[0] := true ;
    ckVm.Checked := scDisplay.ChanVisible[0] ;
    ckdVdt.Checked := scDisplay.ChanVisible[1] ;
    ckIm.Checked := scDisplay.ChanVisible[2] ;
    ckINa.Checked := scDisplay.ChanVisible[3] ;
    ckICaL.Checked := scDisplay.ChanVisible[4] ;
    ckIK.Checked := scDisplay.ChanVisible[5] ;

    for ch := 0 to scDisplay.NumChannels-1 do if scDisplay.HorizontalCursors[ch] <> 0 then
         scDisplay.HorizontalCursors[ch] := 0 ;

    end;

procedure TMainFrm.LoadFromFile(
          FileName : String
          ) ;
// ------------------------------
// Load chart recording from file
// ------------------------------
var
   Header : array[1..FileHeaderSize] of ansichar ;
   i : Integer ;
   FileHandle : Integer ;
   NumMarkers : Integer ;
   MarkerPoint : Integer ;
   MarkerText : String ;
begin

     NumPointsInBuf := 0 ;

     FileHandle := FileOpen( FileName, fmOpenRead ) ;
     if FileHandle < 0 then Exit ;

     FileSeek( FileHandle, 0, 0 ) ;

     // Read header
     if FileRead(FileHandle, Header, Sizeof(Header)) = Sizeof(Header) then begin

        NewExperiment ;

        ReadInt( Header, 'NPOINTS=', NumPointsInBuf ) ;

        ReadInt( Header, 'NMARKERS=', NumMarkers ) ;
        MarkerList.Clear ;
        for i := 0 to NumMarkers-1 do begin
            ReadInt( Header, format('MKPOINT%d=',[i]), MarkerPoint) ;
            ReadString( Header, format('MKTEXT%d=',[i]), MarkerText ) ;
            MarkerList.AddObject( MarkerText, TObject(MarkerPoint)) ;
            end ;
        end ;

     if NumPointsInBuf > 0 then begin
        FileRead( FileHandle, ADC, NumPointsInBuf*scDisplay.NumChannels*2 ) ;
        end ;

     // Close data file
     FileClose( FileHandle ) ;

     UnsavedData := False ;
     scDisplay.XOffset := -1 ;
     sbDisplay.Position := 0 ;
     sbDisplay.Max := Max(NumPointsInBuf,1) ;
     scDisplay.Invalidate ;

     end ;



procedure TMainFrm.mnCopyImageClick(Sender: TObject);
var
  i: Integer;
// -----------------------------------------
// Copy image of displayed trace to clipboad
// -----------------------------------------
begin
     scDisplay.TCalBar := 0.01/scDisplay.TScale ;
     while scDisplay.TCalBar < (scDisplay.MaxPoints*0.1) do begin
         scDisplay.TCalBar := scDisplay.TCalBar*10.0 ;
         end;
     scDisplay.ChanCalBar[0] := 10.0 ;
     scDisplay.ChanCalBar[1] := 10.0 ;
     scDisplay.ChanCalBar[2] := 500.0 ;
     scDisplay.ChanCalBar[3] := 10.0 ;
     scDisplay.ChanCalBar[4] := 10.0 ;
     scDisplay.ChanCalBar[5] := 10.0 ;
     scDisplay.PrinterFontName := 'Arial' ;
     scDisplay.PrinterFontSize := 10 ;
     scDisplay.MetafileWidth := 1000 ;
     scDisplay.MetafileHeight := 600 ;
     scDisplay.CopyImageToClipBoard ;
     end;

procedure TMainFrm.mnLoadExperimentClick(Sender: TObject);
// -------------------------
// Load experiment from file
// -------------------------
begin


    if UnSavedData then begin
        if MessageDlg('Existing experiment will be overwritten! Are you sure?', mtConfirmation,
           [mbYes,mbNo],0) = mrNo then Exit ;
        end ;

   OpenDialog.options := [ofPathMustExist] ;
   OpenDialog.FileName := '' ;
   OpenDialog.DefaultExt := DataFileExtension ;
   //OpenDialog.InitialDir := OpenDirectory ;
   OpenDialog.Filter := format( ' Nerve Expt. (*%s)|*%s',
                                [DataFileExtension,DataFileExtension]) ;
   OpenDialog.Title := 'Load Experiment ' ;

   // Open selected data file
   if OpenDialog.execute then LoadFromFile( OpenDialog.FileName ) ;

   end;

procedure TMainFrm.bStimulusOnClick(Sender: TObject);
// --------------
// Start stimulus
// --------------
begin
     bStimulusOn.Enabled := False ;
     bStimulusOff.Enabled := True ;

     Cell.Stim.Start := Cell.t ;
     Cell.Stim.Duration := edStimulusDuration.Value ;
     Cell.Stim.Amplitude := edStimulusCurrent.Value ;
     Cell.Stim.NumStimDone := 0 ;

     end;


procedure TMainFrm.bStimulationOffClick(Sender: TObject);
// -------------
// Stop stimulus
// -------------
begin
     bStimulusOn.Enabled := True ;
     bStimulusOff.Enabled := False ;
     end;


procedure TMainFrm.bNewExperimentClick(Sender: TObject);
// ---------------------
// Select new experiment
// ---------------------
begin
     if UnSavedData then begin
        if MessageDlg('Existing experiment will be erased! Are you sure?', mtConfirmation,
           [mbYes,mbNo],0) = mrYes then NewExperiment ;
        end
     else NewExperiment ;
     end;


procedure TMainFrm.mnSaveExperimentClick(Sender: TObject);
// -----------------------
// Save experiment to file
// -----------------------
begin

     { Present user with standard Save File dialog box }
     SaveDialog.options := [ofHideReadOnly,ofPathMustExist] ;
     SaveDialog.FileName := '' ;
     SaveDialog.DefaultExt := DataFileExtension ;
     SaveDialog.Filter := format( '  Nerve Expt. (*%s)|*%s',
                                  [DataFileExtension,DataFileExtension]) ;
     SaveDialog.Title := 'Save Experiment' ;

     if SaveDialog.Execute then SaveToFile( SaveDialog.FileName ) ;

     end ;


procedure TMainFrm.mnSnapDisplayClick(Sender: TObject);
// -----------------------------------------------
// Store a copy of the currently displayed signals
// -----------------------------------------------
begin
     SnapDisplayWindow ;
     end;


procedure TMainFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
// -----------------------------------------------
// Check whether user really wants to stop program
// -----------------------------------------------
begin
     if MessageDlg('Stop APSim Program! Are you sure?', mtConfirmation,
           [mbYes,mbNo],0) = mrYes then CanClose := True
                                   else CanClose := False ;
     end;


procedure TMainFrm.FormCreate(Sender: TObject);
begin
    nygren_atrial_model_1998 := Tnygren_atrial_model_1998.Create ;
    davies_isap_2012 := Tdavies_isap_2012.Create ;
    dokos_model_1996 := Tdokos_model_1996.Create ;
    inada_N_model_2009 := Tinada_N_model_2009.Create ;
    hodgkin_huxley_squid_axon_model_1952 := Thodgkin_huxley_squid_axon_model_1952.Create ;
    end;

procedure TMainFrm.FormDestroy(Sender: TObject);
begin
      nygren_atrial_model_1998.Free ;
      davies_isap_2012.Free ;
      dokos_model_1996.Free ;
      hodgkin_huxley_squid_axon_model_1952.free ;
      end;

procedure TMainFrm.mnExitClick(Sender: TObject);
// ------------
// Stop Program
// ------------
begin
     Close ;
     end;


procedure TMainFrm.mnClearSnapClick(Sender: TObject);
begin
    scDisplay.ClearLines ;
    end;

procedure TMainFrm.mnContentsClick(Sender: TObject);
// -----------------------
//  Help/Contents menu item
//  -----------------------
//begin
//     application.HelpCommand( 10 ) ;
// -----------------------
//  Help/Contents menu item
//  -----------------------
var
   pWinDir : PChar ;
   FileName : String ;
begin


     GetMem( pWinDir, 512 ) ;
     GetWindowsDirectoryW( pWinDir, 256 ) ;
     FileName := pWinDir + '\hh.exe' ;

     ShellExecute( Handle,PChar('open'),
                   PChar(FileName),
                   PChar(Application.HelpFile),
                   nil,
                   SW_SHOWNORMAL) ;
     FreeMem( pWinDir ) ;

     end;


procedure TMainFrm.rbSingleStimulusClick(Sender: TObject);
begin
     RatePanel.Visible := False ;
     end;


procedure TMainFrm.rbRepeatedStimulusClick(Sender: TObject);
begin
     RatePanel.Visible := True ;
     end;


procedure TMainFrm.bStimulusOffClick(Sender: TObject);
begin
     bStimulusOn.Enabled := True ;
     bStimulusOff.Enabled := False ;
     end;


procedure TMainFrm.bAddDrugClick(Sender: TObject);
var
    iDrug : Integer ;
    ChartAnnotation : String ;
begin
     iDrug :=  Integer(cbDrug.Items.Objects[cbDrug.ItemIndex]) ;
     Drugs[iDrug].FinalBathConcentration := Drugs[iDrug].FinalBathConcentration
                                            + edDrugConc.Value ;

     // Add chart annotation
     ChartAnnotation := format('%s= %.3g M',
     [Drugs[iDrug].ShortName,Drugs[iDrug].FinalBathConcentration]) ;
     AddDrugMarker( ChartAnnotation ) ;

      end;


procedure TMainFrm.bStandardSaltSolnClick(Sender: TObject);
// -----------------------------------------------
// Change to standard salt solution in tissue bath
// -----------------------------------------------
begin

     Cell.Na.FinalCout := Cell.Na.Standard ;
     edNaConc.Value := Cell.Na.FinalCout ;

     Cell.K.FinalCout := Cell.K.Standard ;
     edKConc.Value := Cell.K.FinalCout ;

     Cell.Ca.FinalCout := Cell.Ca.Standard ;
     edCaConc.Value := Cell.Ca.FinalCout ;

     bNewSaltSoln.Click ;
     end;


procedure TMainFrm.Button2Click(Sender: TObject);
// --------------------------
// Remove all drugs from bath
// --------------------------
var
    i : Integer ;
    ChartAnnotation : String ;
begin
     ChartAnnotation := '' ;
     for i := 0 to NumDrugs do begin
         if Drugs[i].FinalBathConcentration > 0.0 then begin
            if ChartAnnotation <> '' then ChartAnnotation := ChartAnnotation + ', ' ;
            ChartAnnotation := ChartAnnotation + Drugs[i].ShortName + '=0' ;
            end ;
         Drugs[i].FinalBathConcentration := 0.0 ;
         end ;
     if ChartAnnotation <> '' then begin
        ChartAnnotation := ChartAnnotation + ' M' ;
        AddDrugMarker( ChartAnnotation ) ;
        end ;

     end;

procedure TMainFrm.ckDvDtClick(Sender: TObject);
// -----------------
// Check box changed
// -----------------
begin
    scDisplay.ChanVisible[TCheckBox(Sender).Tag] := TCheckBox(Sender).Checked ;
    end;

procedure TMainFrm.edDisplayWindowKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then begin
       UpdateDisplayWindow ;
       end;
     end;


procedure TMainFrm.edStartAtKeyPress(Sender: TObject; var Key: Char);
// ------------------------------------
// Starting position of display changed
// ------------------------------------
begin
    if Key = #13 then sbDisplay.Position := Round(edStartAt.Value) ;
    end;

procedure TMainFrm.edStimulusCurrentKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then Cell.Stim.Amplitude := edStimulusCurrent.Value ;
    end;

procedure TMainFrm.edStimulusDurationKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then Cell.Stim.Duration := edStimulusDuration.Value ;
    end;

procedure TMainFrm.UpdateDisplayWindow ;
// ---------------------
// Update display window
// ---------------------
var
    MidPoint : Integer ;
begin

       MidPoint := scDisplay.XOffset + (scDisplay.MaxPoints div 2) ;
       scDisplay.MaxPoints := Round(edDisplayWindow.Value/(Cell.dt*Cell.NumStepsPerDisplayPoint));
       scDisplay.xMin := 0 ;
       scDisplay.xMax := scDisplay.MaxPoints-1 ;

       scDisplay.XOffset := Max(MidPoint - (scDisplay.MaxPoints div 2),0) ;
       scDisplay.XOffset := Min( scDisplay.XOffset, NumPointsInBuf - scDisplay.MaxPoints + 1) ;
       sbDisplay.Position := scDisplay.XOffset ;
       scDisplay.SetDataBuf( @ADC[sbDisplay.Position*scDisplay.NumChannels] ) ;
       scDisplay.NumPoints := Min( scDisplay.MaxPoints,
                                   NumPointsInBuf - scDisplay.XOffset) ;
       scDisplay.VerticalCursors[0] := scDisplay.MaxPoints div 20 ;
       scDisplay.VerticalCursors[1] := scDisplay.MaxPoints div 2 ;

       if not bRecord.Enabled then begin
          NumPointsDisplayed := 0 ;
          scDisplay.XOffset := Max(NumPointsInBuf - 1,0);
          sbDisplay.Position := scDisplay.XOffset ;
          scDisplay.SetDataBuf( @ADC[sbDisplay.Position*scDisplay.NumChannels] ) ;
          end;

       edStartAt.Value := scDisplay.XOffset ;

       // Add annotations to chart
       AddChartAnnotations ;
       scDisplay.Invalidate ;

       end ;

procedure TMainFrm.SnapDisplayWindow ;
// ------------------------------------------------------
// Snap and store a copy of the displayed trace on screen
// ------------------------------------------------------
var
    i,j,ch,iLine : Integer ;
    x,y : single ;
begin

    scDisplay.ClearLines ;

    for ch := 0 to scDisplay.NumChannels-1 do begin
        iLine := scDisplay.CreateLine( ch, clRed, psSolid, 1 ) ;
        j := sbDisplay.Position*scDisplay.NumChannels + ch ;
        x := 0.0 ;
        for i := 0 to scDisplay.NumPoints-1 do begin
          y := ADC[j] ;
          scDisplay.AddPointToLine( iLine, x,y) ;
          j := j + scDisplay.NumChannels ;
          x := x + 1.0 ;
        end;
        end;
    scDisplay.invalidate ;
    end;

end.
