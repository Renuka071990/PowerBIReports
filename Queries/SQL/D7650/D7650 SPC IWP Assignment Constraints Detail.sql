Select FIWP.CONFIG As "Plant",FIWP.OBJNAME As "WP",FIWP.OBID As "WP_OID",
DisciplineSc.OBJNAME as "Discipline",
FitupFormanSc.ObjName as "Fitup Foreman" ,FitupSupervisorSc.ObjName as "Fitup Supervisor",
WeldFormanSc.ObjName as "Weld Foreman" ,WeldSupervisorSc.ObjName as "Weld Supervisor" , 
PaintForemanSc.ObjName as "Paint Foreman" ,PaintSupervisorSc.ObjName as "Paint Supervisor" , 

FitupFormanScBadge.ObjName as "Fitup Foreman Badge" ,FitupSupervisorScBadge.ObjName as "Fitup Supervisor Badge",
WeldFormanScBadge.ObjName as "Weld Foreman Badge" ,WeldSupervisorScBadge.ObjName as "Weld Supervisor Badge" , 
PaintForemanScBadge.ObjName as "Paint Foreman Badge" ,PaintSupervisorScBadge.ObjName as "Paint Supervisor Badge" ,

HoursPr.Strvalue as "Hours",
DetailsPr.Strvalue as "Details" ,EngHoldPr.Strvalue As "Eng Hold" ,EquAerialLiftPr.Strvalue As "Equ AerialLift",
EquBreakdownPr.Strvalue As "Equ Breakdown" ,EquCompressorpr.Strvalue "Equ Comperssor",EquGranePr.Strvalue As "Equ Grane",
EquForkliftPr.Strvalue As "Equ Forklift",InsClientHoldPr.Strvalue As "Ins Client Hold",InsInternalMDRHoldPr.Strvalue As "Ins InternalMDR Hold",
InsOtherPr.Strvalue As "Ins Other",MatHoldPr.Strvalue As "Mat Hold",OthFabSeqPr.Strvalue As "Other Fab Seq",
OthHeaLiftBarricadePr.Strvalue As "Other Heavy Lift Barricade",OthIncidentInvePr.Strvalue As "Other Incident",
OthLabourResPr.Strvalue As "Other Labour",OthOtherPr.Strvalue As "Other Others",OthPermitsPr.Strvalue As "Other Permits",
OthSIMOPSPr.Strvalue As "Other SIMOPS",OthSpecToolsPr.Strvalue As "Other Speciality Tools",
OthWeatherDowntimePr.Strvalue As "Other Weather Downtime",ScaNotavailablePr.Strvalue as "Sca Notavailable",
FIWPJobObj.Objname as "Job Number"


From Dataobj FIWP 
--Job Number
Left Join Datarel FIWPJobRel On FIWPJobRel.Uid2 = FIWP.Objuid And FIWPJobRel.DefUID='SPC_FunctionalArea_FIWPs' And FIWPJobRel.TerminationDate = '9999/12/31-23:59:59:999'
Left Join DataObj FIWPJobObj On FIWPJobObj.Objuid = FIWPJobRel.Uid1 And FIWPJobObj.Objdefuid ='SPFFunctionalArea' And FIWPJobObj.TerminationDate = '9999/12/31-23:59:59:999'
--FitupForeman
Left Join Dataobjpr FitupFormanPr On FitupFormanPr.ObjObid = FIWP.Obid And FitupFormanPr.PROPERTYDEFUID = 'MDR_Fitup_ForeMan' And FitupFormanPr.Terminationdate='9999/12/31-23:59:59:999'
Left Join Schemaobj FitupFormanSc On FitupFormanSc.ObjUid = FitupFormanPr.StrValue And FitupFormanSc.ObjDefuid = 'EnumEnum' And FitupFormanSc.Terminationdate='9999/12/31-23:59:59:999'

--FitupSupervisor
Left Join Dataobjpr FitupSuperviosrPr On FitupSuperviosrPr.ObjObid = FIWP.Obid And FitupSuperviosrPr.PROPERTYDEFUID = 'MDR_Fitup_Supervisor' And FitupSuperviosrPr.Terminationdate='9999/12/31-23:59:59:999'
Left Join Schemaobj FitupSupervisorSc On FitupSupervisorSc.ObjUid = FitupSuperviosrPr.StrValue And FitupSupervisorSc.ObjDefuid = 'EnumEnum' And FitupSupervisorSc.Terminationdate='9999/12/31-23:59:59:999'

