//==============================================================================
// CellML file:   C:\Program Files\COR\Models\davies_isap_2012.cellml
// CellML model:  davies_isap_2012
// Date and time: 24/07/2015 at 13:59:52
//------------------------------------------------------------------------------
// Conversion from CellML 1.0 to Delphi for Win32 was done using COR (0.9.31.1409)
//    Copyright 2002-2015 Dr Alan Garny
//    http://cor.physiol.ox.ac.uk/ - cor@physiol.ox.ac.uk
//------------------------------------------------------------------------------
// http://www.cellml.org/
//==============================================================================

Unit davies_isap_2012_unit;

//------------------------------------------------------------------------------

Interface

//------------------------------------------------------------------------------

Const _NB_OF_STATE_VARIABLES_ = 29;

//------------------------------------------------------------------------------

Type
   Tdavies_isap_2012 = Class
      Public
         //---------------------------------------------------------------------
         // State variables
         //---------------------------------------------------------------------

         Y: Array[0.._NB_OF_STATE_VARIABLES_-1] Of Double;
         dY: Array[0.._NB_OF_STATE_VARIABLES_-1] Of Double;
         // 0: Ca_i (mM) (in Ca)
         // 1: Ca_jsr (mM) (in Ca)
         // 2: Ca_nsr (mM) (in Ca)
         // 3: Ca_ss (mM) (in Ca)
         // 4: Cl_i (mM) (in Cl)
         // 5: d (dimensionless) (in ICaL)
         // 6: dp (dimensionless) (in ICaL)
         // 7: f1 (dimensionless) (f in ICaL)
         // 8: f2 (dimensionless) (in ICaL)
         // 9: fca (dimensionless) (in ICaL)
         // 10: fca2 (dimensionless) (in ICaL)
         // 11: xr (dimensionless) (in IKr)
         // 12: xs1 (dimensionless) (in IKs)
         // 13: xs2 (dimensionless) (in IKs)
         // 14: hL (dimensionless) (in INal)
         // 15: mL (dimensionless) (in INal)
         // 16: H (dimensionless) (in INa)
         // 17: J (dimensionless) (in INa)
         // 18: m (dimensionless) (in INa)
         // 19: CaMKtrap (dimensionless) (in Irel)
         // 20: ri (dimensionless) (in Irel)
         // 21: ro (dimensionless) (in Irel)
         // 22: AA (dimensionless) (in Ito2)
         // 23: ydv (dimensionless) (in Ito)
         // 24: ydv2 (dimensionless) (in Ito)
         // 25: zdv (dimensionless) (in Ito)
         // 26: K_i (mM) (in K)
         // 27: Na_i (mM) (in Na)
         // 28: V (mV) (in cell)

         YNames: Array[0.._NB_OF_STATE_VARIABLES_-1] Of String;
         YUnits: Array[0.._NB_OF_STATE_VARIABLES_-1] Of String;
         YComponents: Array[0.._NB_OF_STATE_VARIABLES_-1] Of String;
         YDimensionless: Array[0.._NB_OF_STATE_VARIABLES_-1] Of Boolean ;

         //---------------------------------------------------------------------
         // Constants
         //---------------------------------------------------------------------

         BSLmax: Double;   // mM (in Ca)
         BSRmax: Double;   // mM (in Ca)
         KmBSL: Double;   // mM (in Ca)
         KmBSR: Double;   // mM (in Ca)
         cbar: Double;   // mM (in Ca)
         csqnbar: Double;   // mM (in Ca)
         kmc: Double;   // mM (in Ca)
         kmcsqn: Double;   // mM (in Ca)
         kmt: Double;   // mM (in Ca)
         tbar: Double;   // mM (in Ca)
         Ca_o: Double;   // mM (in Environment)
         Cl_o: Double;   // mM (in Environment)
         F2: Double;   // C_per_mole (F in Environment)
         FonRT: Double;   // per_mV (in Environment)
         K_o: Double;   // mM (in Environment)
         Na_o: Double;   // mM (in Environment)
         gacai: Double;   // dimensionless (in ICaL)
         gacao: Double;   // dimensionless (in ICaL)
         pca: Double;   // L_per_F_ms (in ICaL)
         tau_pow_calcium: Double;   // ms (in ICaL)
         GCab: Double;   // L_per_F_ms (in ICab)
         GClb: Double;   // mS_per_uF (in IClb)
         GK1: Double;   // mS_per_uF (in IK1)
         GKrMax: Double;   // mS_per_uF (in IKr)
         gks_max: Double;   // mS_per_uF (in IKs)
         KmCa: Double;   // mM (in INaCa)
         KmCai: Double;   // mM (in INaCa)
         KmCao: Double;   // mM (in INaCa)
         KmNai1: Double;   // mM (KmNai in INaCa)
         KmNao: Double;   // mM (in INaCa)
         NCXmax: Double;   // uA_per_uF (in INaCa)
         eta: Double;   // dimensionless (in INaCa)
         ksat: Double;   // dimensionless (in INaCa)
         ibarnak: Double;   // uA_per_uF (in INaK)
         kmko: Double;   // mM (in INaK)
         kmnai2: Double;   // mM (kmnai in INaK)
         GNaL: Double;   // mS_per_uF (in INal)
         GNa1: Double;   // mS_per_uF (GNa in INa)
         ibarpca: Double;   // uA_per_uF (in IpCa)
         kmpca: Double;   // mM (in IpCa)
         CaMK0: Double;   // dimensionless (in Irel)
         Km: Double;   // mM (in Irel)
         KmCaMK: Double;   // dimensionless (in Irel)
         dtau_rel_max: Double;   // ms (in Irel)
         Kmto2: Double;   // mM (in Ito2)
         PCl: Double;   // L_per_F_ms (in Ito2)
         Cto: Double;   // mV (in Ito)
         gitodv: Double;   // mS_per_uF (in Ito)
         Kmup: Double;   // mM (in Iup_Ileak)
         dJupmax: Double;   // dimensionless (in Iup_Ileak)
         dKmPLBmax: Double;   // mM (in Iup_Ileak)
         iupmax: Double;   // mM_per_ms (in Iup_Ileak)
         nsrmax: Double;   // mM (in Iup_Ileak)
         CTKClmax: Double;   // mM_per_ms (in K)
         CTNaClmax: Double;   // mM_per_ms (in Na)
         a: Double;   // cm (in cell)
         l: Double;   // cm (in cell)
         stim_amplitude: Double;   // uA_per_uF (in cell)
         stim_duration: Double;   // ms (in cell)
         stim_offset: Double;   // ms (in cell)
         stim_period: Double;   // ms (in cell)
         prnak: Double;   // dimensionless (in reversal_potentials)

         //---------------------------------------------------------------------
         // Computed variables
         //---------------------------------------------------------------------

         bcsqn: Double;   // dimensionless (in Ca)
         bmyo: Double;   // dimensionless (in Ca)
         bss: Double;   // dimensionless (in Ca)
         ICaL: Double;   // uA_per_uF (in ICaL)
         dpss: Double;   // dimensionless (in ICaL)
         dss: Double;   // dimensionless (in ICaL)
         f2ss: Double;   // dimensionless (in ICaL)
         fca2ss: Double;   // dimensionless (in ICaL)
         fcass: Double;   // dimensionless (in ICaL)
         fss: Double;   // dimensionless (in ICaL)
         ibarca: Double;   // uA_per_uF (in ICaL)
         taud: Double;   // ms (in ICaL)
         tauf: Double;   // ms (in ICaL)
         tauf2: Double;   // ms (in ICaL)
         taufca: Double;   // ms (in ICaL)
         taufca2: Double;   // ms (in ICaL)
         ICab: Double;   // uA_per_uF (in ICab)
         IClb: Double;   // uA_per_uF (in IClb)
         IK1: Double;   // uA_per_uF (in IK1)
         ak1: Double;   // per_ms (in IK1)
         bk1: Double;   // per_ms (in IK1)
         IKp: Double;   // uA_per_uF (in IKp)
         IKr: Double;   // uA_per_uF (in IKr)
         gkr: Double;   // mS_per_uF (in IKr)
         r: Double;   // dimensionless (in IKr)
         tauxr: Double;   // ms (in IKr)
         xrss: Double;   // dimensionless (in IKr)
         IKs: Double;   // uA_per_uF (in IKs)
         gks: Double;   // mS_per_uF (in IKs)
         tauxs: Double;   // ms (in IKs)
         xss: Double;   // dimensionless (in IKs)
         INaCa: Double;   // uA_per_uF (in INaCa)
         allo: Double;   // dimensionless (in INaCa)
         ca_i_NaCa: Double;   // mM (in INaCa)
         denom1: Double;   // dimensionless (in INaCa)
         denom2: Double;   // mM4 (in INaCa)
         denom3: Double;   // mM4 (in INaCa)
         num: Double;   // mM4 (in INaCa)
         INaK: Double;   // uA_per_uF (in INaK)
         fnak: Double;   // dimensionless (in INaK)
         sigma: Double;   // dimensionless (in INaK)
         INal: Double;   // uA_per_uF (in INal)
         amL: Double;   // per_ms (in INal)
         bmL: Double;   // per_ms (in INal)
         hLss: Double;   // dimensionless (in INal)
         INa: Double;   // uA_per_uF (in INa)
         ah: Double;   // per_ms (in INa)
         aj: Double;   // per_ms (in INa)
         am: Double;   // per_ms (in INa)
         bh: Double;   // per_ms (in INa)
         bj: Double;   // per_ms (in INa)
         bm: Double;   // per_ms (in INa)
         gNa2: Double;   // mS_per_uF (gNa in INa)
         idiff: Double;   // mM_per_ms (in Idiff_Itr)
         itr: Double;   // mM_per_ms (in Idiff_Itr)
         IpCa: Double;   // uA_per_uF (in IpCa)
         CaMKactive: Double;   // dimensionless (in Irel)
         CaMKbound: Double;   // dimensionless (in Irel)
         Grel: Double;   // per_ms (in Irel)
         cafac: Double;   // dimensionless (in Irel)
         dro_inf: Double;   // dimensionless (in Irel)
         dtau_rel: Double;   // ms (in Irel)
         irelcicr: Double;   // mM_per_ms (in Irel)
         riss: Double;   // dimensionless (in Irel)
         ross: Double;   // dimensionless (in Irel)
         tauri: Double;   // ms (in Irel)
         vg: Double;   // dimensionless (in Irel)
         AAss: Double;   // dimensionless (in Ito2)
         Ito2: Double;   // uA_per_uF (in Ito2)
         Ito2_max: Double;   // uA_per_uF (in Ito2)
         Ito: Double;   // uA_per_uF (in Ito)
         ay: Double;   // per_ms (in Ito)
         ay2: Double;   // per_ms (in Ito)
         ay3: Double;   // per_ms (in Ito)
         by: Double;   // per_ms (in Ito)
         by2: Double;   // per_ms (in Ito)
         by3: Double;   // per_ms (in Ito)
         rv: Double;   // dimensionless (in Ito)
         dJup: Double;   // dimensionless (in Iup_Ileak)
         dKmPLB: Double;   // mM (in Iup_Ileak)
         ileak: Double;   // mM_per_ms (in Iup_Ileak)
         iup: Double;   // mM_per_ms (in Iup_Ileak)
         CTKCl: Double;   // mM_per_ms (in K)
         CTNaCl: Double;   // mM_per_ms (in Na)
         AF: Double;   // uF_mole_per_C (in cell)
         Acap: Double;   // uF (in cell)
         ageo: Double;   // cm2 (in cell)
         caiont: Double;   // uA_per_uF (in cell)
         clont: Double;   // uA_per_uF (in cell)
         i_Stim: Double;   // uA_per_uF (in cell)
         kiont: Double;   // uA_per_uF (in cell)
         naiont: Double;   // uA_per_uF (in cell)
         past: Double;   // ms (in cell)
         vcell: Double;   // uL (in cell)
         vjsr: Double;   // uL (in cell)
         vmito: Double;   // uL (in cell)
         vmyo: Double;   // uL (in cell)
         vnsr: Double;   // uL (in cell)
         vsr: Double;   // uL (in cell)
         vss: Double;   // uL (in cell)
         ECl: Double;   // mV (in reversal_potentials)
         EK: Double;   // mV (in reversal_potentials)
         EKs: Double;   // mV (in reversal_potentials)
         ENa: Double;   // mV (in reversal_potentials)

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

