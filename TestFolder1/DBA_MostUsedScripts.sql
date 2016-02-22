USE [master]
GO
ALTER DATABASE [SDE] SET  READ_ONLY WITH NO_WAIT
GO

USE [MASTER]
GO

ALTER DATABASE [SDE] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO

ALTER DATABASE [SDE] SET READ_WRITE
GO

ALTER DATABASE [SDE] SET MULTI_USER
GO








EXEC sp_configure 'show advanced options', 1

GO

-- To update the currently configured value for advanced options.

RECONFIGURE

GO

-- To enable the feature.

EXEC sp_configure 'xp_cmdshell', 1

GO

-- To update the currently configured value for this feature.

RECONFIGURE

GO



--------- Change distributor password

sp_changedistributor_password 'nimdasql'


