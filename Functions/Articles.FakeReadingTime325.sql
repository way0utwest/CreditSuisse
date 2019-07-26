SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [Articles].[FakeReadingTime325] ( @value varchar(MAX) )
RETURNS int
 AS
      BEGIN
        RETURN 325
      END
;

GO
