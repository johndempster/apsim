//==============================================================================
// CellML file:   C:\Program Files\COR\Models\inada_N_model_2009.cellml
// CellML model:  inada_N_model_2009
// Date and time: 18/09/2015 at 15:42:54
//------------------------------------------------------------------------------
// Conversion from CellML 1.0 to Pascal was done using COR (0.9.31.1409)
//    Copyright 2002-2015 Dr Alan Garny
//    http://cor.physiol.ox.ac.uk/ - cor@physiol.ox.ac.uk
//------------------------------------------------------------------------------
// http://www.cellml.org/
//==============================================================================

Unit inada_N_model_2009_unit;

//------------------------------------------------------------------------------

Interface

//------------------------------------------------------------------------------
// State variables
//------------------------------------------------------------------------------

Const _NB_OF_STATE_VARIABLES_ = 29;

Type
   Tinada_N_model_2009 = Class
      Public

   Y: Array[0.._NB_OF_STATE_VARIABLES_-1] Of Double;
   dY: Array[0.._NB_OF_STATE_VARIABLES_-1] Of Double;
   // 0: d (dimensionless) (in L_type_calcium_current_d_gate)
   // 1: f2 (dimensionless) (in L_type_calcium_current_f2_gate)
   // 2: f1 (dimensionless) (f in L_type_calcium_current_f_gate)
   // 3: achf (dimensionless) (in acetylcholine_sensitive_current_achf_gate)
   // 4: achs (dimensionless) (in acetylcholine_sensitive_current_achs_gate)
   // 5: h1 (dimensionless) (in fast_sodium_current_h1_gate)
   // 6: h2 (dimensionless) (in fast_sodium_current_h2_gate)
   // 7: m (dimensionless) (in fast_sodium_current_m_gate)
   // 8: y (dimensionless) (in hyperpolarising_activated_current_y_gate)
   // 9: Ca_rel (millimolar) (in intracellular_calcium_concentration)
   // 10: Ca_up (millimolar) (in intracellular_calcium_concentration)
   // 11: Cai (millimolar) (in intracellular_calcium_concentration)
   // 12: Casub (millimolar) (in intracellular_calcium_concentration)
   // 13: f_CMi (dimensionless) (in intracellular_calcium_concentration)
   // 14: f_CMs (dimensionless) (in intracellular_calcium_concentration)
   // 15: f_CQ (dimensionless) (in intracellular_calcium_concentration)
   // 16: f_CSL (dimensionless) (in intracellular_calcium_concentration)
   // 17: f_TC (dimensionless) (in intracellular_calcium_concentration)
   // 18: f_TMC (dimensionless) (in intracellular_calcium_concentration)
   // 19: f_TMM (dimensionless) (in intracellular_calcium_concentration)
   // 20: V (millivolt) (in membrane)
   // 21: paf (dimensionless) (in rapid_delayed_rectifier_potassium_current_paf_gate)
   // 22: pas (dimensionless) (in rapid_delayed_rectifier_potassium_current_pas_gate)
   // 23: pik (dimensionless) (in rapid_delayed_rectifier_potassium_current_pik_gate)
   // 24: qa (dimensionless) (in sustained_outward_potassium_current_qa_gate)
   // 25: qi (dimensionless) (in sustained_outward_potassium_current_qi_gate)
   // 26: q_fast (dimensionless) (in transient_outward_potassium_current_qfast_gate)
   // 27: q_slow (dimensionless) (in transient_outward_potassium_current_qslow_gate)
   // 28: r1 (dimensionless) (r in transient_outward_potassium_current_r_gate)

   YNames: Array[0.._NB_OF_STATE_VARIABLES_-1] Of String;
   YUnits: Array[0.._NB_OF_STATE_VARIABLES_-1] Of String;
   YComponents: Array[0.._NB_OF_STATE_VARIABLES_-1] Of String;

