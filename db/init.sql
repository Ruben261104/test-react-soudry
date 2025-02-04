-- Création de la table 'users' si elle n'existe pas déjà
CREATE TABLE IF NOT EXISTS users (
                                     id INT AUTO_INCREMENT PRIMARY KEY,
                                     name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

-- Insérer quelques utilisateurs pour le test
INSERT INTO users (name, email) VALUES
                                    ('Ruben', 'ruben@example.com'),
                                    ('Mickael2', 'mickael@example.com')
    ON DUPLICATE KEY UPDATE name=name; -- Évite les doublons si le script est relancé
