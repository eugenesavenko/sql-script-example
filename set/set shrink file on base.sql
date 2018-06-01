SET ANSI_NULLS        ON                              ;
SET NOCOUNT           ON                              ;
SET QUOTED_IDENTIFIER ON                              ;
SET TRANSACTION       ISOLATION LEVEL READ UNCOMMITTED;

DECLARE @base AS VARCHAR  (max) = 'testbase';
DECLARE @sql  AS NVARCHAR (max) = '';

SET @sql = 'DBCC SHRINKDATABASE(N''' + @base + ''');';
PRINT @sql;
EXEC sp_executesql @sql;