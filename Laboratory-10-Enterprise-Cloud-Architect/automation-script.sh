
#!/bin/bash
set -Eeuo pipefail

# CloudNova MariaDB backup script

BACKUP_DIR="/home/cloudadmin/cloudnova-backups"
TIMESTAMP="$(date +%Y-%m-%d_%H-%M-%S)"
BACKUP_FILE="${BACKUP_DIR}/cloudnova_db_${TIMESTAMP}.sql.gz"

: "${DB_ROOT_PASSWORD:?Set DB_ROOT_PASSWORD securely before running}"

mkdir -p "$BACKUP_DIR"
chmod 700 "$BACKUP_DIR"

echo "Starting CloudNova database backup..."

if printf '%s' "$DB_ROOT_PASSWORD" | \
  sudo docker exec -i cloudnova-database \
  sh -c 'MYSQL_PWD="$(cat)" exec mariadb-dump -uroot cloudnova_db' \
  | gzip > "$BACKUP_FILE"; then

  if gzip -t "$BACKUP_FILE"; then
    chmod 600 "$BACKUP_FILE"
    echo "Backup completed: $BACKUP_FILE"
  else
    rm -f "$BACKUP_FILE"
    echo "ERROR: Backup file failed validation." >&2
    exit 1
  fi
else
  rm -f "$BACKUP_FILE"
  echo "ERROR: Database backup failed." >&2
  exit 1
fi

