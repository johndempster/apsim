//==============================================================================
// CellML file:   C:\Program Files\COR\Models\courtemanche_ramirez_nattel_model_1998.cellml
// CellML model:  courtemanche_ramirez_nattel_model_1998
// Date and time: 21/07/2015 at 11:00:43
//------------------------------------------------------------------------------
// Conversion from CellML 1.0 to Delphi for Win32 was done using COR (0.9.31.1409)
//    Copyright 2002-2015 Dr Alan Garny
//    http://cor.physiol.ox.ac.uk/ - cor@physiol.ox.ac.uk
//------------------------------------------------------------------------------
// http://www.cellml.org/
//==============================================================================

Unit courtemanche_ramirez_nattel_model_1998;

//------------------------------------------------------------------------------

Interface

//------------------------------------------------------------------------------

Const _NB_OF_STATE_VARIABLES_ = 21;

//------------------------------------------------------------------------------

Type
   Tcourtemanche_ramirez_nattel_model_1998 = Class
      Public
         //---------------------------------------------------------------------
         // State variables
         //---------------------------------------------------------------------

         Y: Array[0.._NB_OF_STATE_VARIABLES_-1] Of Double;
         dY: Array[0.._NB_OF_STATE_VARIABLES_-1] Of Double;
         // 0: u (dimensionless) (in Ca_release_current_from_JSR_u_gate)
         // 1: v1 (dimensionless) (v in Ca_release_current_from_JSR_v_gate)
         // 2: w (dimensionless) (in Ca_release_current_from_JSR_w_gate)
         // 3: d (dimensionless) (in L_type_Ca_channel_d_gate)
         // 4: f_Ca (dimensionless) (in L_type_Ca_channel_f_Ca_gate)
         // 5: f1 (dimensionless) (f in L_type_Ca_channel_f_gate)
         // 6: h (dimensionless) (in fast_sodium_current_h_gate)
         // 7: j (dimensionless) (in fast_sodium_current_j_gate)
         // 8: m (dimensionless) (in fast_sodium_current_m_gate)
         // 9: Ca_i (millimolar) (in intracellular_ion_concentrations)
         // 10: Ca_rel (millimolar) (in intracellular_ion_concentrations)
         // 11: Ca_up (millimolar) (in intracellular_ion_concentrations)
         // 12: K_i (millimolar) (in intracellular_ion_concentrations)
         // 13: Na_i (millimolar) (in intracellular_ion_concentrations)
         // 14: V2 (millivolt) (V in membrane)
         // 15: xr (dimensionless) (in rapid_delayed_rectifier_K_current_xr_gate)
         // 16: xs (dimensionless) (in slow_delayed_rectifier_K_current_xs_gate)
         // 17: oa (dimensionless) (in transient_outward_K_current_oa_gate)
         // 18: oi (dimensionless) (in transient_outward_K_current_oi_gate)
         // 19: ua (dimensionless) (in ultrarapid_delayed_rectifier_K_current_ua_gate)
         // 20: ui (dimensionless) (in ultrarapid_delayed_rectifier_K_current_ui_gate)

         YNames: Array[0.._NB_OF_STATE_VARIABLES_-1] Of String;
         YUnits: Array[0.._NB_OF_STATE_VARIABLES_-1] Of String;
         YComponents: Array[0.._NB_OF_STATE_VARIABLES_-1] Of String;

         //---------------------------------------------------------------------
         // Constants
         //---------------------------------------------------------------------

         CMDN_max: Double;   // millimolar (in Ca_buffers)
         CSQN_max: Double;   // millimolar (in Ca_buffers)
         Km_CMDN: Double;   // millimolar (in Ca_buffers)
         Km_CSQN: Double;   // millimolar (in Ca_buffers)
         Km_TRPN: Double;   // millimolar (in Ca_buffers)
         TRPN_max: Double;   // millimolar (in Ca_buffers)
         Ca_up_max: Double;   // millimolar (in Ca_leak_current_by_the_NSR)
         K_rel: Double;   // per_millisecond (in Ca_release_current_from_JSR)
         I_up_max: Double;   // millimolar_per_millisecond (in Ca_uptake_current_by_the_NSR)
         K_up: Double;   // millimolar (in Ca_uptake_current_by_the_NSR)
         g_Ca_L: Double;   // nanoS_per_picoF (in L_type_Ca_channel)
         I_NaCa_max: Double;   // picoA_per_picoF (in Na_Ca_exchanger_current)
         K_mCa: Double;   // millimolar (in Na_Ca_exchanger_current)
         K_mNa: Double;   // millimolar (in Na_Ca_exchanger_current)
         K_sat: Double;   // dimensionless (in Na_Ca_exchanger_current)
         gamma: Double;   // dimensionless (in Na_Ca_exchanger_current)
         g_B_Ca: Double;   // nanoS_per_picoF (in background_currents)
         g_B_K: Double;   // nanoS_per_picoF (in background_currents)
         g_B_Na: Double;   // nanoS_per_picoF (in background_currents)
         g_Na: Double;   // nanoS_per_picoF (in fast_sodium_current)
         V_cell: Double;   // micrometre_3 (in intracellular_ion_concentrations)
         Cm: Double;   // picoF (in membrane)
         F2: Double;   // coulomb_per_millimole (F in membrane)
         R: Double;   // joule_per_mole_kelvin (in membrane)
         T: Double;   // kelvin (in membrane)
         stim_amplitude: Double;   // picoA (in membrane)
         stim_duration: Double;   // millisecond (in membrane)
         stim_end: Double;   // millisecond (in membrane)
         stim_period: Double;   // millisecond (in membrane)
         stim_start: Double;   // millisecond (in membrane)
         g_Kr: Double;   // nanoS_per_picoF (in rapid_delayed_rectifier_K_current)
         i_CaP_max: Double;   // picoA_per_picoF (in sarcolemmal_calcium_pump_current)
         g_Ks: Double;   // nanoS_per_picoF (in slow_delayed_rectifier_K_current)
         Km_K_o: Double;   // millimolar (in sodium_potassium_pump)
         Km_Na_i: Double;   // millimolar (in sodium_potassium_pump)
         i_NaK_max: Double;   // picoA_per_picoF (in sodium_potassium_pump)
         Ca_o: Double;   // millimolar (in standard_ionic_concentrations)
         K_o: Double;   // millimolar (in standard_ionic_concentrations)
         Na_o: Double;   // millimolar (in standard_ionic_concentrations)
         g_K1: Double;   // nanoS_per_picoF (in time_independent_potassium_current)
         tau_tr: Double;   // millisecond (in transfer_current_from_NSR_to_JSR)
         K_Q10: Double;   // dimensionless (in transient_outward_K_current)
         g_to: Double;   // nanoS_per_picoF (in transient_outward_K_current)

         //---------------------------------------------------------------------
         // Computed variables
         //---------------------------------------------------------------------

         Ca_CMDN: Double;   // millimolar (in Ca_buffers)
         Ca_CSQN: Double;   // millimolar (in Ca_buffers)
         Ca_TRPN: Double;   // millimolar (in Ca_buffers)
         i_up_leak: Double;   // millimolar_per_millisecond (in Ca_leak_current_by_the_NSR)
         tau_u: Double;   // millisecond (in Ca_release_current_from_JSR_u_gate)
         u_infinity: Double;   // dimensionless (in Ca_release_current_from_JSR_u_gate)
         tau_v: Double;   // millisecond (in Ca_release_current_from_JSR_v_gate)
         v_infinity: Double;   // dimensionless (in Ca_release_current_from_JSR_v_gate)
         tau_w: Double;   // millisecond (in Ca_release_current_from_JSR_w_gate)
         w_infinity: Double;   // dimensionless (in Ca_release_current_from_JSR_w_gate)
         Fn: Double;   // dimensionless (in Ca_release_current_from_JSR)
         i_rel: Double;   // millimolar_per_millisecond (in Ca_release_current_from_JSR)
         i_up: Double;   // millimolar_per_millisecond (in Ca_uptake_current_by_the_NSR)
         d_infinity: Double;   // dimensionless (in L_type_Ca_channel_d_gate)
         tau_d: Double;   // millisecond (in L_type_Ca_channel_d_gate)
         f_Ca_infinity: Double;   // dimensionless (in L_type_Ca_channel_f_Ca_gate)
         tau_f_Ca: Double;   // millisecond (in L_type_Ca_channel_f_Ca_gate)
         f_infinity: Double;   // dimensionless (in L_type_Ca_channel_f_gate)
         tau_f: Double;   // millisecond (in L_type_Ca_channel_f_gate)
         i_Ca_L: Double;   // picoA (in L_type_Ca_channel)
         i_NaCa: Double;   // picoA (in Na_Ca_exchanger_current)
         E_Ca: Double;   // millivolt (in background_currents)
         i_B_Ca: Double;   // picoA (in background_currents)
         i_B_K: Double;   // picoA (in background_currents)
         i_B_Na: Double;   // picoA (in background_currents)
         alpha_h: Double;   // per_millisecond (in fast_sodium_current_h_gate)
         beta_h: Double;   // per_millisecond (in fast_sodium_current_h_gate)
         h_inf: Double;   // dimensionless (in fast_sodium_current_h_gate)
         tau_h: Double;   // millisecond (in fast_sodium_current_h_gate)
         alpha_j: Double;   // per_millisecond (in fast_sodium_current_j_gate)
         beta_j: Double;   // per_millisecond (in fast_sodium_current_j_gate)
         j_inf: Double;   // dimensionless (in fast_sodium_current_j_gate)
         tau_j: Double;   // millisecond (in fast_sodium_current_j_gate)
         alpha_m: Double;   // per_millisecond (in fast_sodium_current_m_gate)
         beta_m: Double;   // per_millisecond (in fast_sodium_current_m_gate)
         m_inf: Double;   // dimensionless (in fast_sodium_current_m_gate)
         tau_m: Double;   // millisecond (in fast_sodium_current_m_gate)
         E_Na: Double;   // millivolt (in fast_sodium_current)
         i_Na: Double;   // picoA (in fast_sodium_current)
         B1: Double;   // millimolar_per_millisecond (in intracellular_ion_concentrations)
         B2: Double;   // dimensionless (in intracellular_ion_concentrations)
         V_i: Double;   // micrometre_3 (in intracellular_ion_concentrations)
         V_rel: Double;   // micrometre_3 (in intracellular_ion_concentrations)
         V_up: Double;   // micrometre_3 (in intracellular_ion_concentrations)
         i_st: Double;   // picoA (in membrane)
         alpha_xr: Double;   // per_millisecond (in rapid_delayed_rectifier_K_current_xr_gate)
         beta_xr: Double;   // per_millisecond (in rapid_delayed_rectifier_K_current_xr_gate)
         tau_xr: Double;   // millisecond (in rapid_delayed_rectifier_K_current_xr_gate)
         xr_infinity: Double;   // dimensionless (in rapid_delayed_rectifier_K_current_xr_gate)
         i_Kr: Double;   // picoA (in rapid_delayed_rectifier_K_current)
         i_CaP: Double;   // picoA (in sarcolemmal_calcium_pump_current)
         alpha_xs: Double;   // per_millisecond (in slow_delayed_rectifier_K_current_xs_gate)
         beta_xs: Double;   // per_millisecond (in slow_delayed_rectifier_K_current_xs_gate)
         tau_xs: Double;   // millisecond (in slow_delayed_rectifier_K_current_xs_gate)
         xs_infinity: Double;   // dimensionless (in slow_delayed_rectifier_K_current_xs_gate)
         i_Ks: Double;   // picoA (in slow_delayed_rectifier_K_current)
         f_NaK: Double;   // dimensionless (in sodium_potassium_pump)
         i_NaK: Double;   // picoA (in sodium_potassium_pump)
         sigma: Double;   // dimensionless (in sodium_potassium_pump)
         E_K: Double;   // millivolt (in time_independent_potassium_current)
         i_K1: Double;   // picoA (in time_independent_potassium_current)
         i_tr: Double;   // millimolar_per_millisecond (in transfer_current_from_NSR_to_JSR)
         alpha_oa: Double;   // per_millisecond (in transient_outward_K_current_oa_gate)
         beta_oa: Double;   // per_millisecond (in transient_outward_K_current_oa_gate)
         oa_infinity: Double;   // dimensionless (in transient_outward_K_current_oa_gate)
         tau_oa: Double;   // millisecond (in transient_outward_K_current_oa_gate)
         alpha_oi: Double;   // per_millisecond (in transient_outward_K_current_oi_gate)
         beta_oi: Double;   // per_millisecond (in transient_outward_K_current_oi_gate)
         oi_infinity: Double;   // dimensionless (in transient_outward_K_current_oi_gate)
         tau_oi: Double;   // millisecond (in transient_outward_K_current_oi_gate)
         i_to: Double;   // picoA (in transient_outward_K_current)
         alpha_ua: Double;   // per_millisecond (in ultrarapid_delayed_rectifier_K_current_ua_gate)
         beta_ua: Double;   // per_millisecond (in ultrarapid_delayed_rectifier_K_current_ua_gate)
         tau_ua: Double;   // millisecond (in ultrarapid_delayed_rectifier_K_current_ua_gate)
         ua_infinity: Double;   // dimensionless (in ultrarapid_delayed_rectifier_K_current_ua_gate)
         alpha_ui: Double;   // per_millisecond (in ultrarapid_delayed_rectifier_K_current_ui_gate)
         beta_ui: Double;   // per_millisecond (in ultrarapid_delayed_rectifier_K_current_ui_gate)
         tau_ui: Double;   // millisecond (in ultrarapid_delayed_rectifier_K_current_ui_gate)
         ui_infinity: Double;   // dimensionless (in ultrarapid_delayed_rectifier_K_current_ui_gate)
         g_Kur: Double;   // nanoS_per_picoF (in ultrarapid_delayed_rectifier_K_current)
         i_Kur: Double;   // picoA (in ultrarapid_delayed_rectifier_K_current)

         //---------------------------------------------------------------------
         // Procedures
         //---------------------------------------------------------------------

         Procedure Init;
         Procedure Compute(Const time: Double);
   End;

