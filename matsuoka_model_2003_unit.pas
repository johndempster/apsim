//==============================================================================
// CellML file:   C:\Program Files\COR\Models\matsuoka_model_2003.cellml
// CellML model:  matsuoka_model_2003
// Date and time: 23/07/2015 at 11:52:48
//------------------------------------------------------------------------------
// Conversion from CellML 1.0 to Delphi for Win32 was done using COR (0.9.31.1409)
//    Copyright 2002-2015 Dr Alan Garny
//    http://cor.physiol.ox.ac.uk/ - cor@physiol.ox.ac.uk
//------------------------------------------------------------------------------
// http://www.cellml.org/
//==============================================================================
// Role of Individual Ionic Current Systems in Ventricular Cells Hypothesized by a Model Study,
// Matsuoka S, Sarai N, Kuratomi S, Ono K, and Noma A, 2003,
// The Japanese Journal of Physiology, 53, 105-123. PubMed ID: 12877767

Unit matsuoka_model_2003_unit;

//------------------------------------------------------------------------------

Interface

//------------------------------------------------------------------------------

Const matsuoka_model_2003_NB_OF_STATE_VARIABLES_ = 37;

//------------------------------------------------------------------------------

Type
   Tmatsuoka_model_2003 = Class
      Public
         //---------------------------------------------------------------------
         // State variables
         //---------------------------------------------------------------------

         Y: Array[0..matsuoka_model_2003_NB_OF_STATE_VARIABLES_-1] Of Double;
         dY: Array[0..matsuoka_model_2003_NB_OF_STATE_VARIABLES_-1] Of Double;
         // 0: ATPi (millimolar) (in ATP_production)
         // 1: Ca_Total_1 (millimolar) (Ca_Total in Ca_concentrations_in_SR)
         // 2: Caup (millimolar) (in Ca_concentrations_in_SR)
         // 3: p_C (dimensionless) (in L_type_Ca_channel_Ca_dependent_gate)
         // 4: p_U (dimensionless) (in L_type_Ca_channel_Ca_dependent_gate)
         // 5: p_UCa (dimensionless) (in L_type_Ca_channel_Ca_dependent_gate)
         // 6: y1 (dimensionless) (y in L_type_Ca_channel_ultra_slow_gate)
         // 7: p_AI_CaL (dimensionless) (in L_type_Ca_channel_voltage_dependent_gate)
         // 8: p_AP_CaL (dimensionless) (in L_type_Ca_channel_voltage_dependent_gate)
         // 9: p_RP_CaL (dimensionless) (in L_type_Ca_channel_voltage_dependent_gate)
         // 10: X (micrometre) (in NL_model)
         // 11: pCB (dimensionless) (in NL_model)
         // 12: pCa (dimensionless) (in NL_model)
         // 13: pCaCB (dimensionless) (in NL_model)
         // 14: p_close_RyR (dimensionless) (in RyR_channel)
         // 15: p_open_RyR (dimensionless) (in RyR_channel)
         // 16: y2 (dimensionless) (y in SR_calcium_pump_y_gate)
         // 17: y11 (dimensionless) (y1 in T_type_Ca_channel_y1_gate)
         // 18: y21 (dimensionless) (y2 in T_type_Ca_channel_y2_gate)
         // 19: Ca_Total_2 (millimolar) (Ca_Total in internal_ion_concentrations)
         // 20: Ki (millimolar) (in internal_ion_concentrations)
         // 21: Nai (millimolar) (in internal_ion_concentrations)
         // 22: Vm (millivolt) (in membrane)
         // 23: y12 (dimensionless) (y1 in rapid_time_dependent_potassium_current_y1_gate)
         // 24: y22 (dimensionless) (y2 in rapid_time_dependent_potassium_current_y2_gate)
         // 25: y3 (dimensionless) (in rapid_time_dependent_potassium_current_y3_gate)
         // 26: y13 (dimensionless) (y1 in slow_time_dependent_potassium_current_y1_gate)
         // 27: y23 (dimensionless) (y2 in slow_time_dependent_potassium_current_y2_gate)
         // 28: y3 (dimensionless) (y in sodium_calcium_exchanger_y_gate)
         // 29: y4 (dimensionless) (y in sodium_current_ultra_slow_gate)
         // 30: p_AI_Na (dimensionless) (in sodium_current_voltage_dependent_gate)
         // 31: p_AP_Na (dimensionless) (in sodium_current_voltage_dependent_gate)
         // 32: p_RP_Na (dimensionless) (in sodium_current_voltage_dependent_gate)
         // 33: y5 (dimensionless) (y in sodium_potassium_pump_y_gate)
         // 34: y6 (dimensionless) (y in time_independent_potassium_current_y_gate)
         // 35: y14 (dimensionless) (y1 in transient_outward_current_y1_gate)
         // 36: y24 (dimensionless) (y2 in transient_outward_current_y2_gate)

         YNames: Array[0..matsuoka_model_2003_NB_OF_STATE_VARIABLES_-1] Of String;
         YUnits: Array[0..matsuoka_model_2003_NB_OF_STATE_VARIABLES_-1] Of String;
         YComponents: Array[0..matsuoka_model_2003_NB_OF_STATE_VARIABLES_-1] Of String;

         //---------------------------------------------------------------------
         // Constants
         //---------------------------------------------------------------------

         Adenosine_Total: Double;   // millimolar (in ATP_production)
         ProducingRate_Max: Double;   // per_millisecond (in ATP_production)
         CSQN_max: Double;   // millimolar (in Ca_concentrations_in_SR)
         K_mCSQN: Double;   // millimolar (in Ca_concentrations_in_SR)
         V_rel: Double;   // micrometre3 (in Ca_concentrations_in_SR)
         V_up: Double;   // micrometre3 (in Ca_concentrations_in_SR)
         k_CCa_C: Double;   // per_millisecond (in L_type_Ca_channel_Ca_dependent_gate)
         k_CCa_UCa: Double;   // per_millisecond (in L_type_Ca_channel_Ca_dependent_gate)
         k_C_CCa: Double;   // per_millimolar_millisecond (in L_type_Ca_channel_Ca_dependent_gate)
         k_C_U: Double;   // per_millisecond (in L_type_Ca_channel_Ca_dependent_gate)
         k_UCa_CCa: Double;   // per_millisecond (in L_type_Ca_channel_Ca_dependent_gate)
         k_U_C: Double;   // per_millisecond (in L_type_Ca_channel_Ca_dependent_gate)
         k_U_UCa: Double;   // per_millimolar_millisecond (in L_type_Ca_channel_Ca_dependent_gate)
         k_AI_AP_1: Double;   // per_millisecond (k_AI_AP in L_type_Ca_channel_voltage_dependent_gate)
         k_AP_AI_1: Double;   // per_millisecond (k_AP_AI in L_type_Ca_channel_voltage_dependent_gate)
         P_CaL: Double;   // picoA_per_millimolar (in L_type_Ca_channel)
         B: Double;   // per_millisecond (in NL_model)
         ForceFactor: Double;   // mN_per_mm2_micrometre_millimolar (in NL_model)
         KForceEC: Double;   // mN_per_mm2_micrometre5 (in NL_model)
         KForceLinearEc: Double;   // mN_per_mm2_micrometre (in NL_model)
         L: Double;   // micrometre (in NL_model)
         L_a: Double;   // micrometre (in NL_model)
         T_t: Double;   // millimolar (in NL_model)
         Y_1: Double;   // per_millimolar_millisecond (in NL_model)
         Y_2: Double;   // per_millisecond (in NL_model)
         Y_3: Double;   // per_millisecond (in NL_model)
         Y_4: Double;   // per_millisecond (in NL_model)
         Y_d: Double;   // millisecond_per_micrometre2 (in NL_model)
         Z_1: Double;   // per_millisecond (in NL_model)
         Z_2: Double;   // per_millisecond (in NL_model)
         Z_3: Double;   // per_millimolar_millisecond (in NL_model)
         ZeroForceEL: Double;   // micrometre (in NL_model)
         h_c: Double;   // micrometre (in NL_model)
         Diadid_Factor: Double;   // per_picoA_millisecond (in RyR_channel)
         P_RyR: Double;   // picoA_per_millimolar (in RyR_channel)
         k41: Double;   // per_millisecond (k4 in RyR_channel)
         P_SR_L: Double;   // picoA_per_millimolar (in SR_L_current)
         P_SR_T: Double;   // picoA_per_millimolar (in SR_T_current)
         Km_ATP_1: Double;   // millimolar (Km_ATP in SR_calcium_pump)
         Km_CaCyto: Double;   // millimolar (in SR_calcium_pump)
         Km_CaSR: Double;   // millimolar (in SR_calcium_pump)
         i_max: Double;   // picoA (in SR_calcium_pump)
         k11: Double;   // per_millisecond (k1 in SR_calcium_pump)
         k31: Double;   // per_millisecond (k3 in SR_calcium_pump)
         k42: Double;   // per_millisecond (k4 in SR_calcium_pump)
         P_CaT: Double;   // picoA_per_millimolar (in T_type_Ca_channel)
         P_Cab: Double;   // picoA_per_millimolar (in background_Cab_current)
         N: Double;   // picoF (in background_KATP_current)
         P_KATP: Double;   // nanoS_per_picoF (in background_KATP_current)
         P_bNSC: Double;   // picoA_per_millimolar (in background_NSC_current)
         P_lCa: Double;   // picoA_per_millimolar (in background_lCa_current)
         Cao: Double;   // millimolar (in external_ion_concentrations)
         Ko: Double;   // millimolar (in external_ion_concentrations)
         Nao: Double;   // millimolar (in external_ion_concentrations)
         CMDN_max: Double;   // millimolar (in internal_ion_concentrations)
         K_mCMDN: Double;   // millimolar (in internal_ion_concentrations)
         Vi: Double;   // micrometre3 (in internal_ion_concentrations)
         Cm: Double;   // picoF (in membrane)
         F: Double;   // coulomb_per_millimole (in membrane)
         R: Double;   // coulomb_millivolt_per_kelvin_millimole (in membrane)
         T: Double;   // kelvin (in membrane)
         stim_amplitude: Double;   // picoA (in membrane)
         stim_duration: Double;   // millisecond (in membrane)
         stim_end: Double;   // millisecond (in membrane)
         stim_period: Double;   // millisecond (in membrane)
         stim_start: Double;   // millisecond (in membrane)
         P_Kr: Double;   // nanoS_per_picoF (in rapid_time_dependent_potassium_current)
         beta_y2_1: Double;   // per_millisecond (beta_y2 in slow_time_dependent_potassium_current_y2_gate)
         P_Ks_K: Double;   // picoA_per_millimolar (in slow_time_dependent_potassium_current)
         P_Ks_Na: Double;   // picoA_per_millimolar (in slow_time_dependent_potassium_current)
         Km_Cai: Double;   // millimolar (in sodium_calcium_exchanger)
         Km_Cao: Double;   // millimolar (in sodium_calcium_exchanger)
         Km_Nai_1: Double;   // millimolar (Km_Nai in sodium_calcium_exchanger)
         Km_Nao_1: Double;   // millimolar (Km_Nao in sodium_calcium_exchanger)
         P_NaCa: Double;   // picoA_per_picoF (in sodium_calcium_exchanger)
         Partition: Double;   // dimensionless (in sodium_calcium_exchanger)
         k32: Double;   // per_millisecond (k3 in sodium_calcium_exchanger)
         k43: Double;   // per_millisecond (k4 in sodium_calcium_exchanger)
         k_AI_AP_2: Double;   // per_millisecond (k_AI_AP in sodium_current_voltage_dependent_gate)
         P_Na: Double;   // picoA_per_millimolar (in sodium_current)
         Km_ATP_2: Double;   // millimolar (Km_ATP in sodium_potassium_pump)
         Km_Ki: Double;   // millimolar (in sodium_potassium_pump)
         Km_Ko: Double;   // millimolar (in sodium_potassium_pump)
         Km_Nai_2: Double;   // millimolar (Km_Nai in sodium_potassium_pump)
         Km_Nao_2: Double;   // millimolar (Km_Nao in sodium_potassium_pump)
         P_NaK: Double;   // picoA_per_picoF (in sodium_potassium_pump)
         k21: Double;   // per_millisecond (k2 in sodium_potassium_pump)
         k33: Double;   // per_millisecond (k3 in sodium_potassium_pump)
         k44: Double;   // per_millisecond (k4 in sodium_potassium_pump)
         P_K1_0: Double;   // nanoS_per_picoF (in time_independent_potassium_current)
         P_to_K: Double;   // picoA_per_millimolar (in transient_outward_current)
         P_to_Na: Double;   // picoA_per_millimolar (in transient_outward_current)

         //---------------------------------------------------------------------
         // Computed variables
         //---------------------------------------------------------------------

         Carel: Double;   // millimolar (in Ca_concentrations_in_SR)
         b11: Double;   // millimolar (b1 in Ca_concentrations_in_SR)
         c11: Double;   // millimolar2 (c1 in Ca_concentrations_in_SR)
         CaDiadic: Double;   // picoA (in L_type_Ca_channel_Ca_dependent_gate)
         CaEffC: Double;   // millimolar (in L_type_Ca_channel_Ca_dependent_gate)
         CaEffU: Double;   // millimolar (in L_type_Ca_channel_Ca_dependent_gate)
         Cacm: Double;   // millimolar (in L_type_Ca_channel_Ca_dependent_gate)
         iCaL: Double;   // picoA (in L_type_Ca_channel_Ca_dependent_gate)
         k_CCCa_Ca: Double;   // per_millisecond (in L_type_Ca_channel_Ca_dependent_gate)
         k_UCa_U: Double;   // per_millisecond (in L_type_Ca_channel_Ca_dependent_gate)
         k_UUCa_Ca: Double;   // per_millisecond (in L_type_Ca_channel_Ca_dependent_gate)
         p_CCa: Double;   // dimensionless (in L_type_Ca_channel_Ca_dependent_gate)
         alpha_y_1: Double;   // per_millisecond (alpha_y in L_type_Ca_channel_ultra_slow_gate)
         beta_y_1: Double;   // per_millisecond (beta_y in L_type_Ca_channel_ultra_slow_gate)
         k_AI_RI_1: Double;   // per_millisecond (k_AI_RI in L_type_Ca_channel_voltage_dependent_gate)
         k_AP_RP_1: Double;   // per_millisecond (k_AP_RP in L_type_Ca_channel_voltage_dependent_gate)
         k_RI_AI_1: Double;   // per_millisecond (k_RI_AI in L_type_Ca_channel_voltage_dependent_gate)
         k_RI_RP_1: Double;   // per_millisecond (k_RI_RP in L_type_Ca_channel_voltage_dependent_gate)
         k_RP_AP_1: Double;   // per_millisecond (k_RP_AP in L_type_Ca_channel_voltage_dependent_gate)
         k_RP_RI_1: Double;   // per_millisecond (k_RP_RI in L_type_Ca_channel_voltage_dependent_gate)
         p_RI_CaL: Double;   // dimensionless (in L_type_Ca_channel_voltage_dependent_gate)
         i_CaL_Ca: Double;   // picoA (in L_type_Ca_channel)
         i_CaL_K: Double;   // picoA (in L_type_Ca_channel)
         i_CaL_Na: Double;   // picoA (in L_type_Ca_channel)
         i_Ca_L: Double;   // picoA (in L_type_Ca_channel)
         p_open_CaL: Double;   // dimensionless (in L_type_Ca_channel)
         CBBound: Double;   // millimolar (in NL_model)
         EffFraction: Double;   // dimensionless (in NL_model)
         ForceCB: Double;   // mN_per_mm2 (in NL_model)
         ForceEcomp: Double;   // mN_per_mm2 (in NL_model)
         ForceExt: Double;   // mN_per_mm2 (in NL_model)
         NewCBF: Double;   // mN_per_mm2_micrometre (in NL_model)
         Q_a: Double;   // per_millisecond (in NL_model)
         Q_b: Double;   // per_millisecond (in NL_model)
         Q_d: Double;   // per_millisecond (in NL_model)
         Q_d1: Double;   // per_millisecond (in NL_model)
         Q_d2: Double;   // per_millisecond (in NL_model)
         Q_r: Double;   // per_millisecond (in NL_model)
         dATPdt: Double;   // millimolar_per_millisecond (in NL_model)
         dCaidt: Double;   // millimolar_per_millisecond (in NL_model)
         h: Double;   // micrometre (in NL_model)
         p: Double;   // dimensionless (in NL_model)
         i_RyR: Double;   // picoA (in RyR_channel)
         k12: Double;   // per_millisecond (k1 in RyR_channel)
         k22: Double;   // per_millisecond (k2 in RyR_channel)
         k34: Double;   // per_millisecond (k3 in RyR_channel)
         i_SR_L: Double;   // picoA (in SR_L_current)
         i_SR_T: Double;   // picoA (in SR_T_current)
         alpha_y_2: Double;   // per_millisecond (alpha_y in SR_calcium_pump_y_gate)
         beta_y_2: Double;   // per_millisecond (beta_y in SR_calcium_pump_y_gate)
         i_SR_U: Double;   // picoA (in SR_calcium_pump)
         k23: Double;   // per_millisecond (k2 in SR_calcium_pump)
         p_E1: Double;   // dimensionless (in SR_calcium_pump)
         p_E1Ca_1: Double;   // dimensionless (p_E1Ca in SR_calcium_pump)
         p_E2: Double;   // dimensionless (in SR_calcium_pump)
         p_E2Ca_1: Double;   // dimensionless (p_E2Ca in SR_calcium_pump)
         alpha_y1_1: Double;   // per_millisecond (alpha_y1 in T_type_Ca_channel_y1_gate)
         beta_y1_1: Double;   // per_millisecond (beta_y1 in T_type_Ca_channel_y1_gate)
         alpha_y2_1: Double;   // per_millisecond (alpha_y2 in T_type_Ca_channel_y2_gate)
         beta_y2_2: Double;   // per_millisecond (beta_y2 in T_type_Ca_channel_y2_gate)
         i_Ca_T: Double;   // picoA (in T_type_Ca_channel)
         i_Cab: Double;   // picoA (in background_Cab_current)
         gamma: Double;   // nanoS (in background_KATP_current)
         i_KATP: Double;   // picoA (in background_KATP_current)
         p_open_1: Double;   // dimensionless (p_open in background_KATP_current)
         P_Kpl: Double;   // nanoS_per_millimolar (in background_Kpl_current)
         i_Kpl: Double;   // picoA (in background_Kpl_current)
         i_bNSC: Double;   // picoA (in background_NSC_current)
         i_bNSC_K: Double;   // picoA (in background_NSC_current)
         i_bNSC_Na: Double;   // picoA (in background_NSC_current)
         i_lCa: Double;   // picoA (in background_lCa_current)
         i_lCa_K: Double;   // picoA (in background_lCa_current)
         i_lCa_Na: Double;   // picoA (in background_lCa_current)
         p_open_2: Double;   // dimensionless (p_open in background_lCa_current)
         CF_Ca: Double;   // millimolar (in constant_field_equations)
         CF_K: Double;   // millimolar (in constant_field_equations)
         CF_Na: Double;   // millimolar (in constant_field_equations)
         Cai: Double;   // millimolar (in internal_ion_concentrations)
         b12: Double;   // millimolar (b1 in internal_ion_concentrations)
         c12: Double;   // millimolar2 (c1 in internal_ion_concentrations)
         i_net_Ca: Double;   // picoA (in internal_ion_concentrations)
         i_net_K: Double;   // picoA (in internal_ion_concentrations)
         i_net_Na: Double;   // picoA (in internal_ion_concentrations)
         i_I: Double;   // picoA (in membrane)
         i_ext: Double;   // picoA (in membrane)
         i_tot: Double;   // picoA (in membrane)
         alpha_y1_2: Double;   // per_millisecond (alpha_y1 in rapid_time_dependent_potassium_current_y1_gate)
         beta_y1_2: Double;   // per_millisecond (beta_y1 in rapid_time_dependent_potassium_current_y1_gate)
         alpha_y2_2: Double;   // per_millisecond (alpha_y2 in rapid_time_dependent_potassium_current_y2_gate)
         beta_y2_3: Double;   // per_millisecond (beta_y2 in rapid_time_dependent_potassium_current_y2_gate)
         alpha_y3: Double;   // per_millisecond (in rapid_time_dependent_potassium_current_y3_gate)
         beta_y3: Double;   // per_millisecond (in rapid_time_dependent_potassium_current_y3_gate)
         g_Kr: Double;   // nanoS (in rapid_time_dependent_potassium_current)
         i_Kr: Double;   // picoA (in rapid_time_dependent_potassium_current)
         alpha_y1_3: Double;   // per_millisecond (alpha_y1 in slow_time_dependent_potassium_current_y1_gate)
         beta_y1_3: Double;   // per_millisecond (beta_y1 in slow_time_dependent_potassium_current_y1_gate)
         alpha_y2_3: Double;   // per_millisecond (alpha_y2 in slow_time_dependent_potassium_current_y2_gate)
         i_Ks: Double;   // picoA (in slow_time_dependent_potassium_current)
         i_Ks_K: Double;   // picoA (in slow_time_dependent_potassium_current)
         i_Ks_Na: Double;   // picoA (in slow_time_dependent_potassium_current)
         alpha_y_3: Double;   // per_millisecond (alpha_y in sodium_calcium_exchanger_y_gate)
         beta_y_3: Double;   // per_millisecond (beta_y in sodium_calcium_exchanger_y_gate)
         i_NaCa: Double;   // picoA (in sodium_calcium_exchanger)
         k13: Double;   // per_millisecond (k1 in sodium_calcium_exchanger)
         k24: Double;   // per_millisecond (k2 in sodium_calcium_exchanger)
         p_E1Ca_2: Double;   // dimensionless (p_E1Ca in sodium_calcium_exchanger)
         p_E1Na_1: Double;   // dimensionless (p_E1Na in sodium_calcium_exchanger)
         p_E2Ca_2: Double;   // dimensionless (p_E2Ca in sodium_calcium_exchanger)
         p_E2Na_1: Double;   // dimensionless (p_E2Na in sodium_calcium_exchanger)
         alpha_y_4: Double;   // per_millisecond (alpha_y in sodium_current_ultra_slow_gate)
         beta_y_4: Double;   // per_millisecond (beta_y in sodium_current_ultra_slow_gate)
         k_AI_RI_2: Double;   // per_millisecond (k_AI_RI in sodium_current_voltage_dependent_gate)
         k_AP_AI_2: Double;   // per_millisecond (k_AP_AI in sodium_current_voltage_dependent_gate)
         k_AP_RP_2: Double;   // per_millisecond (k_AP_RP in sodium_current_voltage_dependent_gate)
         k_RI_AI_2: Double;   // per_millisecond (k_RI_AI in sodium_current_voltage_dependent_gate)
         k_RI_RP_2: Double;   // per_millisecond (k_RI_RP in sodium_current_voltage_dependent_gate)
         k_RP_AP_2: Double;   // per_millisecond (k_RP_AP in sodium_current_voltage_dependent_gate)
         k_RP_RI_2: Double;   // per_millisecond (k_RP_RI in sodium_current_voltage_dependent_gate)
         p_RI_Na: Double;   // dimensionless (in sodium_current_voltage_dependent_gate)
         i_Na: Double;   // picoA (in sodium_current)
         i_Na_K: Double;   // picoA (in sodium_current)
         i_Na_Na: Double;   // picoA (in sodium_current)
         alpha_y_5: Double;   // per_millisecond (alpha_y in sodium_potassium_pump_y_gate)
         beta_y_5: Double;   // per_millisecond (beta_y in sodium_potassium_pump_y_gate)
         Nao_Eff: Double;   // millimolar (in sodium_potassium_pump)
         i_NaK: Double;   // picoA (in sodium_potassium_pump)
         k14: Double;   // per_millisecond (k1 in sodium_potassium_pump)
         p_E1K: Double;   // dimensionless (in sodium_potassium_pump)
         p_E1Na_2: Double;   // dimensionless (p_E1Na in sodium_potassium_pump)
         p_E2K: Double;   // dimensionless (in sodium_potassium_pump)
         p_E2Na_2: Double;   // dimensionless (p_E2Na in sodium_potassium_pump)
         alpha_y_6: Double;   // per_millisecond (alpha_y in time_independent_potassium_current_y_gate)
         beta_y_6: Double;   // per_millisecond (beta_y in time_independent_potassium_current_y_gate)
         E_K: Double;   // millivolt (in time_independent_potassium_current)
         fB: Double;   // dimensionless (in time_independent_potassium_current)
         fO: Double;   // dimensionless (in time_independent_potassium_current)
         fO2: Double;   // dimensionless (in time_independent_potassium_current)
         fO3: Double;   // dimensionless (in time_independent_potassium_current)
         fO4: Double;   // dimensionless (in time_independent_potassium_current)
         g_K1: Double;   // nanoS (in time_independent_potassium_current)
         i_K1: Double;   // picoA (in time_independent_potassium_current)
         lambda: Double;   // per_millisecond (in time_independent_potassium_current)
         mu: Double;   // per_millisecond (in time_independent_potassium_current)
         alpha_y1_4: Double;   // per_millisecond (alpha_y1 in transient_outward_current_y1_gate)
         beta_y1_4: Double;   // per_millisecond (beta_y1 in transient_outward_current_y1_gate)
         alpha_y2_4: Double;   // per_millisecond (alpha_y2 in transient_outward_current_y2_gate)
         beta_y2_4: Double;   // per_millisecond (beta_y2 in transient_outward_current_y2_gate)
         i_to: Double;   // picoA (in transient_outward_current)
         i_to_K: Double;   // picoA (in transient_outward_current)
         i_to_Na: Double;   // picoA (in transient_outward_current)

         GNa_Available : Double ;
         GK_Available : Double ;
         GCaL_Available : Double ;
         BetaADR_Active : Double ;


         //---------------------------------------------------------------------
         // Procedures
         //---------------------------------------------------------------------

         Procedure Init;
         Procedure Compute(Const time: Double);
         Procedure UpdateStates( dt : double ) ;
   End;

