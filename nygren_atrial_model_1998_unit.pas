//==============================================================================
// CellML file:   C:\Program Files\COR\Models\nygren_atrial_model_1998.cellml
// CellML model:  nygren_atrial_model_1998
// Date and time: 21/07/2015 at 12:51:24
//------------------------------------------------------------------------------
// Conversion from CellML 1.0 to Delphi for Win32 was done using COR (0.9.31.1409)
//    Copyright 2002-2015 Dr Alan Garny
//    http://cor.physiol.ox.ac.uk/ - cor@physiol.ox.ac.uk
//------------------------------------------------------------------------------
// http://www.cellml.org/
//==============================================================================

Unit nygren_atrial_model_1998_unit;

//------------------------------------------------------------------------------

Interface

//------------------------------------------------------------------------------

Const _NB_OF_STATE_VARIABLES_ = 29;

//------------------------------------------------------------------------------

Type
   Tnygren_atrial_model_1998 = Class
      Public
         //---------------------------------------------------------------------
         // State variables
         //---------------------------------------------------------------------

         Y: Array[0.._NB_OF_STATE_VARIABLES_-1] Of Double;
         dY: Array[0.._NB_OF_STATE_VARIABLES_-1] Of Double;
         // 0: Ca_rel (millimolar) (in Ca_handling_by_the_SR)
         // 1: Ca_up (millimolar) (in Ca_handling_by_the_SR)
         // 2: F1 (dimensionless) (in Ca_handling_by_the_SR)
         // 3: F2 (dimensionless) (in Ca_handling_by_the_SR)
         // 4: O_Calse (dimensionless) (in Ca_handling_by_the_SR)
         // 5: r1 (dimensionless) (r in Ca_independent_transient_outward_K_current_r_gate)
         // 6: s (dimensionless) (in Ca_independent_transient_outward_K_current_s_gate)
         // 7: d_L (dimensionless) (in L_type_Ca_channel_d_L_gate)
         // 8: f_L_1 (dimensionless) (in L_type_Ca_channel_f_L1_gate)
         // 9: f_L_2 (dimensionless) (in L_type_Ca_channel_f_L2_gate)
         // 10: Ca_c (millimolar) (in cleft_space_ion_concentrations)
         // 11: K_c (millimolar) (in cleft_space_ion_concentrations)
         // 12: Na_c (millimolar) (in cleft_space_ion_concentrations)
         // 13: n (dimensionless) (in delayed_rectifier_K_currents_n_gate)
         // 14: p_a (dimensionless) (in delayed_rectifier_K_currents_pa_gate)
         // 15: O_C (dimensionless) (in intracellular_Ca_buffering)
         // 16: O_TC (dimensionless) (in intracellular_Ca_buffering)
         // 17: O_TMgC (dimensionless) (in intracellular_Ca_buffering)
         // 18: O_TMgMg (dimensionless) (in intracellular_Ca_buffering)
         // 19: Ca_d (millimolar) (in intracellular_ion_concentrations)
         // 20: Ca_i (millimolar) (in intracellular_ion_concentrations)
         // 21: K_i (millimolar) (in intracellular_ion_concentrations)
         // 22: Na_i (millimolar) (in intracellular_ion_concentrations)
         // 23: V (millivolt) (in membrane)
         // 24: h1 (dimensionless) (in sodium_current_h1_gate)
         // 25: h2 (dimensionless) (in sodium_current_h2_gate)
         // 26: m (dimensionless) (in sodium_current_m_gate)
         // 27: r_sus (dimensionless) (in sustained_outward_K_current_r_sus_gate)
         // 28: s_sus (dimensionless) (in sustained_outward_K_current_s_sus_gate)

         YNames: Array[0.._NB_OF_STATE_VARIABLES_-1] Of String;
         YUnits: Array[0.._NB_OF_STATE_VARIABLES_-1] Of String;
         YComponents: Array[0.._NB_OF_STATE_VARIABLES_-1] Of String;

         //---------------------------------------------------------------------
         // Constants
         //---------------------------------------------------------------------

         I_up_max: Double;   // picoA (in Ca_handling_by_the_SR)
         Vol_rel: Double;   // nanolitre (in Ca_handling_by_the_SR)
         Vol_up: Double;   // nanolitre (in Ca_handling_by_the_SR)
         alpha_rel: Double;   // picoA_per_millimolar (in Ca_handling_by_the_SR)
         k_cyca: Double;   // millimolar (in Ca_handling_by_the_SR)
         k_rel_d: Double;   // millimolar (in Ca_handling_by_the_SR)
         k_rel_i: Double;   // millimolar (in Ca_handling_by_the_SR)
         k_srca: Double;   // millimolar (in Ca_handling_by_the_SR)
         k_xcs: Double;   // dimensionless (in Ca_handling_by_the_SR)
         r_recov: Double;   // per_second (in Ca_handling_by_the_SR)
         tau_tr: Double;   // second (in Ca_handling_by_the_SR)
         g_t: Double;   // nanoS (in Ca_independent_transient_outward_K_current)
         E_Ca_app: Double;   // millivolt (in L_type_Ca_channel)
         g_Ca_L: Double;   // nanoS (in L_type_Ca_channel)
         k_Ca: Double;   // millimolar (in L_type_Ca_channel)
         d_NaCa: Double;   // per_millimolar_4 (in Na_Ca_ion_exchanger_current)
         gamma: Double;   // dimensionless (in Na_Ca_ion_exchanger_current)
         k_NaCa: Double;   // picoA_per_millimolar_4 (in Na_Ca_ion_exchanger_current)
         g_B_Ca: Double;   // nanoS (in background_currents)
         g_B_Na: Double;   // nanoS (in background_currents)
         Ca_b: Double;   // millimolar (in cleft_space_ion_concentrations)
         K_b: Double;   // millimolar (in cleft_space_ion_concentrations)
         Na_b: Double;   // millimolar (in cleft_space_ion_concentrations)
         tau_Ca: Double;   // second (in cleft_space_ion_concentrations)
         tau_K: Double;   // second (in cleft_space_ion_concentrations)
         tau_Na: Double;   // second (in cleft_space_ion_concentrations)
         g_Kr: Double;   // nanoS (in delayed_rectifier_K_currents)
         g_Ks: Double;   // nanoS (in delayed_rectifier_K_currents)
         Mg_i: Double;   // millimolar (in intracellular_Ca_buffering)
         Vol_i: Double;   // nanolitre (in intracellular_ion_concentrations)
         phi_Na_en: Double;   // picoA (in intracellular_ion_concentrations)
         tau_di: Double;   // second (in intracellular_ion_concentrations)
         g_K1: Double;   // nanoS (in inward_rectifier)
         Cm: Double;   // nanoF (in membrane)
         F: Double;   // coulomb_per_mole (in membrane)
         R2: Double;   // millijoule_per_mole_kelvin (R in membrane)
         T: Double;   // kelvin (in membrane)
         stim_amplitude: Double;   // picoA (in membrane)
         stim_duration: Double;   // second (in membrane)
         stim_end: Double;   // second (in membrane)
         stim_period: Double;   // second (in membrane)
         stim_start: Double;   // second (in membrane)
         i_CaP_max: Double;   // picoA (in sarcolemmal_calcium_pump_current)
         k_CaP: Double;   // millimolar (in sarcolemmal_calcium_pump_current)
         P_Na: Double;   // nanolitre_per_second (in sodium_current)
         i_NaK_max: Double;   // picoA (in sodium_potassium_pump)
         k_NaK_K: Double;   // millimolar (in sodium_potassium_pump)
         k_NaK_Na: Double;   // millimolar (in sodium_potassium_pump)
         g_sus: Double;   // nanoS (in sustained_outward_K_current)

         GNa_Available : Double ;
         GK_Available : Double ;
         GCaL_Available : Double ;
         BetaADR_Active : Double ;

         //---------------------------------------------------------------------
         // Computed variables
         //---------------------------------------------------------------------

         i_rel: Double;   // picoA (in Ca_handling_by_the_SR)
         i_tr: Double;   // picoA (in Ca_handling_by_the_SR)
         i_up: Double;   // picoA (in Ca_handling_by_the_SR)
         r_act: Double;   // per_second (in Ca_handling_by_the_SR)
         r_inact: Double;   // per_second (in Ca_handling_by_the_SR)
         r_infinity: Double;   // dimensionless (in Ca_independent_transient_outward_K_current_r_gate)
         tau_r: Double;   // second (in Ca_independent_transient_outward_K_current_r_gate)
         s_infinity: Double;   // dimensionless (in Ca_independent_transient_outward_K_current_s_gate)
         tau_s: Double;   // second (in Ca_independent_transient_outward_K_current_s_gate)
         E_K: Double;   // millivolt (in Ca_independent_transient_outward_K_current)
         i_t: Double;   // picoA (in Ca_independent_transient_outward_K_current)
         d_L_infinity: Double;   // dimensionless (in L_type_Ca_channel_d_L_gate)
         tau_d_L: Double;   // second (in L_type_Ca_channel_d_L_gate)
         f_L_infinity: Double;   // dimensionless (in L_type_Ca_channel_f_L1_gate)
         tau_f_L1: Double;   // second (in L_type_Ca_channel_f_L1_gate)
         tau_f_L2: Double;   // second (in L_type_Ca_channel_f_L2_gate)
         f_Ca: Double;   // dimensionless (in L_type_Ca_channel)
         i_Ca_L: Double;   // picoA (in L_type_Ca_channel)
         i_NaCa: Double;   // picoA (in Na_Ca_ion_exchanger_current)
         E_Ca: Double;   // millivolt (in background_currents)
         i_B_Ca: Double;   // picoA (in background_currents)
         i_B_Na: Double;   // picoA (in background_currents)
         Vol_c: Double;   // nanolitre (in cleft_space_ion_concentrations)
         n_infinity: Double;   // dimensionless (in delayed_rectifier_K_currents_n_gate)
         tau_n: Double;   // second (in delayed_rectifier_K_currents_n_gate)
         p_a_infinity: Double;   // dimensionless (in delayed_rectifier_K_currents_pa_gate)
         tau_p_a: Double;   // second (in delayed_rectifier_K_currents_pa_gate)
         p_i: Double;   // dimensionless (in delayed_rectifier_K_currents_pi_gate)
         i_Kr: Double;   // picoA (in delayed_rectifier_K_currents)
         i_Ks: Double;   // picoA (in delayed_rectifier_K_currents)
         dOCdt: Double;   // per_second (in intracellular_Ca_buffering)
         dOTCdt: Double;   // per_second (in intracellular_Ca_buffering)
         dOTMgCdt: Double;   // per_second (in intracellular_Ca_buffering)
         Vol_d: Double;   // nanolitre (in intracellular_ion_concentrations)
         i_di: Double;   // picoA (in intracellular_ion_concentrations)
         i_K1: Double;   // picoA (in inward_rectifier)
         i_Stim: Double;   // picoA (in membrane)
         i_CaP: Double;   // picoA (in sarcolemmal_calcium_pump_current)
         h_infinity: Double;   // dimensionless (in sodium_current_h1_gate)
         tau_h1: Double;   // second (in sodium_current_h1_gate)
         tau_h2: Double;   // second (in sodium_current_h2_gate)
         m_infinity: Double;   // dimensionless (in sodium_current_m_gate)
         tau_m: Double;   // second (in sodium_current_m_gate)
         E_Na: Double;   // millivolt (in sodium_current)
         i_Na: Double;   // picoA (in sodium_current)
         i_NaK: Double;   // picoA (in sodium_potassium_pump)
         r_sus_infinity: Double;   // dimensionless (in sustained_outward_K_current_r_sus_gate)
         tau_r_sus: Double;   // second (in sustained_outward_K_current_r_sus_gate)
         s_sus_infinity: Double;   // dimensionless (in sustained_outward_K_current_s_sus_gate)
         tau_s_sus: Double;   // second (in sustained_outward_K_current_s_sus_gate)
         i_sus: Double;   // picoA (in sustained_outward_K_current)

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