Procedure Tdavies_isap_2012.Init;
var
    i : Integer ;
Begin
   //---------------------------------------------------------------------------
   // State variables
   //---------------------------------------------------------------------------

   Y[0] := 0.000223768331231758;   // Ca_i (mM) (in Ca)
   Y[1] := 4.1270622547589;   // Ca_jsr (mM) (in Ca)
   Y[2] := 4.14835141174613;   // Ca_nsr (mM) (in Ca)
   Y[3] := 0.000225131045297696;   // Ca_ss (mM) (in Ca)
   Y[4] := 20.1543792471096;   // Cl_i (mM) (in Cl)
   Y[5] := 5.38067794749339e-7;   // d (dimensionless) (in ICaL)
   Y[6] := 8.99805432294836;   // dp (dimensionless) (in ICaL)
   Y[7] := 0.999986839648304;   // f1 (dimensionless) (f in ICaL)
   Y[8] := 0.989081601403786;   // f2 (dimensionless) (in ICaL)
   Y[9] := 0.961568137796573;   // fca (dimensionless) (in ICaL)
   Y[10] := 0.854261813196152;   // fca2 (dimensionless) (in ICaL)
   Y[11] := 0.255981702631947;   // xr (dimensionless) (in IKr)
   Y[12] := 0.0147449166757808;   // xs1 (dimensionless) (in IKs)
   Y[13] := 0.0147504787196957;   // xs2 (dimensionless) (in IKs)
   Y[14] := 0.488129650338831;   // hL (dimensionless) (in INal)
   Y[15] := 0.000382187369845771;   // mL (dimensionless) (in INal)
   Y[16] := 0.99765453819431;   // H (dimensionless) (in INa)
   Y[17] := 0.998157020148849;   // J (dimensionless) (in INa)
   Y[18] := 0.000382187369845771;   // m (dimensionless) (in INa)
   Y[19] := 0.0971591072782679;   // CaMKtrap (dimensionless) (in Irel)
   Y[20] := 0.716604593002322;   // ri (dimensionless) (in Irel)
   Y[21] := -1.07543858779373e-32;   // ro (dimensionless) (in Irel)
   Y[22] := 0.0014969201082975;   // AA (dimensionless) (in Ito2)
   Y[23] := 0.00894974857468432;   // ydv (dimensionless) (in Ito)
   Y[24] := 0.999992183094244;   // ydv2 (dimensionless) (in Ito)
   Y[25] := 0.787996527242362;   // zdv (dimensionless) (in Ito)
   Y[26] := 134.555737634453;   // K_i (mM) (in K)
   Y[27] := 17.9964119779802;   // Na_i (mM) (in Na)
   Y[28] := -93.2932771154856;   // V (mV) (in cell)

   YNames[0] := 'Ca_i';
   YNames[1] := 'Ca_jsr';
   YNames[2] := 'Ca_nsr';
   YNames[3] := 'Ca_ss';
   YNames[4] := 'Cl_i';
   YNames[5] := 'd';
   YNames[6] := 'dp';
   YNames[7] := 'f1';
   YNames[8] := 'f2';
   YNames[9] := 'fca';
   YNames[10] := 'fca2';
   YNames[11] := 'xr';
   YNames[12] := 'xs1';
   YNames[13] := 'xs2';
   YNames[14] := 'hL';
   YNames[15] := 'mL';
   YNames[16] := 'H';
   YNames[17] := 'J';
   YNames[18] := 'm';
   YNames[19] := 'CaMKtrap';
   YNames[20] := 'ri';
   YNames[21] := 'ro';
   YNames[22] := 'AA';
   YNames[23] := 'ydv';
   YNames[24] := 'ydv2';
   YNames[25] := 'zdv';
   YNames[26] := 'K_i';
   YNames[27] := 'Na_i';
   YNames[28] := 'V';

   YUnits[0] := 'mM';
   YUnits[1] := 'mM';
   YUnits[2] := 'mM';
   YUnits[3] := 'mM';
   YUnits[4] := 'mM';
   YUnits[5] := 'dimensionless';
   YUnits[6] := 'dimensionless';
   YUnits[7] := 'dimensionless';
   YUnits[8] := 'dimensionless';
   YUnits[9] := 'dimensionless';
   YUnits[10] := 'dimensionless';
   YUnits[11] := 'dimensionless';
   YUnits[12] := 'dimensionless';
   YUnits[13] := 'dimensionless';
   YUnits[14] := 'dimensionless';
   YUnits[15] := 'dimensionless';
   YUnits[16] := 'dimensionless';
   YUnits[17] := 'dimensionless';
   YUnits[18] := 'dimensionless';
   YUnits[19] := 'dimensionless';
   YUnits[20] := 'dimensionless';
   YUnits[21] := 'dimensionless';
   YUnits[22] := 'dimensionless';
   YUnits[23] := 'dimensionless';
   YUnits[24] := 'dimensionless';
   YUnits[25] := 'dimensionless';
   YUnits[26] := 'mM';
   YUnits[27] := 'mM';
   YUnits[28] := 'mV';

   YComponents[0] := 'Ca';
   YComponents[1] := 'Ca';
   YComponents[2] := 'Ca';
   YComponents[3] := 'Ca';
   YComponents[4] := 'Cl';
   YComponents[5] := 'ICaL';
   YComponents[6] := 'ICaL';
   YComponents[7] := 'ICaL';
   YComponents[8] := 'ICaL';
   YComponents[9] := 'ICaL';
   YComponents[10] := 'ICaL';
   YComponents[11] := 'IKr';
   YComponents[12] := 'IKs';
   YComponents[13] := 'IKs';
   YComponents[14] := 'INal';
   YComponents[15] := 'INal';
   YComponents[16] := 'INa';
   YComponents[17] := 'INa';
   YComponents[18] := 'INa';
   YComponents[19] := 'Irel';
   YComponents[20] := 'Irel';
   YComponents[21] := 'Irel';
   YComponents[22] := 'Ito2';
   YComponents[23] := 'Ito';
   YComponents[24] := 'Ito';
   YComponents[25] := 'Ito';
   YComponents[26] := 'K';
   YComponents[27] := 'Na';
   YComponents[28] := 'cell';

   for i := 0 to 28 do if YUnits[i] = 'dimensionless' then YDimensionless[i] := True
                                                      else YDimensionless[i] := False ;


   YUnits[5] := 'dimensionless';

   //---------------------------------------------------------------------------
   // Constants
   //---------------------------------------------------------------------------

   BSLmax := 1.124;   // mM (in Ca)
   BSRmax := 0.047;   // mM (in Ca)
   KmBSL := 0.0087;   // mM (in Ca)
   KmBSR := 0.00087;   // mM (in Ca)
   cbar := 0.05;   // mM (in Ca)
   csqnbar := 10.0;   // mM (in Ca)
   kmc := 0.00238;   // mM (in Ca)
   kmcsqn := 0.8;   // mM (in Ca)
   kmt := 0.0005;   // mM (in Ca)
   tbar := 0.07;   // mM (in Ca)
   Ca_o := 1.8;   // mM (in Environment)
   Cl_o := 154.6;   // mM (in Environment)
   F2 := 96485.0;   // C_per_mole (F in Environment)
   FonRT := 0.0374358835078;   // per_mV (in Environment)
   K_o := 4.0;   // mM (in Environment)
   Na_o := 150.0;   // mM (in Environment)
   gacai := 1.0;   // dimensionless (in ICaL)
   gacao := 0.341;   // dimensionless (in ICaL)
   pca := 0.000243;   // L_per_F_ms (in ICaL)
   tau_pow_calcium := 10.0;   // ms (in ICaL)
   GCab := 0.0000007980336;   // L_per_F_ms (in ICab)
   GClb := 0.000225;   // mS_per_uF (in IClb)
   GK1 := 0.5;   // mS_per_uF (in IK1)
   GKrMax := 0.0138542;   // mS_per_uF (in IKr)
   gks_max := 0.00746925;   // mS_per_uF (in IKs)
   KmCa := 0.000125;   // mM (in INaCa)
   KmCai := 0.0036;   // mM (in INaCa)
   KmCao := 1.3;   // mM (in INaCa)
   KmNai1 := 12.3;   // mM (KmNai in INaCa)
   KmNao := 87.5;   // mM (in INaCa)
   NCXmax := 5.85;   // uA_per_uF (in INaCa)
   eta := 0.35;   // dimensionless (in INaCa)
   ksat := 0.27;   // dimensionless (in INaCa)
   ibarnak := 0.61875;   // uA_per_uF (in INaK)
   kmko := 1.5;   // mM (in INaK)
   kmnai2 := 10.0;   // mM (kmnai in INaK)
   GNaL := 0.011;   // mS_per_uF (in INal)
   GNa1 := 8.25;   // mS_per_uF (GNa in INa)
   ibarpca := 0.0575;   // uA_per_uF (in IpCa)
   kmpca := 0.0005;   // mM (in IpCa)
   CaMK0 := 0.05;   // dimensionless (in Irel)
   Km := 0.0015;   // mM (in Irel)
   KmCaMK := 0.15;   // dimensionless (in Irel)
   dtau_rel_max := 10.0;   // ms (in Irel)
   Kmto2 := 0.1502;   // mM (in Ito2)
   PCl := 4.0e-7;   // L_per_F_ms (in Ito2)
   Cto := 300.0;   // mV (in Ito)
   gitodv := 0.1805;   // mS_per_uF (in Ito)
   Kmup := 0.00092;   // mM (in Iup_Ileak)
   dJupmax := 0.75;   // dimensionless (in Iup_Ileak)
   dKmPLBmax := 0.00017;   // mM (in Iup_Ileak)
   iupmax := 0.004375;   // mM_per_ms (in Iup_Ileak)
   nsrmax := 15.0;   // mM (in Iup_Ileak)
   CTKClmax := 7.0756e-6;   // mM_per_ms (in K)
   CTNaClmax := 9.8443e-6;   // mM_per_ms (in Na)
   a := 0.0011;   // cm (in cell)
   l := 0.01;   // cm (in cell)
   stim_amplitude := -80.0;   // uA_per_uF (in cell)
   stim_duration := 1.0;   // ms (in cell)
   stim_offset := 0.0;   // ms (in cell)
   stim_period := 1000.0;   // ms (in cell)
   prnak := 0.01833;   // dimensionless (in reversal_potentials)

   //---------------------------------------------------------------------------
   // Computed variables
   //---------------------------------------------------------------------------

   ageo := 2.0*3.14159265358979*a*a+2.0*3.14159265358979*a*l;
   Acap := ageo*2.0;
   AF := Acap/F2;
   vcell := 1000.0*3.14159265358979*a*a*l;
   vmyo := vcell*0.68;
   vnsr := vcell*0.0552;
   vss := vcell*0.02;
   vjsr := vcell*0.0048;
   gkr := GKrMax*Sqrt(K_o/4.0);
   sigma := (Exp(Na_o/67.3)-1.0)/7.0;
   vmito := vcell*0.26;
   vsr := vcell*0.06;
