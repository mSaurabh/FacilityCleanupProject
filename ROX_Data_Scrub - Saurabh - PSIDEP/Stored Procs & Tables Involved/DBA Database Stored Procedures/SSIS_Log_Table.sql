/****** Object:  Table [ETL].[SSIS_Log]    Script Date: 6/18/2019 9:35:40 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF OBJECT_ID('[ETL].[SSIS_Log]') IS NOT NULL
BEGIN
	DROP TABLE [ETL].[SSIS_Log]
END
GO

CREATE TABLE [ETL].[SSIS_Log](
	[SLID] [int] IDENTITY(1,1) NOT NULL,
	[PackageName] [nvarchar](150) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[CreateDateTime] [datetime] NULL
) ON [PRIMARY]

GO

ALTER TABLE [ETL].[SSIS_Log] ADD  DEFAULT (getdate()) FOR [CreateDateTime]
GO