Procedure Tnygren_atrial_model_1998.Init;
Begin
   //---------------------------------------------------------------------------
   // State variables
   //---------------------------------------------------------------------------

   Y[0] := 0.6465;   // Ca_rel (millimolar) (in Ca_handling_by_the_SR)
   Y[1] := 0.6646;   // Ca_up (millimolar) (in Ca_handling_by_the_SR)
   Y[2] := 0.4284;   // F1 (dimensionless) (in Ca_handling_by_the_SR)
   Y[3] := 0.0028;   // F2 (dimensionless) (in Ca_handling_by_the_SR)
   Y[4] := 0.4369;   // O_Calse (dimensionless) (in Ca_handling_by_the_SR)
   Y[5] := 0.0010678;   // r1 (dimensionless) (r in Ca_independent_transient_outward_K_current_r_gate)
   Y[6] := 0.949;   // s (dimensionless) (in Ca_independent_transient_outward_K_current_s_gate)
   Y[7] := 1.3005e-5;   // d_L (dimensionless) (in L_type_Ca_channel_d_L_gate)
   Y[8] := 0.9986;   // f_L_1 (dimensionless) (in L_type_Ca_channel_f_L1_gate)
   Y[9] := 0.9986;   // f_L_2 (dimensionless) (in L_type_Ca_channel_f_L2_gate)
   Y[10] := 1.8147;   // Ca_c (millimolar) (in cleft_space_ion_concentrations)
   Y[11] := 5.3581;   // K_c (millimolar) (in cleft_space_ion_concentrations)
   Y[12] := 130.011;   // Na_c (millimolar) (in cleft_space_ion_concentrations)
   Y[13] := 0.0048357;   // n (dimensionless) (in delayed_rectifier_K_currents_n_gate)
   Y[14] := 0.0001;   // p_a (dimensionless) (in delayed_rectifier_K_currents_pa_gate)
   Y[15] := 0.0275;   // O_C (dimensionless) (in intracellular_Ca_buffering)
   Y[16] := 0.0133;   // O_TC (dimensionless) (in intracellular_Ca_buffering)
   Y[17] := 0.1961;   // O_TMgC (dimensionless) (in intracellular_Ca_buffering)
   Y[18] := 0.7094;   // O_TMgMg (dimensionless) (in intracellular_Ca_buffering)
   Y[19] := 7.2495e-5;   // Ca_d (millimolar) (in intracellular_ion_concentrations)
   Y[20] := 6.729e-5;   // Ca_i (millimolar) (in intracellular_ion_concentrations)
   Y[21] := 129.435;   // K_i (millimolar) (in intracellular_ion_concentrations)
   Y[22] := 8.5547;   // Na_i (millimolar) (in intracellular_ion_concentrations)
   Y[23] := -74.2525;   // V (millivolt) (in membrane)
   Y[24] := 0.8814;   // h1 (dimensionless) (in sodium_current_h1_gate)
   Y[25] := 0.8742;   // h2 (dimensionless) (in sodium_current_h2_gate)
   Y[26] := 0.0032017;   // m (dimensionless) (in sodium_current_m_gate)
   Y[27] := 0.00015949;   // r_sus (dimensionless) (in sustained_outward_K_current_r_sus_gate)
   Y[28] := 0.9912;   // s_sus (dimensionless) (in sustained_outward_K_current_s_sus_gate)

   YNames[0] := 'Ca_rel';
   YNames[1] := 'Ca_up';
   YNames[2] := 'F1';
   YNames[3] := 'F2';
   YNames[4] := 'O_Calse';
   YNames[5] := 'r1';
   YNames[6] := 's';
   YNames[7] := 'd_L';
   YNames[8] := 'f_L_1';
   YNames[9] := 'f_L_2';
   YNames[10] := 'Ca_c';
   YNames[11] := 'K_c';
   YNames[12] := 'Na_c';
   YNames[13] := 'n';
   YNames[14] := 'p_a';
   YNames[15] := 'O_C';
   YNames[16] := 'O_TC';
   YNames[17] := 'O_TMgC';
   YNames[18] := 'O_TMgMg';
   YNames[19] := 'Ca_d';
   YNames[20] := 'Ca_i';
   YNames[21] := 'K_i';
   YNames[22] := 'Na_i';
   YNames[23] := 'V';
   YNames[24] := 'h1';
   YNames[25] := 'h2';
   YNames[26] := 'm';
   YNames[27] := 'r_sus';
   YNames[28] := 's_sus';

   YUnits[0] := 'millimolar';
   YUnits[1] := 'millimolar';
   YUnits[2] := 'dimensionless';
   YUnits[3] := 'dimensionless';
   YUnits[4] := 'dimensionless';
   YUnits[5] := 'dimensionless';
   YUnits[6] := 'dimensionless';
   YUnits[7] := 'dimensionless';
   YUnits[8] := 'dimensionless';
   YUnits[9] := 'dimensionless';
   YUnits[10] := 'millimolar';
   YUnits[11] := 'millimolar';
   YUnits[12] := 'millimolar';
   YUnits[13] := 'dimensionless';
   YUnits[14] := 'dimensionless';
   YUnits[15] := 'dimensionless';
   YUnits[16] := 'dimensionless';
   YUnits[17] := 'dimensionless';
   YUnits[18] := 'dimensionless';
   YUnits[19] := 'millimolar';
   YUnits[20] := 'millimolar';
   YUnits[21] := 'millimolar';
   YUnits[22] := 'millimolar';
   YUnits[23] := 'millivolt';
   YUnits[24] := 'dimensionless';
   YUnits[25] := 'dimensionless';
   YUnits[26] := 'dimensionless';
   YUnits[27] := 'dimensionless';
   YUnits[28] := 'dimensionless';

   YComponents[0] := 'Ca_handling_by_the_SR';
   YComponents[1] := 'Ca_handling_by_the_SR';
   YComponents[2] := 'Ca_handling_by_the_SR';
   YComponents[3] := 'Ca_handling_by_the_SR';
   YComponents[4] := 'Ca_handling_by_the_SR';
   YComponents[5] := 'Ca_independent_transient_outward_K_current_r_gate';
   YComponents[6] := 'Ca_independent_transient_outward_K_current_s_gate';
   YComponents[7] := 'L_type_Ca_channel_d_L_gate';
   YComponents[8] := 'L_type_Ca_channel_f_L1_gate';
   YComponents[9] := 'L_type_Ca_channel_f_L2_gate';
   YComponents[10] := 'cleft_space_ion_concentrations';
   YComponents[11] := 'cleft_space_ion_concentrations';
   YComponents[12] := 'cleft_space_ion_concentrations';
   YComponents[13] := 'delayed_rectifier_K_currents_n_gate';
   YComponents[14] := 'delayed_rectifier_K_currents_pa_gate';
   YComponents[15] := 'intracellular_Ca_buffering';
   YComponents[16] := 'intracellular_Ca_buffering';
   YComponents[17] := 'intracellular_Ca_buffering';
   YComponents[18] := 'intracellular_Ca_buffering';
   YComponents[19] := 'intracellular_ion_concentrations';
   YComponents[20] := 'intracellular_ion_concentrations';
   YComponents[21] := 'intracellular_ion_concentrations';
   YComponents[22] := 'intracellular_ion_concentrations';
   YComponents[23] := 'membrane';
   YComponents[24] := 'sodium_current_h1_gate';
   YComponents[25] := 'sodium_current_h2_gate';
   YComponents[26] := 'sodium_current_m_gate';
   YComponents[27] := 'sustained_outward_K_current_r_sus_gate';
   YComponents[28] := 'sustained_outward_K_current_s_sus_gate';

   //---------------------------------------------------------------------------
   // Constants
   //---------------------------------------------------------------------------

   I_up_max := 2800.0;   // picoA (in Ca_handling_by_the_SR)
   Vol_rel := 4.41e-5;   // nanolitre (in Ca_handling_by_the_SR)
   Vol_up := 0.0003969;   // nanolitre (in Ca_handling_by_the_SR)
   alpha_rel := 200000.0;   // picoA_per_millimolar (in Ca_handling_by_the_SR)
   k_cyca := 0.0003;   // millimolar (in Ca_handling_by_the_SR)
   k_rel_d := 0.003;   // millimolar (in Ca_handling_by_the_SR)
   k_rel_i := 0.0003;   // millimolar (in Ca_handling_by_the_SR)
   k_srca := 0.5;   // millimolar (in Ca_handling_by_the_SR)
   k_xcs := 0.4;   // dimensionless (in Ca_handling_by_the_SR)
   r_recov := 0.815;   // per_second (in Ca_handling_by_the_SR)
   tau_tr := 0.01;   // second (in Ca_handling_by_the_SR)
   g_t := 7.5;   // nanoS (in Ca_independent_transient_outward_K_current)
   E_Ca_app := 60.0;   // millivolt (in L_type_Ca_channel)
   g_Ca_L := 6.75;   // nanoS (in L_type_Ca_channel)
   k_Ca := 0.025;   // millimolar (in L_type_Ca_channel)
   d_NaCa := 0.0003;   // per_millimolar_4 (in Na_Ca_ion_exchanger_current)
   gamma := 0.45;   // dimensionless (in Na_Ca_ion_exchanger_current)
   k_NaCa := 0.0374842;   // picoA_per_millimolar_4 (in Na_Ca_ion_exchanger_current)
   g_B_Ca := 0.078681;   // nanoS (in background_currents)
   g_B_Na := 0.060599;   // nanoS (in background_currents)
   Ca_b := 1.8;   // millimolar (in cleft_space_ion_concentrations)
   K_b := 5.4;   // millimolar (in cleft_space_ion_concentrations)
   Na_b := 130.0;   // millimolar (in cleft_space_ion_concentrations)
   tau_Ca := 24.7;   // second (in cleft_space_ion_concentrations)
   tau_K := 10.0;   // second (in cleft_space_ion_concentrations)
   tau_Na := 14.3;   // second (in cleft_space_ion_concentrations)
   g_Kr := 0.5;   // nanoS (in delayed_rectifier_K_currents)
   g_Ks := 1.0;   // nanoS (in delayed_rectifier_K_currents)
   Mg_i := 2.5;   // millimolar (in intracellular_Ca_buffering)
   Vol_i := 0.005884;   // nanolitre (in intracellular_ion_concentrations)
   phi_Na_en := -1.68;   // picoA (in intracellular_ion_concentrations)
   tau_di := 0.01;   // second (in intracellular_ion_concentrations)
   g_K1 := 3.0;   // nanoS (in inward_rectifier)
   Cm := 0.05;   // nanoF (in membrane)
   F := 96487.0;   // coulomb_per_mole (in membrane)
   R2 := 8314.0;   // millijoule_per_mole_kelvin (R in membrane)
   T := 306.15;   // kelvin (in membrane)
   stim_amplitude := -280.0;   // picoA (in membrane)
   stim_duration := 0.006;   // second (in membrane)
   stim_end := 9.0;   // second (in membrane)
   stim_period := 1.0;   // second (in membrane)
   stim_start := 0.1;   // second (in membrane)
   i_CaP_max := 4.0;   // picoA (in sarcolemmal_calcium_pump_current)
   k_CaP := 0.0002;   // millimolar (in sarcolemmal_calcium_pump_current)
   P_Na := 0.0016;   // nanolitre_per_second (in sodium_current)
   i_NaK_max := 70.8253;   // picoA (in sodium_potassium_pump)
   k_NaK_K := 1.0;   // millimolar (in sodium_potassium_pump)
   k_NaK_Na := 11.0;   // millimolar (in sodium_potassium_pump)
   g_sus := 2.75;   // nanoS (in sustained_outward_K_current)

   GNa_Available := 1.0 ;
   GK_Available := 1.0 ;
   GCaL_Available := 1.0 ;
   BetaADR_Active := 0.0 ;

   //---------------------------------------------------------------------------
   // Computed variables
   //---------------------------------------------------------------------------

   Vol_c := 0.136*Vol_i;
   Vol_d := 0.02*Vol_i;
