/****** Object:  Table [ETL].[ROX_Data_Scrub_Validation]    Script Date: 6/18/2019 9:35:24 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF OBJECT_ID('[ETL].[ROX_Data_Scrub_Validation]') IS NOT NULL
BEGIN
	DROP TABLE [ETL].[ROX_Data_Scrub_Validation]
END
GO


CREATE TABLE [ETL].[ROX_Data_Scrub_Validation](
	[RDSVID] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [nvarchar](255) NULL,
	[ResultCount] [numeric](18, 0) NULL,
	[CreateDate] [datetime] NULL	
) ON [PRIMARY]

GO

ALTER TABLE [ETL].[ROX_Data_Scrub_Validation] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO