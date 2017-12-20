USE [master]
GO

/****** Object:  Login [SQL2012-1\Anders]    Script Date: 12/20/2017 4:09:01 PM ******/
CREATE LOGIN [SQL2012-1\Anders] FROM WINDOWS WITH DEFAULT_DATABASE=[GreenGrocerDB], DEFAULT_LANGUAGE=[us_english]
GO
USE [GreenGrocerDB]
GO
CREATE USER [SQL2012-1\Anders] FOR LOGIN [SQL2012-1\Anders]
GO
USE [GreenGrocerDB]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SQL2012-1\Anders]
GO
use [master]
GO
GRANT VIEW ANY DATABASE TO [SQL2012-1\Anders]
GO
use [master]
GO
GRANT VIEW ANY DEFINITION TO [SQL2012-1\Anders]
GO