//------------------------------------------------------------------------------
// Constants
//------------------------------------------------------------------------------

   act_shift: Double;   // millivolt (in L_type_calcium_current_d_gate)
   slope_factor_act: Double;   // millivolt (in L_type_calcium_current_d_gate)
   inact_shift_1: Double;   // millivolt (inact_shift in L_type_calcium_current_f2_gate)
   inact_shift_2: Double;   // millivolt (inact_shift in L_type_calcium_current_f_gate)
   E_CaL: Double;   // millivolt (in L_type_calcium_current)
   g_CaL: Double;   // microS (in L_type_calcium_current)
   alpha_achf: Double;   // per_second (in acetylcholine_sensitive_current_achf_gate)
   alpha_achs: Double;   // per_second (in acetylcholine_sensitive_current_achs_gate)
   ACh: Double;   // millimolar (in acetylcholine_sensitive_current)
   K_ACh: Double;   // millimolar (in acetylcholine_sensitive_current)
   g_ACh_max: Double;   // microS (in acetylcholine_sensitive_current)
   E_b: Double;   // millivolt (in background_current)
   g_b: Double;   // microS (in background_current)
   Cao: Double;   // millimolar (in extracellular_calcium_concentration)
   Kc: Double;   // millimolar (in extracellular_potassium_concentration)
   Nao: Double;   // millimolar (in extracellular_sodium_concentration)
   delta_m: Double;   // millivolt (in fast_sodium_current_m_gate)
   g_Na: Double;   // microlitre_per_second (in fast_sodium_current)
   g_f: Double;   // microS (in hyperpolarising_activated_current)
   K_up: Double;   // millimolar (in intracellular_calcium_concentration)
   P_rel: Double;   // per_second (in intracellular_calcium_concentration)
   V_cell: Double;   // micrometre3 (in intracellular_calcium_concentration)
   tau_tr: Double;   // second (in intracellular_calcium_concentration)
   Ki: Double;   // millimolar (in intracellular_potassium_concentration)
   Nai: Double;   // millimolar (in intracellular_sodium_concentration)
   C: Double;   // microF (in membrane)
   F2: Double;   // coulomb_per_mole (F in membrane)
   R2: Double;   // joule_per_kilomole_kelvin (R in membrane)
   T: Double;   // kelvin (in membrane)
   g_Kr: Double;   // microS (in rapid_delayed_rectifier_potassium_current)
   K1ni: Double;   // millimolar (in sodium_calcium_exchange_current)
   K1no: Double;   // millimolar (in sodium_calcium_exchange_current)
   K2ni: Double;   // millimolar (in sodium_calcium_exchange_current)
   K2no: Double;   // millimolar (in sodium_calcium_exchange_current)
   K3ni: Double;   // millimolar (in sodium_calcium_exchange_current)
   K3no: Double;   // millimolar (in sodium_calcium_exchange_current)
   Kci: Double;   // millimolar (in sodium_calcium_exchange_current)
   Kcni: Double;   // millimolar (in sodium_calcium_exchange_current)
   Kco: Double;   // millimolar (in sodium_calcium_exchange_current)
   Qci: Double;   // dimensionless (in sodium_calcium_exchange_current)
   Qco: Double;   // dimensionless (in sodium_calcium_exchange_current)
   Qn: Double;   // dimensionless (in sodium_calcium_exchange_current)
   kNaCa: Double;   // nanoA (in sodium_calcium_exchange_current)
   I_p_1: Double;   // nanoA (I_p in sodium_potassium_pump)
   E_st: Double;   // millivolt (in sustained_outward_potassium_current)
   g_st: Double;   // microS (in sustained_outward_potassium_current)
   g_K1: Double;   // microS (in time_independent_potassium_current)
   g_to: Double;   // microS (in transient_outward_potassium_current)

         GNa_Available : Double ;
         GK_Available : Double ;
         GCaL_Available : Double ;
         BetaADR_Active : Double ;

