//==============================================================================
// CellML file:   C:\Program Files\COR\Models\dokos_model_1996.cellml
// CellML model:  dokos_model_1996
// Date and time: 23/07/2015 at 15:39:25
//------------------------------------------------------------------------------
// Conversion from CellML 1.0 to Delphi for Win32 was done using COR (0.9.31.1409)
//    Copyright 2002-2015 Dr Alan Garny
//    http://cor.physiol.ox.ac.uk/ - cor@physiol.ox.ac.uk
//------------------------------------------------------------------------------
// http://www.cellml.org/
//==============================================================================

Unit dokos_model_1996_unit;

//------------------------------------------------------------------------------

Interface

//------------------------------------------------------------------------------

Const _NB_OF_STATE_VARIABLES_ = 18;

//------------------------------------------------------------------------------

Type
   Tdokos_model_1996 = Class
      Public
         //---------------------------------------------------------------------
         // State variables
         //---------------------------------------------------------------------

         Y: Array[0.._NB_OF_STATE_VARIABLES_-1] Of Double;
         dY: Array[0.._NB_OF_STATE_VARIABLES_-1] Of Double;
         // 0: dL (dimensionless) (in L_type_calcium_current_d_gate)
         // 1: fL2 (dimensionless) (in L_type_calcium_current_f2_gate)
         // 2: fL (dimensionless) (in L_type_calcium_current_f_gate)
         // 3: dT (dimensionless) (in T_type_calcium_current_d_gate)
         // 4: fT (dimensionless) (in T_type_calcium_current_f_gate)
         // 5: x (dimensionless) (in delayed_rectifying_potassium_current_x_gate)
         // 6: h (dimensionless) (in fast_sodium_current_h_gate)
         // 7: m (dimensionless) (in fast_sodium_current_m_gate)
         // 8: y (dimensionless) (in hyperpolarising_activated_current_y_gate)
         // 9: Cai (millimolar) (in ion_concentrations)
         // 10: Cao (millimolar) (in ion_concentrations)
         // 11: Carel (millimolar) (in ion_concentrations)
         // 12: Caup (millimolar) (in ion_concentrations)
         // 13: Ki (millimolar) (in ion_concentrations)
         // 14: Ko (millimolar) (in ion_concentrations)
         // 15: Nai (millimolar) (in ion_concentrations)
         // 16: Nao (millimolar) (in ion_concentrations)
         // 17: E (millivolt) (in membrane)

         YNames: Array[0.._NB_OF_STATE_VARIABLES_-1] Of String;
         YUnits: Array[0.._NB_OF_STATE_VARIABLES_-1] Of String;
         YComponents: Array[0.._NB_OF_STATE_VARIABLES_-1] Of String;

         //---------------------------------------------------------------------
         // Constants
         //---------------------------------------------------------------------

         tau_dL: Double;   // second (in L_type_calcium_current_d_gate)
         alpha_fL2: Double;   // per_second (in L_type_calcium_current_f2_gate)
         beta_fL2: Double;   // per_millimolar_second (in L_type_calcium_current_f2_gate)
         g_CaL: Double;   // nanoS (in L_type_calcium_current)
         g_CaT: Double;   // nanoS (in T_type_calcium_current)
         KbK: Double;   // picoA_per_millimolar (in background_potassium_current)
         g_Nab: Double;   // nanoS (in background_sodium_current)
         F: Double;   // coulomb_per_mole (in constants)
         R: Double;   // joule_per_kilomole_kelvin (in constants)
         T: Double;   // kelvin (in constants)
         Kk: Double;   // picoA_per_millimolar (in delayed_rectifying_potassium_current)
         P_KNa: Double;   // dimensionless (in delayed_rectifying_potassium_current)
         g_Na: Double;   // nanoS (in fast_sodium_current)
         Kmf: Double;   // millimolar (in hyperpolarising_activated_current)
         g_fK: Double;   // nanoS (in hyperpolarising_activated_current)
         g_fNa: Double;   // nanoS (in hyperpolarising_activated_current)
         Cab: Double;   // millimolar (in ion_concentrations)
         Kb: Double;   // millimolar (in ion_concentrations)
         Nab: Double;   // millimolar (in ion_concentrations)
         V_i: Double;   // microlitre (in ion_concentrations)
         tau_b: Double;   // second (in ion_concentrations)
         C: Double;   // nanoF (in membrane)
         KmCarel: Double;   // millimolar (in sarcoplasmic_reticulum_kinetics)
         KmCaup: Double;   // millimolar (in sarcoplasmic_reticulum_kinetics)
         i_up_max: Double;   // picoA (in sarcoplasmic_reticulum_kinetics)
         tau_rel: Double;   // second (in sarcoplasmic_reticulum_kinetics)
         tau_tr: Double;   // second (in sarcoplasmic_reticulum_kinetics)
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
         kNaCa: Double;   // picoA (in sodium_calcium_exchange_current)
         KmK: Double;   // millimolar (in sodium_potassium_pump)
         KmNa: Double;   // millimolar (in sodium_potassium_pump)
         i_pmax: Double;   // picoA (in sodium_potassium_pump)

         //---------------------------------------------------------------------
         // Computed variables
         //---------------------------------------------------------------------

         dL_infinity: Double;   // dimensionless (in L_type_calcium_current_d_gate)
         fL_infinity: Double;   // dimensionless (in L_type_calcium_current_f_gate)
         tau_fL: Double;   // second (in L_type_calcium_current_f_gate)
         i_CaL: Double;   // picoA (in L_type_calcium_current)
         dT_infinity: Double;   // dimensionless (in T_type_calcium_current_d_gate)
         tau_dT: Double;   // second (in T_type_calcium_current_d_gate)
         fT_infinity: Double;   // dimensionless (in T_type_calcium_current_f_gate)
         tau_fT: Double;   // second (in T_type_calcium_current_f_gate)
         i_CaT: Double;   // picoA (in T_type_calcium_current)
         i_bK: Double;   // picoA (in background_potassium_current)
         i_bNa: Double;   // picoA (in background_sodium_current)
         tau_x: Double;   // second (in delayed_rectifying_potassium_current_x_gate)
         x_infinity: Double;   // dimensionless (in delayed_rectifying_potassium_current_x_gate)
         i_K: Double;   // picoA (in delayed_rectifying_potassium_current)
         i_KK: Double;   // picoA (in delayed_rectifying_potassium_current)
         i_KNa: Double;   // picoA (in delayed_rectifying_potassium_current)
         alpha_h: Double;   // per_second (in fast_sodium_current_h_gate)
         beta_h: Double;   // per_second (in fast_sodium_current_h_gate)
         alpha_m: Double;   // per_second (in fast_sodium_current_m_gate)
         beta_m: Double;   // per_second (in fast_sodium_current_m_gate)
         i_Na: Double;   // picoA (in fast_sodium_current)
         alpha_y: Double;   // per_second (in hyperpolarising_activated_current_y_gate)
         beta_y: Double;   // per_second (in hyperpolarising_activated_current_y_gate)
         i_f: Double;   // picoA (in hyperpolarising_activated_current)
         i_fK: Double;   // picoA (in hyperpolarising_activated_current)
         i_fNa: Double;   // picoA (in hyperpolarising_activated_current)
         V_e: Double;   // microlitre (in ion_concentrations)
         i_tot: Double;   // picoA (in membrane)
         E_Ca: Double;   // millivolt (in reversal_potentials)
         E_K: Double;   // millivolt (in reversal_potentials)
         E_Na: Double;   // millivolt (in reversal_potentials)
         V_rel: Double;   // microlitre (in sarcoplasmic_reticulum_kinetics)
         V_up: Double;   // microlitre (in sarcoplasmic_reticulum_kinetics)
         i_rel: Double;   // picoA (in sarcoplasmic_reticulum_kinetics)
         i_tr: Double;   // picoA (in sarcoplasmic_reticulum_kinetics)
         i_up: Double;   // picoA (in sarcoplasmic_reticulum_kinetics)
         di: Double;   // dimensionless (in sodium_calcium_exchange_current)
         do_: Double;   // dimensionless (in sodium_calcium_exchange_current)
         i_NaCa: Double;   // picoA (in sodium_calcium_exchange_current)
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
         i_p: Double;   // picoA (in sodium_potassium_pump)


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