//------------------------------------------------------------------------------

Implementation

//------------------------------------------------------------------------------

Uses
   Math;

//------------------------------------------------------------------------------
// Initialisation
//------------------------------------------------------------------------------

Procedure Tmatsuoka_model_2003.Init;
Begin
   //---------------------------------------------------------------------------
   // State variables
   //---------------------------------------------------------------------------

   Y[0] := 4.657102729020499;   // ATPi (millimolar) (in ATP_production)
   Y[1] := 9.455741736977666;   // Ca_Total_1 (millimolar) (Ca_Total in Ca_concentrations_in_SR)
   Y[2] := 2.611712901567567;   // Caup (millimolar) (in Ca_concentrations_in_SR)
   Y[3] := 0.4250747299372254;   // p_C (dimensionless) (in L_type_Ca_channel_Ca_dependent_gate)
   Y[4] := 0.17246483915629204;   // p_U (dimensionless) (in L_type_Ca_channel_Ca_dependent_gate)
   Y[5] := 6.098246017787626e-5;   // p_UCa (dimensionless) (in L_type_Ca_channel_Ca_dependent_gate)
   Y[6] := 0.9985266538252986;   // y1 (dimensionless) (y in L_type_Ca_channel_ultra_slow_gate)
   Y[7] := 8.77325391245903e-4;   // p_AI_CaL (dimensionless) (in L_type_Ca_channel_voltage_dependent_gate)
   Y[8] := 1.5445004166497696e-6;   // p_AP_CaL (dimensionless) (in L_type_Ca_channel_voltage_dependent_gate)
   Y[9] := 0.9968480629364956;   // p_RP_CaL (dimensionless) (in L_type_Ca_channel_voltage_dependent_gate)
   Y[10] := 0.9573749975411884;   // X (micrometre) (in NL_model)
   Y[11] := 4.2941813853474524e-4;   // pCB (dimensionless) (in NL_model)
   Y[12] := 0.02490898775497523;   // pCa (dimensionless) (in NL_model)
   Y[13] := 0.001990153835322864;   // pCaCB (dimensionless) (in NL_model)
   Y[14] := 0.19135178123107768;   // p_close_RyR (dimensionless) (in RyR_channel)
   Y[15] := 3.4314360001543243e-4;   // p_open_RyR (dimensionless) (in RyR_channel)
   Y[16] := 0.46108441538480216;   // y2 (dimensionless) (y in SR_calcium_pump_y_gate)
   Y[17] := 1.6882718240109127e-5;   // y11 (dimensionless) (y1 in T_type_Ca_channel_y1_gate)
   Y[18] := 0.8585352091865849;   // y21 (dimensionless) (y2 in T_type_Ca_channel_y2_gate)
   Y[19] := 4.0180173572968586e-4;   // Ca_Total_2 (millimolar) (Ca_Total in internal_ion_concentrations)
   Y[20] := 143.1837333000449;   // Ki (millimolar) (in internal_ion_concentrations)
   Y[21] := 4.925761439682025;   // Nai (millimolar) (in internal_ion_concentrations)
   Y[22] := -85.95752434460744;   // Vm (millivolt) (in membrane)
   Y[23] := 0.0018339931180983765;   // y12 (dimensionless) (y1 in rapid_time_dependent_potassium_current_y1_gate)
   Y[24] := 0.20443083454225305;   // y22 (dimensionless) (y2 in rapid_time_dependent_potassium_current_y2_gate)
   Y[25] := 0.967887666264921;   // y3 (dimensionless) (in rapid_time_dependent_potassium_current_y3_gate)
   Y[26] := 0.09738789658609195;   // y13 (dimensionless) (y1 in slow_time_dependent_potassium_current_y1_gate)
   Y[27] := 0.09745345578743213;   // y23 (dimensionless) (y2 in slow_time_dependent_potassium_current_y2_gate)
   Y[28] := 0.9891789193465331;   // y3 (dimensionless) (y in sodium_calcium_exchanger_y_gate)
   Y[29] := 0.5861887862983165;   // y4 (dimensionless) (y in sodium_current_ultra_slow_gate)
   Y[30] := 0.40285968661346977;   // p_AI_Na (dimensionless) (in sodium_current_voltage_dependent_gate)
   Y[31] := 1.779648367445368e-5;   // p_AP_Na (dimensionless) (in sodium_current_voltage_dependent_gate)
   Y[32] := 0.3556412697995689;   // p_RP_Na (dimensionless) (in sodium_current_voltage_dependent_gate)
   Y[33] := 0.5910747147428818;   // y5 (dimensionless) (y in sodium_potassium_pump_y_gate)
   Y[34] := 0.6080573900752752;   // y6 (dimensionless) (y in time_independent_potassium_current_y_gate)
   Y[35] := 7.956883250874798e-4;   // y14 (dimensionless) (y1 in transient_outward_current_y1_gate)
   Y[36] := 0.9999125083105881;   // y24 (dimensionless) (y2 in transient_outward_current_y2_gate)

   YNames[0] := 'ATPi';
   YNames[1] := 'Ca_Total_1';
   YNames[2] := 'Caup';
   YNames[3] := 'p_C';
   YNames[4] := 'p_U';
   YNames[5] := 'p_UCa';
   YNames[6] := 'y1';
   YNames[7] := 'p_AI_CaL';
   YNames[8] := 'p_AP_CaL';
   YNames[9] := 'p_RP_CaL';
   YNames[10] := 'X';
   YNames[11] := 'pCB';
   YNames[12] := 'pCa';
   YNames[13] := 'pCaCB';
   YNames[14] := 'p_close_RyR';
   YNames[15] := 'p_open_RyR';
   YNames[16] := 'y2';
   YNames[17] := 'y11';
   YNames[18] := 'y21';
   YNames[19] := 'Ca_Total_2';
   YNames[20] := 'Ki';
   YNames[21] := 'Nai';
   YNames[22] := 'Vm';
   YNames[23] := 'y12';
   YNames[24] := 'y22';
   YNames[25] := 'y3';
   YNames[26] := 'y13';
   YNames[27] := 'y23';
   YNames[28] := 'y3';
   YNames[29] := 'y4';
   YNames[30] := 'p_AI_Na';
   YNames[31] := 'p_AP_Na';
   YNames[32] := 'p_RP_Na';
   YNames[33] := 'y5';
   YNames[34] := 'y6';
   YNames[35] := 'y14';
   YNames[36] := 'y24';

   YUnits[0] := 'millimolar';
   YUnits[1] := 'millimolar';
   YUnits[2] := 'millimolar';
   YUnits[3] := 'dimensionless';
   YUnits[4] := 'dimensionless';
   YUnits[5] := 'dimensionless';
   YUnits[6] := 'dimensionless';
   YUnits[7] := 'dimensionless';
   YUnits[8] := 'dimensionless';
   YUnits[9] := 'dimensionless';
   YUnits[10] := 'micrometre';
   YUnits[11] := 'dimensionless';
   YUnits[12] := 'dimensionless';
   YUnits[13] := 'dimensionless';
   YUnits[14] := 'dimensionless';
   YUnits[15] := 'dimensionless';
   YUnits[16] := 'dimensionless';
   YUnits[17] := 'dimensionless';
   YUnits[18] := 'dimensionless';
   YUnits[19] := 'millimolar';
   YUnits[20] := 'millimolar';
   YUnits[21] := 'millimolar';
   YUnits[22] := 'millivolt';
   YUnits[23] := 'dimensionless';
   YUnits[24] := 'dimensionless';
   YUnits[25] := 'dimensionless';
   YUnits[26] := 'dimensionless';
   YUnits[27] := 'dimensionless';
   YUnits[28] := 'dimensionless';
   YUnits[29] := 'dimensionless';
   YUnits[30] := 'dimensionless';
   YUnits[31] := 'dimensionless';
   YUnits[32] := 'dimensionless';
   YUnits[33] := 'dimensionless';
   YUnits[34] := 'dimensionless';
   YUnits[35] := 'dimensionless';
   YUnits[36] := 'dimensionless';

   YComponents[0] := 'ATP_production';
   YComponents[1] := 'Ca_concentrations_in_SR';
   YComponents[2] := 'Ca_concentrations_in_SR';
   YComponents[3] := 'L_type_Ca_channel_Ca_dependent_gate';
   YComponents[4] := 'L_type_Ca_channel_Ca_dependent_gate';
   YComponents[5] := 'L_type_Ca_channel_Ca_dependent_gate';
   YComponents[6] := 'L_type_Ca_channel_ultra_slow_gate';
   YComponents[7] := 'L_type_Ca_channel_voltage_dependent_gate';
   YComponents[8] := 'L_type_Ca_channel_voltage_dependent_gate';
   YComponents[9] := 'L_type_Ca_channel_voltage_dependent_gate';
   YComponents[10] := 'NL_model';
   YComponents[11] := 'NL_model';
   YComponents[12] := 'NL_model';
   YComponents[13] := 'NL_model';
   YComponents[14] := 'RyR_channel';
   YComponents[15] := 'RyR_channel';
   YComponents[16] := 'SR_calcium_pump_y_gate';
   YComponents[17] := 'T_type_Ca_channel_y1_gate';
   YComponents[18] := 'T_type_Ca_channel_y2_gate';
   YComponents[19] := 'internal_ion_concentrations';
   YComponents[20] := 'internal_ion_concentrations';
   YComponents[21] := 'internal_ion_concentrations';
   YComponents[22] := 'membrane';
   YComponents[23] := 'rapid_time_dependent_potassium_current_y1_gate';
   YComponents[24] := 'rapid_time_dependent_potassium_current_y2_gate';
   YComponents[25] := 'rapid_time_dependent_potassium_current_y3_gate';
   YComponents[26] := 'slow_time_dependent_potassium_current_y1_gate';
   YComponents[27] := 'slow_time_dependent_potassium_current_y2_gate';
   YComponents[28] := 'sodium_calcium_exchanger_y_gate';
   YComponents[29] := 'sodium_current_ultra_slow_gate';
   YComponents[30] := 'sodium_current_voltage_dependent_gate';
   YComponents[31] := 'sodium_current_voltage_dependent_gate';
   YComponents[32] := 'sodium_current_voltage_dependent_gate';
   YComponents[33] := 'sodium_potassium_pump_y_gate';
   YComponents[34] := 'time_independent_potassium_current_y_gate';
   YComponents[35] := 'transient_outward_current_y1_gate';
   YComponents[36] := 'transient_outward_current_y2_gate';

   //---------------------------------------------------------------------------
   // Constants
   //---------------------------------------------------------------------------

   Adenosine_Total := 5.0;   // millimolar (in ATP_production)
   ProducingRate_Max := 0.003;   // per_millisecond (in ATP_production)
   CSQN_max := 10.0;   // millimolar (in Ca_concentrations_in_SR)
   K_mCSQN := 0.8;   // millimolar (in Ca_concentrations_in_SR)
   V_rel := 160.0;   // micrometre3 (in Ca_concentrations_in_SR)
   V_up := 400.0;   // micrometre3 (in Ca_concentrations_in_SR)
   k_CCa_C := 0.0042;   // per_millisecond (in L_type_Ca_channel_Ca_dependent_gate)
   k_CCa_UCa := 0.0003;   // per_millisecond (in L_type_Ca_channel_Ca_dependent_gate)
   k_C_CCa := 6.954;   // per_millimolar_millisecond (in L_type_Ca_channel_Ca_dependent_gate)
   k_C_U := 0.143;   // per_millisecond (in L_type_Ca_channel_Ca_dependent_gate)
   k_UCa_CCa := 0.35;   // per_millisecond (in L_type_Ca_channel_Ca_dependent_gate)
   k_U_C := 0.35;   // per_millisecond (in L_type_Ca_channel_Ca_dependent_gate)
   k_U_UCa := 6.954;   // per_millimolar_millisecond (in L_type_Ca_channel_Ca_dependent_gate)
   k_AI_AP_1 := 0.001;   // per_millisecond (k_AI_AP in L_type_Ca_channel_voltage_dependent_gate)
   k_AP_AI_1 := 0.004;   // per_millisecond (k_AP_AI in L_type_Ca_channel_voltage_dependent_gate)
   P_CaL := 8712.0;   // picoA_per_millimolar (in L_type_Ca_channel)
   B := 1.2;   // per_millisecond (in NL_model)
   ForceFactor := 1800000.0;   // mN_per_mm2_micrometre_millimolar (in NL_model)
   KForceEC := 140000.0;   // mN_per_mm2_micrometre5 (in NL_model)
   KForceLinearEc := 200.0;   // mN_per_mm2_micrometre (in NL_model)
   L := 0.9623799975411884;   // micrometre (in NL_model)
   L_a := 1.17;   // micrometre (in NL_model)
   T_t := 0.07;   // millimolar (in NL_model)
   Y_1 := 39.0;   // per_millimolar_millisecond (in NL_model)
   Y_2 := 0.0039;   // per_millisecond (in NL_model)
   Y_3 := 0.03;   // per_millisecond (in NL_model)
   Y_4 := 0.12;   // per_millisecond (in NL_model)
   Y_d := 0.027;   // millisecond_per_micrometre2 (in NL_model)
   Z_1 := 0.03;   // per_millisecond (in NL_model)
   Z_2 := 0.0039;   // per_millisecond (in NL_model)
   Z_3 := 1560.0;   // per_millimolar_millisecond (in NL_model)
   ZeroForceEL := 0.97;   // micrometre (in NL_model)
   h_c := 0.005;   // micrometre (in NL_model)
   Diadid_Factor := -150.0;   // per_picoA_millisecond (in RyR_channel)
   P_RyR := 62000.0;   // picoA_per_millimolar (in RyR_channel)
   k41 := 0.000849;   // per_millisecond (k4 in RyR_channel)
   P_SR_L := 459.0;   // picoA_per_millimolar (in SR_L_current)
   P_SR_T := 386.0;   // picoA_per_millimolar (in SR_T_current)
   Km_ATP_1 := 0.1;   // millimolar (Km_ATP in SR_calcium_pump)
   Km_CaCyto := 0.0008;   // millimolar (in SR_calcium_pump)
   Km_CaSR := 0.08;   // millimolar (in SR_calcium_pump)
   i_max := 162500.0;   // picoA (in SR_calcium_pump)
   k11 := 0.01;   // per_millisecond (k1 in SR_calcium_pump)
   k31 := 1.0;   // per_millisecond (k3 in SR_calcium_pump)
   k42 := 0.01;   // per_millisecond (k4 in SR_calcium_pump)
   P_CaT := 612.0;   // picoA_per_millimolar (in T_type_Ca_channel)
   P_Cab := 0.04;   // picoA_per_millimolar (in background_Cab_current)
   N := 2333.0;   // picoF (in background_KATP_current)
   P_KATP := 0.0236;   // nanoS_per_picoF (in background_KATP_current)
   P_bNSC := 0.385;   // picoA_per_millimolar (in background_NSC_current)
   P_lCa := 0.11;   // picoA_per_millimolar (in background_lCa_current)
   Cao := 1.8;   // millimolar (in external_ion_concentrations)
   Ko := 5.4;   // millimolar (in external_ion_concentrations)
   Nao := 140.0;   // millimolar (in external_ion_concentrations)
   CMDN_max := 0.05;   // millimolar (in internal_ion_concentrations)
   K_mCMDN := 0.00238;   // millimolar (in internal_ion_concentrations)
   Vi := 8000.0;   // micrometre3 (in internal_ion_concentrations)
   Cm := 132.0;   // picoF (in membrane)
   F := 96.4867;   // coulomb_per_millimole (in membrane)
   R := 8.3143;   // coulomb_millivolt_per_kelvin_millimole (in membrane)
   T := 310.0;   // kelvin (in membrane)
   stim_amplitude := -4000.0;   // picoA (in membrane)
   stim_duration := 2.0;   // millisecond (in membrane)
   stim_end := 1000000.0;   // millisecond (in membrane)
   stim_period := 400.0;   // millisecond (in membrane)
   stim_start := 50.0;   // millisecond (in membrane)
   P_Kr := 0.00864;   // nanoS_per_picoF (in rapid_time_dependent_potassium_current)
   beta_y2_1 := 0.004444;   // per_millisecond (beta_y2 in slow_time_dependent_potassium_current_y2_gate)
   P_Ks_K := 5.04;   // picoA_per_millimolar (in slow_time_dependent_potassium_current)
   P_Ks_Na := 0.2016;   // picoA_per_millimolar (in slow_time_dependent_potassium_current)
   Km_Cai := 0.00138;   // millimolar (in sodium_calcium_exchanger)
   Km_Cao := 1.38;   // millimolar (in sodium_calcium_exchanger)
   Km_Nai_1 := 8.75;   // millimolar (Km_Nai in sodium_calcium_exchanger)
   Km_Nao_1 := 87.5;   // millimolar (Km_Nao in sodium_calcium_exchanger)
   P_NaCa := 6.81;   // picoA_per_picoF (in sodium_calcium_exchanger)
   Partition := 0.32;   // dimensionless (in sodium_calcium_exchanger)
   k32 := 1.0;   // per_millisecond (k3 in sodium_calcium_exchanger)
   k43 := 1.0;   // per_millisecond (k4 in sodium_calcium_exchanger)
   k_AI_AP_2 := 0.0000875;   // per_millisecond (k_AI_AP in sodium_current_voltage_dependent_gate)
   P_Na := 2860.0;   // picoA_per_millimolar (in sodium_current)
   Km_ATP_2 := 0.094;   // millimolar (Km_ATP in sodium_potassium_pump)
   Km_Ki := 32.88;   // millimolar (in sodium_potassium_pump)
   Km_Ko := 0.258;   // millimolar (in sodium_potassium_pump)
   Km_Nai_2 := 4.05;   // millimolar (Km_Nai in sodium_potassium_pump)
   Km_Nao_2 := 69.8;   // millimolar (Km_Nao in sodium_potassium_pump)
   P_NaK := 21.0;   // picoA_per_picoF (in sodium_potassium_pump)
   k21 := 0.04;   // per_millisecond (k2 in sodium_potassium_pump)
   k33 := 0.01;   // per_millisecond (k3 in sodium_potassium_pump)
   k44 := 0.165;   // per_millisecond (k4 in sodium_potassium_pump)
   P_K1_0 := 1.146;   // nanoS_per_picoF (in time_independent_potassium_current)
   P_to_K := 0.033;   // picoA_per_millimolar (in transient_outward_current)
   P_to_Na := 0.00297;   // picoA_per_millimolar (in transient_outward_current)

   //---------------------------------------------------------------------------
   // Computed variables
   //---------------------------------------------------------------------------

   k_UCa_U := k_CCa_C*k_C_U*k_U_UCa*k_UCa_CCa/(k_U_C*k_C_CCa*k_CCa_UCa);
   EffFraction := Exp(-20.0*Sqr(L-L_a));
   ForceEcomp := KForceEC*Power(ZeroForceEL-L, 5.0)+KForceLinearEc*(ZeroForceEL-L);
   gamma := P_KATP*N*Power(Ko/1.0, 0.24);
   P_Kpl := 0.00011*Power(Ko/5.4, 0.16);
   p_E2Na_1 := 1.0/(1.0+Power(Km_Nao_1/Nao, 3.0)*(1.0+Cao/Km_Cao));
   g_K1 := P_K1_0*Cm*Power(Ko/5.4, 0.4);
   g_Kr := P_Kr*Cm*Power(Ko/5.4, 0.2);
   p_E2Ca_2 := 1.0/(1.0+Km_Cao/Cao*(1.0+Power(Nao/Km_Nao_1, 3.0)));
