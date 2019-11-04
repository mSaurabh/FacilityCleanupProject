/****** Object:  StoredProcedure [dbo].[usp_FDP_P2T3_FacilityPostRoute_Data_Validation]    Script Date: 6/18/2019 9:31:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


IF OBJECT_ID('[dbo].[usp_FDP_P2T6_FacilityPostRoute_Data_Validation]') IS NOT NULL
BEGIN
	DROP PROCEDURE [dbo].[usp_FDP_P2T6_FacilityPostRoute_Data_Validation]
END
GO


CREATE PROCEDURE [dbo].[usp_FDP_P2T6_FacilityPostRoute_Data_Validation] 

AS

SET NOCOUNT ON;

SELECT 'dbo.NonCareChargeItem',COUNT(*) FROM dbo.NonCareChargeItem TableToDelete
INNER JOIN dbo.NonCareCharge NC ON NC.NonCareChargeItem_ID = TableToDelete.NonCareChargeItem_ID
WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = NC.Facility_ID);


SELECT 'dbo.ScheduleLayout',COUNT(*) FROM dbo.ScheduleLayout TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.PublishLibrary',COUNT(*) FROM dbo.PublishLibrary TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.InstitutionFacility',COUNT(*) FROM dbo.InstitutionFacility TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'ClinicalOutcomes.FacilitySubscription',COUNT(*) FROM ClinicalOutcomes.FacilitySubscription TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'Scheduling.ReminderCallConfig',COUNT(*) FROM Scheduling.ReminderCallConfig TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.DocumentRuleConditions',COUNT(*) FROM dbo.DocumentRuleConditions TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.LevelOfCareRate',COUNT(*) FROM dbo.LevelOfCareRate TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.Branch',COUNT(*) FROM dbo.Branch TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'Tags.FacilityTag',COUNT(*) FROM Tags.FacilityTag TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'Scheduling.AppointmentStyleSetFacility',COUNT(*) FROM Scheduling.AppointmentStyleSetFacility TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.ReimbursementScheduleAssignment',COUNT(*) FROM dbo.ReimbursementScheduleAssignment TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.ZoneFacility',COUNT(*) FROM dbo.ZoneFacility TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.Budget',COUNT(*) FROM dbo.Budget TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.ProviderLinkStatus',COUNT(*) FROM dbo.ProviderLinkStatus TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.ModelWeek',COUNT(*) FROM dbo.ModelWeek TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.ScheduleAnalyzerSetup',COUNT(*) FROM dbo.ScheduleAnalyzerSetup TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'Flowsheets.ExerciseLibraryFacility',COUNT(*) FROM Flowsheets.ExerciseLibraryFacility TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.LaborUnitConversion',COUNT(*) FROM dbo.LaborUnitConversion TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.Contact',COUNT(*) FROM dbo.Contact TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.FacilityAllowedSource',COUNT(*) FROM dbo.FacilityAllowedSource TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.FacilityApplication',COUNT(*) FROM dbo.FacilityApplication TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.FacilityBillingProvider',COUNT(*) FROM dbo.FacilityBillingProvider TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.FacilityCloseoutSet',COUNT(*) FROM dbo.FacilityCloseoutSet TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.FacilityDiscipline',COUNT(*) FROM dbo.FacilityDiscipline TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.FacilityExportCatalog',COUNT(*) FROM dbo.FacilityExportCatalog TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.FacilityNonCareChargeItem',COUNT(*) FROM dbo.FacilityNonCareChargeItem TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.FacilityPayer',COUNT(*) FROM dbo.FacilityPayer TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.FacilityServiceLocation',COUNT(*) FROM dbo.FacilityServiceLocation TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.FacilitySpecialtyProgram',COUNT(*) FROM dbo.FacilitySpecialtyProgram TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.FacilityTrunkSupply',COUNT(*) FROM dbo.FacilityTrunkSupply TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.FacilityTxDocumentTemplate',COUNT(*) FROM dbo.FacilityTxDocumentTemplate TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.FacilityTypeOfCare',COUNT(*) FROM dbo.FacilityTypeOfCare TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'Interface.DataConsumer_Facility',COUNT(*) FROM Interface.DataConsumer_Facility TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'Interface.ExportMessageAdditionalInfo',COUNT(*) FROM Interface.ExportMessageAdditionalInfo TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'Interface.ColdFeedFacilityEndPointConfiguration',COUNT(*) FROM Interface.ColdFeedFacilityEndPointConfiguration TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'Interface.FacilityChargeCodeMapping',COUNT(*) FROM Interface.FacilityChargeCodeMapping TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);

SELECT 'dbo.Facility',COUNT(*) FROM dbo.Facility TableToDelete  WHERE EXISTS (SELECT * FROM DBA.ETL.FacilityToDelete ftd where ftd.Facility_ID = TableToDelete.Facility_ID);