End;

//------------------------------------------------------------------------------
// Computation
//------------------------------------------------------------------------------

Procedure Tdavies_isap_2012.Compute(Const time: Double);
Begin
   // time: time (ms)

   bmyo := 1.0/(1.0+cbar*kmc/Sqr(Y[0]+kmc)+kmt*tbar/Sqr(Y[0]+kmt));
   ICab := GCab*Y[28]*F2*FonRT*(Y[0]*Exp(2.0*Y[28]*FonRT)-0.341*Ca_o)/(Exp(2.0*Y[28]*FonRT)-1.0);
   IpCa := ibarpca*Y[0]/(kmpca+Y[0]);
   ca_i_NaCa := 1.5*Y[0];
   allo := 1.0/(1.0+Sqr(KmCa/ca_i_NaCa));
   num := Power(Y[27], 3.0)*Ca_o*Exp(eta*Y[28]*FonRT)-Power(Na_o, 3.0)*ca_i_NaCa*Exp((eta-1.0)*Y[28]*FonRT);
   denom1 := 1.0+ksat*Exp((eta-1.0)*Y[28]*FonRT);
   denom2 := KmCao*Power(Y[27], 3.0)+Power(KmNao, 3.0)*ca_i_NaCa+Power(KmNai1, 3.0)*Ca_o*(1.0+ca_i_NaCa/KmCai);
   denom3 := KmCai*Power(Na_o, 3.0)*(1.0+Power(Y[27]/KmNai1, 3.0))+Power(Y[27], 3.0)*Ca_o+Power(Na_o, 3.0)*ca_i_NaCa;
   INaCa := NCXmax*allo*num/(denom1*(denom2+denom3));
   ileak := iupmax*Y[2]/nsrmax;
   CaMKbound := CaMK0*(1.0-Y[19])/(1.0+Km/Y[3]);
   CaMKactive := CaMKbound+Y[19];
   dJup := dJupmax*CaMKactive/(KmCaMK+CaMKactive);
   dKmPLB := dKmPLBmax*CaMKactive/(KmCaMK+CaMKactive);
   iup := (dJup+1.0)*iupmax*Y[0]/(Y[0]+Kmup-dKmPLB);
   idiff := (Y[3]-Y[0])/0.2;
   dY[0] := bmyo*(-(ICab+IpCa-2.0*INaCa)*AF/(vmyo*2.0)+(ileak-iup)*vnsr/vmyo+idiff*vss/vmyo);
   bss := 1.0/(1.0+BSRmax*KmBSR/Sqr(KmBSR+Y[3])+BSLmax*KmBSL/Sqr(KmBSL+Y[3]));
   ibarca := pca*4.0*(Y[28]-15.0)*F2*FonRT*(gacai*Y[3]*Exp(2.0*(Y[28]-15.0)*FonRT)-gacao*Ca_o)/(Exp(2.0*(Y[28]-15.0)*FonRT)-1.0);
   ICaL := Power(Y[5], Y[6])*Y[7]*Y[8]*Y[9]*Y[10]*ibarca;
   ICaL := ICaL*GCaL_Available*(1.0 + 0.5*BetaADR_active) ;
   vg := 1.0/(1.0+Exp((ibarca+13.0)/5.0));
   Grel := 3000.0*vg;
   irelcicr := Grel*Y[21]*Y[20]*(Y[1]-Y[3]);
   dY[3] := bss*(-ICaL*AF/(vss*2.0)+irelcicr*vjsr/vss-idiff);
   itr := (Y[2]-Y[1])/120.0;
   dY[2] := iup-itr*vjsr/vnsr-ileak;
   bcsqn := 1.0/(1.0+kmcsqn*csqnbar/Sqr(Y[1]+kmcsqn));
   dY[1] := bcsqn*(itr-irelcicr);
   ECl := -LN(Cl_o/Y[4])/FonRT;
   IClb := GClb*(Y[28]-ECl);
   Ito2_max := PCl*Y[28]*F2*FonRT*(Y[4]-Cl_o*Exp(Y[28]*FonRT))/(1.0-Exp(Y[28]*FonRT));
   Ito2 := Ito2_max*Y[22];
   past := Floor(time/stim_period)*stim_period;

