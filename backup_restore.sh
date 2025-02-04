#!/bin/bash

DB_CONTAINER="mysql-db"
DB_USER="root"
DB_PASSWORD="root"
DB_NAME="mydatabase"
BACKUP_FILE="backup.sql"
PATH="../../backups"

echo "📥 Réimportation de la base de données..."
docker exec -i $DB_CONTAINER mysql -u$DB_USER -p$DB_PASSWORD $DB_NAME < $PATH"/"$BACKUP_FILE

echo "✅ Réimportation terminée !"