End;

//------------------------------------------------------------------------------
// Computation
//------------------------------------------------------------------------------

Procedure Tnygren_atrial_model_1998.Compute(Const time: Double);
Begin
   // time: time (second)

   i_up := I_up_max*(Y[20]/k_cyca-Sqr(k_xcs)*Y[1]/k_srca)/((Y[20]+k_cyca)/k_cyca+k_xcs*(Y[1]+k_srca)/k_srca);
   i_tr := (Y[1]-Y[0])*2.0*F*Vol_rel/tau_tr;
   i_rel := alpha_rel*Sqr(Y[3]/(Y[3]+0.25))*(Y[0]-Y[20]);
   dY[4] := 480.0*Y[0]*(1.0-Y[4])-400.0*Y[4];
   dY[0] := (i_tr-i_rel)/(2.0*Vol_rel*F)-31.0*dY[4];
   dY[1] := (i_up-i_tr)/(2.0*Vol_up*F);
   r_act := 203.8*(Power(Y[20]/(Y[20]+k_rel_i), 4.0)+Power(Y[19]/(Y[19]+k_rel_d), 4.0));
   dY[2] := r_recov*(1.0-Y[2]-Y[3])-r_act*Y[2];
   r_inact := 33.96+339.6*Power(Y[20]/(Y[20]+k_rel_i), 4.0);
   dY[3] := r_act*Y[2]-r_inact*Y[3];
   E_K := R2*T/F*LN(Y[11]/Y[21]);
   i_t := g_t*Y[5]*Y[6]*(Y[23]-E_K);
   r_infinity := 1.0/(1.0+Exp((Y[23]-1.0)/-11.0));
   tau_r := 0.0035*Exp(-Sqr(Y[23]/30.0))+0.0015;
   dY[5] := (r_infinity-Y[5])/tau_r;
   s_infinity := 1.0/(1.0+Exp((Y[23]+40.5)/11.5));
   tau_s := 0.4812*Exp(-Sqr((Y[23]+52.45)/14.97))+0.01414;
   dY[6] := (s_infinity-Y[6])/tau_s;
   f_Ca := Y[19]/(Y[19]+k_Ca);

   i_Ca_L := g_Ca_L*Y[7]*(f_Ca*Y[8]+(1.0-f_Ca)*Y[9])*(Y[23]-E_Ca_app);
   i_Ca_L := i_Ca_L*(1.0 + BetaADR_active)*GCaL_Available ;

   d_L_infinity := 1.0/(1.0+Exp((Y[23]+9.0)/-5.8));
   tau_d_L := 0.0027*Exp(-Sqr((Y[23]+35.0)/30.0))+0.002;
   dY[7] := (d_L_infinity-Y[7])/tau_d_L;
   f_L_infinity := 1.0/(1.0+Exp((Y[23]+27.4)/7.1));
   tau_f_L1 := 0.161*Exp(-Sqr((Y[23]+40.0)/14.4))+0.01;
   dY[8] := (f_L_infinity-Y[8])/tau_f_L1;
   tau_f_L2 := 1.3323*Exp(-Sqr((Y[23]+40.0)/14.2))+0.0626;
   dY[9] := (f_L_infinity-Y[9])/tau_f_L2;
   i_NaCa := k_NaCa*(Power(Y[22], 3.0)*Y[10]*Exp(gamma*F*Y[23]/(R2*T))-Power(Y[12], 3.0)*Y[20]*Exp((gamma-1.0)*Y[23]*F/(R2*T)))/(1.0+d_NaCa*(Power(Y[12], 3.0)*Y[20]+Power(Y[22], 3.0)*Y[10]));
   E_Na := R2*T/F*LN(Y[12]/Y[22]);
   i_B_Na := g_B_Na*(Y[23]-E_Na);
   E_Ca := R2*T/(2.0*F)*LN(Y[10]/Y[20]);
   i_B_Ca := g_B_Ca*(Y[23]-E_Ca);

   i_Na := P_Na*Power(Y[26], 3.0)*(0.9*Y[24]+0.1*Y[25])*Y[12]*Y[23]*Sqr(F)/(R2*T)*(Exp((Y[23]-E_Na)*F/(R2*T))-1.0)/(Exp(Y[23]*F/(R2*T))-1.0);
   i_Na := i_Na*GNa_Available ;

   i_NaK := i_NaK_max*Y[11]/(Y[11]+k_NaK_K)*Power(Y[22], 1.5)/(Power(Y[22], 1.5)+Power(k_NaK_Na, 1.5))*(Y[23]+150.0)/(Y[23]+200.0);
   dY[12] := (Na_b-Y[12])/tau_Na+(i_Na+i_B_Na+3.0*i_NaK+3.0*i_NaCa+phi_Na_en)/(Vol_c*F);
   i_sus := g_sus*Y[27]*Y[28]*(Y[23]-E_K);
   i_K1 := g_K1*Power(Y[11]/1.0, 0.4457)*(Y[23]-E_K)/(1.0+Exp(1.5*(Y[23]-E_K+3.6)*F/(R2*T)));
   p_i := 1.0/(1.0+Exp((Y[23]+55.0)/24.0));

   i_Kr := g_Kr*Y[14]*p_i*(Y[23]-E_K);
   i_Kr := i_Kr*(1.0 + 0.5*BetaADR_active)*GK_Available ;
   i_Ks := g_Ks*Y[13]*(Y[23]-E_K);
   i_Ks := i_Ks*(1.0 + 0.5*BetaADR_active) ;

   dY[11] := (K_b-Y[11])/tau_K+(i_t+i_sus+i_K1+i_Kr+i_Ks-2.0*i_NaK)/(Vol_c*F);
   i_CaP := i_CaP_max*Y[20]/(Y[20]+k_CaP);
   dY[10] := (Ca_b-Y[10])/tau_Ca+(i_Ca_L+i_B_Ca+i_CaP-2.0*i_NaCa)/(2.0*Vol_c*F);
   n_infinity := 1.0/(1.0+Exp((Y[23]-19.9)/-12.7));
   tau_n := 0.7+0.4*Exp(-Sqr((Y[23]-20.0)/20.0));
   dY[13] := (n_infinity-Y[13])/tau_n;
   p_a_infinity := 1.0/(1.0+Exp((Y[23]+15.0)/-6.0));
   tau_p_a := 0.03118+0.21718*Exp(-Sqr((Y[23]+20.1376)/22.1996));
   dY[14] := (p_a_infinity-Y[14])/tau_p_a;
   dY[15] := 200000.0*Y[20]*(1.0-Y[15])-476.0*Y[15];
   dOCdt := dY[15];
   dY[16] := 78400.0*Y[20]*(1.0-Y[16])-392.0*Y[16];
   dOTCdt := dY[16];
   dY[17] := 200000.0*Y[20]*(1.0-Y[17]-Y[18])-6.6*Y[17];
   dOTMgCdt := dY[17];
   dY[18] := 2000.0*Mg_i*(1.0-Y[17]-Y[18])-666.0*Y[18];
   dY[22] := -(i_Na+i_B_Na+3.0*i_NaK+3.0*i_NaCa+phi_Na_en)/(Vol_i*F);
   dY[21] := -(i_t+i_sus+i_K1+i_Kr+i_Ks-2.0*i_NaK)/(Vol_i*F);
   i_di := (Y[19]-Y[20])*2.0*F*Vol_d/tau_di;
   dY[20] := -(-i_di+i_B_Ca+i_CaP-2.0*i_NaCa+i_up-i_rel)/(2.0*Vol_i*F)-(0.08*dOTCdt+0.16*dOTMgCdt+0.045*dOCdt);
   dY[19] := -(i_Ca_L+i_di)/(2.0*Vol_d*F);