//------------------------------------------------------------------------------
// Computed variables
//------------------------------------------------------------------------------

   alpha_d: Double;   // per_second (in L_type_calcium_current_d_gate)
   beta_d: Double;   // per_second (in L_type_calcium_current_d_gate)
   d_inf: Double;   // dimensionless (in L_type_calcium_current_d_gate)
   tau_d: Double;   // second (in L_type_calcium_current_d_gate)
   f2_inf: Double;   // dimensionless (in L_type_calcium_current_f2_gate)
   tau_f2: Double;   // second (in L_type_calcium_current_f2_gate)
   f_inf: Double;   // dimensionless (in L_type_calcium_current_f_gate)
   tau_f: Double;   // second (in L_type_calcium_current_f_gate)
   i_CaL: Double;   // nanoA (in L_type_calcium_current)
   beta_achf: Double;   // per_second (in acetylcholine_sensitive_current_achf_gate)
   beta_achs: Double;   // per_second (in acetylcholine_sensitive_current_achs_gate)
   g_ACh: Double;   // microS (in acetylcholine_sensitive_current)
   i_ACh: Double;   // nanoA (in acetylcholine_sensitive_current)
   i_b: Double;   // nanoA (in background_current)
   alpha_h1: Double;   // per_second (in fast_sodium_current_h1_gate)
   beta_h1: Double;   // per_second (in fast_sodium_current_h1_gate)
   h1_inf: Double;   // dimensionless (in fast_sodium_current_h1_gate)
   tau_h1: Double;   // second (in fast_sodium_current_h1_gate)
   alpha_h2: Double;   // per_second (in fast_sodium_current_h2_gate)
   beta_h2: Double;   // per_second (in fast_sodium_current_h2_gate)
   h2_inf: Double;   // dimensionless (in fast_sodium_current_h2_gate)
   tau_h2: Double;   // second (in fast_sodium_current_h2_gate)
   E0_m: Double;   // millivolt (in fast_sodium_current_m_gate)
   alpha_m: Double;   // per_second (in fast_sodium_current_m_gate)
   beta_m: Double;   // per_second (in fast_sodium_current_m_gate)
   E_Na: Double;   // millivolt (in fast_sodium_current)
   i_Na: Double;   // nanoA (in fast_sodium_current)
   tau_y: Double;   // second (in hyperpolarising_activated_current_y_gate)
   y_inf: Double;   // dimensionless (in hyperpolarising_activated_current_y_gate)
   i_f: Double;   // nanoA (in hyperpolarising_activated_current)
   V_rel: Double;   // micrometre3 (in intracellular_calcium_concentration)
   V_sub: Double;   // micrometre3 (in intracellular_calcium_concentration)
   V_up: Double;   // micrometre3 (in intracellular_calcium_concentration)
   Vi: Double;   // micrometre3 (in intracellular_calcium_concentration)
   diff_f_CMi: Double;   // per_second (in intracellular_calcium_concentration)
   diff_f_CMs: Double;   // per_second (in intracellular_calcium_concentration)
   diff_f_CQ: Double;   // per_second (in intracellular_calcium_concentration)
   diff_f_CSL: Double;   // per_second (in intracellular_calcium_concentration)
   diff_f_TC: Double;   // per_second (in intracellular_calcium_concentration)
   diff_f_TMC: Double;   // per_second (in intracellular_calcium_concentration)
   diff_f_TMM: Double;   // per_second (in intracellular_calcium_concentration)
   i_diff: Double;   // millimolar_per_second (in intracellular_calcium_concentration)
   i_rel: Double;   // millimolar_per_second (in intracellular_calcium_concentration)
   i_tr: Double;   // millimolar_per_second (in intracellular_calcium_concentration)
   i_up: Double;   // millimolar_per_second (in intracellular_calcium_concentration)
   RTONF: Double;   // millivolt (in membrane)
   paf_infinity: Double;   // dimensionless (in rapid_delayed_rectifier_potassium_current_paf_gate)
   tau_paf: Double;   // second (in rapid_delayed_rectifier_potassium_current_paf_gate)
   pas_infinity: Double;   // dimensionless (in rapid_delayed_rectifier_potassium_current_pas_gate)
   tau_pas: Double;   // second (in rapid_delayed_rectifier_potassium_current_pas_gate)
   alpha_pik: Double;   // per_second (in rapid_delayed_rectifier_potassium_current_pik_gate)
   beta_pik: Double;   // per_second (in rapid_delayed_rectifier_potassium_current_pik_gate)
   pik_infinity: Double;   // dimensionless (in rapid_delayed_rectifier_potassium_current_pik_gate)
   tau_pik: Double;   // second (in rapid_delayed_rectifier_potassium_current_pik_gate)
   E_K_1: Double;   // millivolt (E_K in rapid_delayed_rectifier_potassium_current)
   i_Kr: Double;   // nanoA (in rapid_delayed_rectifier_potassium_current)
   di: Double;   // dimensionless (in sodium_calcium_exchange_current)
   i_NaCa_do: Double;   // dimensionless (in sodium_calcium_exchange_current)
   i_NaCa: Double;   // nanoA (in sodium_calcium_exchange_current)
   k12: Double;   // dimensionless (in sodium_calcium_exchange_current)
   k14: Double;   // dimensionless (in sodium_calcium_exchange_current)
   k21: Double;   // dimensionless (in sodium_calcium_exchange_current)
   k23: Double;   // dimensionless (in sodium_calcium_exchange_current)
   k32: Double;   // dimensionless (in sodium_calcium_exchange_current)
   k34: Double;   // dimensionless (in sodium_calcium_exchange_current)
   k41: Double;   // dimensionless (in sodium_calcium_exchange_current)
   k43: Double;   // dimensionless (in sodium_calcium_exchange_current)
   x1: Double;   // dimensionless (in sodium_calcium_exchange_current)
   x2: Double;   // dimensionless (in sodium_calcium_exchange_current)
   x3: Double;   // dimensionless (in sodium_calcium_exchange_current)
   x4: Double;   // dimensionless (in sodium_calcium_exchange_current)
   i_p_2: Double;   // nanoA (i_p in sodium_potassium_pump)
   alpha_qa: Double;   // per_second (in sustained_outward_potassium_current_qa_gate)
   beta_qa: Double;   // per_second (in sustained_outward_potassium_current_qa_gate)
   qa_infinity: Double;   // dimensionless (in sustained_outward_potassium_current_qa_gate)
   tau_qa: Double;   // second (in sustained_outward_potassium_current_qa_gate)
   alpha_qi: Double;   // per_second (in sustained_outward_potassium_current_qi_gate)
   beta_qi: Double;   // per_second (in sustained_outward_potassium_current_qi_gate)
   qi_infinity: Double;   // dimensionless (in sustained_outward_potassium_current_qi_gate)
   tau_qi: Double;   // second (in sustained_outward_potassium_current_qi_gate)
   i_st: Double;   // nanoA (in sustained_outward_potassium_current)
   g_K1_prime: Double;   // microS (in time_independent_potassium_current)
   i_K1: Double;   // nanoA (in time_independent_potassium_current)
   qfast_infinity: Double;   // dimensionless (in transient_outward_potassium_current_qfast_gate)
   tau_qfast: Double;   // second (in transient_outward_potassium_current_qfast_gate)
   qslow_infinity: Double;   // dimensionless (in transient_outward_potassium_current_qslow_gate)
   tau_qslow: Double;   // second (in transient_outward_potassium_current_qslow_gate)
   r_infinity: Double;   // dimensionless (in transient_outward_potassium_current_r_gate)
   tau_r: Double;   // second (in transient_outward_potassium_current_r_gate)
   E_K_2: Double;   // millivolt (E_K in transient_outward_potassium_current)
   i_to: Double;   // nanoA (in transient_outward_potassium_current)