//------------------------------------------------------------------------------

Implementation

//------------------------------------------------------------------------------

Uses
   Math;

//------------------------------------------------------------------------------
// Initialisation
//------------------------------------------------------------------------------

Procedure Tcourtemanche_ramirez_nattel_model_1998.Init;
Begin
   //---------------------------------------------------------------------------
   // State variables
   //---------------------------------------------------------------------------

   Y[0] := 2.35e-112;   // u (dimensionless) (in Ca_release_current_from_JSR_u_gate)
   Y[1] := 1.0;   // v1 (dimensionless) (v in Ca_release_current_from_JSR_v_gate)
   Y[2] := 0.9992;   // w (dimensionless) (in Ca_release_current_from_JSR_w_gate)
   Y[3] := 1.367e-4;   // d (dimensionless) (in L_type_Ca_channel_d_gate)
   Y[4] := 7.755e-1;   // f_Ca (dimensionless) (in L_type_Ca_channel_f_Ca_gate)
   Y[5] := 9.996e-1;   // f1 (dimensionless) (f in L_type_Ca_channel_f_gate)
   Y[6] := 9.649e-1;   // h (dimensionless) (in fast_sodium_current_h_gate)
   Y[7] := 9.775e-1;   // j (dimensionless) (in fast_sodium_current_j_gate)
   Y[8] := 2.908e-3;   // m (dimensionless) (in fast_sodium_current_m_gate)
   Y[9] := 1.013e-4;   // Ca_i (millimolar) (in intracellular_ion_concentrations)
   Y[10] := 1.488;   // Ca_rel (millimolar) (in intracellular_ion_concentrations)
   Y[11] := 1.488;   // Ca_up (millimolar) (in intracellular_ion_concentrations)
   Y[12] := 1.39e2;   // K_i (millimolar) (in intracellular_ion_concentrations)
   Y[13] := 1.117e1;   // Na_i (millimolar) (in intracellular_ion_concentrations)
   Y[14] := -81.18;   // V2 (millivolt) (V in membrane)
   Y[15] := 3.296e-5;   // xr (dimensionless) (in rapid_delayed_rectifier_K_current_xr_gate)
   Y[16] := 1.869e-2;   // xs (dimensionless) (in slow_delayed_rectifier_K_current_xs_gate)
   Y[17] := 3.043e-2;   // oa (dimensionless) (in transient_outward_K_current_oa_gate)
   Y[18] := 9.992e-1;   // oi (dimensionless) (in transient_outward_K_current_oi_gate)
   Y[19] := 4.966e-3;   // ua (dimensionless) (in ultrarapid_delayed_rectifier_K_current_ua_gate)
   Y[20] := 9.986e-1;   // ui (dimensionless) (in ultrarapid_delayed_rectifier_K_current_ui_gate)

   YNames[0] := 'u';
   YNames[1] := 'v1';
   YNames[2] := 'w';
   YNames[3] := 'd';
   YNames[4] := 'f_Ca';
   YNames[5] := 'f1';
   YNames[6] := 'h';
   YNames[7] := 'j';
   YNames[8] := 'm';
   YNames[9] := 'Ca_i';
   YNames[10] := 'Ca_rel';
   YNames[11] := 'Ca_up';
   YNames[12] := 'K_i';
   YNames[13] := 'Na_i';
   YNames[14] := 'V2';
   YNames[15] := 'xr';
   YNames[16] := 'xs';
   YNames[17] := 'oa';
   YNames[18] := 'oi';
   YNames[19] := 'ua';
   YNames[20] := 'ui';

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
   YUnits[13] := 'millimolar';
   YUnits[14] := 'millivolt';
   YUnits[15] := 'dimensionless';
   YUnits[16] := 'dimensionless';
   YUnits[17] := 'dimensionless';
   YUnits[18] := 'dimensionless';
   YUnits[19] := 'dimensionless';
   YUnits[20] := 'dimensionless';

   YComponents[0] := 'Ca_release_current_from_JSR_u_gate';
   YComponents[1] := 'Ca_release_current_from_JSR_v_gate';
   YComponents[2] := 'Ca_release_current_from_JSR_w_gate';
   YComponents[3] := 'L_type_Ca_channel_d_gate';
   YComponents[4] := 'L_type_Ca_channel_f_Ca_gate';
   YComponents[5] := 'L_type_Ca_channel_f_gate';
   YComponents[6] := 'fast_sodium_current_h_gate';
   YComponents[7] := 'fast_sodium_current_j_gate';
   YComponents[8] := 'fast_sodium_current_m_gate';
   YComponents[9] := 'intracellular_ion_concentrations';
   YComponents[10] := 'intracellular_ion_concentrations';
   YComponents[11] := 'intracellular_ion_concentrations';
   YComponents[12] := 'intracellular_ion_concentrations';
   YComponents[13] := 'intracellular_ion_concentrations';
   YComponents[14] := 'membrane';
   YComponents[15] := 'rapid_delayed_rectifier_K_current_xr_gate';
   YComponents[16] := 'slow_delayed_rectifier_K_current_xs_gate';
   YComponents[17] := 'transient_outward_K_current_oa_gate';
   YComponents[18] := 'transient_outward_K_current_oi_gate';
   YComponents[19] := 'ultrarapid_delayed_rectifier_K_current_ua_gate';
   YComponents[20] := 'ultrarapid_delayed_rectifier_K_current_ui_gate';

   //---------------------------------------------------------------------------
   // Constants
   //---------------------------------------------------------------------------

   CMDN_max := 0.05;   // millimolar (in Ca_buffers)
   CSQN_max := 10.0;   // millimolar (in Ca_buffers)
   Km_CMDN := 0.00238;   // millimolar (in Ca_buffers)
   Km_CSQN := 0.8;   // millimolar (in Ca_buffers)
   Km_TRPN := 0.0005;   // millimolar (in Ca_buffers)
   TRPN_max := 0.07;   // millimolar (in Ca_buffers)
   Ca_up_max := 15.0;   // millimolar (in Ca_leak_current_by_the_NSR)
   K_rel := 30.0;   // per_millisecond (in Ca_release_current_from_JSR)
   I_up_max := 0.005;   // millimolar_per_millisecond (in Ca_uptake_current_by_the_NSR)
   K_up := 0.00092;   // millimolar (in Ca_uptake_current_by_the_NSR)
   g_Ca_L := 0.12375;   // nanoS_per_picoF (in L_type_Ca_channel)
   I_NaCa_max := 1600.0;   // picoA_per_picoF (in Na_Ca_exchanger_current)
   K_mCa := 1.38;   // millimolar (in Na_Ca_exchanger_current)
   K_mNa := 87.5;   // millimolar (in Na_Ca_exchanger_current)
   K_sat := 0.1;   // dimensionless (in Na_Ca_exchanger_current)
   gamma := 0.35;   // dimensionless (in Na_Ca_exchanger_current)
   g_B_Ca := 0.001131;   // nanoS_per_picoF (in background_currents)
   g_B_K := 0.0;   // nanoS_per_picoF (in background_currents)
   g_B_Na := 0.0006744375;   // nanoS_per_picoF (in background_currents)
   g_Na := 7.8;   // nanoS_per_picoF (in fast_sodium_current)
   V_cell := 20100.0;   // micrometre_3 (in intracellular_ion_concentrations)
   Cm := 100.0;   // picoF (in membrane)
   F2 := 96.4867;   // coulomb_per_millimole (F in membrane)
   R := 8.3143;   // joule_per_mole_kelvin (in membrane)
   T := 310.0;   // kelvin (in membrane)
   stim_amplitude := -2000.0;   // picoA (in membrane)
   stim_duration := 2.0;   // millisecond (in membrane)
   stim_end := 50000.0;   // millisecond (in membrane)
   stim_period := 1000.0;   // millisecond (in membrane)
   stim_start := 50.0;   // millisecond (in membrane)
   g_Kr := 0.029411765;   // nanoS_per_picoF (in rapid_delayed_rectifier_K_current)
   i_CaP_max := 0.275;   // picoA_per_picoF (in sarcolemmal_calcium_pump_current)
   g_Ks := 0.12941176;   // nanoS_per_picoF (in slow_delayed_rectifier_K_current)
   Km_K_o := 1.5;   // millimolar (in sodium_potassium_pump)
   Km_Na_i := 10.0;   // millimolar (in sodium_potassium_pump)
   i_NaK_max := 0.59933874;   // picoA_per_picoF (in sodium_potassium_pump)
   Ca_o := 1.8;   // millimolar (in standard_ionic_concentrations)
   K_o := 5.4;   // millimolar (in standard_ionic_concentrations)
   Na_o := 140.0;   // millimolar (in standard_ionic_concentrations)
   g_K1 := 0.09;   // nanoS_per_picoF (in time_independent_potassium_current)
   tau_tr := 180.0;   // millisecond (in transfer_current_from_NSR_to_JSR)
   K_Q10 := 3.0;   // dimensionless (in transient_outward_K_current)
   g_to := 0.1652;   // nanoS_per_picoF (in transient_outward_K_current)

   //---------------------------------------------------------------------------
   // Computed variables
   //---------------------------------------------------------------------------

   V_rel := 0.0048*V_cell;
   tau_u := 8.0;
   tau_f_Ca := 2.0;
   V_i := V_cell*0.68;
   V_up := 0.0552*V_cell;
   sigma := 1.0/7.0*(Exp(Na_o/67.3)-1.0);
