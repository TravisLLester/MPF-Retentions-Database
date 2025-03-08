# Define MySQL Credentials & Backup Directory
$MYSQL_USER = "root"
$MYSQL_PASSWORD = ""
$DATABASE = "retentions"
$BACKUP_DIR = "D:\Lewis University\Database Systems\Database\Backups"

# Get Current Date & Time for Filename
$DATE = Get-Date -Format "yyyy-MM-dd_HHmm"

# Run MySQL Backup Command with --column-statistics=0
$BACKUP_FILE = "$BACKUP_DIR\retention_backup_$DATE.sql"
$MYSQLDUMP_CMD = "& 'C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump.exe' --column-statistics=0 -u $MYSQL_USER -p$MYSQL_PASSWORD --databases $DATABASE > `"$BACKUP_FILE`""

Invoke-Expression $MYSQLDUMP_CMD

# Delete Backups Older Than 14 Days
Get-ChildItem -Path $BACKUP_DIR -Filter "retention_backup_*.sql" | Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-14) } | Remove-Item -Force

# Optional: Log the Backup
$LOG_FILE = "$BACKUP_DIR\backup_log.txt"
Add-Content -Path $LOG_FILE -Value "Backup created: $BACKUP_FILE at $(Get-Date)"