//   If ((time >= stim_start) And (time <= stim_end) And (time-stim_start-Floor((time-stim_start)/stim_period)*stim_period <= stim_duration)) Then
//      i_Stim := stim_amplitude
//   Else
//      i_Stim := 0.0;

   dY[23] := -1.0/Cm*(i_Stim+i_Na+i_Ca_L+i_t+i_sus+i_K1+i_Kr+i_Ks+i_B_Na+i_B_Ca+i_NaK+i_CaP+i_NaCa);
   h_infinity := 1.0/(1.0+Exp((Y[23]+63.6)/5.3));
   tau_h1 := 0.03/(1.0+Exp((Y[23]+35.1)/3.2))+0.0003;
   dY[24] := (h_infinity-Y[24])/tau_h1;
   tau_h2 := 0.12/(1.0+Exp((Y[23]+35.1)/3.2))+0.003;
   dY[25] := (h_infinity-Y[25])/tau_h2;
   m_infinity := 1.0/(1.0+Exp((Y[23]+27.12)/-8.21));
   tau_m := 4.2e-5*Exp(-Sqr((Y[23]+25.57)/28.8))+2.4e-5;
   dY[26] := (m_infinity-Y[26])/tau_m;
   r_sus_infinity := 1.0/(1.0+Exp((Y[23]+4.3)/-8.0));
   tau_r_sus := 0.009/(1.0+Exp((Y[23]+5.0)/12.0))+0.0005;
   dY[27] := (r_sus_infinity-Y[27])/tau_r_sus;
   s_sus_infinity := 0.4/(1.0+Exp((Y[23]+20.0)/10.0))+0.6;
   tau_s_sus := 0.047/(1.0+Exp((Y[23]+60.0)/10.0))+0.3;
   dY[28] := (s_sus_infinity-Y[28])/tau_s_sus;