End;

//------------------------------------------------------------------------------
// Computation
//------------------------------------------------------------------------------

Procedure Tmatsuoka_model_2003.Compute(Const time: Double);
Begin
   // time: time (millisecond)

   dATPdt := -0.4*Y[13]*T_t;
   k14 := 0.37/(1.0+Km_ATP_2/Y[0]);
   p_E1Na_2 := 1.0/(1.0+Power(Km_Nai_2/Y[21], 1.06)*(1.0+Power(Y[20]/Km_Ki, 1.12)));
   Nao_Eff := Nao*Exp(-0.82*F*Y[22]/(R*T));
   p_E2Na_2 := 1.0/(1.0+Power(Km_Nao_2/Nao_Eff, 1.06)*(1.0+Power(Ko/Km_Ko, 1.12)));
   i_NaK := P_NaK*Cm*1.0*(k14*p_E1Na_2*Y[33]-k21*p_E2Na_2*(1.0-Y[33]));
   p_E1Ca_1 := 1.0/(1.0+Km_CaSR/Y[2]);
   k23 := 1.0/(1.0+Km_ATP_1/Y[0]);
   b12 := CMDN_max-Y[19]+K_mCMDN;
   c12 := K_mCMDN*Y[19];
   Cai := (Sqrt(Sqr(b12)+4.0*c12)-b12)/2.0;
   p_E2Ca_1 := 1.0/(1.0+Km_CaCyto/Cai);
   i_SR_U := i_max*1.0*(k11*p_E1Ca_1*Y[16]-k23*p_E2Ca_1*(1.0-Y[16]));
   dY[0] := ProducingRate_Max*(Adenosine_Total-Y[0])+dATPdt-i_NaK/(F*Vi)+i_SR_U/(4.0*F*Vi);
   b11 := CSQN_max-Y[1]+K_mCSQN;
   c11 := K_mCSQN*Y[1];
   Carel := (Sqrt(Sqr(b11)+4.0*c11)-b11)/2.0;
   i_SR_T := P_SR_T*(Y[2]-Carel);
   i_RyR := P_RyR*(Carel-Cai)*Y[15];
   dY[1] := (i_SR_T-i_RyR)/(2.0*F*V_rel);
   i_SR_L := P_SR_L*(Y[2]-Cai);
   dY[2] := (-i_SR_U-i_SR_T-i_SR_L)/(2.0*F*V_up);

   If (Y[22] = 0.0) Then
      CF_Na := -Nao
   Else
      CF_Na := F*Y[22]/(R*T)*(Y[21]-Nao*Exp(-F*Y[22]/(R*T)))/(1.0-Exp(-F*Y[22]/(R*T)));

   p_open_CaL := Y[8]*(Y[4]+Y[5])*Y[6]/(1.0+Power(1.4/Y[0], 3.0));
   i_CaL_Na := 0.0000185*P_CaL*CF_Na*p_open_CaL;

   If (Y[22] = 0.0) Then
      CF_Ca := -Cao
   Else
      CF_Ca := 2.0*F*Y[22]/(R*T)*(Cai-Cao*Exp(-2.0*F*Y[22]/(R*T)))/(1.0-Exp(-2.0*F*Y[22]/(R*T)));

   i_CaL_Ca := P_CaL*CF_Ca*p_open_CaL;

   If (Y[22] = 0.0) Then
      CF_K := Y[20]
   Else
      CF_K := F*Y[22]/(R*T)*(Y[20]-Ko*Exp(-F*Y[22]/(R*T)))/(1.0-Exp(-F*Y[22]/(R*T)));

   i_CaL_K := 0.000365*P_CaL*CF_K*p_open_CaL;

   i_Ca_L := i_CaL_Na+i_CaL_Ca+i_CaL_K;
   i_Ca_L := i_Ca_L*(1.0 + BetaADR_active)*GCaL_Available ;

   iCaL := 0.0676*CF_Ca;
   CaDiadic := iCaL*p_open_CaL;
   Cacm := Cai-0.3*iCaL;
   CaEffC := Cacm*Y[8];
   CaEffU := CaEffC+Cai*(1.0-Y[8]);
   k_UUCa_Ca := k_U_UCa*CaEffU;
   k_CCCa_Ca := k_C_CCa*CaEffC;
   dY[4] := Y[3]*k_C_U+Y[5]*k_UCa_U-Y[4]*(k_UUCa_Ca+k_U_C);
   p_CCa := 1.0-Y[3]-Y[4]-Y[5];
   dY[5] := Y[4]*k_UUCa_Ca+p_CCa*k_CCa_UCa-Y[5]*(k_UCa_CCa+k_UCa_U);
   dY[3] := p_CCa*k_CCa_C+Y[4]*k_U_C-Y[3]*(k_C_U+k_C_CCa*Cacm*Y[8]);
   alpha_y_1 := 1.0/(250000.0*Exp(Y[22]/9.0)+58.0*Exp(Y[22]/65.0));
   beta_y_1 := 1.0/(1800.0*Exp(-Y[22]/14.0)+66.0*Exp(-Y[22]/65.0));
   dY[6] := alpha_y_1*(1.0-Y[6])-beta_y_1*Y[6];
   k_AP_RP_1 := 1.0/(480.0*Exp(Y[22]/7.0)+2.2*Exp(Y[22]/65.0));
   p_RI_CaL := 1.0-Y[8]-Y[9]-Y[7];
   k_RI_AI_1 := 1.0/(0.0018*Exp(-Y[22]/7.4)+2.0*Exp(-Y[22]/100.0));
   k_RP_AP_1 := 1.0/(0.27*Exp(-Y[22]/5.9)+1.5*Exp(-Y[22]/65.0));
   k_AI_RI_1 := 1.0/(2200000.0*Exp(Y[22]/7.4)+11.0*Exp(Y[22]/100.0));
   k_RP_RI_1 := 0.04/(1.0+k_AI_AP_1*k_AP_RP_1*k_RI_AI_1/(k_AP_AI_1*k_RP_AP_1*k_AI_RI_1));
   k_RI_RP_1 := 0.04-k_RP_RI_1;
   dY[9] := Y[8]*k_AP_RP_1+p_RI_CaL*k_RI_RP_1-Y[9]*(k_RP_RI_1+k_RP_AP_1);
   dY[8] := Y[9]*k_RP_AP_1+Y[7]*k_AI_AP_1-Y[8]*(k_AP_RP_1+k_AP_AI_1);
   dY[7] := p_RI_CaL*k_RI_AI_1+Y[8]*k_AP_AI_1-Y[7]*(k_AI_RI_1+k_AI_AP_1);
   h := L-Y[10];
   p := 1.0-Y[12]-Y[13]-Y[11];
   Q_b := Y_1*Cai*p-Z_1*Y[12];
   Q_a := Y_2*Y[12]*EffFraction-Z_2*Y[13];
   Q_r := Y_3*Y[13]-Z_3*Y[11]*Cai;
   Q_d := Y_4*Y[11];
   dY[10] := B*(h-h_c);
   Q_d1 := Y_d*Sqr(dY[10])*Y[11];
   Q_d2 := Y_d*Sqr(dY[10])*Y[13];
   dY[12] := Q_b-Q_a;
   dY[13] := Q_a-Q_r-Q_d2;
   dY[11] := Q_r-Q_d-Q_d1;
   dCaidt := T_t*(Q_d2+Q_r-Q_b);
   CBBound := T_t*(Y[13]+Y[11]);
   NewCBF := ForceFactor*CBBound;
   ForceCB := NewCBF*h;
   ForceExt := -ForceEcomp+ForceCB;
   k12 := 280000.0*Sqr(Cai/1.0)+Diadid_Factor*CaDiadic;
   k22 := 0.08/(1.0+0.36/Carel);
   dY[15] := Y[14]*k12-Y[15]*k22;
   k34 := 0.000377*Sqr(Carel/1.0);
   dY[14] := k34*(1.0-(Y[15]+Y[14]))-(k12+k41)*Y[14];
   p_E1 := 1.0-p_E1Ca_1;
   p_E2 := 1.0-p_E2Ca_1;
   alpha_y_2 := k23*p_E2Ca_1+k42*p_E2;
   beta_y_2 := k11*p_E1Ca_1+k31*p_E1;
   dY[16] := alpha_y_2*(1.0-Y[16])-beta_y_2*Y[16];
   i_Ca_T := P_CaT*CF_Ca*Y[17]*Y[18];
   alpha_y1_1 := 1.0/(0.019*Exp(-Y[22]/5.6)+0.82*Exp(-Y[22]/250.0));
   beta_y1_1 := 1.0/(40.0*Exp(Y[22]/6.3)+1.5*Exp(Y[22]/10000.0));
   dY[17] := alpha_y1_1*(1.0-Y[17])-beta_y1_1*Y[17];
   alpha_y2_1 := 1.0/(62000.0*Exp(Y[22]/10.1)+30.0*Exp(Y[22]/3000.0));
   beta_y2_2 := 1.0/(0.0006*Exp(-Y[22]/6.7)+1.2*Exp(-Y[22]/25.0));
   dY[18] := alpha_y2_1*(1.0-Y[18])-beta_y2_2*Y[18];
   i_Cab := P_Cab*CF_Ca;
   E_K := R*T/F*LN(Ko/Y[20]);
   p_open_1 := 0.8/(1.0+Sqr(Y[0]/0.1));
   i_KATP := gamma*(Y[22]-E_K)*p_open_1;

   If (Y[22] = -3.0) Then
      i_Kpl := P_Kpl*CF_K*13.0077
   Else
      i_Kpl := P_Kpl*CF_K*(Y[22]+3.0)/(1.0-Exp(-(Y[22]+3.0)/13.0));

   i_bNSC_K := 0.4*P_bNSC*CF_K;
   i_bNSC_Na := P_bNSC*CF_Na;
   i_bNSC := i_bNSC_K+i_bNSC_Na;
   p_open_2 := 1.0/(1.0+Power(0.0012/Cai, 3.0));
   i_lCa_K := P_lCa*CF_K*p_open_2;
   i_lCa_Na := P_lCa*CF_Na*p_open_2;
   i_lCa := i_lCa_K+i_lCa_Na;
   i_Na_Na := P_Na*CF_Na*Y[31]*Y[29];
   i_Ks_Na := P_Ks_Na*CF_Na*Sqr(Y[26])*(0.9*Y[27]+0.1);
   i_to_Na := P_to_Na*CF_Na*Power(Y[35], 3.0)*Y[36];
   k13 := 1.0*Exp(Partition*F*Y[22]/(R*T));
   p_E1Na_1 := 1.0/(1.0+Power(Km_Nai_1/Y[21], 3.0)*(1.0+Cai/Km_Cai));
   k24 := 1.0*Exp((Partition-1.0)*F*Y[22]/(R*T));
   i_NaCa := P_NaCa*Cm*1.0*(k13*p_E1Na_1*Y[28]-k24*p_E2Na_1*(1.0-Y[28]));
   i_net_Na := i_Na_Na+i_Ks_Na+i_to_Na+i_CaL_Na+i_bNSC_Na+i_lCa_Na+3.0*i_NaK+3.0*i_NaCa;
   dY[21] := -i_net_Na/(F*Vi);
   lambda := 3.0*Exp(-0.048*(Y[22]-E_K-10.0))*(1.0+Exp(0.064*(Y[22]-E_K-38.0)))/(1.0+Exp(0.03*(Y[22]-E_K-70.0)));
   mu := 0.75*Exp(0.035*(Y[22]-E_K-10.0))/(1.0+Exp(0.015*(Y[22]-E_K-140.0)));
   fO := lambda/(mu+lambda);
   fO4 := Power(fO, 4.0);
   fB := mu/(mu+lambda);
   fO3 := 8.0/3.0*Power(fO, 3.0)*fB;
   fO2 := 2.0*Sqr(fO)*Sqr(fB);
   i_K1 := g_K1*(Y[22]-E_K)*(fO4+fO3+fO2)*Y[34];

   i_Kr := g_Kr*(Y[22]-E_K)*(0.6*Y[23]+0.4*Y[24])*Y[25];
   i_Kr := i_Kr*GK_Available ;

   i_to_K := P_to_K*CF_K*Power(Y[35], 3.0)*Y[36];
   i_Ks_K := P_Ks_K*CF_K*Sqr(Y[26])*(0.9*Y[27]+0.1);
   i_Na_K := 0.1*P_Na*CF_K*Y[31]*Y[29];
   i_net_K := i_K1+i_Kr+i_to_K+i_KATP+i_Ks_K+i_Na_K+i_CaL_K+i_bNSC_K+i_lCa_K+i_Kpl-2.0*i_NaK;

