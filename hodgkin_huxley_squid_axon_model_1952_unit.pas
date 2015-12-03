//==============================================================================
// CellML file:   C:\Program Files\COR\Models\hodgkin_huxley_squid_axon_model_1952_modified.cellml
// CellML model:  hodgkin_huxley_squid_axon_model_1952_modified
// Date and time: 23/07/2015 at 15:46:12
//------------------------------------------------------------------------------
// Conversion from CellML 1.0 to Delphi for Win32 was done using COR (0.9.31.1409)
//    Copyright 2002-2015 Dr Alan Garny
//    http://cor.physiol.ox.ac.uk/ - cor@physiol.ox.ac.uk
//------------------------------------------------------------------------------
// http://www.cellml.org/
//==============================================================================

Unit hodgkin_huxley_squid_axon_model_1952_unit;

//------------------------------------------------------------------------------

Interface

//------------------------------------------------------------------------------

Const _NB_OF_STATE_VARIABLES_ = 4;

//------------------------------------------------------------------------------

Type
   Thodgkin_huxley_squid_axon_model_1952 = Class
      Public
         //---------------------------------------------------------------------
         // State variables
         //---------------------------------------------------------------------

         Y: Array[0.._NB_OF_STATE_VARIABLES_-1] Of Double;
         dY: Array[0.._NB_OF_STATE_VARIABLES_-1] Of Double;
         // 0: V (millivolt) (in membrane)
         // 1: n (dimensionless) (in potassium_channel_n_gate)
         // 2: h (dimensionless) (in sodium_channel_h_gate)
         // 3: m (dimensionless) (in sodium_channel_m_gate)

         YNames: Array[0.._NB_OF_STATE_VARIABLES_-1] Of String;
         YUnits: Array[0.._NB_OF_STATE_VARIABLES_-1] Of String;
         YComponents: Array[0.._NB_OF_STATE_VARIABLES_-1] Of String;

         //---------------------------------------------------------------------
         // Constants
         //---------------------------------------------------------------------

         g_L: Double;   // milliS_per_cm2 (in leakage_current)
         Cm: Double;   // microF_per_cm2 (in membrane)
         E_R: Double;   // millivolt (in membrane)
         g_K: Double;   // milliS_per_cm2 (in potassium_channel)
         g_Na: Double;   // milliS_per_cm2 (in sodium_channel)

         //---------------------------------------------------------------------
         // Computed variables
         //---------------------------------------------------------------------

         E_L: Double;   // millivolt (in leakage_current)
         i_L: Double;   // microA_per_cm2 (in leakage_current)
         i_Stim: Double;   // microA_per_cm2 (in membrane)
         alpha_n: Double;   // per_millisecond (in potassium_channel_n_gate)
         beta_n: Double;   // per_millisecond (in potassium_channel_n_gate)
         E_K: Double;   // millivolt (in potassium_channel)
         i_K: Double;   // microA_per_cm2 (in potassium_channel)
         alpha_h: Double;   // per_millisecond (in sodium_channel_h_gate)
         beta_h: Double;   // per_millisecond (in sodium_channel_h_gate)
         alpha_m: Double;   // per_millisecond (in sodium_channel_m_gate)
         beta_m: Double;   // per_millisecond (in sodium_channel_m_gate)
         E_Na: Double;   // millivolt (in sodium_channel)
         i_Na: Double;   // microA_per_cm2 (in sodium_channel)

         GNa_Available : Double ;
         GK_Available : Double ;
         GCaL_Available : Double ;
         BetaADR_Active : Double ;

         //---------------------------------------------------------------------
         // Procedures
         //---------------------------------------------------------------------

         Procedure Init;
         Procedure Compute(Const time: Double);
         procedure UpdateStates( dt : double ) ;
   End;

//------------------------------------------------------------------------------

Implementation

//------------------------------------------------------------------------------

Uses
   Math;

//------------------------------------------------------------------------------
// Initialisation
//------------------------------------------------------------------------------