End;

procedure Tnygren_atrial_model_1998.UpdateStates( dt : double ) ;
var
    i : Integer ;
    k1,k2,k3,k4 : Array[0.._NB_OF_STATE_VARIABLES_-1] Of Double;
    Y_k1,Y_k2,Y_k3 : Array[0.._NB_OF_STATE_VARIABLES_-1] Of Double;
begin

    Compute(0.0) ;
    for i := 0 to _NB_OF_STATE_VARIABLES_-1 do k1[i] := dy[i]*dt ;
    for i := 0 to _NB_OF_STATE_VARIABLES_-1 do Y_k1[i] := Y[i] + k1[i]*0.5  ;

    Compute(0.0) ;
    for i := 0 to _NB_OF_STATE_VARIABLES_-1 do k2[i] :=dy[i]*dt ;
    for i := 0 to _NB_OF_STATE_VARIABLES_-1 do Y_k2[i] := Y[i] + k2[i]*0.5  ;

    Compute(0.0) ;
    for i := 0 to _NB_OF_STATE_VARIABLES_-1 do k3[i] := dy[i]*dt ;
    for i := 0 to _NB_OF_STATE_VARIABLES_-1 do Y_k3[i] := Y[i] + k3[i]  ;

    Compute(0.0) ;
    for i := 0 to _NB_OF_STATE_VARIABLES_-1 do k4[i] := dy[i]*dt ;

    for i := 0 to _NB_OF_STATE_VARIABLES_-1 do Y[i] := Y[i] + k1[i]/6.0 + k2[i]/3.0 + k3[i]/3.0 + k4[i]/6.0 ;

    end;


//------------------------------------------------------------------------------

End.

//==============================================================================
// End of file
//==============================================================================