//------------------------------------------------------------------------------
// Procedures
//------------------------------------------------------------------------------

  Procedure Init;
  Procedure Compute(time: Double);
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

Procedure Tinada_N_model_2009.Init;
Begin
   //---------------------------------------------------------------------------
   // State variables
   //---------------------------------------------------------------------------

   Y[0] := 0.00179250298710316;   // d (dimensionless) (in L_type_calcium_current_d_gate)
   Y[1] := 0.774394220125623;   // f2 (dimensionless) (in L_type_calcium_current_f2_gate)
   Y[2] := 0.975550840189597;   // f1 (dimensionless) (f in L_type_calcium_current_f_gate)
   Y[3] := 0.550559577208797;   // achf (dimensionless) (in acetylcholine_sensitive_current_achf_gate)
   Y[4] := 0.567277036232041;   // achs (dimensionless) (in acetylcholine_sensitive_current_achs_gate)
   Y[5] := 0.0243210273637729;   // h1 (dimensionless) (in fast_sodium_current_h1_gate)
   Y[6] := 0.0157156121147801;   // h2 (dimensionless) (in fast_sodium_current_h2_gate)
   Y[7] := 0.143642247226618;   // m (dimensionless) (in fast_sodium_current_m_gate)
   Y[8] := 0.0462303183096481;   // y (dimensionless) (in hyperpolarising_activated_current_y_gate)
   Y[9] := 0.296249516481577;   // Ca_rel (millimolar) (in intracellular_calcium_concentration)
   Y[10] := 1.11092514657408;   // Ca_up (millimolar) (in intracellular_calcium_concentration)
   Y[11] := 0.000184969821581882;   // Cai (millimolar) (in intracellular_calcium_concentration)
   Y[12] := 0.000160310601192365;   // Casub (millimolar) (in intracellular_calcium_concentration)
   Y[13] := 0.0723007987059414;   // f_CMi (dimensionless) (in intracellular_calcium_concentration)
   Y[14] := 0.0630771339141488;   // f_CMs (dimensionless) (in intracellular_calcium_concentration)
   Y[15] := 0.261430602900137;   // f_CQ (dimensionless) (in intracellular_calcium_concentration)
   Y[16] := 4.1497704886823e-5;   // f_CSL (dimensionless) (in intracellular_calcium_concentration)
   Y[17] := 0.0356473236675985;   // f_TC (dimensionless) (in intracellular_calcium_concentration)
   Y[18] := 0.443317425115817;   // f_TMC (dimensionless) (in intracellular_calcium_concentration)
   Y[19] := 0.491718960234865;   // f_TMM (dimensionless) (in intracellular_calcium_concentration)
   Y[20] := -49.7094187908202;   // V (millivolt) (in membrane)
   Y[21] := 0.192515363116553;   // paf (dimensionless) (in rapid_delayed_rectifier_potassium_current_paf_gate)
   Y[22] := 0.0797182955833868;   // pas (dimensionless) (in rapid_delayed_rectifier_potassium_current_pas_gate)
   Y[23] := 0.949023698965401;   // pik (dimensionless) (in rapid_delayed_rectifier_potassium_current_pik_gate)
   Y[24] := 0.476404610622697;   // qa (dimensionless) (in sustained_outward_potassium_current_qa_gate)
   Y[25] := 0.542303657353244;   // qi (dimensionless) (in sustained_outward_potassium_current_qi_gate)
   Y[26] := 0.899732315818241;   // q_fast (dimensionless) (in transient_outward_potassium_current_qfast_gate)
   Y[27] := 0.190111737767474;   // q_slow (dimensionless) (in transient_outward_potassium_current_qslow_gate)
   Y[28] := 0.0296516611999521;   // r1 (dimensionless) (r in transient_outward_potassium_current_r_gate)

   YNames[0] := 'd';
   YNames[1] := 'f2';
   YNames[2] := 'f1';
   YNames[3] := 'achf';
   YNames[4] := 'achs';
   YNames[5] := 'h1';
   YNames[6] := 'h2';
   YNames[7] := 'm';
   YNames[8] := 'y';
   YNames[9] := 'Ca_rel';
   YNames[10] := 'Ca_up';
   YNames[11] := 'Cai';
   YNames[12] := 'Casub';
   YNames[13] := 'f_CMi';
   YNames[14] := 'f_CMs';
   YNames[15] := 'f_CQ';
   YNames[16] := 'f_CSL';
   YNames[17] := 'f_TC';
   YNames[18] := 'f_TMC';
   YNames[19] := 'f_TMM';
   YNames[20] := 'V';
   YNames[21] := 'paf';
   YNames[22] := 'pas';
   YNames[23] := 'pik';
   YNames[24] := 'qa';
   YNames[25] := 'qi';
   YNames[26] := 'q_fast';
   YNames[27] := 'q_slow';
   YNames[28] := 'r1';

   YUnits[0] := 'dimensionless';
   YUnits[1] := 'dimensionless';
   YUnits[2] := 'dimensionless';
   YUnits[3] := 'dimensionless';
   YUnits[4] := 'dimensionless';
   YUnits[5] := 'dimensionless';
   YUnits[6] := 'dimensionless';
   YUnits[7] := 'dimensionless';
   YUnits[8] := 'dimensionless';
   YUnits[9] := 'millimolar';
   YUnits[10] := 'millimolar';
   YUnits[11] := 'millimolar';
   YUnits[12] := 'millimolar';
   YUnits[13] := 'dimensionless';
   YUnits[14] := 'dimensionless';
   YUnits[15] := 'dimensionless';
   YUnits[16] := 'dimensionless';
   YUnits[17] := 'dimensionless';
   YUnits[18] := 'dimensionless';
   YUnits[19] := 'dimensionless';
   YUnits[20] := 'millivolt';
   YUnits[21] := 'dimensionless';
   YUnits[22] := 'dimensionless';
   YUnits[23] := 'dimensionless';
   YUnits[24] := 'dimensionless';
   YUnits[25] := 'dimensionless';
   YUnits[26] := 'dimensionless';
   YUnits[27] := 'dimensionless';
   YUnits[28] := 'dimensionless';

   YComponents[0] := 'L_type_calcium_current_d_gate';
   YComponents[1] := 'L_type_calcium_current_f2_gate';
   YComponents[2] := 'L_type_calcium_current_f_gate';
   YComponents[3] := 'acetylcholine_sensitive_current_achf_gate';
   YComponents[4] := 'acetylcholine_sensitive_current_achs_gate';
   YComponents[5] := 'fast_sodium_current_h1_gate';
   YComponents[6] := 'fast_sodium_current_h2_gate';
   YComponents[7] := 'fast_sodium_current_m_gate';
   YComponents[8] := 'hyperpolarising_activated_current_y_gate';
   YComponents[9] := 'intracellular_calcium_concentration';
   YComponents[10] := 'intracellular_calcium_concentration';
   YComponents[11] := 'intracellular_calcium_concentration';
   YComponents[12] := 'intracellular_calcium_concentration';
   YComponents[13] := 'intracellular_calcium_concentration';
   YComponents[14] := 'intracellular_calcium_concentration';
   YComponents[15] := 'intracellular_calcium_concentration';
   YComponents[16] := 'intracellular_calcium_concentration';
   YComponents[17] := 'intracellular_calcium_concentration';
   YComponents[18] := 'intracellular_calcium_concentration';
   YComponents[19] := 'intracellular_calcium_concentration';
   YComponents[20] := 'membrane';
   YComponents[21] := 'rapid_delayed_rectifier_potassium_current_paf_gate';
   YComponents[22] := 'rapid_delayed_rectifier_potassium_current_pas_gate';
   YComponents[23] := 'rapid_delayed_rectifier_potassium_current_pik_gate';
   YComponents[24] := 'sustained_outward_potassium_current_qa_gate';
   YComponents[25] := 'sustained_outward_potassium_current_qi_gate';
   YComponents[26] := 'transient_outward_potassium_current_qfast_gate';
   YComponents[27] := 'transient_outward_potassium_current_qslow_gate';
   YComponents[28] := 'transient_outward_potassium_current_r_gate';

   //---------------------------------------------------------------------------
   // Constants
   //---------------------------------------------------------------------------

   act_shift := -15.0;   // millivolt (in L_type_calcium_current_d_gate)
   slope_factor_act := -5.0;   // millivolt (in L_type_calcium_current_d_gate)
   inact_shift_1 := -5.0;   // millivolt (inact_shift in L_type_calcium_current_f2_gate)
   inact_shift_2 := -5.0;   // millivolt (inact_shift in L_type_calcium_current_f_gate)
   E_CaL := 62.0;   // millivolt (in L_type_calcium_current)
   g_CaL := 0.009;   // microS (in L_type_calcium_current)
   alpha_achf := 73.1;   // per_second (in acetylcholine_sensitive_current_achf_gate)
   alpha_achs := 3.7;   // per_second (in acetylcholine_sensitive_current_achs_gate)
   ACh := 0.0;   // millimolar (in acetylcholine_sensitive_current)
   K_ACh := 0.00035;   // millimolar (in acetylcholine_sensitive_current)
   g_ACh_max := 0.0198;   // microS (in acetylcholine_sensitive_current)
   E_b := -22.5;   // millivolt (in background_current)
   g_b := 0.0012;   // microS (in background_current)
   Cao := 2.0;   // millimolar (in extracellular_calcium_concentration)
   Kc := 5.4;   // millimolar (in extracellular_potassium_concentration)
   Nao := 140.0;   // millimolar (in extracellular_sodium_concentration)
   delta_m := 1.0e-5;   // millivolt (in fast_sodium_current_m_gate)
   g_Na := 0.0;   // microlitre_per_second (in fast_sodium_current)
   g_f := 0.001;   // microS (in hyperpolarising_activated_current)
   K_up := 0.0006;   // millimolar (in intracellular_calcium_concentration)
   P_rel := 1500.0;   // per_second (in intracellular_calcium_concentration)
   V_cell := 3.18872e-6;   // micrometre3 (in intracellular_calcium_concentration)
   tau_tr := 0.06;   // second (in intracellular_calcium_concentration)
   Ki := 140.0;   // millimolar (in intracellular_potassium_concentration)
   Nai := 8.0;   // millimolar (in intracellular_sodium_concentration)
   C := 4.0e-5;   // microF (in membrane)
   F2 := 96485.3415;   // coulomb_per_mole (F in membrane)
   R2 := 8314.472;   // joule_per_kilomole_kelvin (R in membrane)
   T := 310.0;   // kelvin (in membrane)
   g_Kr := 0.0035;   // microS (in rapid_delayed_rectifier_potassium_current)
   K1ni := 395.3;   // millimolar (in sodium_calcium_exchange_current)
   K1no := 1628.0;   // millimolar (in sodium_calcium_exchange_current)
   K2ni := 2.289;   // millimolar (in sodium_calcium_exchange_current)
   K2no := 561.4;   // millimolar (in sodium_calcium_exchange_current)
   K3ni := 26.44;   // millimolar (in sodium_calcium_exchange_current)
   K3no := 4.663;   // millimolar (in sodium_calcium_exchange_current)
   Kci := 0.0207;   // millimolar (in sodium_calcium_exchange_current)
   Kcni := 26.44;   // millimolar (in sodium_calcium_exchange_current)
   Kco := 3.663;   // millimolar (in sodium_calcium_exchange_current)
   Qci := 0.1369;   // dimensionless (in sodium_calcium_exchange_current)
   Qco := 0.0;   // dimensionless (in sodium_calcium_exchange_current)
   Qn := 0.4315;   // dimensionless (in sodium_calcium_exchange_current)
   kNaCa := 2.14455;   // nanoA (in sodium_calcium_exchange_current)
   I_p_1 := 0.14268;   // nanoA (I_p in sodium_potassium_pump)
   E_st := -37.4;   // millivolt (in sustained_outward_potassium_current)
   g_st := 0.0001;   // microS (in sustained_outward_potassium_current)
   g_K1 := 0.0;   // microS (in time_independent_potassium_current)
   g_to := 0.0;   // microS (in transient_outward_potassium_current)

   //---------------------------------------------------------------------------
   // Computed variables
   //---------------------------------------------------------------------------

   RTONF := R2*T/F2;
   E_K_1 := RTONF*LN(Kc/Ki);
   E_Na := RTONF*LN(Nao/Nai);
   V_rel := 0.0012*V_cell;
   V_up := 0.0116*V_cell;
   V_sub := 0.01*V_cell;
   Vi := 0.46*V_cell-V_sub;
   k43 := Nai/(K3ni+Nai);
   k34 := Nao/(K3no+Nao);
   E_K_2 := RTONF*LN(Kc/Ki);

   GNa_Available := 1.0 ;
   GK_Available := 1.0 ;
   GCaL_Available := 1.0 ;
   BetaADR_Active := 0.0 ;

