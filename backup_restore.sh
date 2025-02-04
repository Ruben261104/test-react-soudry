  #!/bin/bash

  DB_CONTAINER="mysql-db"
  DB_USER="root"
  DB_PASSWORD="root"
  DB_NAME="mydatabase"
  BACKUP_FILE="db_backup.sql"

  echo "📦 Sauvegarde de la base de données..."
  docker exec $DB_CONTAINER mysqldump -u$DB_USER -p$DB_PASSWORD $DB_NAME > $BACKUP_FILE

  echo "🛑 Arrêt et suppression des conteneurs..."
  docker-compose down

  echo "🚀 Nettoyage Docker..."
  docker system prune -af

  echo "🔧 Reconstruction des conteneurs..."
  docker-compose build
  docker-compose up -d

  echo "📥 Réimportation de la base de données..."
  sleep 10 # Laisse le temps à MySQL de redémarrer
  docker exec -i $DB_CONTAINER mysql -u$DB_USER -p$DB_PASSWORD $DB_NAME < $BACKUP_FILE

  echo "✅ Déploiement terminé !"
