# Backup Script Guide

## 1. Purpose
The backup script automatically compresses the application data folder into a `.tar.gz` archive. A timestamp is added to the filename so each backup can have a unique name.

## 2. Full Bash Script

```bash
#!/bin/bash
# Automated Backup Script for CloudNova Technologies
SOURCE_DIR="app-data"
BACKUP_DIR="backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

echo "Initiating automated backup..."

mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" "$SOURCE_DIR"

echo "Backup completed successfully at $TIMESTAMP!"
```

## 3. File Permissions
The command `chmod +x backup.sh` adds executable permission to the script. This allows Linux to run the script as a program.

## 4. Cron Schedule

```cron
0 2 * * * /root/backup.sh
```

- Minute (`0`): At minute zero.
- Hour (`2`): At 2 AM.
- Day of Month (`*`): Every day of the month.
- Month (`*`): Every month.
- Day of Week (`*`): Every day of the week.

This schedule is intended to run the backup script every night at 2:00 AM.

## 5. Testing
The script was tested by running it in the terminal and checking the `backups` folder for a compressed `.tar.gz` archive.

## 6. Result
The script automates the creation of a compressed backup and reduces the need to run the backup command manually.
