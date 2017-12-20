@Echo off
Echo Initializing, please wait ...
Echo.> C:\Users\sqladmin\Documents\Products.txt
if not exist "C:\Backups\" mkdir C:\Backups
sqlcmd -i CreateDB.sql
sqlcmd -i IT3795instnwd.sql
sqlcmd -i CreateLance.sql
sqlcmd -i CreateAnders.sql
sqlcmd -i BackupDB.sql
sqlcmd -i BackupTransLog.sql
sqlcmd -i LoginCondition.sql
sqlcmd -i RecoveryModelCondition.sql
sqlcmd -i RecoveryModelPolicy.sql
sqlcmd -i LoginPolicy.sql
sqlcmd -i ExportProductsJob.sql

