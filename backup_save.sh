#!/bin/bash

DB_CONTAINER="mysql-db"
DB_USER="root"
DB_PASSWORD="root"
DB_NAME="mydatabase"
BACKUP_FILE="backup.sql"
PATH="../../backups"

echo "📦 Sauvegarde de la base de données..."
docker exec $DB_CONTAINER mysqldump -u$DB_USER -p$DB_PASSWORD $DB_NAME > $PATH"/"$BACKUP_FILE

echo "✅ Sauvegarde terminé !"
