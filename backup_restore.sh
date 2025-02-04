#!/bin/bash
export PATH=$PATH:/usr/bin

DB_CONTAINER="mysql-db"
DB_USER="root"
DB_PASSWORD="root"
DB_NAME="mydatabase"
BACKUP_FILE="backup.sql"
PATH="../../backups"

sudo usermod -aG docker $USER
newgrp docker

echo "📥 Réimportation de la base de données..."
docker exec -i $DB_CONTAINER mysql -u$DB_USER -p$DB_PASSWORD $DB_NAME < $PATH"/"$BACKUP_FILE

echo "✅ Réimportation terminée !"