--WeldForeman
Left Join Dataobjpr WeldFormanPr On WeldFormanPr.ObjObid = FIWP.Obid And WeldFormanPr.PROPERTYDEFUID = 'MDR_Weld_ForeMan' And WeldFormanPr.Terminationdate='9999/12/31-23:59:59:999'
Left Join Schemaobj WeldFormanSc On WeldFormanSc.ObjUid = WeldFormanPr.StrValue And WeldFormanSc.ObjDefuid = 'EnumEnum' And WeldFormanSc.Terminationdate='9999/12/31-23:59:59:999'

--WeldSupervisor
Left Join Dataobjpr WeldSuperviosrPr On WeldSuperviosrPr.ObjObid = FIWP.Obid And WeldSuperviosrPr.PROPERTYDEFUID = 'MDR_Weld_Supervisor' And WeldSuperviosrPr.Terminationdate='9999/12/31-23:59:59:999'
Left Join Schemaobj WeldSupervisorSc On WeldSupervisorSc.ObjUid = WeldSuperviosrPr.StrValue And WeldSupervisorSc.ObjDefuid = 'EnumEnum' And WeldSupervisorSc.Terminationdate='9999/12/31-23:59:59:999'

--PaintForeman
Left Join Dataobjpr PaintForemanPr On PaintForemanPr.ObjObid = FIWP.Obid And PaintForemanPr.PROPERTYDEFUID = 'MDR_Paint_ForeMan' And PaintForemanPr.Terminationdate='9999/12/31-23:59:59:999'
Left Join Schemaobj PaintForemanSc On PaintForemanSc.ObjUid = PaintForemanPr.StrValue And PaintForemanSc.ObjDefuid = 'EnumListType' And PaintForemanSc.Terminationdate='9999/12/31-23:59:59:999'

--PaintSupervisor
Left Join Dataobjpr PaintSupervisorPr On PaintSupervisorPr.ObjObid = FIWP.Obid And PaintSupervisorPr.PROPERTYDEFUID = 'MDR_Paint_Supervisor' And PaintSupervisorPr.Terminationdate='9999/12/31-23:59:59:999'
Left Join Schemaobj PaintSupervisorSc On PaintSupervisorSc.ObjUid = PaintSupervisorPr.StrValue And PaintSupervisorSc.ObjDefuid = 'EnumListType' And PaintSupervisorSc.Terminationdate='9999/12/31-23:59:59:999'

--FitupForemanBadge
Left Join Dataobjpr FitupFormanPrBadge On FitupFormanPrBadge.ObjObid = FIWP.Obid And FitupFormanPrBadge.PROPERTYDEFUID = 'MDR_BadgeNo_Foreman_Fitup' And FitupFormanPrBadge.Terminationdate='9999/12/31-23:59:59:999'
Left Join Schemaobj FitupFormanScBadge On FitupFormanScBadge.ObjUid = FitupFormanPrBadge.StrValue And FitupFormanScBadge.ObjDefuid = 'EnumEnum' And FitupFormanScBadge.Terminationdate='9999/12/31-23:59:59:999'

--FitupSupervisorBadge
Left Join Dataobjpr FitupSuperviosrPrBadge On FitupSuperviosrPrBadge.ObjObid = FIWP.Obid And FitupSuperviosrPrBadge.PROPERTYDEFUID = 'MDR_BadgeNo_Supervisor_Fitup' And FitupSuperviosrPrBadge.Terminationdate='9999/12/31-23:59:59:999'
Left Join Schemaobj FitupSupervisorScBadge On FitupSupervisorScBadge.ObjUid = FitupSuperviosrPrBadge.StrValue And FitupSupervisorScBadge.ObjDefuid = 'EnumEnum' And FitupSupervisorScBadge.Terminationdate='9999/12/31-23:59:59:999'

--WeldForemanBadge
Left Join Dataobjpr WeldFormanPrBadge On WeldFormanPrBadge.ObjObid = FIWP.Obid And WeldFormanPrBadge.PROPERTYDEFUID = 'MDR_BadgeNo_Foreman_Weld' And WeldFormanPrBadge.Terminationdate='9999/12/31-23:59:59:999'
Left Join Schemaobj WeldFormanScBadge On WeldFormanScBadge.ObjUid = WeldFormanPrBadge.StrValue And WeldFormanScBadge.ObjDefuid = 'EnumEnum' And WeldFormanScBadge.Terminationdate='9999/12/31-23:59:59:999'

--WeldSupervisorBadge
Left Join Dataobjpr WeldSuperviosrPrBadge On WeldSuperviosrPrBadge.ObjObid = FIWP.Obid And WeldSuperviosrPrBadge.PROPERTYDEFUID = 'MDR_BadgeNo_Supervisor_Weld' And WeldSuperviosrPrBadge.Terminationdate='9999/12/31-23:59:59:999'
Left Join Schemaobj WeldSupervisorScBadge On WeldSupervisorScBadge.ObjUid = WeldSuperviosrPrBadge.StrValue And WeldSupervisorScBadge.ObjDefuid = 'EnumEnum' And WeldSupervisorScBadge.Terminationdate='9999/12/31-23:59:59:999'