{   If ((time-past >= stim_offset) And (time-past <= stim_offset+stim_duration)) Then
      i_Stim := stim_amplitude
   Else
      i_Stim := 0.0;}

   clont := IClb+Ito2+0.5*i_Stim;
   ENa := LN(Na_o/Y[27])/FonRT;
   CTNaCl := CTNaClmax*Power(ENa-ECl, 4.0)/(Power(ENa-ECl, 4.0)+Power(87.8251, 4.0));
   EK := LN(K_o/Y[26])/FonRT;
   CTKCl := CTKClmax*(EK-ECl)/(EK-ECl+87.8251);
   dY[4] := clont*AF/vmyo+CTNaCl+CTKCl;
   dss := 1.0/(1.0+Exp(-(Y[28]-4.0)/6.74));
   taud := 0.59+0.8*Exp(0.052*(Y[28]+13.0))/(1.0+Exp(0.132*(Y[28]+13.0)));
   fss := 0.7/(1.0+Exp((Y[28]+17.12)/7.0))+0.3;
   f2ss := 0.77/(1.0+Exp((Y[28]+17.12)/7.0))+0.23;
   tauf := 1.0/(0.2411*Exp(-Sqr(0.045*(Y[28]-9.6914)))+0.0529);
   tauf2 := 1.0/(0.0423*Exp(-Sqr(0.059*(Y[28]-18.5726)))+0.0054);
   dpss := 9.0-8.0/(1.0+Exp(-(Y[28]+65.0)/3.4));
   fcass := 0.3/(1.0-ICaL/0.05)+0.55/(1.0+Y[3]/0.003)+0.15;
   fca2ss := 1.0/(1.0-ICaL/0.01);
   taufca := 10.0*CaMKactive/(0.15+CaMKactive)+1.0/(1.0+Y[3]/0.003)+0.5;
   taufca2 := 300.0/(1.0+Exp((-ICaL-0.175)/0.04))+125.0;
   dY[5] := (dss-Y[5])/taud;
   dY[6] := (dpss-Y[6])/tau_pow_calcium;
   dY[7] := (fss-Y[7])/tauf;
   dY[8] := (f2ss-Y[8])/tauf2;
   dY[9] := (fcass-Y[9])/taufca;
   dY[10] := (fca2ss-Y[10])/taufca2;
   ak1 := 1.02/(1.0+Exp(0.2385*(Y[28]-EK-59.215)));
   bk1 := (0.49124*Exp(0.08032*(Y[28]-EK+5.476))+1.0*Exp(0.06175*(Y[28]-EK-594.31)))/(1.0+Exp(-0.5143*(Y[28]-EK+4.753)));
   IK1 := GK1*Sqrt(K_o/4.0)*ak1/(ak1+bk1)*(Y[28]-EK);
   IKp := 0.00276*(Y[28]-EK)/(1.0+Exp((7.488-Y[28])/5.98));
   r := 1.0/(1.0+2.5*Exp(0.1*(Y[28]+28.0)));

   IKr := gkr*Y[11]*r*(Y[28]-EK);
   IKr := IKr*GK_Available ;

   xrss := 1.0/(1.0+Exp(-2.182-0.1819*Y[28]));
   tauxr := 43.0+1.0/(Exp(-5.495+0.1691*Y[28])+Exp(-7.677-0.0128*Y[28]));
   dY[11] := (xrss-Y[11])/tauxr;
   gks := gks_max*(1.0+0.6/(1.0+Power(3.8e-5/Y[0], 1.4)));
   xss := 1.0/(1.0+Exp(-(Y[28]-10.5)/24.7));
   tauxs := 1.0/(7.61e-5*(Y[28]+44.6)/(1.0-Exp(-9.97*(Y[28]+44.6)))+3.6e-4*(Y[28]-0.55)/(Exp(0.128*(Y[28]-0.55))-1.0));
   EKs := LN((K_o+prnak*Na_o)/(Y[26]+prnak*Y[27]))/FonRT;

   IKs := gks*Y[12]*Y[13]*(Y[28]-EKs);
   IKs := IKs*(1.0 + BetaADR_active) ;

   dY[12] := (xss-Y[12])/tauxs;
   dY[13] := (xss-Y[13])/tauxs/2.0;
   gNa2 := GNa1*Y[18]*Y[18]*Y[18]*Y[16]*Y[17];

   INa := gNa2*(Y[28]-ENa);
   INa := INa*GNa_Available ;

   If (Y[28] >= -40.0) Then
      ah := 0.0
   Else
      ah := 0.135*Exp((80.0+Y[28])/-6.8);

   If (Y[28] >= -40.0) Then
      aj := 0.0
   Else
      aj := (-1.2714e5*Exp(0.2444*Y[28])-3.474e-5*Exp(-0.04391*Y[28]))*1.0*(Y[28]+37.78)/(1.0+Exp(0.311*(Y[28]+79.23)));

   If (Y[28] >= -40.0) Then
      bh := 1.0/(0.13*(1.0+Exp((Y[28]+10.66)/-11.1)))
   Else
      bh := 3.56*Exp(0.079*Y[28])+3.1e5*Exp(0.35*Y[28]);

   If (Y[28] >= -40.0) Then
      bj := 0.3*Exp(-2.535e-7*Y[28])/(1.0+Exp(-0.1*(Y[28]+32.0)))
   Else
      bj := 0.1212*Exp(-0.01052*Y[28])/(1.0+Exp(-0.1378*(Y[28]+40.14)));

   am := 0.32*1.0*(Y[28]+47.13)/(1.0-Exp(-0.1*(Y[28]+47.13)));
   bm := 0.08*Exp(-Y[28]/11.0);
   dY[16] := ah*(1.0-Y[16])-bh*Y[16];
   dY[18] := am*(1.0-Y[18])-bm*Y[18];
   dY[17] := aj*(1.0-Y[17])-bj*Y[17];
   fnak := 1.0/(1.0+0.1245*Exp(-0.1*Y[28]*FonRT)+0.0365*sigma*Exp(-Y[28]*FonRT));
   INaK := ibarnak*fnak*1.0/(1.0+Sqr(kmnai2/Y[27]))*K_o/(K_o+kmko);
   INal := GNaL*Power(Y[15], 3.0)*Y[14]*(Y[28]-ENa);
   amL := 0.32*1.0*(Y[28]+47.13)/(1.0-Exp(-0.1*(Y[28]+47.13)));
   bmL := 0.08*Exp(-Y[28]/11.0);
   hLss := 1.0/(1.0+Exp((Y[28]+91.0)/6.1));
   dY[15] := amL*(1.0-Y[15])-bmL*Y[15];
   dY[14] := (hLss-Y[14])/600.0;
   cafac := 1.0/(1.0+Exp((ICaL+0.05)/0.015));
   dro_inf := Power(Y[1], 1.9)/(Power(Y[1], 1.9)+Power(49.28*Y[3]/(Y[3]+0.0028), 1.9));
   dtau_rel := dtau_rel_max*CaMKactive/(KmCaMK+CaMKactive);
   ross := dro_inf/(Sqr(1.0/ICaL)+1.0);
   riss := 1.0/(1.0+Exp((Y[3]-4.0e-4+0.002*cafac)/2.5e-5));
   tauri := 3.0+dtau_rel+(350.0-dtau_rel)/(1.0+Exp((Y[3]-0.003+0.003*cafac)/2.0e-4));
   dY[21] := (ross-Y[21])/3.0;
   dY[20] := (riss-Y[20])/tauri;
   dY[19] := 0.05*CaMKactive*(CaMKactive-Y[19])-6.8e-4*Y[19];

   If (Y[28] <= 0.0) Then
      rv := Exp(Y[28]/Cto)
   Else
      rv := 1.0;

   ay := 25.0*Exp((Y[28]-40.0)/25.0)/(1.0+Exp((Y[28]-40.0)/25.0));
   by := 25.0*Exp(-(Y[28]+90.0)/25.0)/(1.0+Exp(-(Y[28]+90.0)/25.0));
   ay2 := 0.03/(1.0+Exp((Y[28]+60.0)/5.0));
   by2 := 0.2*Exp((Y[28]+25.0)/5.0)/(1.0+Exp((Y[28]+25.0)/5.0));
   ay3 := 0.00225/(1.0+Exp((Y[28]+60.0)/5.0));
   by3 := 0.1*Exp((Y[28]+25.0)/5.0)/(1.0+Exp((Y[28]+25.0)/5.0));
   Ito := gitodv*Power(Y[23], 3.0)*Y[24]*Y[25]*rv*(Y[28]-EK);
   dY[23] := ay*(1.0-Y[23])-by*Y[23];
   dY[24] := ay2*(1.0-Y[24])-by2*Y[24];
   dY[25] := ay3*(1.0-Y[25])-by3*Y[25];
   AAss := 1.0/(1.0+Kmto2/Y[3]);
   dY[22] := (AAss-Y[22])/1.0;
   kiont := IKr+IKs+IK1+IKp-2.0*INaK+Ito+0.5*i_Stim;
   dY[26] := -kiont*AF/vmyo+CTKCl;
   naiont := INa+3.0*INaCa+3.0*INaK+INal;
   dY[27] := -naiont*AF/vmyo+CTNaCl;
   caiont := ICaL+ICab+IpCa-2.0*INaCa;
   dY[28] := -(naiont+kiont+caiont+clont);
End;

procedure Tdavies_isap_2012.UpdateStates( dt : double ) ;
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

    for i := 0 to _NB_OF_STATE_VARIABLES_-1 do if YDimensionless[i] then Y[i] := Min(Max(Y[i],0.0),1.0);


    end;

//------------------------------------------------------------------------------

End.

//==============================================================================
// End of file
//==============================================================================