{   If ((time >= stim_start) And (time <= stim_end) And (time-stim_start-Floor((time-stim_start)/stim_period)*stim_period <= stim_duration)) Then
      i_ext := stim_amplitude
   Else
      i_ext := 0.0;}

   dY[20] := -(i_net_K+i_ext)/(F*Vi);
   i_net_Ca := i_CaL_Ca+i_Ca_T+i_Cab-2.0*i_NaCa;
   dY[19] := -(i_net_Ca-i_SR_U-i_RyR-i_SR_L)/(2.0*F*Vi)+dCaidt;

   i_Na := i_Na_Na+i_Na_K;
   i_Na := i_Na*GNa_Available ;

   i_Ks := (i_Ks_Na+i_Ks_K) ;
   i_Ks := i_Ks*(1.0 + 0.5*BetaADR_active) ;

   i_to := i_to_Na+i_to_K;
   i_I := i_bNSC+i_Cab+i_Kpl+i_lCa+i_KATP;
   i_tot := i_Na+i_Ca_L+i_Ca_T+i_K1+i_Kr+i_Ks+i_to+i_I+i_NaK+i_NaCa;
   dY[22] := -(i_tot+i_ext)/Cm;
   alpha_y1_2 := 1.0/(20.0*Exp(-Y[22]/11.5)+5.0*Exp(-Y[22]/300.0));
   beta_y1_2 := 1.0/(160.0*Exp(Y[22]/28.0)+200.0*Exp(Y[22]/1000.0))+1.0/(2500.0*Exp(Y[22]/20.0));
   dY[23] := alpha_y1_2*(1.0-Y[23])-beta_y1_2*Y[23];
   alpha_y2_2 := 1.0/(200.0*Exp(-Y[22]/13.0)+20.0*Exp(-Y[22]/300.0));
   beta_y2_3 := 1.0/(1600.0*Exp(Y[22]/28.0)+2000.0*Exp(Y[22]/1000.0))+1.0/(10000.0*Exp(Y[22]/20.0));
   dY[24] := alpha_y2_2*(1.0-Y[24])-beta_y2_3*Y[24];
   alpha_y3 := 1.0/(10.0*Exp(Y[22]/17.0)+2.5*Exp(Y[22]/300.0));
   beta_y3 := 1.0/(0.35*Exp(-Y[22]/17.0)+2.0*Exp(-Y[22]/150.0));
   dY[25] := alpha_y3*(1.0-Y[25])-beta_y3*Y[25];
   alpha_y1_3 := 1.0/(85.0*Exp(-Y[22]/10.5)+370.0*Exp(-Y[22]/62.0));
   beta_y1_3 := 1.0/(1450.0*Exp(Y[22]/20.0)+260.0*Exp(Y[22]/100.0));
   dY[26] := alpha_y1_3*(1.0-Y[26])-beta_y1_3*Y[26];
   alpha_y2_3 := 3.7*Cai;
   dY[27] := alpha_y2_3*(1.0-Y[27])-beta_y2_1*Y[27];
   p_E1Ca_2 := 1.0/(1.0+Km_Cai/Cai*(1.0+Power(Y[21]/Km_Nai_1, 3.0)));
   alpha_y_3 := k24*p_E2Na_1+k43*p_E2Ca_2;
   beta_y_3 := k13*p_E1Na_1+k32*p_E1Ca_2;
   dY[28] := alpha_y_3*(1.0-Y[28])-beta_y_3*Y[28];
   alpha_y_4 := 1.0/(9000000000.0*Exp(Y[22]/5.0)+8000.0*Exp(Y[22]/100.0));
   beta_y_4 := 1.0/(0.014*Exp(-Y[22]/5.0)+4000.0*Exp(-Y[22]/100.0));
   dY[29] := alpha_y_4*(1.0-Y[29])-beta_y_4*Y[29];
   k_AP_RP_2 := 1.0/(26.0*Exp(Y[22]/17.0)+0.02*Exp(Y[22]/800.0));
   p_RI_Na := 1.0-Y[32]-Y[31]-Y[30];
   k_RI_AI_2 := 1.0/(0.0001027*Exp(-Y[22]/8.0)+5.0*Exp(-Y[22]/400.0));
   k_AP_AI_2 := 1.0/(0.8*Exp(-Y[22]/400.0));
   k_RP_AP_2 := 1.0/(0.1027*Exp(-Y[22]/8.0)+0.25*Exp(-Y[22]/50.0));
   k_AI_RI_2 := 1.0/(1300.0*Exp(Y[22]/20.0)+0.04*Exp(Y[22]/800.0));
   k_RP_RI_2 := 0.01/(1.0+k_AI_AP_2*k_AP_RP_2*k_RI_AI_2/(k_AP_AI_2*k_RP_AP_2*k_AI_RI_2));
   k_RI_RP_2 := 0.01-k_RP_RI_2;
   dY[32] := Y[31]*k_AP_RP_2+p_RI_Na*k_RI_RP_2-Y[32]*(k_RP_RI_2+k_RP_AP_2);
   dY[31] := Y[32]*k_RP_AP_2+Y[30]*k_AI_AP_2-Y[31]*(k_AP_RP_2+k_AP_AI_2);
   dY[30] := p_RI_Na*k_RI_AI_2+Y[31]*k_AP_AI_2-Y[30]*(k_AI_RI_2+k_AI_AP_2);
   p_E1K := 1.0/(1.0+Power(Km_Ki/Y[20], 1.12)*(1.0+Power(Y[21]/Km_Nai_2, 1.06)));
   p_E2K := 1.0/(1.0+Power(Km_Ko/Ko, 1.12)*(1.0+Power(Nao_Eff/Km_Nao_2, 1.06)));
   alpha_y_5 := k21*p_E2Na_2+k44*p_E2K;
   beta_y_5 := k14*p_E1Na_2+k33*p_E1K;
   dY[33] := alpha_y_5*(1.0-Y[33])-beta_y_5*Y[33];
   alpha_y_6 := 1.0/(8000.0*Exp((Y[22]-E_K-97.0)/8.5)+7.0*Exp((Y[22]-E_K-97.0)/300.0));
   beta_y_6 := Power(fO, 4.0)*1.0/(0.00014*Exp(-(Y[22]-E_K-97.0)/9.1)+0.2*Exp(-(Y[22]-E_K-97.0)/500.0));
   dY[34] := alpha_y_6*(1.0-Y[34])-beta_y_6*Y[34];
   alpha_y1_4 := 1.0/(11.0*Exp(-Y[22]/28.0)+0.2*Exp(-Y[22]/400.0));
   beta_y1_4 := 1.0/(4.4*Exp(Y[22]/16.0)+0.2*Exp(Y[22]/500.0));
   dY[35] := alpha_y1_4*(1.0-Y[35])-beta_y1_4*Y[35];
   alpha_y2_4 := 0.0038*Exp(-(Y[22]+13.5)/11.3)/(1.0+0.051335*Exp(-(Y[22]+13.5)/11.3));
   beta_y2_4 := 0.0038*Exp((Y[22]+13.5)/11.3)/(1.0+0.067083*Exp((Y[22]+13.5)/11.3));
   dY[36] := alpha_y2_4*(1.0-Y[36])-beta_y2_4*Y[36];
