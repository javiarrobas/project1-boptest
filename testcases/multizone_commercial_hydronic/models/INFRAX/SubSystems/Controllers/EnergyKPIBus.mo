within INFRAX.SubSystems.Controllers;
expandable connector EnergyKPIBus "Data bus that stores sensor data"
  extends Modelica.Icons.SignalBus;

  //COMPONENT LEVEL #########################################################################

  //Heat pump 1
  Real COP_HP1 "Instant COP of heat pump 1";
  Real SCOP_HP1 "Seasonal COP of heat pump 1";
  Real EER_HP1 "Instant EER of heat pump 1";
  Real SEER_HP1 "Seasonal EER of heat pump 1";
  Modelica.SIunits.Power dotW_HP1 "Compressor power of heat pump 1";
  Modelica.SIunits.Energy W_HP1 "Compressor energy of heat pump 1";
  Modelica.SIunits.Power dotQcon_HP1 "Condenser heating power of heat pump 1";
  Modelica.SIunits.Energy Qcon_HP1 "Condenser heating energy of heat pump 1";
  Modelica.SIunits.Power dotQeva_HP1 "Evaporator heating power of heat pump 1";
  Modelica.SIunits.Energy Qeva_HP1 "Evaporator heating energy of heat pump 1";
  //Heat pump 2
  Real COP_HP2 "Instant COP of heat pump 2";
  Real SCOP_HP2 "Seasonal COP of heat pump 2";
  Real EER_HP2 "Instant EER of heat pump 2";
  Real SEER_HP2 "Seasonal EER of heat pump 2";
  Modelica.SIunits.Power dotW_HP2 "Compressor power of heat pump 2";
  Modelica.SIunits.Energy W_HP2 "Compressor energy of heat pump 2";
  Modelica.SIunits.Power dotQcon_HP2 "Condenser heating power of heat pump 2";
  Modelica.SIunits.Energy Qcon_HP2 "Condenser heating energy of heat pump 2";
  Modelica.SIunits.Power dotQeva_HP2 "Evaporator heating power of heat pump 2";
  Modelica.SIunits.Energy Qeva_HP2 "Evaporator heating energy of heat pump 2";
  //Total
  Real totalHPCOP "Instant COP of combined heat pumps";
  Real totalHPSCOP "Seasonal COP of combined heat pumps";
  Modelica.SIunits.Power dotW_totalHP "Compressor power of combined heat pumps";
  Modelica.SIunits.Energy W_totalHP "Compressor energy of combined heat pumps";
  Modelica.SIunits.Power dotQcon_totalHP "Condenser heating power of combined heat pumps";
  Modelica.SIunits.Energy Qcon_totalHP "Condenser heating energy of combined heat pumps";
  Modelica.SIunits.Power dotQeva_totalHP "Evaporator heating power of combined heat pumps";
  Modelica.SIunits.Energy Qeva_totalHP "Evaporator heating energy of combined heat pumps";

  //Cooling tower
  Modelica.SIunits.Power dotW_CT "Cooling tower electrical power";
  Modelica.SIunits.Energy W_CT "Cooling tower electrical energy";
  Modelica.SIunits.Power dotQ_CT "Cooling tower thermal power";
  Modelica.SIunits.Energy Q_CT "Cooling tower thermal energy";
  Real EER_CT "Instant efficiency of cooling tower component";
  Real SEER_CT "Seasonal efficiency of cooling tower component";
  //AHU
    //Fans
  Modelica.SIunits.Power dotW_airSupply "AHU supply fan electrical power";
  Modelica.SIunits.Energy W_airSupply "AHU supply fan electrical energy";
  Modelica.SIunits.Power dotW_extractAir "AHU extract fan electrical power";
  Modelica.SIunits.Energy W_extractAir "AHU extract fan electrical energy";
    //Heat exchangers
  Modelica.SIunits.Power dotQ_TW_heating "Thermal wheel heating thermal power";
  Modelica.SIunits.Energy Q_TW_heating "Thermal wheel heating thermal energy";
  Modelica.SIunits.Power dotQ_TW_cooling "Thermal wheel cooling thermal power";
  Modelica.SIunits.Energy Q_TW_cooling "Thermal wheel cooling thermal energy";
  Modelica.SIunits.Power dotQ_AHUcooCoi "AHU cooling coil thermal power";
  Modelica.SIunits.Energy Q_AHUcooCoi "AHU cooling coil thermal energy";
  Modelica.SIunits.Power dotQ_AHUheaCoi "AHU heating coil thermal power";
  Modelica.SIunits.Energy Q_AHUheaCoi "AHU heating coil thermal energy";
  //Ventilation ducts
      //Per duct
  Modelica.SIunits.Power[21] dotQ_DuctHeaCoi "i-Ventilation duct heating coils thermal power";
  Modelica.SIunits.Energy[21] Q_DuctHeaCoi "i-Ventilation duct heating coils thermal energy";
  Modelica.SIunits.Power dotQ_DuctHeaCoi_total "Ventilation duct heating coils total thermal power";
  Modelica.SIunits.Energy Q_DuctHeaCoi_total "Ventilation duct heating coils total thermal energy";
  //Embedded pipes
    //Per circuit
  Modelica.SIunits.Power[35] dotQ_TABS_circuit_heating "TABS i-circuit heating thermal power";
  Modelica.SIunits.Energy[35] Q_TABS_circuit_heating "TABS i-circuit heating thermal energy";
  Modelica.SIunits.Power[35] dotQ_TABS_circuit_cooling "TABS i-circuit cooling thermal power";
  Modelica.SIunits.Energy[35] Q_TABS_circuit_cooling "TABS i-circuit cooling thermal energy";
      //Per Floor
  Modelica.SIunits.Power[4] dotQ_TABS_floor_heating "TABS i-floor heating thermal power";
  Modelica.SIunits.Energy[4] Q_TABS_floor_heating "TABS i-floor heating thermal energy";
  Modelica.SIunits.Power[4] dotQ_TABS_floor_cooling "TABS i-floor cooling thermal power";
  Modelica.SIunits.Energy[4] Q_TABS_floor_cooling "TABS i-floor cooling thermal energy";
  Real[4] dotrFloor_TABS_heating "TABS instant floor ratio for heating";
  Real[4] dotrFloor_TABS_cooling "TABS instant floor ratio for cooling";
  Real[4] rFloor_TABS_heating "TABS seasonal floor ratio for heating";
  Real[4] rFloor_TABS_cooling "TABS seasonal floor ratio for cooling";
  Modelica.SIunits.Power dotQ_TABScomp_heating "TABS (component level) total heating thermal power";
  Modelica.SIunits.Energy Q_TABScomp_heating "TABS (component level) total heating thermal energy";
  Modelica.SIunits.Power dotQ_TABScomp_cooling "TABS (component level) total cooling thermal power";
  Modelica.SIunits.Energy Q_TABScomp_cooling "TABS (component level) total cooling thermal energy";

  Modelica.SIunits.Power dotQ_TABS "power from TABS both heating and cooling";
  Modelica.SIunits.Energy Q_TABS "energy from TABS both heating and cooling (for balance)";
  //Pumps
  Modelica.SIunits.Power dotW_P01 "Pump 1 electrical power (heat pump evaporator/borefield)";
  Modelica.SIunits.Energy W_P01 "Pump 1 electrical energy (heat pump evaporator/borefield)";
  Modelica.SIunits.Power dotW_P03 "Pump 3 electrical power (heat pump condenser)";
  Modelica.SIunits.Energy W_P03 "Pump 3 electrical energy (heat pump condenser)";
  Modelica.SIunits.Power dotW_P04 "Pump 4 electrical power (to E003/H-Ex of AHU cooling coil)";
  Modelica.SIunits.Energy W_P04 "Pump 4 electrical energy (to E003/H-Ex of AHU cooling coil)";
  Modelica.SIunits.Power dotW_P05 "Pump 5 electrical power (to E004/H-Ex of TABS cooling)";
  Modelica.SIunits.Energy W_P05 "Pump 5 electrical energy (to E004/H-Ex of TABS cooling)";
  Modelica.SIunits.Power dotW_P06 "Pump 6 electrical power (duct heat exchangers)";
  Modelica.SIunits.Energy W_P06 "Pump 6 electrical energy (duct heat exchangers)";
  Modelica.SIunits.Power dotW_P07 "Pump 7 electrical power (TABS)";
  Modelica.SIunits.Energy W_P07 "Pump 7 electrical energy (TABS)";
  Modelica.SIunits.Power dotW_P08 "Pump 8 electrical power (to E005/H-Ex of AHU heating coil)";
  Modelica.SIunits.Energy W_P08 "Pump 8 electrical energy (to E005/H-Ex of AHU heating coil)";
  Modelica.SIunits.Power dotW_P09 "Pump 9 electrical power (AHU heating coil)";
  Modelica.SIunits.Energy W_P09 "Pump 9 electrical energy (AHU heating coil)";
  Modelica.SIunits.Power dotW_P10 "Pump 10 electrical power (to E006/H-Ex of cooling tower)";
  Modelica.SIunits.Energy W_P10 "Pump 10 electrical energy (to E006/H-Ex of cooling tower)";
  Modelica.SIunits.Power dotW_P11 "Pump 11 electrical power (cooling tower)";
  Modelica.SIunits.Energy W_P11 "Pump 11 electrical energy (cooling tower)";
  Modelica.SIunits.Power dotW_P13 "Pump 13 electrical power (AHU cooling coil)";
  Modelica.SIunits.Energy W_P13 "Pump 13 electrical energy (AHU cooling coil)";
  //Heat exchangers
  Modelica.SIunits.Power dotQ_E003 "H-Ex 03 (AHU cooling coil) thermal power";
  Modelica.SIunits.Energy Q_E003 "H-Ex 03 (AHU cooling coil) thermal energy";
  Modelica.SIunits.Power dotQ_E004 "H-Ex 04 (TABS cooling) thermal power";
  Modelica.SIunits.Energy Q_E004 "H-Ex 04 (TABS cooling) thermal energy";
  Modelica.SIunits.Power dotQ_E005 "H-Ex 05 (AHU heating coil) thermal power";
  Modelica.SIunits.Energy Q_E005 "H-Ex 05 (AHU heating coil) thermal energy";
  Modelica.SIunits.Power dotQ_E006 "H-Ex 06 (cooling tower) thermal power";
  Modelica.SIunits.Energy Q_E006 "H-Ex 06 (cooling tower) thermal energy";
  //Others
  Modelica.SIunits.Power dotQ_buffTank "buffer tank power losses";
  Modelica.SIunits.Energy Q_buffTank "buffer tank energy losses";

  /// FCUs ---------- nonGEOTABS
  Modelica.SIunits.Power[22] dotW_FCU "Fan power of FCUs";
  Modelica.SIunits.Energy[22] W_FCU "Fan energy of FCUs";
  Modelica.SIunits.Power[22] dotQhea_FCU "Thermal heating power of FCUs";
  Modelica.SIunits.Energy[22] Qhea_FCU "Thermal heating energy of FCUs";
  Modelica.SIunits.Power[22] dotQcoo_FCU "Thermal cooling power of FCUs";
  Modelica.SIunits.Energy[22] Qcoo_FCU "Thermal cooling energy of FCUs";

  // SYSTEM INDICATORS #######################################################################################

  //TABS -- Primary system --------------------------------------------------------------------------------

    //Total
    //Heating
  Modelica.SIunits.Power dotQ_TABSsystem_heating "TABS (system level) total heating thermal power";
  Modelica.SIunits.Energy Q_TABSsystem_heating "TABS (system level) total heating thermal energy";
  Real rdotQ_GSHP_TABS_heating "TABS GSHP heating thermal power ratio";
  Real rQ_GSHP_TABS_heating "TABS GSHP heating thermal energy ratio";
  Real rdotQ_Ren_TABS_heating "TABS renewable souce heating thermal power ratio (borefield)";
  Real rQ_Ren_TABS_heating "TABS renewable source heating thermal energy ratio (borefield)";
  Real COP_TABS "TABS instant performance for heating";
  Real SCOP_TABS "TABS seasonal performance for heating";
    //Cooling
  Modelica.SIunits.Power dotQ_TABSsystem_cooling "TABS (system level) total cooling thermal power";
  Modelica.SIunits.Energy Q_TABSsystem_cooling "TABS (system level) total cooling thermal energy";
  Real rdotQ_GSHP_TABS_cooling "TABS GSHP cooling thermal power ratio";
  Real rQ_GSHP_TABS_cooling "TABS GSHP cooling thermal energy ratio";
  Real rdotQ_Ren_TABS_cooling "TABS renewable souce cooling thermal power ratio (borefield)";
  Real rQ_Ren_TABS_cooling "TABS renewable source cooling thermal energy ratio (borefield)";
  Real EER_TABS "TABS instant performance for cooling";
  Real SEER_TABS "TABS seasonal performance for cooling";



  //Air conditioning -- Secondary system ------------------------------------------------------------------
    //AHU Efficiency
    //Total ventilation system
    //Heating
  Modelica.SIunits.Power dotQ_Vent_heating "Total ventilation heating power";
  Modelica.SIunits.Energy Q_Vent_heating "Total ventilation heating energy";
  Real COP_Vent "Total ventilation instant performance for heating";
  Real SCOP_Vent "Total ventilation seasonal performance for heating";
    //Cooling
  Modelica.SIunits.Power dotQ_Vent_cooling "Total ventilation cooling power";
  Modelica.SIunits.Energy Q_Vent_cooling "Total ventilation cooling energy";
  Real EER_Vent "Total ventilation instant performance for cooling";
  Real SEER_Vent "Total ventilation seasonal performance for cooling";


  //DHW
  //--Infrax does not have DHW modeled

  //Electricity production
  //--Infrax does not have PV modeled


  //Fractions
  //Between heating and cooling
  Real dot_f_hea "From total instant power that goes to the building, fraction that goes for heating";
  Real dot_f_coo "From total instant power that goes to the building, fraction that goes for cooling";
  Real f_hea "From total energy that went to the building, fraction that went for heating";
  Real f_coo "From total energy that went to the building, fraction that went for cooling";

  Real dot_f_tabs_hea "From the total instant power that goes to tabs, fraction that goes to heating";
  Real dot_f_tabs_coo "From the total instant power that goes to tabs, fraction that goes to cooling";
  Real f_tabs_hea "From the total energy that went to tabs, fraction that was used for heating";
  Real f_tabs_coo "From the total energy that went to tabs, fraction that was used for cooling";

  Real dot_f_vent_hea "From the total instant power that goes to the ventilation system, fraction that goes to heating";
  Real dot_f_vent_coo "From the total instant power that goes to the ventilation system, fraction that goes to cooling";
  Real f_vent_hea "From the total energy that went to the ventilation system, fraction that was used for heating";
  Real f_vent_coo "From the total energy that went to the ventilation system, fraction that was used for cooling";

  Real dot_f_ct_hea "From the total instant power dissipated by the cooling tower, fraction that is dissipated from the heating side";
  Real dot_f_ct_coo "From the total instant power dissipated by the cooling tower, fraction that is dissipated from the cooling side";
  Real f_ct_hea "From the total energy dissipated by the cooling tower, fraction that was dissipated from the heating side";
  Real f_ct_coo "From the total energy dissipated by the cooling tower, fraction that was dissipated from the cooling side";

  //Heating fractions Qhea = Qcon = Qtabs+Qvent+Qct
  Real dot_f_hea_ren "From the total instant heating power, fraction that comes from RENEWABLE(borefield) power";
  Real f_hea_ren "From the total heating energy, fraction that comes from RENEWABLE(borefield) energy";

  Real dot_f_hea_tabs "From the total instant heating (condenser) power, fraction that is used in TABS";
  Real f_hea_tabs "From the total heating (condenser) energy, fraction that is used in TABS";
  Real dot_f_hea_tabs_ren "From the total instant heating (condenser) power, RENEWABLE (extracted from borefield) fraction that is used in TABS";
  Real f_hea_tabs_ren "From the total heating (condenser) energy, RENEWABLE (extracted from borefield) fraction that is used in TABS";
  Real dot_f_hea_vent "From the total instant heating (condenser) power, fraction that is used in the ventilation system";
  Real f_hea_vent "From the total heating (condenser) energy, fraction that is used in the ventilation system";
  Real dot_f_hea_vent_ren "From the total instant heating (condenser) power, RENEWABLE (extracted from borefield) fraction that is used in the ventilation system";
  Real f_hea_vent_ren "From the total heating (condenser) energy, RENEWABLE (extracted from borefield) fraction that is used in the ventilation system";
  Real dot_f_hea_ct "From the total instant heating (condenser) power, fraction that is dissipated in the cooling tower";
  Real f_hea_ct "From the total heating (condenser) energy, fraction that is dissipated in the cooling tower";
  Real dot_f_hea_ct_ren "From the total instant heating (condenser) power, RENEWABLE (extracted from borefield) fraction that is dissipated in the cooling tower";
  Real f_hea_ct_ren "From the total heating (condenser) energy, RENEWABLE (extracted from borefield) fraction that is dissipated in the cooling tower";

  //Cooling fractions Qcoo = Qtabs + Qvent = Qhp+Qren(inj)+Qct
  Real dot_f_coo_tabs "From the total cooling instant power, fraction that is used by TABS";
  Real dot_f_coo_vent "From the total cooling instant power, fraction that is used by ventilation";
  Real dot_f_coo_ren "From the total cooling instant power, fraction that comes from the borefield (renewable)";
  Real dot_f_coo_hp "From the total cooling instant power, fraction that comes from the evaporator";
  Real dot_f_coo_ct "From the total cooling instant power, fraction that comes from the cooling tower";
  Real f_coo_tabs "From the total cooling energy, fraction that is used by TABS";
  Real f_coo_vent "From the total cooling energy, fraction that is used by ventilation";
  Real f_coo_ren "From the total cooling energy, fraction that comes from the borefield (renewable)";
  Real f_coo_hp "From the total cooling energy, fraction that comes from the evaporator";
  Real f_coo_ct "From the total cooling energy, fraction that comes from the cooling tower";

  // BUILDING INDICATORS
  Modelica.SIunits.Energy Q_total_heating "Total heating thermal energy of the building [kWh]";
  Modelica.SIunits.Energy Q_total_cooling "Total cooling thermal energy of the building [kWh]";
  Modelica.SIunits.Energy W_total "Total electrical energy used by the building [kWh]";
  Real spQ_total_heating(unit="kWh/(m^2)") "Total specific heating thermal energy of the building [kWh/y/m2]";
  Real spQ_total_cooling(unit="kWh/(m^2)") "Total specific cooling thermal energy of the building [kWh/y/m2]";
  Real spW_total(unit="kWh/(m^2)") "Total specific electrical energy used by the building [kWh/y/m2]";

    //Borefield
  Modelica.SIunits.Power dotQ_borFie "Borefield power balance into the ground";
  Modelica.SIunits.Energy Q_borFie "Borefield energy balance into the ground";
  Modelica.SIunits.Power dotQ_borFie_injected "Borefield power injected into the ground";
  Modelica.SIunits.Energy Q_borFie_injected "Borefield energy injected into the ground";
  Modelica.SIunits.Power dotQ_borFie_extracted "Borefield power extracted into the ground";
  Modelica.SIunits.Energy Q_borFie_extracted "Borefield energy extracted into the ground";
  Real balance "Borefield balance factor";

  //CO2
  Modelica.SIunits.Concentration CO2 "Indirect CO2 emissions of the building operation";


  annotation (
    defaultComponentName="weaBus",
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
            100}}), graphics={Rectangle(
          extent={{-20,2},{22,-2}},
          lineColor={255,204,51},
          lineThickness=0.5)}),
    Documentation(info="<html>
<p>
This component is an expandable connector that is used to implement a bus that contains the weather data.
</p>
</html>", revisions="<html>
<ul>
<li>
June 25, 2010, by Wangda Zuo:<br/>
First implementation.
</li>
</ul>
</html>"));
end EnergyKPIBus;