Procedure Thodgkin_huxley_squid_axon_model_1952.Init;
Begin
   //---------------------------------------------------------------------------
   // State variables
   //---------------------------------------------------------------------------

   Y[0] := -75.0;   // V (millivolt) (in membrane)
   Y[1] := 0.325;   // n (dimensionless) (in potassium_channel_n_gate)
   Y[2] := 0.6;   // h (dimensionless) (in sodium_channel_h_gate)
   Y[3] := 0.05;   // m (dimensionless) (in sodium_channel_m_gate)

   YNames[0] := 'V';
   YNames[1] := 'n';
   YNames[2] := 'h';
   YNames[3] := 'm';

   YUnits[0] := 'millivolt';
   YUnits[1] := 'dimensionless';
   YUnits[2] := 'dimensionless';
   YUnits[3] := 'dimensionless';

   YComponents[0] := 'membrane';
   YComponents[1] := 'potassium_channel_n_gate';
   YComponents[2] := 'sodium_channel_h_gate';
   YComponents[3] := 'sodium_channel_m_gate';

   //---------------------------------------------------------------------------
   // Constants
   //---------------------------------------------------------------------------

   g_L := 0.3;   // milliS_per_cm2 (in leakage_current)
   Cm := 1.0;   // microF_per_cm2 (in membrane)
   E_R := -75.0;   // millivolt (in membrane)
   g_K := 36.0;   // milliS_per_cm2 (in potassium_channel)
   g_Na := 120.0;   // milliS_per_cm2 (in sodium_channel)

   //---------------------------------------------------------------------------
   // Computed variables
   //---------------------------------------------------------------------------

   E_L := E_R+10.613;
   E_Na := E_R+115.0;
   E_K := E_R-12.0;
End;

//------------------------------------------------------------------------------
// Computation
//------------------------------------------------------------------------------

Procedure Thodgkin_huxley_squid_axon_model_1952.Compute(Const time: Double);
Begin
   // time: time (millisecond)

   i_L := g_L*(Y[0]-E_L);

 {  If ((time >= 10.0) And (time <= 10.5)) Then
      i_Stim := 20.0
   Else
      i_Stim := 0.0;}

   i_Na := GNa_Available*g_Na*Power(Y[3], 3.0)*Y[2]*(Y[0]-E_Na);
   i_K := GK_Available*g_K*Power(Y[1], 4.0)*(Y[0]-E_K);
   dY[0] := -(-i_Stim+i_Na+i_K+i_L)/Cm;
   alpha_n := -0.01*(Y[0]+65.0)/(Exp(-(Y[0]+65.0)/10.0)-1.0);
   beta_n := 0.125*Exp((Y[0]+75.0)/80.0);
   dY[1] := alpha_n*(1.0-Y[1])-beta_n*Y[1];
   alpha_h := 0.07*Exp(-(Y[0]+75.0)/20.0);
   beta_h := 1.0/(Exp(-(Y[0]+45.0)/10.0)+1.0);
   dY[2] := alpha_h*(1.0-Y[2])-beta_h*Y[2];
   alpha_m := -0.1*(Y[0]+50.0)/(Exp(-(Y[0]+50.0)/10.0)-1.0);
   beta_m := 4.0*Exp(-(Y[0]+75.0)/18.0);
   dY[3] := alpha_m*(1.0-Y[3])-beta_m*Y[3];
End;

//------------------------------------------------------------------------------
procedure Thodgkin_huxley_squid_axon_model_1952.UpdateStates( dt : double ) ;
var
    i : Integer ;
    k1,k2,k3,k4 : Array[0.._NB_OF_STATE_VARIABLES_-1] Of Double;
    Y_k1,Y_k2,Y_k3 : Array[0.._NB_OF_STATE_VARIABLES_-1] Of Double;
begin

    // Note rates expressed /ms
    dt := dt*1E3 ;

    Compute(0.0) ;
    for i := 0 to _NB_OF_STATE_VARIABLES_-1 do k1[i] := dy[i]*dt ;
    for i := 0 to _NB_OF_STATE_VARIABLES_-1 do Y_k1[i] := Y[i] + k1[i]*0.5  ;

    Compute(0.0) ;
    for i := 0 to _NB_OF_STATE_VARIABLES_-1 do k2[i] := dy[i]*dt ;
    for i := 0 to _NB_OF_STATE_VARIABLES_-1 do Y_k2[i] := Y[i] + k2[i]*0.5  ;

    Compute(0.0) ;
    for i := 0 to _NB_OF_STATE_VARIABLES_-1 do k3[i] := dy[i]*dt ;
    for i := 0 to _NB_OF_STATE_VARIABLES_-1 do Y_k3[i] := Y[i] + k3[i]  ;

    Compute(0.0) ;
    for i := 0 to _NB_OF_STATE_VARIABLES_-1 do k4[i] := dy[i]*dt ;

    for i := 0 to _NB_OF_STATE_VARIABLES_-1 do Y[i] := Y[i] + k1[i]/6.0 + k2[i]/3.0 + k3[i]/3.0 + k4[i]/6.0 ;

    end;

End.

//==============================================================================
// End of file
//==============================================================================
