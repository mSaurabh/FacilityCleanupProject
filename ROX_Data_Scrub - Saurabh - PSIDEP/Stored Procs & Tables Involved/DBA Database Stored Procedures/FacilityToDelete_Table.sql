/****** Object:  Table [ETL].[FacilityToDelete]    Script Date: 6/18/2019 9:35:00 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF OBJECT_ID('[ETL].[FacilityToDelete]') IS NOT NULL
BEGIN
	DROP TABLE [ETL].[FacilityToDelete]
END
GO

CREATE TABLE [ETL].[FacilityToDelete](
	[FTDID] [int] IDENTITY(1,1) NOT NULL,
	[Facility_ID] [int] NOT NULL,
	[CreateDateTime] [datetime] NULL
 CONSTRAINT [PK_Facility_ID] PRIMARY KEY CLUSTERED 
(
	[Facility_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [ETL].[FacilityToDelete] ADD  DEFAULT (getdate()) FOR [CreateDateTime]
GO