--PaintForemanBadge
Left Join Dataobjpr PaintForemanPrBadge On PaintForemanPrBadge.ObjObid = FIWP.Obid And PaintForemanPrBadge.PROPERTYDEFUID = 'nMDR_BadgeNo_Foreman_Paint' And PaintForemanPrBadge.Terminationdate='9999/12/31-23:59:59:999'
Left Join Schemaobj PaintForemanScBadge On PaintForemanScBadge.ObjUid = PaintForemanPrBadge.StrValue And PaintForemanScBadge.ObjDefuid = 'EnumListType' And PaintForemanScBadge.Terminationdate='9999/12/31-23:59:59:999'

--PaintSupervisorBadge
Left Join Dataobjpr PaintSupervisorPrBadge On PaintSupervisorPrBadge.ObjObid = FIWP.Obid And PaintSupervisorPrBadge.PROPERTYDEFUID = 'nMDR_BadgeNo_Supervisor_Paint' And PaintSupervisorPrBadge.Terminationdate='9999/12/31-23:59:59:999'
Left Join Schemaobj PaintSupervisorScBadge On PaintSupervisorScBadge.ObjUid = PaintSupervisorPrBadge.StrValue And PaintSupervisorScBadge.ObjDefuid = 'EnumListType' And PaintSupervisorScBadge.Terminationdate='9999/12/31-23:59:59:999'


--FIWP_DisciplineBadge
Left Join DataObjpr DisciplinePr On DisciplinePr.ObjObid = FIWP.Obid And DisciplinePr.PROPERTYDEFUID = 'FIWP_Discipline' And DisciplinePr.TerminationDate = '9999/12/31-23:59:59:999'
LEFT JOIN SCHEMAOBJ DisciplineSc ON DisciplineSc.OBJUID = DisciplinePr.STRVALUE AND DisciplineSc.TERMINATIONDATE = '9999/12/31-23:59:59:999'

--Hours
Left Join DataObjpr HoursPr On HoursPr.ObjObid = FIWP.ObId And HoursPr.PROPERTYDEFUID = 'MDR_Hours' And HoursPr.TerminationDate = '9999/12/31-23:59:59:999'

--Details
Left Join DataObjpr DetailsPr On DetailsPr.ObjObid = FIWP.ObId And DetailsPr.PROPERTYDEFUID = 'MDR_Details' And DetailsPr.TerminationDate = '9999/12/31-23:59:59:999'

--EngHold
Left Join DataObjpr EngHoldPr On EngHoldPr.ObjObid = FIWP.ObId And EngHoldPr.PROPERTYDEFUID = 'MDR_Eng_Hold' And EngHoldPr.TerminationDate = '9999/12/31-23:59:59:999'

--EquAerialLift
Left Join DataObjpr EquAerialLiftPr On EquAerialLiftPr.ObjObid = FIWP.ObId And EquAerialLiftPr.PROPERTYDEFUID = 'MDR_Equ_AerialLift' And EquAerialLiftPr.TerminationDate = '9999/12/31-23:59:59:999'

--EquBreakdown
Left Join DataObjpr EquBreakdownPr On EquBreakdownPr.ObjObid = FIWP.ObId And EquBreakdownPr.PROPERTYDEFUID = 'MDR_Equ_Breakdown' And EquBreakdownPr.TerminationDate = '9999/12/31-23:59:59:999'

--EquCompressor
Left Join DataObjpr EquCompressorPr On EquCompressorPr.ObjObid = FIWP.ObId And EquCompressorPr.PROPERTYDEFUID = 'MDR_Equ_Compressor' And EquCompressorPr.TerminationDate = '9999/12/31-23:59:59:999'

--EquGrane
Left Join DataObjpr EquGranePr On EquGranePr.ObjObid = FIWP.ObId And EquGranePr.PROPERTYDEFUID = 'MDR_Equ_Crane' And EquGranePr.TerminationDate = '9999/12/31-23:59:59:999'

--EquForklift
Left Join DataObjpr EquForkliftPr On EquForkliftPr.ObjObid = FIWP.ObId And EquForkliftPr.PROPERTYDEFUID = 'MDR_Equ_Forklift' And EquForkliftPr.TerminationDate = '9999/12/31-23:59:59:999'

--InsClientHold
Left Join DataObjpr InsClientHoldPr On InsClientHoldPr.ObjObid = FIWP.ObId And InsClientHoldPr.PROPERTYDEFUID = 'MDR_Ins_ClientHold' And InsClientHoldPr.TerminationDate = '9999/12/31-23:59:59:999'

--InsInternalMDRHold
Left Join DataObjpr InsInternalMDRHoldPr On InsInternalMDRHoldPr.ObjObid = FIWP.ObId And InsInternalMDRHoldPr.PROPERTYDEFUID = 'MDR_Ins_InternalMDRHold' And InsInternalMDRHoldPr.TerminationDate = '9999/12/31-23:59:59:999'

--InsOther
Left Join DataObjpr InsOtherPr On InsOtherPr.ObjObid = FIWP.ObId And InsOtherPr.PROPERTYDEFUID = 'MDR_Ins_Other' And InsOtherPr.TerminationDate = '9999/12/31-23:59:59:999'

--MatHold
Left Join DataObjpr MatHoldPr On MatHoldPr.ObjObid = FIWP.ObId And MatHoldPr.PROPERTYDEFUID = 'MDR_Mat_Hold' And MatHoldPr.TerminationDate = '9999/12/31-23:59:59:999'

--OthFabSeq
Left Join DataObjpr OthFabSeqPr On OthFabSeqPr.ObjObid = FIWP.ObId And OthFabSeqPr.PROPERTYDEFUID = 'MDR_Oth_FabricationSequence' And OthFabSeqPr.TerminationDate = '9999/12/31-23:59:59:999'

--OthHeaLiftBarricade
Left Join DataObjpr OthHeaLiftBarricadePr On OthHeaLiftBarricadePr.ObjObid = FIWP.ObId And OthHeaLiftBarricadePr.PROPERTYDEFUID = 'MDR_Oth_HeavyLiftBarricade' And OthHeaLiftBarricadePr.TerminationDate = '9999/12/31-23:59:59:999'

--OthIncidentInve
Left Join DataObjpr OthIncidentInvePr On OthIncidentInvePr.ObjObid = FIWP.ObId And OthIncidentInvePr.PROPERTYDEFUID = 'MDR_Oth_IncidentInvestigation' And OthIncidentInvePr.TerminationDate = '9999/12/31-23:59:59:999'

--OthLabourRes
Left Join DataObjpr OthLabourResPr On OthLabourResPr.ObjObid = FIWP.ObId And OthLabourResPr.PROPERTYDEFUID = 'MDR_Oth_LaborResources' And OthLabourResPr.TerminationDate = '9999/12/31-23:59:59:999'

--OthOther
Left Join DataObjpr OthOtherPr On OthOtherPr.ObjObid = FIWP.ObId And OthOtherPr.PROPERTYDEFUID = 'MDR_Oth_Other' And OthOtherPr.TerminationDate = '9999/12/31-23:59:59:999'

--OthPermits
Left Join DataObjpr OthPermitsPr On OthPermitsPr.ObjObid = FIWP.ObId And OthPermitsPr.PROPERTYDEFUID = 'MDR_Oth_Permits' And OthPermitsPr.TerminationDate = '9999/12/31-23:59:59:999'

--OthSIMOPS
Left Join DataObjpr OthSIMOPSPr On OthSIMOPSPr.ObjObid = FIWP.ObId And OthSIMOPSPr.PROPERTYDEFUID = 'MDR_Oth_SIMOPS' And OthSIMOPSPr.TerminationDate = '9999/12/31-23:59:59:999'

--OthSpecTools
Left Join DataObjpr OthSpecToolsPr On OthSpecToolsPr.ObjObid = FIWP.ObId And OthSpecToolsPr.PROPERTYDEFUID = 'MDR_Oth_SpeacialityTools' And OthSpecToolsPr.TerminationDate = '9999/12/31-23:59:59:999'

--OthWeatherDowntime
Left Join DataObjpr OthWeatherDowntimePr On OthWeatherDowntimePr.ObjObid = FIWP.ObId And OthWeatherDowntimePr.PROPERTYDEFUID = 'MDR_Oth_WeatherDownTime' And OthWeatherDowntimePr.TerminationDate = '9999/12/31-23:59:59:999'

--ScaNotavailable
Left Join DataObjpr ScaNotavailablePr On ScaNotavailablePr.ObjObid = FIWP.ObId And ScaNotavailablePr.PROPERTYDEFUID = 'MDR_Sca_Notavailable' And ScaNotavailablePr.TerminationDate = '9999/12/31-23:59:59:999'


where FIWP.Objdefuid = 'SPC_FIWP' 
And FIWP.Objname <>  'W1300P0-R04-WED1-01'