End;

//------------------------------------------------------------------------------
// Computation
//------------------------------------------------------------------------------

Procedure Tcourtemanche_ramirez_nattel_model_1998.Compute(Const time: Double);
Begin
   // time: time (millisecond)

   Ca_CMDN := CMDN_max*Y[9]/(Y[9]+Km_CMDN);
   Ca_TRPN := TRPN_max*Y[9]/(Y[9]+Km_TRPN);
   Ca_CSQN := CSQN_max*Y[10]/(Y[10]+Km_CSQN);
   i_up_leak := I_up_max*Y[11]/Ca_up_max;
   i_rel := K_rel*Sqr(Y[0])*Y[1]*Y[2]*(Y[10]-Y[9]);
   i_Ca_L := Cm*g_Ca_L*Y[3]*Y[5]*Y[4]*(Y[14]-65.0);
   i_NaCa := Cm*I_NaCa_max*(Exp(gamma*F2*Y[14]/(R*T))*Power(Y[13], 3.0)*Ca_o-Exp((gamma-1.0)*F2*Y[14]/(R*T))*Power(Na_o, 3.0)*Y[9])/((Power(K_mNa, 3.0)+Power(Na_o, 3.0))*(K_mCa+Ca_o)*(1.0+K_sat*Exp((gamma-1.0)*Y[14]*F2/(R*T))));
   Fn := 1.0e3*(1.0e-15*V_rel*i_rel-1.0e-15/(2.0*F2)*(0.5*i_Ca_L-0.2*i_NaCa));
   u_infinity := Power(1.0+Exp(-(Fn-3.4175e-13)/13.67e-16), -1.0);
   dY[0] := (u_infinity-Y[0])/tau_u;
   tau_v := 1.91+2.09*Power(1.0+Exp(-(Fn-3.4175e-13)/13.67e-16), -1.0);
   v_infinity := 1.0-Power(1.0+Exp(-(Fn-6.835e-14)/13.67e-16), -1.0);
   dY[1] := (v_infinity-Y[1])/tau_v;

   If (Abs(Y[14]-7.9) < 1.0e-10) Then
      tau_w := 6.0*0.2/1.3
   Else
      tau_w := 6.0*(1.0-Exp(-(Y[14]-7.9)/5.0))/((1.0+0.3*Exp(-(Y[14]-7.9)/5.0))*1.0*(Y[14]-7.9));

   w_infinity := 1.0-Power(1.0+Exp(-(Y[14]-40.0)/17.0), -1.0);
   dY[2] := (w_infinity-Y[2])/tau_w;
   i_up := I_up_max/(1.0+K_up/Y[9]);
   d_infinity := Power(1.0+Exp((Y[14]+10.0)/-8.0), -1.0);

   If (Abs(Y[14]+10.0) < 1.0e-10) Then
      tau_d := 4.579/(1.0+Exp((Y[14]+10.0)/-6.24))
   Else
      tau_d := (1.0-Exp((Y[14]+10.0)/-6.24))/(0.035*(Y[14]+10.0)*(1.0+Exp((Y[14]+10.0)/-6.24)));

   dY[3] := (d_infinity-Y[3])/tau_d;
   f_Ca_infinity := Power(1.0+Y[9]/0.00035, -1.0);
   dY[4] := (f_Ca_infinity-Y[4])/tau_f_Ca;
   f_infinity := Exp(-(Y[14]+28.0)/6.9)/(1.0+Exp(-(Y[14]+28.0)/6.9));
   tau_f := 9.0*Power(0.0197*Exp(-Sqr(0.0337)*Sqr(Y[14]+10.0))+0.02, -1.0);
   dY[5] := (f_infinity-Y[5])/tau_f;
   E_Ca := R*T/(2.0*F2)*LN(Ca_o/Y[9]);
   E_Na := R*T/F2*LN(Na_o/Y[13]);
   i_B_Na := Cm*g_B_Na*(Y[14]-E_Na);
   i_B_Ca := Cm*g_B_Ca*(Y[14]-E_Ca);
   E_K := R*T/F2*LN(K_o/Y[12]);
   i_B_K := Cm*g_B_K*(Y[14]-E_K);
   i_Na := Cm*g_Na*Power(Y[8], 3.0)*Y[6]*Y[7]*(Y[14]-E_Na);

   If (Y[14] < -40.0) Then
      alpha_h := 0.135*Exp((Y[14]+80.0)/-6.8)
   Else
      alpha_h := 0.0;

   If (Y[14] < -40.0) Then
      beta_h := 3.56*Exp(0.079*Y[14])+3.1e5*Exp(0.35*Y[14])
   Else
      beta_h := 1.0/(0.13*(1.0+Exp((Y[14]+10.66)/-11.1)));

   h_inf := alpha_h/(alpha_h+beta_h);
   tau_h := 1.0/(alpha_h+beta_h);
   dY[6] := (h_inf-Y[6])/tau_h;

   If (Y[14] < -40.0) Then
      alpha_j := (-1.2714e5*Exp(0.2444*Y[14])-3.474e-5*Exp(-0.04391*Y[14]))*(Y[14]+37.78)/(1.0+Exp(0.311*(Y[14]+79.23)))
   Else
      alpha_j := 0.0;

   If (Y[14] < -40.0) Then
      beta_j := 0.1212*Exp(-0.01052*Y[14])/(1.0+Exp(-0.1378*(Y[14]+40.14)))
   Else
      beta_j := 0.3*Exp(-2.535e-7*Y[14])/(1.0+Exp(-0.1*(Y[14]+32.0)));

   j_inf := alpha_j/(alpha_j+beta_j);
   tau_j := 1.0/(alpha_j+beta_j);
   dY[7] := (j_inf-Y[7])/tau_j;

   If (Y[14] = -47.13) Then
      alpha_m := 3.2
   Else
      alpha_m := 0.32*(Y[14]+47.13)/(1.0-Exp(-0.1*(Y[14]+47.13)));

   beta_m := 0.08*Exp(-Y[14]/11.0);
   m_inf := alpha_m/(alpha_m+beta_m);
   tau_m := 1.0/(alpha_m+beta_m);
   dY[8] := (m_inf-Y[8])/tau_m;
   f_NaK := Power(1.0+0.1245*Exp(-0.1*F2*Y[14]/(R*T))+0.0365*sigma*Exp(-F2*Y[14]/(R*T)), -1.0);
   i_NaK := Cm*i_NaK_max*f_NaK*1.0/(1.0+Power(Km_Na_i/Y[13], 1.5))*K_o/(K_o+Km_K_o);
   dY[13] := (-3.0*i_NaK-(3.0*i_NaCa+i_B_Na+i_Na))/(V_i*F2);
   i_K1 := Cm*g_K1*(Y[14]-E_K)/(1.0+Exp(0.07*(Y[14]+80.0)));
   i_to := Cm*g_to*Power(Y[17], 3.0)*Y[18]*(Y[14]-E_K);
   g_Kur := 0.005+0.05/(1.0+Exp((Y[14]-15.0)/-13.0));
   i_Kur := Cm*g_Kur*Power(Y[19], 3.0)*Y[20]*(Y[14]-E_K);
   i_Kr := Cm*g_Kr*Y[15]*(Y[14]-E_K)/(1.0+Exp((Y[14]+15.0)/22.4));
   i_Ks := Cm*g_Ks*Sqr(Y[16])*(Y[14]-E_K);
   dY[12] := (2.0*i_NaK-(i_K1+i_to+i_Kur+i_Kr+i_Ks+i_B_K))/(V_i*F2);
   i_CaP := Cm*i_CaP_max*Y[9]/(0.0005+Y[9]);
   B1 := (2.0*i_NaCa-(i_CaP+i_Ca_L+i_B_Ca))/(2.0*V_i*F2)+(V_up*(i_up_leak-i_up)+i_rel*V_rel)/V_i;
   B2 := 1.0+TRPN_max*Km_TRPN/Sqr(Y[9]+Km_TRPN)+CMDN_max*Km_CMDN/Sqr(Y[9]+Km_CMDN);
   dY[9] := B1/B2;
   i_tr := (Y[11]-Y[10])/tau_tr;
   dY[11] := i_up-(i_up_leak+i_tr*V_rel/V_up);
   dY[10] := (i_tr-i_rel)*Power(1.0+CSQN_max*Km_CSQN/Sqr(Y[10]+Km_CSQN), -1.0);

   If ((time >= stim_start) And (time <= stim_end) And (time-stim_start-Floor((time-stim_start)/stim_period)*stim_period <= stim_duration)) Then
      i_st := stim_amplitude
   Else
      i_st := 0.0;

   dY[14] := -(i_Na+i_K1+i_to+i_Kur+i_Kr+i_Ks+i_B_Na+i_B_Ca+i_NaK+i_CaP+i_NaCa+i_Ca_L+i_st)/Cm;

   If (Abs(Y[14]+14.1) < 1.0e-10) Then
      alpha_xr := 0.0015
   Else
      alpha_xr := 0.0003*(Y[14]+14.1)/(1.0-Exp((Y[14]+14.1)/-5.0));

   If (Abs(Y[14]-3.3328) < 1.0e-10) Then
      beta_xr := 3.7836118e-4
   Else
      beta_xr := 0.000073898*(Y[14]-3.3328)/(Exp((Y[14]-3.3328)/5.1237)-1.0);

   tau_xr := Power(alpha_xr+beta_xr, -1.0);
   xr_infinity := Power(1.0+Exp((Y[14]+14.1)/-6.5), -1.0);
   dY[15] := (xr_infinity-Y[15])/tau_xr;

   If (Abs(Y[14]-19.9) < 1.0e-10) Then
      alpha_xs := 0.00068
   Else
      alpha_xs := 0.00004*(Y[14]-19.9)/(1.0-Exp((Y[14]-19.9)/-17.0));

   If (Abs(Y[14]-19.9) < 1.0e-10) Then
      beta_xs := 0.000315
   Else
      beta_xs := 0.000035*(Y[14]-19.9)/(Exp((Y[14]-19.9)/9.0)-1.0);

   tau_xs := 0.5*Power(alpha_xs+beta_xs, -1.0);
   xs_infinity := Power(1.0+Exp((Y[14]-19.9)/-12.7), -0.5);
   dY[16] := (xs_infinity-Y[16])/tau_xs;
   alpha_oa := 0.65*Power(Exp((Y[14]-(-10.0))/-8.5)+Exp((Y[14]-(-10.0)-40.0)/-59.0), -1.0);
   beta_oa := 0.65*Power(2.5+Exp((Y[14]-(-10.0)+72.0)/17.0), -1.0);
   tau_oa := Power(alpha_oa+beta_oa, -1.0)/K_Q10;
   oa_infinity := Power(1.0+Exp((Y[14]-(-10.0)+10.47)/-17.54), -1.0);
   dY[17] := (oa_infinity-Y[17])/tau_oa;
   alpha_oi := Power(18.53+1.0*Exp((Y[14]-(-10.0)+103.7)/10.95), -1.0);
   beta_oi := Power(35.56+1.0*Exp((Y[14]-(-10.0)-8.74)/-7.44), -1.0);
   tau_oi := Power(alpha_oi+beta_oi, -1.0)/K_Q10;
   oi_infinity := Power(1.0+Exp((Y[14]-(-10.0)+33.1)/5.3), -1.0);
   dY[18] := (oi_infinity-Y[18])/tau_oi;
   alpha_ua := 0.65*Power(Exp((Y[14]-(-10.0))/-8.5)+Exp((Y[14]-(-10.0)-40.0)/-59.0), -1.0);
   beta_ua := 0.65*Power(2.5+Exp((Y[14]-(-10.0)+72.0)/17.0), -1.0);
   tau_ua := Power(alpha_ua+beta_ua, -1.0)/K_Q10;
   ua_infinity := Power(1.0+Exp((Y[14]-(-10.0)+20.3)/-9.6), -1.0);
   dY[19] := (ua_infinity-Y[19])/tau_ua;
   alpha_ui := Power(21.0+1.0*Exp((Y[14]-(-10.0)-195.0)/-28.0), -1.0);
   beta_ui := 1.0/Exp((Y[14]-(-10.0)-168.0)/-16.0);
   tau_ui := Power(alpha_ui+beta_ui, -1.0)/K_Q10;
   ui_infinity := Power(1.0+Exp((Y[14]-(-10.0)-109.45)/27.48), -1.0);
   dY[20] := (ui_infinity-Y[20])/tau_ui;
End;

//------------------------------------------------------------------------------

End.

//==============================================================================
// End of file
//==============================================================================
