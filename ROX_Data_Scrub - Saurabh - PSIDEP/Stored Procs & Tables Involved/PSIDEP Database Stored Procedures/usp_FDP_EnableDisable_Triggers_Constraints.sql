/****** Object:  StoredProcedure [dbo].[usp_FDP_EnableDisable_Triggers_Constraints]    Script Date: 8/19/2019 9:17:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF OBJECT_ID('[dbo].[usp_FDP_EnableDisable_Triggers_Constraints]') IS NOT NULL
	DROP PROCEDURE [dbo].[usp_FDP_EnableDisable_Triggers_Constraints]
GO

CREATE PROCEDURE [dbo].[usp_FDP_EnableDisable_Triggers_Constraints]
(
	@disable BIT = 1
)
AS 

-- If True then disable all the triggers and constraints globally
IF @disable = 1 
BEGIN 
	EXEC sp_MSforeachtable @command1='ALTER TABLE ? NOCHECK CONSTRAINT ALL';
	EXEC sp_MSforeachtable @command1='ALTER TABLE ? DISABLE TRIGGER ALL';
END
-- If False then enable all the triggers and constraints globally
ELSE
BEGIN
	EXEC sp_MSforeachtable @command1='ALTER TABLE ? CHECK CONSTRAINT ALL';
	EXEC sp_MSforeachtable @command1='ALTER TABLE ? ENABLE TRIGGER ALL';
END
GO