End;


procedure Tmatsuoka_model_2003.UpdateStates( dt : double ) ;
var
    i : Integer ;
    k1,k2,k3,k4 : Array[0..matsuoka_model_2003_NB_OF_STATE_VARIABLES_-1] Of Double;
    Y_k1,Y_k2,Y_k3 : Array[0..matsuoka_model_2003_NB_OF_STATE_VARIABLES_-1] Of Double;
begin

    // Note rates expressed /ms
    dt := dt*1E3 ;

    Compute(0.0) ;
    for i := 0 to matsuoka_model_2003_NB_OF_STATE_VARIABLES_-1 do k1[i] := dy[i]*dt ;
    for i := 0 to matsuoka_model_2003_NB_OF_STATE_VARIABLES_-1 do Y_k1[i] := Y[i] + k1[i]*0.5  ;

    Compute(0.0) ;
    for i := 0 to matsuoka_model_2003_NB_OF_STATE_VARIABLES_-1 do k2[i] := dy[i]*dt ;
    for i := 0 to matsuoka_model_2003_NB_OF_STATE_VARIABLES_-1 do Y_k2[i] := Y[i] + k2[i]*0.5  ;

    Compute(0.0) ;
    for i := 0 to matsuoka_model_2003_NB_OF_STATE_VARIABLES_-1 do k3[i] := dy[i]*dt ;
    for i := 0 to matsuoka_model_2003_NB_OF_STATE_VARIABLES_-1 do Y_k3[i] := Y[i] + k3[i]  ;

    Compute(0.0) ;
    for i := 0 to matsuoka_model_2003_NB_OF_STATE_VARIABLES_-1 do k4[i] := dy[i]*dt ;

    for i := 0 to matsuoka_model_2003_NB_OF_STATE_VARIABLES_-1 do Y[i] := Y[i] + k1[i]/6.0 + k2[i]/3.0 + k3[i]/3.0 + k4[i]/6.0 ;

    end;
//------------------------------------------------------------------------------

End.

//==============================================================================
// End of file
//==============================================================================
