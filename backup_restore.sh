  #!/bin/bash

  DB_CONTAINER="mysql-db"
  DB_USER="root"
  DB_PASSWORD="root"
  DB_NAME="mydatabase"
  BACKUP_FILE="init.sql"
  PATH="db"

  echo "📦 Sauvegarde de la base de données..."
  docker exec $DB_CONTAINER mysqldump -u$DB_USER -p$DB_PASSWORD $DB_NAME > $PATH"/"$BACKUP_FILE

  echo "✅ Déploiement terminé !"