Procedure Tdokos_model_1996.Init;
Begin
   //---------------------------------------------------------------------------
   // State variables
   //---------------------------------------------------------------------------

   Y[0] := 0.0001;   // dL (dimensionless) (in L_type_calcium_current_d_gate)
   Y[1] := 0.219;   // fL2 (dimensionless) (in L_type_calcium_current_f2_gate)
   Y[2] := 0.1505;   // fL (dimensionless) (in L_type_calcium_current_f_gate)
   Y[3] := 0.001;   // dT (dimensionless) (in T_type_calcium_current_d_gate)
   Y[4] := 0.1328;   // fT (dimensionless) (in T_type_calcium_current_f_gate)
   Y[5] := 0.5682;   // x (dimensionless) (in delayed_rectifying_potassium_current_x_gate)
   Y[6] := 0.0087;   // h (dimensionless) (in fast_sodium_current_h_gate)
   Y[7] := 0.0139;   // m (dimensionless) (in fast_sodium_current_m_gate)
   Y[8] := 0.0287;   // y (dimensionless) (in hyperpolarising_activated_current_y_gate)
   Y[9] := 0.000034;   // Cai (millimolar) (in ion_concentrations)
   Y[10] := 2.0004;   // Cao (millimolar) (in ion_concentrations)
   Y[11] := 0.1101;   // Carel (millimolar) (in ion_concentrations)
   Y[12] := 0.5832;   // Caup (millimolar) (in ion_concentrations)
   Y[13] := 140.0073;   // Ki (millimolar) (in ion_concentrations)
   Y[14] := 5.4243;   // Ko (millimolar) (in ion_concentrations)
   Y[15] := 7.4994;   // Nai (millimolar) (in ion_concentrations)
   Y[16] := 139.9929;   // Nao (millimolar) (in ion_concentrations)
   Y[17] := -64.9;   // E (millivolt) (in membrane)

   YNames[0] := 'dL';
   YNames[1] := 'fL2';
   YNames[2] := 'fL';
   YNames[3] := 'dT';
   YNames[4] := 'fT';
   YNames[5] := 'x';
   YNames[6] := 'h';
   YNames[7] := 'm';
   YNames[8] := 'y';
   YNames[9] := 'Cai';
   YNames[10] := 'Cao';
   YNames[11] := 'Carel';
   YNames[12] := 'Caup';
   YNames[13] := 'Ki';
   YNames[14] := 'Ko';
   YNames[15] := 'Nai';
   YNames[16] := 'Nao';
   YNames[17] := 'E';

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
   YUnits[14] := 'millimolar';
   YUnits[15] := 'millimolar';
   YUnits[16] := 'millimolar';
   YUnits[17] := 'millivolt';

   YComponents[0] := 'L_type_calcium_current_d_gate';
   YComponents[1] := 'L_type_calcium_current_f2_gate';
   YComponents[2] := 'L_type_calcium_current_f_gate';
   YComponents[3] := 'T_type_calcium_current_d_gate';
   YComponents[4] := 'T_type_calcium_current_f_gate';
   YComponents[5] := 'delayed_rectifying_potassium_current_x_gate';
   YComponents[6] := 'fast_sodium_current_h_gate';
   YComponents[7] := 'fast_sodium_current_m_gate';
   YComponents[8] := 'hyperpolarising_activated_current_y_gate';
   YComponents[9] := 'ion_concentrations';
   YComponents[10] := 'ion_concentrations';
   YComponents[11] := 'ion_concentrations';
   YComponents[12] := 'ion_concentrations';
   YComponents[13] := 'ion_concentrations';
   YComponents[14] := 'ion_concentrations';
   YComponents[15] := 'ion_concentrations';
   YComponents[16] := 'ion_concentrations';
   YComponents[17] := 'membrane';

   //---------------------------------------------------------------------------
   // Constants
   //---------------------------------------------------------------------------

   tau_dL := 0.002;   // second (in L_type_calcium_current_d_gate)
   alpha_fL2 := 3.0;   // per_second (in L_type_calcium_current_f2_gate)
   beta_fL2 := 40000.0;   // per_millimolar_second (in L_type_calcium_current_f2_gate)
   g_CaL := 0.4;   // nanoS (in L_type_calcium_current)
   g_CaT := 0.085;   // nanoS (in T_type_calcium_current)
   KbK := 0.00007;   // picoA_per_millimolar (in background_potassium_current)
   g_Nab := 0.00024;   // nanoS (in background_sodium_current)
   F := 96485.3415;   // coulomb_per_mole (in constants)
   R := 8314.472;   // joule_per_kilomole_kelvin (in constants)
   T := 310.0;   // kelvin (in constants)
   Kk := 0.00026;   // picoA_per_millimolar (in delayed_rectifying_potassium_current)
   P_KNa := 0.035;   // dimensionless (in delayed_rectifying_potassium_current)
   g_Na := 0.25;   // nanoS (in fast_sodium_current)
   Kmf := 10.3;   // millimolar (in hyperpolarising_activated_current)
   g_fK := 0.0135;   // nanoS (in hyperpolarising_activated_current)
   g_fNa := 0.0081;   // nanoS (in hyperpolarising_activated_current)
   Cab := 2.0;   // millimolar (in ion_concentrations)
   Kb := 5.4;   // millimolar (in ion_concentrations)
   Nab := 140.0;   // millimolar (in ion_concentrations)
   V_i := 2.5e-6;   // microlitre (in ion_concentrations)
   tau_b := 0.1;   // second (in ion_concentrations)
   C := 3.2e-5;   // nanoF (in membrane)
   KmCarel := 0.001;   // millimolar (in sarcoplasmic_reticulum_kinetics)
   KmCaup := 0.0005;   // millimolar (in sarcoplasmic_reticulum_kinetics)
   i_up_max := 0.0212;   // picoA (in sarcoplasmic_reticulum_kinetics)
   tau_rel := 0.005;   // second (in sarcoplasmic_reticulum_kinetics)
   tau_tr := 0.4;   // second (in sarcoplasmic_reticulum_kinetics)
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
   kNaCa := 4.0;   // picoA (in sodium_calcium_exchange_current)
   KmK := 1.0;   // millimolar (in sodium_potassium_pump)
   KmNa := 40.0;   // millimolar (in sodium_potassium_pump)
   i_pmax := 0.226;   // picoA (in sodium_potassium_pump)

   //---------------------------------------------------------------------------
   // Computed variables
   //---------------------------------------------------------------------------

   V_e := 0.2*V_i;
   V_rel := 0.006*V_i;
   V_up := 0.014*V_i;
