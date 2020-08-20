SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE PROCEDURE [dbo].[DoNotLock3Get]
AS
BEGIN
    SET NOCOUNT ON;

	SELECT 
		N.NewspaperId, 
		N.Name 
	FROM 
		dbo.Newspaper AS N WITH (READUNCOMMITTED);

END;
GO
