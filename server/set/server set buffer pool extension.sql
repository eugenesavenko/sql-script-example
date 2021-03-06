SET ANSI_NULLS        ON                              ;
SET NOCOUNT           ON                              ;
SET QUOTED_IDENTIFIER ON                              ;
SET TRANSACTION       ISOLATION LEVEL READ UNCOMMITTED;

ALTER SERVER CONFIGURATION
SET BUFFER POOL EXTENSION ON (FILENAME = 'B:\bpe\cache.bpe', SIZE = 80 GB);

ALTER SERVER CONFIGURATION
SET BUFFER POOL EXTENSION OFF;
EXEC sp_configure 'max server memory (MB)', 20480;
ALTER SERVER CONFIGURATION
SET BUFFER POOL EXTENSION ON (FILENAME = 'B:\bpe\cache.bpe', SIZE = 40 GB);