End;

//------------------------------------------------------------------------------
// Computation
//------------------------------------------------------------------------------

Procedure Tdokos_model_1996.Compute(Const time: Double);
Begin
   // time: time (second)

   E_Ca := R*T/(2.0*F)*LN(Y[10]/Y[9]);
   i_CaL := g_CaL*Y[0]*Y[2]*Y[1]*(Y[17]-E_Ca+75.0);
   dL_infinity := 1.0/(1.0+Exp((Y[17]+6.6)/-6.6));
   dY[0] := (dL_infinity-Y[0])/tau_dL;
   dY[1] := alpha_fL2*(1.0-Y[1])-beta_fL2*Y[9]*Y[1];
   fL_infinity := 1.0/(1.0+Exp((Y[17]+25.0)/6.0));
   tau_fL := 0.031+1.0/(1.0+Exp((Y[17]+37.6)/8.1));
   dY[2] := (fL_infinity-Y[2])/tau_fL;
   i_CaT := g_CaT*Y[3]*Y[4]*(Y[17]-E_Ca+75.0);
   dT_infinity := 1.0/(1.0+Exp((Y[17]+23.0)/-6.1));
   tau_dT := 0.0006+0.0054/(1.0+Exp(0.03*(Y[17]+100.0)));
   dY[3] := (dT_infinity-Y[3])/tau_dT;
   fT_infinity := 1.0/(1.0+Exp((Y[17]+75.0)/6.6));
   tau_fT := 0.001+0.04/(1.0+Exp(0.08*(Y[17]+65.0)));
   dY[4] := (fT_infinity-Y[4])/tau_fT;
   i_bK := KbK*Power(Y[14]/1.0, 0.41)*(Y[13]-Y[14]*Exp(-Y[17]*F/(R*T)));
   E_Na := R*T/F*LN(Y[16]/Y[15]);
   i_bNa := g_Nab*(Y[17]-E_Na);
   i_KK := Y[5]*Kk*Power(Y[14]/1.0, 0.59)*(Y[13]-Y[14]*Exp(-Y[17]*F/(R*T)));
   i_KNa := Y[5]*Kk*P_KNa*Power(Y[14]/1.0, 0.59)*(Y[15]-Y[16]*Exp(-Y[17]*F/(R*T)));
   i_K := i_KK+i_KNa;
   x_infinity := 1.0/(1.0+Exp((Y[17]+25.1)/-7.4));
   tau_x := 1.0/(17.0*Exp(0.0398*Y[17])+0.211*Exp(-0.051*Y[17]));
   dY[5] := (x_infinity-Y[5])/tau_x;
   i_Na := g_Na*Power(Y[7], 3.0)*Y[6]*(Y[17]-E_Na);
   alpha_h := 32.4*Exp(-0.14*(Y[17]+93.4));
   beta_h := 709.0/(1.0+4.2*Exp(-0.06*(Y[17]+45.4)));
   dY[6] := alpha_h*(1.0-Y[6])-beta_h*Y[6];
   alpha_m := 200.0*(Y[17]+34.3)/(1.0-Exp(-0.09*(Y[17]+34.3)));
   beta_m := 8000.0*Exp(-0.15*(Y[17]+56.2));
   dY[7] := alpha_m*(1.0-Y[7])-beta_m*Y[7];
   i_fNa := Y[8]*Power(Y[14], 1.83)/(Power(Y[14], 1.83)+Power(Kmf, 1.83))*g_fNa*(Y[17]-E_Na);
   E_K := R*T/F*LN(Y[14]/Y[13]);
   i_fK := Y[8]*Power(Y[14], 1.83)/(Power(Y[14], 1.83)+Power(Kmf, 1.83))*g_fK*(Y[17]-E_K);
   i_f := i_fK+i_fNa;
   alpha_y := 0.36*(Y[17]+137.8)/(Exp(0.066*(Y[17]+137.8))-1.0);
   beta_y := 0.1*(Y[17]+76.3)/(1.0-Exp(-0.21*(Y[17]+76.3)));
   dY[8] := alpha_y*(1.0-Y[8])-beta_y*Y[8];
   i_p := i_pmax*Y[15]/(Y[15]+KmNa)*Y[14]/(Y[14]+KmK)*(1.0-Sqr((Y[17]-40.0)/211.0));
   k32 := Exp(Qn*Y[17]*F/(2.0*R*T));
   k43 := Y[15]/(K3ni+Y[15]);
   di := 1.0+Y[9]/Kci+Y[9]/Kci*Exp(-Qci*Y[17]*F/(R*T))+Y[9]*Y[15]/(Kci*Kcni)+Y[15]/K1ni+Sqr(Y[15])/(K1ni*K2ni)+Power(Y[15], 3.0)/(K1ni*K2ni*K3ni);
   k14 := (Sqr(Y[15])/(K1ni*K2ni)+Power(Y[15], 3.0)/(K1ni*K2ni*K3ni))*Exp(Qn*Y[17]*F/(2.0*R*T))/di;
   k12 := Y[9]/Kci*Exp(-Qci*Y[17]*F/(R*T))/di;
   k41 := Exp(-Qn*Y[17]*F/(2.0*R*T));
   k34 := Y[16]/(K3no+Y[16]);
   x2 := k32*k43*(k14+k12)+k41*k12*(k34+k32);
   do_ := 1.0+Y[10]/Kco+Y[10]/Kco*Exp(Qco*Y[17]*F/(R*T))+Y[16]/K1no+Sqr(Y[16])/(K1no*K2no)+Power(Y[16], 3.0)/(K1no*K2no*K3no);
   k21 := Y[10]/Kco*Exp(-Qco*Y[17]*F/(R*T))/do_;
   k23 := (Sqr(Y[16])/(K1no*K2no)+Power(Y[16], 3.0)/(K1no*K2no*K3no))*Exp(-Qn*Y[17]*F/(2.0*R*T))/do_;
   x1 := k41*k34*(k23+k21)+k21*k32*(k43+k41);
   x3 := k14*k43*(k23+k21)+k12*k23*(k43+k41);
   x4 := k23*k34*(k14+k12)+k14*k21*(k34+k32);
   i_NaCa := kNaCa*(x2*k21-x1*k12)/(x1+x2+x3+x4);
   dY[15] := -1.0*(i_bNa+i_fNa+i_Na+3.0*i_p+3.0*i_NaCa+i_KNa)/(F*1.0*V_i);
   dY[16] := 1.0*(i_bNa+i_fNa+i_Na+3.0*i_p+3.0*i_NaCa+i_KNa)/(F*1.0*V_e)+(Nab-Y[16])/tau_b;
   dY[13] := -1.0*(i_KK+i_fK-2.0*i_p+i_bK)/(F*1.0*V_i);
   dY[14] := 1.0*(i_KK+i_fK-2.0*i_p+i_bK)/(F*1.0*V_e)+(Kb-Y[14])/tau_b;
   i_up := i_up_max*Sqr(Y[9])/(Sqr(Y[9])+Sqr(KmCaup));
   i_rel := 2.0*1.0*V_rel*F/(1.0*tau_rel)*Y[11]*Sqr(Y[9])/(Sqr(Y[9])+Sqr(KmCarel));
   dY[9] := -1.0*(i_CaL+i_CaT-2.0*i_NaCa+i_up+(-i_rel))/(2.0*F*1.0*V_i);
   dY[10] := 1.0*(i_CaL+i_CaT-2.0*i_NaCa)/(2.0*F*1.0*V_e)+(Cab-Y[10])/tau_b;
   i_tr := 2.0*1.0*V_rel*F/(1.0*tau_tr)*Y[12];
   dY[12] := 1.0*(i_up-i_tr)/(2.0*1.0*V_up*F);
   dY[11] := 1.0*(i_tr-i_rel)/(2.0*1.0*V_rel*F);
   i_tot := i_CaL+i_CaT+i_Na+i_K+i_f+i_p+i_NaCa+i_bNa+i_bK;
   dY[17] := -i_tot/C;
End;

procedure Tdokos_model_1996.UpdateStates( dt : double ) ;
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