End;

//------------------------------------------------------------------------------
// Computation
//------------------------------------------------------------------------------

Procedure Tinada_N_model_2009.Compute(time: Double);
Begin
   // time: time (second)

   g_ACh := g_ACh_max*Y[3]*Y[4]*Power(ACh, 1.5)/(Power(K_ACh, 1.5)+Power(ACh, 1.5));
   i_ACh := g_ACh*Kc/(10.0+Kc)*(Y[20]-E_K_1)/(1.0+Exp((Y[20]-E_K_1-140.0)/(2.5*RTONF)));
   i_CaL := g_CaL*Y[0]*(0.675*Y[2]+0.325*Y[1])*(Y[20]-E_CaL)*(1.0-i_ACh*ACh/(0.9e-4+ACh)/1.0);
   i_CaL := i_CaL*(1.0 + BetaADR_active)*GCaL_Available ;
   alpha_d := -26.12*(Y[20]+35.0)/(Exp((Y[20]+35.0)/-2.5)-1.0)+-78.11*Y[20]/(Exp(-0.208*Y[20])-1.0);
   beta_d := 10.52*(Y[20]-5.0)/(Exp(0.4*(Y[20]-5.0))-1.0);
   d_inf := 1.0/(1.0+Exp((Y[20]-(-3.2+act_shift))/slope_factor_act));
   tau_d := 1.0/(alpha_d+beta_d);
   dY[0] := (d_inf-Y[0])/tau_d;
   f2_inf := 1.0/(1.0+Exp((Y[20]-(-24.0+inact_shift_1))/6.31));
   tau_f2 := 0.06+0.48076*2.25*Exp(-Sqr(Y[20]-(-40.0))/138.04);
   dY[1] := (f2_inf-Y[1])/tau_f2;
   f_inf := 1.0/(1.0+Exp((Y[20]-(-24.0+inact_shift_2))/6.31));
   tau_f := 0.01+0.1539*Exp(-Sqr(Y[20]+40.0)/185.67);
   dY[2] := (f_inf-Y[2])/tau_f;
   beta_achf := 120.0/(1.0+Exp(-(Y[20]+50.0)/15.0));
   dY[3] := alpha_achf*(1.0-Y[3])-beta_achf*Y[3];
   beta_achs := 5.82/(1.0+Exp(-(Y[20]+50.0)/15.0));
   dY[4] := alpha_achs*(1.0-Y[4])-beta_achs*Y[4];
   i_b := g_b*(Y[20]-E_b);
   i_Na := g_Na*Power(Y[7], 3.0)*(0.635*Y[5]+0.365*Y[6])*Nao*Y[20]*F2/RTONF*(Exp((Y[20]-E_Na)/RTONF)-1.0)/(Exp(Y[20]/RTONF)-1.0);
   i_Na := i_Na*GNa_Available ;
   alpha_h1 := 44.9*Exp((Y[20]+66.9)/-5.57);
   beta_h1 := 1491.0/(1.0+323.3*Exp((Y[20]+94.6)/-12.9));
   h1_inf := alpha_h1/(alpha_h1+beta_h1);
   tau_h1 := 0.03/(1.0+Exp((Y[20]+40.0)/6.0))+0.00035;
   dY[5] := (h1_inf-Y[5])/tau_h1;
   alpha_h2 := 44.9*Exp((Y[20]+66.9)/-5.57);
   beta_h2 := 1491.0/(1.0+323.3*Exp((Y[20]+94.6)/-12.9));
   h2_inf := alpha_h2/(alpha_h2+beta_h2);
   tau_h2 := 0.12/(1.0+Exp((Y[20]+60.0)/2.0))+0.00295;
   dY[6] := (h2_inf-Y[6])/tau_h2;
   E0_m := Y[20]+44.4;

   If (Abs(E0_m) < delta_m) Then
      alpha_m := -460.0*-12.673/Exp(E0_m/-12.673)
   Else
      alpha_m := -460.0*E0_m/(Exp(E0_m/-12.673)-1.0);

   beta_m := 18400.0*Exp(E0_m/-12.673);
   dY[7] := alpha_m*(1.0-Y[7])-beta_m*Y[7];
   i_f := Y[8]*g_f*(Y[20]-(-30.0));
   y_inf := 1.0/(1.0+Exp((Y[20]+83.19--7.2*Power(ACh, 0.69)/(Power(1.26e-5, 0.69)+Power(ACh, 0.69)))/13.56));
   tau_y := 0.25+2.0*Exp(-Sqr(Y[20]+70.0)/500.0);
   dY[8] := (y_inf-Y[8])/tau_y;
   i_diff := (Y[12]-Y[11])/0.04e-3;
   i_up := 5.0/(1.0+K_up/Y[11]);
   i_tr := (Y[10]-Y[9])/tau_tr;
   i_rel := P_rel*(Y[9]-Y[12])/(1.0+Sqr(0.0012/Y[12]));
   dY[10] := i_up-i_tr*V_rel/V_up;
   diff_f_CQ := 0.534e3*Y[9]*(1.0-Y[15])-0.445e3*Y[15];
   dY[9] := i_tr-i_rel-10.0*diff_f_CQ;
   diff_f_CMi := 227.7e3*Y[11]*(1.0-Y[13])-0.542e3*Y[13];
   diff_f_TC := 88.8e3*Y[11]*(1.0-Y[17])-0.446e3*Y[17];
   diff_f_TMC := 227.7e3*Y[11]*(1.0-Y[18]-Y[19])-0.00751e3*Y[18];
   dY[11] := (i_diff*V_sub-i_up*V_up)/Vi-(0.045*diff_f_CMi+0.031*diff_f_TC+0.062*diff_f_TMC);
   k32 := Exp(Qn*Y[20]/(2.0*RTONF));
   di := 1.0+Y[12]/Kci*(1.0+Exp(-Qci*Y[20]/RTONF)+Nai/Kcni)+Nai/K1ni+Sqr(Nai)/(K1ni*K2ni)+Power(Nai, 3.0)/(K1ni*K2ni*K3ni);
   k14 := (Sqr(Nai)/(K1ni*K2ni)+Power(Nai, 3.0)/(K1ni*K2ni*K3ni))*Exp(Qn*Y[20]/(2.0*RTONF))/di;
   k12 := Y[12]/Kci*Exp(-Qci*Y[20]/RTONF)/di;
   k41 := Exp(-Qn*Y[20]/(2.0*RTONF));
   x2 := k32*k43*(k14+k12)+k41*k12*(k34+k32);
   i_NaCa_do := 1.0+Cao/Kco*(1.0+Exp(Qco*Y[20]/RTONF))+Nao/K1no+Sqr(Nao)/(K1no*K2no)+Power(Nao, 3.0)/(K1no*K2no*K3no);
   k21 := Cao/Kco*Exp(-Qco*Y[20]/RTONF)/i_NaCa_do;
   k23 := (Sqr(Nao)/(K1no*K2no)+Power(Nao, 3.0)/(K1no*K2no*K3no))*Exp(-Qn*Y[20]/(2.0*RTONF))/i_NaCa_do;
   x1 := k41*k34*(k23+k21)+k21*k32*(k43+k41);
   x3 := k14*k43*(k23+k21)+k12*k23*(k43+k41);
   x4 := k23*k34*(k14+k12)+k14*k21*(k34+k32);
   i_NaCa := kNaCa*(x2*k21-x1*k12)/(x1+x2+x3+x4);
   diff_f_CMs := 227.7e3*Y[12]*(1.0-Y[14])-0.542e3*Y[14];
   diff_f_CSL := 0.001*(115.0*Y[12]*(1.0-Y[16])-1000.0*Y[16]);
   dY[12] := (-(i_CaL-2.0*i_NaCa)/(2.0*F2)+i_rel*V_rel)/V_sub-i_diff-0.045*diff_f_CMs-0.031/1.2*diff_f_CSL;
   dY[17] := diff_f_TC;
   dY[18] := diff_f_TMC;
   diff_f_TMM := 2.277e3*2.5*(1.0-Y[18]-Y[19])-0.751e3*Y[19];
   dY[19] := diff_f_TMM;
   dY[13] := diff_f_CMi;
   dY[14] := diff_f_CMs;
   dY[15] := diff_f_CQ;
   dY[16] := diff_f_CSL;
   i_to := g_to*Y[28]*(0.45*Y[26]+0.55*Y[27])*(Y[20]-E_K_2);
   i_Kr := g_Kr*(0.9*Y[21]+0.1*Y[22])*Y[23]*(Y[20]-E_K_1);
   i_Kr := i_Kr*(1.0 + 0.5*BetaADR_active)*GK_Available ;
   i_st := g_st*Y[24]*Y[25]*(Y[20]-E_st);
   g_K1_prime := g_K1*(0.5+0.5/(1.0+Exp((Y[20]+30.0)/5.0)));
   i_K1 := g_K1_prime*Power(Kc/(Kc+0.59), 3.0)*(Y[20]+81.9)/(1.0+Exp(1.393*(Y[20]+81.9+3.6)/RTONF));
   i_p_2 := I_p_1*Power(Nai/(5.64+Nai), 3.0)*Sqr(Kc/(0.621+Kc))*1.6/(1.5+Exp(-(Y[20]+60.0)/40.0));
   dY[20] := -(i_Na+i_CaL+i_to+i_Kr+i_f+i_st+i_K1+i_NaCa+i_p_2+i_b+i_ACh)/C;
   paf_infinity := 1.0/(1.0+Exp((Y[20]+10.22)/-8.5));
   tau_paf := 1.0/(17.0*Exp(0.0398*Y[20])+0.211*Exp(-0.051*Y[20]));
   dY[21] := (paf_infinity-Y[21])/tau_paf;
   pas_infinity := 1.0/(1.0+Exp((Y[20]+10.22)/-8.5));
   tau_pas := 0.33581+0.90673*Exp(-Sqr(Y[20]+10.0)/988.05);
   dY[22] := (pas_infinity-Y[22])/tau_pas;
   pik_infinity := 1.0/(1.0+Exp((Y[20]+4.9)/15.14))*(1.0-0.3*Exp(-Sqr(Y[20])/500.0));
   alpha_pik := 92.01*Exp(-0.0183*Y[20]);
   beta_pik := 603.6*Exp(0.00942*Y[20]);
   tau_pik := 1.0/(alpha_pik+beta_pik);
   dY[23] := (pik_infinity-Y[23])/tau_pik;
   qa_infinity := 1.0/(1.0+Exp((Y[20]-(-49.1))/-8.98));
   alpha_qa := 1.0/(0.15*Exp(-Y[20]/11.0)+0.2*Exp(-Y[20]/700.0));
   beta_qa := 1.0/(16.0*Exp(Y[20]/8.0)+15.0*Exp(Y[20]/50.0));
   tau_qa := 0.001/(alpha_qa+beta_qa);
   dY[24] := (qa_infinity-Y[24])/tau_qa;
   alpha_qi := 0.1504/(3100.0*Exp(Y[20]/13.0)+700.0*Exp(Y[20]/70.0));
   beta_qi := 0.1504/(95.0*Exp(-Y[20]/10.0)+50.0*Exp(-Y[20]/700.0))+0.000229/(1.0+Exp(-Y[20]/5.0));
   qi_infinity := alpha_qi/(alpha_qi+beta_qi);
   tau_qi := 0.001/(alpha_qi+beta_qi);
   dY[25] := (qi_infinity-Y[25])/tau_qi;
   qfast_infinity := 1.0/(1.0+Exp((Y[20]+33.8)/6.12));
   tau_qfast := 12.66e-3+4.72716/(1.0+Exp((Y[20]+154.5)/23.96));
   dY[26] := (qfast_infinity-Y[26])/tau_qfast;
   qslow_infinity := 1.0/(1.0+Exp((Y[20]+33.8)/6.12));
   tau_qslow := 0.1+4.0*Exp(-Sqr(Y[20]+65.0)/500.0);
   dY[27] := (qslow_infinity-Y[27])/tau_qslow;
   r_infinity := 1.0/(1.0+Exp((Y[20]-7.44)/-16.4));
   tau_r := 0.596e-3+3.118e-3/(1.037*Exp(0.09*(Y[20]+30.61))+0.396*Exp(-0.12*(Y[20]+23.84)));
   dY[28] := (r_infinity-Y[28])/tau_r;
End;

procedure Tinada_N_model_2009.UpdateStates( dt : double ) ;
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
